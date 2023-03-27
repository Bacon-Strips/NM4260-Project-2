/// @description Insert description here
// You can write your code in this editor
with (obj_level_logic) {
	if (obj_level_logic.holywater > 0) {
		audio_play_sound(sound_holywateruse, 1, false);
		holywater -= 1;
		obj_player.holy_effect = 5;
		with (obj_ghost) {
			event_user(1);
		}
	}
	/*
	show_debug_message("testing space");
	if (obj_level_logic.holywater > 0) {
		obj_level_logic.alarm[3] = 1;
		instance_create_layer(obj_player.x, obj_player.y, "instances", obj_thrown_holywater)	
	}
	*/
}