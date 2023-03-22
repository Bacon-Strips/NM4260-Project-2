/// @description Insert description here
// You can write your code in this editor
stunned--;
if (stunned >= 0) {
	return;	
}

image_alpha = 1;

move_towards_point(obj_player.x, obj_player.y, move_speed);