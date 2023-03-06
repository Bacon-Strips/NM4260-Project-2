/// @description Insert description here
// You can write your code in this editor
var dx = move_speed * (keyboard_check(vk_right) - keyboard_check(vk_left));
var dy = move_speed * (keyboard_check(vk_down) - keyboard_check(vk_up));

invincibility_time -= 1;

y += dy;
if (dy > 0) {
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	if (t1 != 0 || t2 != 0) {
		y = ((bbox_bottom & ~63) - 1) - sprite_bbox_bottom;	
	}
} else {
	var t3 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t4 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	if (t3 != 0 || t4 != 0) {
		y = ((bbox_top + 64) & ~63) - sprite_bbox_top;
	}
}

x += dx;
if (dx > 0) {
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	var t4 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	if (t2 != 0 || t4 != 0) {
		x = ((bbox_right & ~63) - 1) - sprite_bbox_right;
	}
} else {
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	var t3 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	if (t1 != 0 || t3 != 0) {
		x = ((bbox_left + 64) & ~63) - sprite_bbox_left;	
	}
}