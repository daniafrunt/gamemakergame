if (selected) {
    draw_set_color(c_green); // Set the selection indicator color
    draw_circle(x, y, sprite_width / 2 + 7, false); // Draw a circle around the player sprite
}

draw_self();