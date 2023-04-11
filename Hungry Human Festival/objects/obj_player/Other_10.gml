/// @description Insert description here
// You can write your code in this editor

if (invincibility_time <= 0 && !dead) {
	effect_create_above(ef_explosion, x, y, 1, c_red);
	audio_play_sound(sound_hit, 1, false);
	obj_player.alarm[0] = 1;
	obj_level_logic.alarm[0] = 1;
	invincibility_time = room_speed * 5;
	move_speed = 1.5 * default_speed;
}