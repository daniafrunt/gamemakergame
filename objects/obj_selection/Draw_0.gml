if (selecting) {
    // Draw the semi-transparent fill
    draw_set_color(c_white);
    draw_set_alpha(0.2); // Adjust the alpha value for transparency
    draw_rectangle(selection_start_x, selection_start_y, selection_end_x, selection_end_y, false);

    // Draw the border
    draw_set_color(c_ltgray); // Set the border color to light gray
    draw_set_alpha(1); // Ensure the border is fully opaque
    draw_rectangle(selection_start_x, selection_start_y, selection_end_x, selection_end_y, true);
}
