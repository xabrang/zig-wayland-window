const std = @import("std");

const wayland = @import("wayland");
const wl = wayland.client.wl;
const xdg = wayland.client.xdg;

pub fn main() !void {
    const display = try wl.Display.connect(null);
    const registery = try display.getRegistry();
    _ = registery;

    std.debug.print("Client ready\n", .{});

    display.disconnect();
}
