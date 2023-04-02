/// @description Game Clear
// You can write your code in this editor
audio_pause_sound(sound_levelbgm);
audio_pause_sound(sound_bossbgm);
audio_play_sound(sound_levelclear, 1, false);
show_debug_message(string(obj_game.to_level));
if (obj_game.to_level == 4) {
	show_debug_message("Inside");
	room_goto(level_clear);
} else {
	room_goto(level_transition);
}