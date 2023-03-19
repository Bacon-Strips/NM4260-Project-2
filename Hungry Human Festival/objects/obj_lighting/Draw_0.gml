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
		if (holy_effect > 0) {
			draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);	
		}
	}
	with (obj_hellmoney) {
		if ((display <= 0 || brightness > 0)) {
			gpu_set_blendmode(bm_normal);
			draw_sprite_ext(sprite_lighting, 0, x, y, brightness / 10, brightness / 10, 0, c_white, 0.5);
			display = 300;
			if (dimming) {
				brightness -= 0.15;	
			} else {
				brightness += 0.15;	
			}
			if (brightness == 1.5) {
				dimming = true;	
			} else if (brightness == 0.0) {
				dimming = false;	
			}
		}
	}
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	draw_surface_ext(surf, 0, 0, 1, 1, 0, c_white, darkness);
}