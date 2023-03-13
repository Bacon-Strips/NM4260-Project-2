/// @description Insert description here
// You can write your code in this editor

image_angle += 10

x += dx;
y += dy;

var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
var t3 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
var t4 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;

if (t1 != 0 || t2 != 0 || t3 != 0 || t4 != 0) {
	instance_destroy();	
}

if (time_till_destruction <= 0) {
	instance_destroy();	
}

time_till_destruction--;

