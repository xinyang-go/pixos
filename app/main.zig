// force compile pixos
comptime {
    _ = @import("pixos");
}

const std = @import("std");
const pix = @import("pixos");
const uart1 = @import("uart1.zig");

pub var writer = uart1.writer;

fn app1(a: u32) void {
    while (true) {
        writer.print("app1(a = {})\n", .{a}) catch {};
        pix.cpu.context.to(&app2_ctx.sp);
    }
}
var app1_stk: [512]u8 = undefined;
var app1_ctx: pix.Thread = undefined;

fn app2(a: u32) void {
    while (true) {
        writer.print("app2(a = {})\n", .{a}) catch {};
        pix.cpu.context.to(&app1_ctx.sp);
    }
}
var app2_stk: [512]u8 = undefined;
var app2_ctx: pix.Thread = undefined;

pub fn main() void {
    app1_ctx = pix.Thread.init(&app1_stk, app1, .{1}).?;
    app2_ctx = pix.Thread.init(&app2_stk, app2, .{2}).?;
    uart1.putc('h');
    uart1.putc('e');
    uart1.putc('l');
    uart1.putc('l');
    uart1.putc('o');
    uart1.putc('\n');

    pix.cpu.context.from(&app1_ctx.sp);

    while (true) {}
}
