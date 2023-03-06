/// @description Insert description here
// You can write your code in this editor

var cell_width = 64;
var cell_height = 64;

var hcells = room_width div cell_width;
var vcells = room_height div cell_height;

var l = layer_get_id("collision_map");
tilemap = layer_tilemap_get_id(l);

global.grid = mp_grid_create(0, 0, hcells, vcells, cell_width, cell_height);

for (var i = 0; i < hcells; i++) {
	for (var j = 0; j < vcells; j++) {
		var t = tilemap_get_at_pixel(tilemap, i * 64, j * 64) & tile_index_mask;
		if (t == 1) {
			mp_grid_add_cell(global.grid, i, j);
		}
	}
}
