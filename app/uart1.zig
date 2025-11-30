const std = @import("std");
const pix = @import("pixos");
const regs = @import("stm32f100.zig");

fn init() void {
    // enable gpio-a & uart1 clock
    regs.RCC.APB2ENR.modify(.{ .AFIOEN = 1, .USART1EN = 1 });
    // pa9 af output pp
    regs.GPIOA.CRH.modify(.{ .MODE9 = 3, .CNF9 = 2 });
    // pa10 input float
    regs.GPIOA.CRH.modify(.{ .MODE10 = 0, .CNF10 = 1 });
    // uart1
    regs.USART1.CR2.modify(.{
        .STOP = 0, // stop bits 1
    });
    regs.USART1.CR1.write(.{
        .RE = 1, // enable rx
        .TE = 1, // enable tx
        .PS = 0, // parity none
        .PCE = 0, // parity not enable
        .M = 0, // word length 8
    });
    regs.USART1.CR3.write(.{
        .RTSE = 0, // RTS not enable
        .CTSE = 0, // CTS not enable
    });
    const div = (8000000 * 25) / (4 * 115200);
    regs.USART1.BRR.write(.{
        .DIV_Fraction = ((div - div / 100 * 100) * 16 + 50) / 100,
        .DIV_Mantissa = div / 100,
    });
}
comptime {
    pix.init.register(.dev, &init);
}

pub fn putc(ch: u8) void {
    // wait for tx empty
    while (regs.USART1.SR.read().TXE == 0) {}
    // write data
    regs.USART1.DR.write(.{ .DR = ch });
    // wait for tx complete
    while (regs.USART1.SR.read().TC == 0) {}
}

fn drain(w: *std.io.Writer, data: []const []const u8, splat: usize) !usize {
    _ = w;
    _ = splat;
    for (data[0]) |ch| {
        putc(ch);
    }
    return data[0].len;
}

pub const writer: std.io.Writer = .{
    .buffer = &.{},
    .vtable = &.{
        .drain = drain,
    },
};
