const std = @import("std");

const icsr: *volatile u32 = @ptrFromInt(0xE000_ED04);
const shpr3: *volatile u32 = @ptrFromInt(0xE000_ED20);
export const scb_vtor: *volatile u32 = @ptrFromInt(0xE000ED08);
const pendsv_set = 0x1000_0000;
const pendsv_pri = 0xFFFF_00FF;

pub const irq = struct {
    pub inline fn enable(level: u32) void {
        asm volatile (
            \\ msr      primask, %[level]
            :
            : [level] "r" (level),
        );
    }
    pub inline fn disable() u32 {
        var level: u32 = undefined;
        asm volatile (
            \\ mrs      %[level], primask
            \\ cpsid    i
            : [level] "=r" (level),
        );
        return level;
    }
};

pub const context = struct {
    pub inline fn init(stack: []u8, entry: *const anyopaque, param: ?*const anyopaque, exit: ?*const anyopaque) ?[*]u8 {
        const sp = @intFromPtr(stack.ptr + stack.len - @sizeOf(StackFrame)) / 8 * 8;
        if (sp <= @intFromPtr(stack.ptr)) return null;
        const frame: *StackFrame = @ptrFromInt(sp);
        frame.exception.r0 = @intFromPtr(param);
        frame.exception.pc = @intFromPtr(entry);
        frame.exception.lr = @intFromPtr(exit);
        frame.exception.psr = 0x01000000;
        return @ptrFromInt(sp);
    }
    pub inline fn from(sp: *[*]u8) void {
        @"sp.from" = sp;
        shpr3.* |= pendsv_pri;
        asm volatile ("svc 0");
    }
    pub inline fn to(sp: *[*]u8) void {
        @"sp.to" = sp;
        icsr.* = pendsv_set;
    }
    pub inline fn this() *[*]u8 {
        return @"sp.from";
    }
};

const ExceptionFrame = packed struct {
    r0: u32,
    r1: u32,
    r2: u32,
    r3: u32,
    r12: u32,
    lr: u32,
    pc: u32,
    psr: u32,
};

const StackFrame = packed struct {
    r4: u32,
    r5: u32,
    r6: u32,
    r7: u32,
    r8: u32,
    r9: u32,
    r10: u32,
    r11: u32,
    exception: ExceptionFrame,
};

export var @"sp.from": *[*]u8 = undefined;
export var @"sp.to": *[*]u8 = undefined;

fn PendSV() callconv(.naked) noreturn {
    asm volatile (
        \\ mrs      r0, primask
        \\ cpsid    i
        \\ mrs      r1, psp
        \\ stmfd    r1!, {r4 - r11}
        \\ ldr      r3, =sp.from
        \\ ldr      r2, [r3]
        \\ str      r1, [r2]
        \\ ldr      r2, =sp.to
        \\ ldr      r2, [r2]
        \\ str      r2, [r3]
        \\ ldr      r1, [r2]
        \\ ldmfd    r1!, {r4 - r11}
        \\ msr      psp, r1
        \\ msr      primask, r0
        \\ bx       lr
    );
}

fn SVCall() callconv(.naked) noreturn {
    asm volatile (
        \\ mrs      r0, primask
        \\ cpsid    i
        \\ ldr      r1, =sp.from
        \\ ldr      r1, [r1]
        \\ ldr      r1, [r1]
        \\ ldmfd    r1!, {r4 - r11}
        \\ msr      psp, r1
        \\ ldr      r1, =scb_vtor
        \\ ldr      r1, [r1]
        \\ ldr      r1, [r1]
        \\ msr      msp, r1
        \\ msr      primask, r0
        \\ orr      lr, lr, #4
        \\ bx       lr
    );
}

comptime {
    @import("../core/isr.zig").set(.{ .exception = .PendSV }, &PendSV);
    @import("../core/isr.zig").set(.{ .exception = .SVCall }, &SVCall);
}
