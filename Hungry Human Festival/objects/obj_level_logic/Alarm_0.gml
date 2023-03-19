/// @description Insert description here
// You can write your code in this editor

player_lives -= 1;
if (player_lives == 0) {
	obj_player.move_speed = 0;
	obj_player.visible = false;
	obj_player.alarm[0] = -1;
	obj_player.alarm[2] = 1;
	obj_level_logic.alarm[6] = 180
}