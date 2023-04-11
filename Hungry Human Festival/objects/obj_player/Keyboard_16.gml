/// @description Insert description here
// You can write your code in this editor

if (dead) {
	return;	
}

if (!ghosty && ghosty_duration >= 750) {
	ghosty = true;
	become_human = false;
	sprite_index = sprite_ghostyidle;
	image_xscale = 1;
	effect_create_above(ef_explosion,x,y,1,c_white);
	ghosty_buffer = 3 * room_speed;
}