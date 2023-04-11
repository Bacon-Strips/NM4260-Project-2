/// @description Insert description here
// You can write your code in this editor

var hcells = room_width div cell_width;
var vcells = room_height div cell_height;

if (object_exists(obj_player)) {
	if (mp_grid_path(global.grid, path, x, y, (obj_player.x div cell_width) * cell_width + 32
			, (obj_player.y div cell_height) * cell_height + 32, false)) {
		path_start(path, move_speed, path_action_stop, false);
	} else {
		var attempts = 50;
		while (attempts > 0) {
			var x_diff = irandom_range(-5, 5) * cell_width;
			var y_diff = irandom_range(-5, 5) * cell_height;
			if (mp_grid_path(global.grid, path, x, y, (obj_player.x div cell_width) * cell_width + 32 + x_diff
				, (obj_player.y div cell_height) * cell_height + 32, false) + y_diff) {
				path_start(path, move_speed, path_action_stop, false);
				return;
			} else {
				attempts--;	
			}
		}
		event_user(3);
	}
}