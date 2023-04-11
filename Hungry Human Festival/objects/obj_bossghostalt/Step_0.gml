/// @description Insert description here
// You can write your code in this editor

if (paused) {
	return;	
}

stunned--;

if (stunned >= 0) {
	return;	
}

fireball_timer--;
fireball_prep--;

image_alpha = 1;

if (fireball_prep == fireball_preparetime / 2) {
	event_user(2);
}

if (fireball_timer == 0) {
	fireball_prep = fireball_preparetime;	
}

move_towards_point(obj_player.x, obj_player.y, move_speed);