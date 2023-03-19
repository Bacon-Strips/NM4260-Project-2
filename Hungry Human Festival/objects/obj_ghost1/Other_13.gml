/// @description Insert description here
// You can write your code in this editor

var hcells = room_width div cell_width;
var vcells = room_height div cell_height;

while (true) {
	var x_coord = irandom(room_width);
	var y_coord = irandom(room_height);
	if (mp_grid_path(global.grid, path, x, y, x_coord * cell_width + 32
			, y_coord * cell_height + 32, false)) {
		path_start(path, move_speed, path_action_stop, false);
		return;
	}
}