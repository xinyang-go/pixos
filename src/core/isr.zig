const std = @import("std");
const cpu = @import("builtin").cpu;

pub const Exception = blk: {
    const F = std.builtin.Type.EnumField;
    var fields: []const F = &.{};
    fields = fields ++ [_]F{.{ .name = "Reset", .value = 1 }};
    fields = fields ++ [_]F{.{ .name = "NonMaskableInt", .value = 2 }};
    fields = fields ++ [_]F{.{ .name = "HardFault", .value = 3 }};
    if (!cpu.hasAny(.arm, &.{.v6m})) {
        fields = fields ++ [_]F{.{ .name = "MemoryManagement", .value = 4 }};
        fields = fields ++ [_]F{.{ .name = "BusFault", .value = 5 }};
        fields = fields ++ [_]F{.{ .name = "UsageFault", .value = 6 }};
    }
    // TODO: Secure Fault Interrupt [only on Armv8-M]
    fields = fields ++ [_]F{.{ .name = "SVCall", .value = 11 }};
    if (!cpu.hasAny(.arm, &.{.v6m})) {
        fields = fields ++ [_]F{.{ .name = "DebugMonitor", .value = 12 }};
    }
    fields = fields ++ [_]F{.{ .name = "PendSV", .value = 14 }};
    fields = fields ++ [_]F{.{ .name = "SysTick", .value = 15 }};

    break :blk @Type(.{ .@"enum" = .{
        .tag_type = u4,
        .is_exhaustive = false,
        .decls = &.{},
        .fields = fields,
    } });
};

pub const Interrupt = blk: {
    @setEvalBranchQuota(100000);
    const F = std.builtin.Type.EnumField;
    var irq_num: u32 = undefined;
    if (cpu.hasAny(.arm, &.{.v6m})) irq_num = 32;
    if (cpu.hasAny(.arm, &.{ .v7m, .v7em })) irq_num = 240;
    var fields: []const F = &.{};
    for (0..irq_num) |index| {
        fields = fields ++ [_]F{.{
            .name = std.fmt.comptimePrint("ISR{}", .{index}),
            .value = index,
        }};
    }

    break :blk @Type(.{ .@"enum" = .{
        .tag_type = u32,
        .is_exhaustive = true,
        .decls = &.{},
        .fields = fields,
    } });
};

pub const Tag = enum {
    exception,
    interrupt,
};

pub const IRQ = union(Tag) {
    exception: Exception,
    interrupt: Interrupt,
};

pub const Fn = fn () callconv(.c) void;

pub fn get_exception(comptime irq: Exception) ?*const Fn {
    return switch (irq) {
        _ => null,
        else => @extern(*const Fn, .{ .name = @tagName(irq) }),
    };
}

pub fn get_interrupt(comptime irq: Interrupt) *const Fn {
    return @extern(*const Fn, .{ .name = @tagName(irq) });
}

pub fn get(comptime irq: IRQ) ?*const Fn {
    return switch (irq) {
        .exception => |val| get_exception(val),
        .interrupt => |val| get_interrupt(val),
    };
}

pub fn set_exception(comptime irq: Exception, comptime isr: *const Fn) void {
    @export(isr, .{ .name = @tagName(irq), .linkage = .strong });
}

pub fn set_interrupt(comptime irq: Interrupt, comptime isr: *const Fn) void {
    @export(isr, .{ .name = @tagName(irq), .linkage = .strong });
}

pub fn set(comptime irq: IRQ, comptime isr: *const Fn) void {
    switch (irq) {
        .exception => |val| set_exception(val, isr),
        .interrupt => |val| set_interrupt(val, isr),
    }
}
