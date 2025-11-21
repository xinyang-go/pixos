// force compile startup
comptime {
    _ = @import("startup.zig");
}

pub const isr = @import("core/isr.zig");
