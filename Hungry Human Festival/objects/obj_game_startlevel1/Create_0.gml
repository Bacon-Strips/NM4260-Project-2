/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

activate_button = function() 
{
	obj_game.to_level = 0;
	obj_game.hellmoney_req = 3;
	room_goto(level_transition)
}
