const std = @import("std");
const builtin = @import("builtin");

const port = port: {
    if (builtin.cpu.model == &std.Target.arm.cpu.cortex_m3) {
        break :port @import("cortex-m3.zig");
    }
};
comptime {
    _ = port;
}

pub const stack_align = port.stack_align;

pub const irq = struct {
    pub inline fn enable(level: u32) void {
        port.irq.enable(level);
    }
    pub inline fn disable() u32 {
        return port.irq.disable();
    }
};

pub const context = struct {
    pub inline fn init(stack: []u8, entry: *const anyopaque, param: anytype, exit: ?*const anyopaque) ?[*]u8 {
        return port.context.init(stack, entry, param, exit);
    }
    pub inline fn from(sp: *[*]u8) void {
        port.context.from(sp);
    }
    pub inline fn to(sp: *[*]u8) void {
        port.context.to(sp);
    }
    pub inline fn this() *[*]u8 {
        return port.context.this();
    }
};
