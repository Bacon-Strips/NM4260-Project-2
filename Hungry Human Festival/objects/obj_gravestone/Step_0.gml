/// @description Insert description here
// You can write your code in this editor

if (((distance_to_object(obj_player) <= (1.5 * 64)) && !visible && delay <= 0) 
		&& (distance_to_object(obj_player) > (64))) {
	tilemap_set_at_pixel(tilemap, 1, x, y);
	visible = true;
	effect_create_above(ef_explosion, x, y, 1, c_white)
	delay = irandom(10) * 60;
}

delay--;

if (visible && delay <= 0) {
	delay = irandom(10) * 60;
	tilemap_set_at_pixel(tilemap, 0, x, y);
	effect_create_above(ef_explosion, x, y, 1, c_white);
	visible = false
}