const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.resolveTargetQuery(.{
        .cpu_arch = .thumb,
        .os_tag = .freestanding,
        .abi = .none,
        .cpu_model = .{ .explicit = &std.Target.arm.cpu.cortex_m4 },
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

    const startup = b.createModule(.{
        .target = target,
        .optimize = optimize,
        .root_source_file = b.path("src/startup.zig"),
    });

    const firmware = b.addExecutable(.{
        .name = "pixos_app",
        .root_module = app,
    });
    firmware.addObject(b.addObject(.{
        .name = "startup",
        .root_module = startup,
    }));
    firmware.setLinkerScript(b.path("src/pixos.lds"));
    firmware.link_gc_sections = true;
    firmware.link_data_sections = true;
    firmware.link_function_sections = true;
    b.installArtifact(firmware);

    const clean = b.addSystemCommand(&[_][]const u8{ "rm", "-rf", ".zig-cache", "zig-out" });
    b.step("clean", "Clean all build cache").dependOn(&clean.step);
}
