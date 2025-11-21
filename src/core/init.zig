const std = @import("std");

const Fn = fn () void;

const Level = enum(u3) {
    core = 0,
    sys = 1,
    dev = 2,
    env = 3,
    app = 4,
};

fn section(comptime level: Level) []const u8 {
    return std.fmt.comptimePrint(".pixos.init.{}", .{@intFromEnum(level)});
}

pub fn register(comptime level: Level, comptime func: *const Fn) void {
    const addr: *const anyopaque = func;
    @export(&addr, .{
        .name = @typeName(@TypeOf(.{func})),
        .section = section(level),
        .linkage = .strong,
        .visibility = .hidden,
    });
}

pub fn call() void {
    var start = @extern([*]*const Fn, .{ .name = "__pixos_init_start" });
    const end = @extern([*]*const Fn, .{ .name = "__pixos_init_end" });
    while (start != end) {
        start[0]();
        start += 1;
    }
}
