const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.resolveTargetQuery(.{
        .cpu_arch = .thumb,
        .os_tag = .freestanding,
        .abi = .eabi,
        .cpu_model = .{ .explicit = &std.Target.arm.cpu.cortex_m3 },
        // !fpu [cortex-m4 and above]
        // .cpu_features_add = std.Target.arm.featureSet(&.{.vfp4d16sp}),
    });
    b.release_mode = .small;
    const optimize = b.standardOptimizeOption(.{});

    const pixos = b.createModule(.{
        .target = target,
        .optimize = optimize,
        .root_source_file = b.path("src/pixos.zig"),
        .strip = false,
    });

    const app = b.createModule(.{
        .target = target,
        .optimize = optimize,
        .root_source_file = b.path("app/main.zig"),
        .imports = &.{.{ .name = "pixos", .module = pixos }},
        .strip = false,
    });

    const firmware = b.addExecutable(.{
        .name = "app",
        .root_module = app,
    });
    firmware.setLinkerScript(b.path("src/pixos.lds"));
    firmware.link_gc_sections = true;
    firmware.link_data_sections = true;
    firmware.link_function_sections = true;
    b.installArtifact(firmware);

    const clean = b.addSystemCommand(&.{ "rm", "-rf", ".zig-cache", "zig-out" });
    b.step("clean", "Clean all build cache").dependOn(&clean.step);

    const run = b.addSystemCommand(&.{ "qemu-system-arm", "-M", "stm32vldiscovery", "-nographic", "-kernel", "zig-out/bin/app" });
    b.step("run", "Run with qemu").dependOn(&run.step);

    const debug = b.addSystemCommand(&.{ "qemu-system-arm", "-M", "stm32vldiscovery", "-nographic", "-kernel", "zig-out/bin/app", "-s", "-S" });
    b.step("debug", "Debug with qemu").dependOn(&debug.step);

    const gdb = b.addSystemCommand(&.{ "gdb-multiarch", "-tui", "zig-out/bin/app", "-ex", "target remote localhost:1234" });
    b.step("gdb", "Run gdb and connect remote server").dependOn(&gdb.step);
}
