/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
/// @description Insert description here
// You can write your code in this editor

if (paused) {
	return;
}

stunned--;
stopped--;
chasetime--;
pounce_timer--;

if (stunned > 0 || pounce_timer > 0) {
	return;	
}
/*
if (pounce_timer == 0) {
	event_user(2);
} 
*/

image_alpha = 1;

if (((path_position = 1 && stopped <= 0) || stunned == 0)) {
	stopped = 60;
	event_user(0)
}

var dist_to_player = distance_to_object(obj_player) / cell_width;

if (obj_player.dead) {
	return;	
}
/*
if (pounce_timer == 0) {
	path_speed = pounce_speed;
	move_speed = default_room_speed;
}
*/

if (dist_to_player <= detection_range && 
		((abs(obj_player.x - x) <= cell_width) || (abs(obj_player.y - y) <= cell_height))) {
	event_user(4);
}


/*
if (stunned % 300 == 0) {
	show_debug_message(string(stunned));
	show_debug_message(string(path_position));
}
*/
