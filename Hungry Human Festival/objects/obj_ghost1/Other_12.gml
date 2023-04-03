/// @description Insert description here
// You can write your code in this editor

var hcells = room_width div cell_width;
var vcells = room_height div cell_height;

if (object_exists(obj_player)) {
	if (mp_grid_path(global.grid, path, x, y, (obj_player.x div cell_width) * cell_width + 32
			, (obj_player.y div cell_height) * cell_height + 32, false)) {
		path_start(path, move_speed, path_action_stop, false);
	} else {
		while (true) {
			var x_diff = irandom(2) * cell_width;
			var y_diff = irandom(2) * cell_height;
			if (irandom(1) == 0) {
				x_diff *= -1;
			}
			if (irandom(1) == 0) {
				y_diff *= -1;
			}
			if (mp_grid_path(global.grid, path, x, y, (obj_player.x div cell_width) * cell_width + 32 + x_diff
				, (obj_player.y div cell_height) * cell_height + 32, false) + y_diff) {
				path_start(path, move_speed, path_action_stop, false);
				return;
			}
		}
	}
}