/// @description Game Clear
// You can write your code in this editor
audio_pause_sound(sound_levelbgm);
audio_pause_sound(sound_bossbgm);
audio_play_sound(sound_levelclear, 1, false);
show_debug_message(string(obj_game.to_level));
switch (obj_game.to_level) {
	case 1:
		room_goto(level_transition2);
		break;
	case 2:
		room_goto(level_transition3);
		break;
	case 3:
		room_goto(level_transition4);
		break;
	case 4:
		room_goto(level_clear);
		break;
}