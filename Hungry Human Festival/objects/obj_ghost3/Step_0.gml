/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (paused) {
	return;	
}

if (distance_to_point(obj_player.x, obj_player.y) <= 7 * 64) {
	path_speed = nearby_speed;	
} else {
	path_speed = default_room_speed;	
}

if (reroute <= 0) {
	event_user(2);
	reroute = 180;
}