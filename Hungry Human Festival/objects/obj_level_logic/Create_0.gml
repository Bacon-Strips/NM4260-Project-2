/// @description Insert description here
// You can write your code in this editor

player_lives = 3;
holywater = 0;
hellmoney = 0;

paused = false;
paused_surf = -1;

randomize()

var cell_width = 64;
var cell_height = 64;

var hcells = room_width div cell_width;
var vcells = room_height div cell_height;

var l = layer_get_id("collision_map");
tilemap = layer_tilemap_get_id(l);

global.grid = mp_grid_create(0, 0, hcells, vcells, cell_width, cell_height);

port_width = camera_get_view_width(view_camera[0]) * 3
port_height = camera_get_view_height(view_camera[0]) * 3

for (var i = 0; i < hcells; i++) {
	for (var j = 0; j < vcells; j++) {
		var t = tilemap_get_at_pixel(tilemap, i * 64, j * 64) & tile_index_mask;
		if (t == 1) {
			mp_grid_add_cell(global.grid, i, j);
		}
	}
}
