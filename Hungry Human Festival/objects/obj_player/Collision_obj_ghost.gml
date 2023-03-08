/// @description Insert description here
// You can write your code in this editor

if (invincibility_time <= 0) {
	effect_create_above(ef_explosion, x, y, 1, c_red);
	obj_level_logic.alarm[0] = 1;
	obj_player.alarm[0] = 1;
	invincibility_time = room_speed * 5;
	move_speed = 10;
}