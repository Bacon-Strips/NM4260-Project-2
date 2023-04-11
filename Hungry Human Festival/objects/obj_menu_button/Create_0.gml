/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

activate_button = function() 
{
	audio_pause_sound(sound_levelbgm);
	audio_pause_sound(sound_bossbgm);
	room_goto(main_menu);
}