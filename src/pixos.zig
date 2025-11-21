// force compile startup
comptime {
    _ = @import("startup.zig");
}

pub const isr = @import("core/isr.zig");
pub const reg = @import("core/reg.zig");
pub const init = @import("core/init.zig");
