const std = @import("std");

pub fn RW(comptime T: type) type {
    comptime {
        std.debug.assert(@typeInfo(T) == .@"struct");
        std.debug.assert(@typeInfo(T).@"struct".layout == .@"packed");
    }
    return struct {
        ptr: *allowzero volatile @typeInfo(T).@"struct".backing_integer.?,
        const Self = @This();
        pub inline fn init(addr: usize) Self {
            return .{ .ptr = @ptrFromInt(addr) };
        }
        pub inline fn write(self: Self, value: T) void {
            self.ptr.* = @bitCast(value);
        }
        pub inline fn read(self: Self) T {
            return @bitCast(self.ptr.*);
        }
        pub inline fn modify(self: Self, fields: anytype) void {
            var value = self.read();
            const info = @typeInfo(@TypeOf(fields)).@"struct";
            inline for (info.fields) |field| {
                @field(value, field.name) = @field(fields, field.name);
            }
        }
    };
}

pub fn RO(comptime T: type) type {
    comptime {
        std.debug.assert(@typeInfo(T) == .@"struct");
        std.debug.assert(@typeInfo(T).@"struct".layout == .@"packed");
    }
    return struct {
        ptr: *allowzero volatile @typeInfo(T).@"struct".backing_integer.?,
        const Self = @This();
        pub inline fn init(addr: usize) Self {
            return .{ .ptr = @ptrFromInt(addr) };
        }
        pub inline fn read(self: Self) T {
            return @bitCast(self.ptr.*);
        }
    };
}

pub fn WO(comptime T: type) type {
    comptime {
        std.debug.assert(@typeInfo(T) == .@"struct");
        std.debug.assert(@typeInfo(T).@"struct".layout == .@"packed");
    }
    return struct {
        ptr: *allowzero volatile @typeInfo(T).@"struct".backing_integer.?,
        const Self = @This();
        pub inline fn init(addr: usize) Self {
            return .{ .ptr = @ptrFromInt(addr) };
        }
        pub inline fn write(self: Self, value: T) void {
            self.ptr.* = @bitCast(value);
        }
    };
}
