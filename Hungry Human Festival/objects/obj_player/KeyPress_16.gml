/// @description Insert description here
// You can write your code in this editor
var prev_ghosty = ghosty;
ghosty ^= 1;
if (ghosty) {
	sprite_index = sprite_ghostyidle;
	image_xscale = 1;
} else {
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	var t3 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t4 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	if ((t1 == 0 && t2 == 0 && t3 == 0 && t4 == 0)) {
		sprite_index = sprite_player_front;
		image_angle = 0;
	} else {
		ghosty = true;	
	}
}
if (prev_ghosty != ghosty) {
	effect_create_above(ef_explosion,x,y,1,c_white);
	ghosty_buffer = 3 * room_speed;
}