/// @description Insert description here
// You can write your code in this editor

if (path_position = 1 && stopped <= 0) {
	obj_ghost1.alarm[0] = 60;	
	stopped = 120;
}
stopped -= 1;

/// @description Insert description here
// You can write your code in this editor
/*
var dx = lengthdir_x(move_speed, direction);
var dy = lengthdir_y(move_speed, direction);

y += dy;
if (dy > 0) {
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	if (t1 != 0 || t2 != 0) {
		y = ((bbox_bottom & ~63) - 1) - sprite_bbox_bottom;	
		direction = choose(0,90,180,270);
	}
} else {
	var t3 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t4 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	if (t3 != 0 || t4 != 0) {
		y = ((bbox_top + 64) & ~63) - sprite_bbox_top;
		direction = choose(0,90,180,270);
	}
}

x += dx;
if (dx > 0) {
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	var t4 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	if (t2 != 0 || t4 != 0) {
		x = ((bbox_right & ~63) - 1) - sprite_bbox_right;
		direction = choose(0,90,180,270);
	}
} else {
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	var t3 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	if (t1 != 0 || t3 != 0) {
		x = ((bbox_left + 64) & ~63) - sprite_bbox_left;	
		direction = choose(0,90,180,270);
	}
}
*/