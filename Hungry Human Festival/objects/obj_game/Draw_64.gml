/// @description Insert description here
// You can write your code in this editor

switch (room) {
	case main_menu:
		var c = c_red;
		draw_text_transformed_colour(room_width / 2, 100, "Hungry Human Festival", 3, 3, 0, c, c, c, c, 1);
		break;
	case how_to_play_pg1:
		draw_text(room_width / 2, 600, 
			"You are a NSF lost in hell. Help him find the\n" 
			+ "required hell money to pay the gatekeeper to go home!\n\n"
			+ "UP: Move up\n"
			+ "DOWN: Move down\n"
			+ "LEFT: Move left\n"
			+ "RIGHT: Move right\n"
			+ "SPACE BAR: Use holy water\n\n");
		break;
	case how_to_play_pg2:
		draw_set_halign(fa_left);
		draw_text(room_width / 8, 600,
			"Holy water\n"
			+ "This will briefly stun all ghosts in hell\n\n"
			+ "Rosary beads\n"
			+ "These are your protection in hell\n"
			+ "Once is consumed whenever a ghost catch you\n"
			+ "It is game over when you run out of these\n\n"
			+ "Hell money\n"
			+ "These are scattered across the maze. Essential for the gatekeeping fees\n\n");
		draw_sprite_ext(sprite_holywater, -1, room_width / 16, 275, 3, 3, 0, c_white, 1);
		draw_sprite_ext(sprite_rosarybeads, -1, room_width / 16, 600, 3, 3, 0, c_white, 1);
		draw_sprite_ext(sprite_ghostmoney, -1, room_width / 16, 850, 3, 3, 0, c_white, 1);
		break;
	case how_to_play_pg3:
		draw_set_halign(fa_left);
		draw_text(room_width / 4, 500,
			+ "Gatekeeper\n"
			+ "You ticket out of hell\n"
			+ "You need to gather hell money to pay him to be able to leave\n\n");
		draw_sprite_ext(sprite_gatekeeper, -1, room_width / 16, 275, 3, 3, 0, c_white, 1);
		break;
	case level_select:
		var c = c_red;
		draw_text_transformed_colour(room_width / 2, 100, "Level Select", 3, 3, 0, c, c, c, c, 1);
		break;
	case level_clear:
		draw_text(room_width / 2, 600,
			"Congratulations! You have cleared the level!\n"
			+ "This is the end of the current iteration, please look forward\n"
			+ "to the next iteration of this video game project\n");
		break;
	case game_over:
		var c = c_red;
		draw_text_transformed_colour(room_width / 2, 100, "Game Over", 3, 3, 0, c, c, c, c, 1);
		break;
}