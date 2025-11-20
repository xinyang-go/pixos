const cpu = @import("builtin").cpu;
const isr = @import("core/isr.zig");

export const stack: [1024]u8 linksection(".stack") = undefined;

extern const _estack: usize;
export const msp: *const usize linksection(".vector.msp") = &_estack;
export const exception linksection(".vector.exception") = blk: {
    var vector: [15]?*const isr.Fn = undefined;
    for (1..16) |index| {
        vector[index - 1] = isr.get(.{ .exception = @enumFromInt(index) });
    }
    break :blk vector;
};
export const interrupt linksection(".vector.interrupt") = blk: {
    var irq_num: u32 = undefined;
    if (cpu.hasAny(.arm, &.{.v6m})) irq_num = 32;
    if (cpu.hasAny(.arm, &.{ .v7m, .v7em })) irq_num = 240;
    var vector: [irq_num]?*const isr.Fn = undefined;
    for (0..irq_num) |index| {
        vector[index] = isr.get(.{ .interrupt = @enumFromInt(index) });
    }
    break :blk vector;
};

extern var _sdata: u32;
extern var _edata: u32;
extern var _ldata: u32;
extern var _sbss: u32;
extern var _ebss: u32;

extern fn main() void;

export fn _start() callconv(.c) void {
    // initialize .data
    var ldata: [*]u8 = @ptrCast(&_ldata);
    var sdata: [*]u8 = @ptrCast(&_sdata);
    const edata: [*]u8 = @ptrCast(&_edata);
    while (sdata != edata) {
        sdata[0] = ldata[0];
        sdata += 1;
        ldata += 1;
    }
    // initialize .bss
    var sbss: [*]u8 = @ptrCast(&_sbss);
    const ebss: [*]u8 = @ptrCast(&_ebss);
    while (sbss != ebss) {
        sbss[0] = 0;
        sbss += 1;
    }
    // jump to main
    main();
    // halt if main returns
    while (true) {}
}

fn block_isr() callconv(.c) noreturn {
    while (true) {}
}

fn empty_isr() callconv(.c) void {
    return;
}

comptime {
    // exception
    @export(&_start, .{ .name = @tagName(@as(isr.Exception, .Reset)), .linkage = .strong });
    @export(&empty_isr, .{ .name = @tagName(@as(isr.Exception, .NonMaskableInt)), .linkage = .weak });
    @export(&block_isr, .{ .name = @tagName(@as(isr.Exception, .HardFault)), .linkage = .weak });
    if (!cpu.hasAny(.arm, &.{.v6m})) {
        @export(&block_isr, .{ .name = @tagName(@as(isr.Exception, .MemoryManagement)), .linkage = .weak });
        @export(&block_isr, .{ .name = @tagName(@as(isr.Exception, .BusFault)), .linkage = .weak });
        @export(&block_isr, .{ .name = @tagName(@as(isr.Exception, .UsageFault)), .linkage = .weak });
    }
    // TODO: Secure Fault Interrupt [only on Armv8-M]
    @export(&empty_isr, .{ .name = @tagName(@as(isr.Exception, .SVCall)), .linkage = .weak });
    if (!cpu.hasAny(.arm, &.{.v6m})) {
        @export(&empty_isr, .{ .name = @tagName(@as(isr.Exception, .DebugMonitor)), .linkage = .weak });
    }
    @export(&empty_isr, .{ .name = @tagName(@as(isr.Exception, .PendSV)), .linkage = .weak });
    @export(&empty_isr, .{ .name = @tagName(@as(isr.Exception, .SysTick)), .linkage = .weak });
    // interrupt
    var irq_num: u32 = undefined;
    if (cpu.hasAny(.arm, &.{.v6m})) irq_num = 32;
    if (cpu.hasAny(.arm, &.{ .v7m, .v7em })) irq_num = 240;
    for (0..irq_num) |index| {
        @export(&empty_isr, .{ .name = @tagName(@as(isr.Interrupt, @enumFromInt(index))), .linkage = .weak });
    }
}
