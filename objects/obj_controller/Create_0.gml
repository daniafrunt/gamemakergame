// Define the global grid
global.grid = mp_grid_create(0, 0, room_width / 32, room_height / 32, 32, 32);
mp_grid_add_instances(global.grid, obj_unpassable, true); // Add walls to the grid as obstacles
