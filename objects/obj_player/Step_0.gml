// Check if the player is selected and the right mouse button is clicked
if (selected && mouse_check_button_pressed(mb_right)) {
    var target_x = mouse_x;
    var target_y = mouse_y;

    // Clear the current path
    path_clear_points(move_path);

    // Create a path from the player's current position to the target position
    if (mp_grid_path(global.grid, move_path, x, y, target_x, target_y, true)) {
        path_start(move_path, 4, path_action_stop, true); // Start following the path
        moving = true; // Set the moving flag to true
    } else {
        moving = false; // No valid path found
    }
}

// Ensure the player follows the path if it exists and the player is moving
/*if (moving && path_get_number(move_path) > 0) {
    path_start(move_path, 4, path_action_stop, false);

    // If the player reaches the end of the path, stop moving
    if (path_position >= path_get_length(move_path)) {
        moving = false;
        path_end();
    }
} else {
    moving = false;
}*/

// Handle collisions with walls
if (place_meeting(x, y, obj_unpassable)) {
    move_contact_solid(direction, 4); // Adjust the player position to avoid overlapping with walls
}
