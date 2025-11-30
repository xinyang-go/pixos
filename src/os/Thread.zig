const cpu = @import("../cpu/cpu.zig");

const Self = @This();

sp: [*]u8,
priority: u8,

pub fn init(stack: []u8, entry: anytype, args: anytype) ?Self {
    const Entry = @TypeOf(entry);
    const Args = @TypeOf(args);
    const Info = struct {
        entry: *const Entry,
        args: Args,
        pub fn call(ptr: ?*anyopaque) void {
            const info: *@This() = @ptrCast(@alignCast(ptr.?));
            @call(.auto, info.entry, info.args);
        }
    };
    var sp: ?[*]u8 = null;
    if (@typeInfo(Args) == .null) {
        @import("root").writer.print("null", .{}) catch {};
        sp = cpu.context.init(stack, entry, null, exit);
    } else if (@sizeOf(Args) == 0) {
        @import("root").writer.print("size = 0", .{}) catch {};
        sp = cpu.context.init(stack, entry, null, exit);
    } else if (@typeInfo(Args) == .pointer) {
        @import("root").writer.print("pointer", .{}) catch {};
        sp = cpu.context.init(stack, entry, args, exit);
    } else if (@typeInfo(Args) == .int and @sizeOf(args) <= @sizeOf(usize)) {
        @import("root").writer.print("int", .{}) catch {};
        sp = cpu.context.init(stack, entry, @ptrFromInt(args), exit);
    } else {
        @import("root").writer.print("generic", .{}) catch {};
        const info_size = @sizeOf(Info);
        const info_align = @alignOf(Info);
        if (stack.len < info_size) return null;
        const len = (stack.len - info_size) / info_align * info_align;
        const info: *Info = @ptrCast(@alignCast(stack.ptr + len));
        info.entry = entry;
        info.args = args;
        sp = cpu.context.init(stack[0..len], Info.call, info, exit);
    }
    return .{
        .sp = sp orelse return null,
        .priority = undefined,
    };
}

pub fn this() *Self {
    const sp = cpu.context.this();
    return @fieldParentPtr("sp", sp);
}

fn exit() void {}

fn idle() void {
    while (true) {}
}
var idle_stk: [128]u8 = undefined;
var idle_ctx: Self = .{
    .sp = (&idle_stk).ptr + idle_stk.len - 64,
    .priority = undefined,
};
