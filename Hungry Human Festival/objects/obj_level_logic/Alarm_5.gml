/// @description Game Clear
// You can write your code in this editor
audio_pause_sound(sound_levelbgm);
audio_pause_sound(sound_bossbgm);
audio_play_sound(sound_levelclear, 1, false);
if (obj_game.to_level == 4) {
	room_goto(level_clear);
}
room_goto(level_transition);