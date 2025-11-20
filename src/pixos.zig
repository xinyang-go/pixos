// force compile startup
comptime {
    _ = @import("startup.zig");
}

pub const isr = @import("core/isr.zig");

pub fn _main() noreturn {
    const main = @import("root").main;
    switch (@typeInfo(@typeInfo(@TypeOf(main)).@"fn".return_type.?)) {
        .error_union => _ = main() catch {},
        else => _ = main(),
    }
    while (true) {}
}
