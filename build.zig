const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.resolveTargetQuery(.{
        .cpu_arch = .thumb,
        .os_tag = .freestanding,
        .abi = .eabi,
        .cpu_model = .{ .explicit = &std.Target.arm.cpu.cortex_m0plus },
        // !fpu [cortex-m4 and above]
        // .cpu_features_add = std.Target.arm.featureSet(&.{.vfp4d16sp}),
    });
    b.release_mode = .small;
    const optimize = b.standardOptimizeOption(.{});

    const pixos = b.createModule(.{
        .target = target,
        .optimize = optimize,
        .root_source_file = b.path("src/pixos.zig"),
    });

    const app = b.createModule(.{
        .target = target,
        .optimize = optimize,
        .root_source_file = b.path("app/main.zig"),
        .imports = &.{.{ .name = "pixos", .module = pixos }},
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
}
