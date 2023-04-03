/// @description Insert description here
// You can write your code in this editor

if (paused) {
	paused = false;
	with (all) {
		event_user(11);	
	}
	with (obj_button_parent) {
		instance_destroy();	
	}
} else {
	paused = true;
	with (all) {
		event_user(10);	
	}
	instance_create_layer(port_width / 2, port_height / 2, "Lighting", obj_resume_button);
	instance_create_layer(port_width / 2, port_height / 2 + 200, "Lighting", obj_menu_button);
}