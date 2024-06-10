function select_units(start_x, start_y, end_x, end_y) {
    var left = min(start_x, end_x);
    var right = max(start_x, end_x);
    var top = min(start_y, end_y);
    var bottom = max(start_y, end_y);

    with (obj_player) {
        if (x >= left && x <= right && y >= top && y <= bottom) {
            selected = true;
        } else {
            selected = false;
        }
    }
}
