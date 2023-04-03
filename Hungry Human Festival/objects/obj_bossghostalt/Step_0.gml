/// @description Insert description here
// You can write your code in this editor
stunned--;
fireball_timer--;

if (stunned >= 0) {
	return;	
}

image_alpha = 1;

if (fireball_timer == 0) {
	event_user(2);
}

move_towards_point(obj_player.x, obj_player.y, move_speed);