/// @description Insert description here
// You can write your code in this editor

half_view_width = camera_get_view_width(view_camera[0]) / 2;
half_view_height = camera_get_view_height(view_camera[0]) / 2;

camera_set_view_pos(view_camera[0], clamp(x - half_view_width, 0, 1472 - 2 * half_view_width), clamp(y - half_view_height, 0, 1536 - 2 * half_view_height));
