/// @description Insert description here
// You can write your code in this editor

if (invincibility_time <= 0) {
	obj_level_logic.alarm[0] = 1;
	invincibility_time = room_speed * 5;
}