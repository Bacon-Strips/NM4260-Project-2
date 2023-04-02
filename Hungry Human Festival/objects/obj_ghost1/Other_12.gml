/// @description Insert description here
// You can write your code in this editor

var hcells = room_width div cell_width;
var vcells = room_height div cell_height;

if (object_exists(obj_player)) {
	while (true) {
		if (mp_grid_path(global.grid, path, x, y, (obj_player.x div cell_width) * cell_width + 32
				, (obj_player.y div cell_height) * cell_height + 32, false)) {
			path_start(path, move_speed, path_action_stop, false);
			return;
		}
	}
}