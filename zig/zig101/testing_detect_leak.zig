const std = @import("std");

test "detect leak" {
    var list = std.ArrayList(u21).init(std.testing.allocator);
    // missing `defer list.deint();
    try list.append('☔');

    try std.testing.expect(list.items.len == 1);
}

