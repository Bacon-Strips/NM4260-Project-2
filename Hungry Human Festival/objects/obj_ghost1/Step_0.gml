/// @description Insert description here
// You can write your code in this editor

if (paused) {
	return;
}

stunned--;
stopped--;
chasetime--;

if (stunned > 0) {
	return;	
}

image_alpha = 1;

if ((path_position = 1 && stopped <= 0) || stunned == 0) {
	stopped = 60;
	event_user(0)
}

var dist_to_player = distance_to_object(obj_player) / cell_width;

if (obj_player.dead) {
	return;	
}

if (dist_to_player <= detection_range && 
		((abs(obj_player.x - x) <= cell_width) || (abs(obj_player.y - y) <= cell_height))) {
	if (!chasing && chasetime <= 0) audio_play_sound(sound_ghostdiscovered, 1, false);
	chasing = true;
	chasetime = 3 * room_speed;
	event_user(2);
}


/*
if (stunned % 300 == 0) {
	show_debug_message(string(stunned));
	show_debug_message(string(path_position));
}
*/