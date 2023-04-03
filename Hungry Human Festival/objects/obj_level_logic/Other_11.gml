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
	var x_coord = camera_get_view_x(view_camera[0]);
	var y_coord = camera_get_view_y(view_camera[0]);
	var x_width = camera_get_view_width(view_camera[0]);
	var y_width = camera_get_view_height(view_camera[0]);
	instance_create_layer(x_coord + x_width, y_coord + y_width, "Lighting", obj_resume_button);
	instance_create_layer(x_coord + x_width, y_coord + y_width + 200, "Lighting", obj_menu_button);
}