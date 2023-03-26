/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

activate_button = function() 
{
	switch (obj_game.to_level) {
		case 1:
			room_goto(level_1);
			break;
		case 2:
			room_goto(level_2);
			break;
		case 3:
			room_goto(level_3);
			break;
		case 4:
			room_goto(level_4);
			break;
		default:
			room_goto(level_1);
	}
}
