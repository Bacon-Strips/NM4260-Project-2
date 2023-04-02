/// @description Insert description here
// You can write your code in this editor

if (paused) {
	paused = false;
	with (all) {
		event_user(11);	
	}
} else {
	paused = true;
	with (all) {
		event_user(10);	
	}
}