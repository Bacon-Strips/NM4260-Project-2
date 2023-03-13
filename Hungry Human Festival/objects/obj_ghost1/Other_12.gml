/// @description Insert description here
// You can write your code in this editor

var cell_width = 64;
var cell_height = 64;

var hcells = room_width div cell_width;
var vcells = room_height div cell_height;

if (object_exists(obj_player)) {
	while (true) {
		var x_coord = irandom(proximity) * (-1 * irandom(1));
		var y_coord = irandom(proximity) * (-1 * irandom(1));
		if (mp_grid_path(global.grid, path, x, y, ((obj_player.x div cell_width) + x_coord) * cell_width + 32
				, ((obj_player.y div cell_height) + y_coord) * cell_height + 32, false)) {
			path_start(path, move_speed, path_action_stop, false);
			return;
		}
	}
}