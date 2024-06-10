if (mouse_check_button_pressed(mb_left)) {
    selection_start_x = mouse_x;
    selection_start_y = mouse_y;
    selecting = true;
}

if (selecting) {
    selection_end_x = mouse_x;
    selection_end_y = mouse_y;
}

if (mouse_check_button_released(mb_left)) {
    selecting = false;
    // Call the function to handle selecting units within the rectangle
    select_units(selection_start_x, selection_start_y, selection_end_x, selection_end_y);
}
