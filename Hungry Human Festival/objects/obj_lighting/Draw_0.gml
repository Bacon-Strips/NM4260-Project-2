/// @description Insert description here
// You can write your code in this editor

if (!surface_exists(surf)) {
	surf = surface_create(room_width, room_height);	
} else {
	surface_set_target(surf);
	draw_clear(c_black);
	with (obj_player) {
		gpu_set_blendmode(bm_normal);
		draw_sprite_ext(sprite_lighting, 0, x, y, 1, 1, 0, c_white, 0.5);
	}
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	draw_surface_ext(surf, 0, 0, 1, 1, 0, c_white, darkness);
}