/// @description Insert description here
// You can write your code in this editor

player_lives -= 1;
if (player_lives == 0) {
	instance_destroy(obj_player);
}