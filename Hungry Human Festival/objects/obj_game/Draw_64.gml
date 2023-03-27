/// @description Insert description here
// You can write your code in this editor

switch (room) {
	case main_menu:
		var c = c_red;
		draw_text_transformed_colour(room_width / 2, 100, "Hungry Human Festival", 3, 3, 0, c, c, c, c, 1);
		break;
	case how_to_play_pg1:
		draw_set_font(font_instructions_header);
		draw_text(room_width / 2, 100, 
			"You are a NSF lost in hell. Help him find the\n" 
			+ "required hell money to pay the gatekeeper to go home!\n");
		draw_text(room_width / 2, 250,
			"Movement:");
		draw_sprite_ext(sprite_arrowkey, 0, room_width / 5, 350, 1, 1, 270, c_white, 1);
		draw_sprite_ext(sprite_arrowkey, 0, 2 * room_width / 5, 350, 1, 1, 180, c_white, 1);
		draw_sprite_ext(sprite_arrowkey, 0, 3 * room_width / 5, 350, 1, 1, 90, c_white, 1);
		draw_sprite_ext(sprite_arrowkey, 0, 4 * room_width / 5, 350, 1, 1, 0, c_white, 1);
		draw_sprite_ext(sprite_player_side, 0, 5 * room_width / 20, 350, -2, 2, 0, c_white, 1);
		draw_sprite_ext(sprite_player_back, 0, 9 * room_width / 20, 350, 2, 2, 0, c_white, 1);
		draw_sprite_ext(sprite_player_side, 0, 13 * room_width / 20, 350, 2, 2, 0, c_white, 1);
		draw_sprite_ext(sprite_player_front, 0, 17 * room_width / 20, 350, 2, 2, 0, c_white, 1);
		
		draw_text(room_width / 2, 450, 
			"Items:");
		draw_sprite_ext(sprite_holywater, -1, room_width / 16, 550, 2, 2, 0, c_white, 1);
		draw_set_halign(fa_left);
		draw_set_font(font_instructions);
		draw_text(room_width / 16 + 100, 550,
			"Holy water: Briefly stuns all ghosts (Hotkey:                   )");
		draw_sprite_ext(sprite_spacekey, -1, room_width / 16 + 970, 550, 1, 1, 0, c_white, 1);
		draw_sprite_ext(sprite_rosarybeads, -1, room_width / 16, 700, 2, 2, 0, c_white, 1);
		draw_text(room_width / 16 + 100, 700,
			"Rosay beads: NSF's life points. 1 is lost each time he gets caught by a ghost.");
		draw_sprite_ext(sprite_ghostmoney, -1, room_width / 16, 850, 2, 2, 0, c_white, 1);
		draw_text(room_width / 16 + 100, 850,
			"Hell money: Gather these and hand it to the gatekeeper to leave");
		draw_set_halign(fa_center);
		draw_sprite_ext(sprite_gatekeeper, 0, 13 * room_width / 16, 750, 4, 4, 0, c_white, 1);
		draw_set_font(font_instructions_header);
		draw_text(13 * room_width / 16, 1050, 
			"The Gatekeeper");
			/**
			+ "UP: Move up\n"
			+ "DOWN: Move down\n"
			+ "LEFT: Move left\n"
			+ "RIGHT: Move right\n"
			+ "SPACE BAR: Use holy water\n\n");
			*/
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
	case level_transition:
		var c = c_red;
		draw_text_transformed_colour(room_width / 2, 100, "Level " + string(to_level + 1), 3, 3, 0, c, c, c, c, 1);
		switch (to_level) {
			case 0:
				draw_sprite_ext(sprite_ghost1, 0, room_width / 16, room_height / 4, 3, 3, 0, c_white, 1);
				draw_set_halign(fa_left);
				draw_text(2 * room_width / 16, room_height / 4,
					"Basic ghost. Moves slower than you.\n"
					+ "Will start chasing if you are nearby and directly above, below or to her sides.");
				break;
			case 1:
				draw_set_halign(fa_left);
				draw_sprite_ext(sprite_ghost2, 0, room_width / 16, room_height / 4, 3, 3, 0, c_white, 1);
				draw_text(2 * room_width / 16, room_height / 4,
					"Medium ghost. Same behavior as basic ghost, but faster than you");
				draw_sprite_ext(sprite_ghost3, 0, room_width / 16, 2 * room_height / 4, 3, 3, 0, c_white, 1);
				draw_text(2 * room_width / 16, 2 * room_height / 4,
					"Big ghost. A lot slower than you, but she's always chasing. Silent too.");
				break;
			case 2:
				draw_set_halign(fa_left);
				draw_sprite_ext(sprite_gravestone, 0, room_width / 16, room_height / 4, 3, 3, 0, c_white, 1);
				draw_text(2 * room_width / 16, room_height / 4, 
					"Gravestone. Harmless, but blocks your path when you get close.\n
					+ "Disappears after a while.");
				break;
			case 3:
				draw_set_halign(fa_left);
				draw_sprite_ext(sprite_bossghost, 0, room_width / 16, room_height / 4, 3, 3, 0, c_white, 1);
				draw_text(2 * room_width / 16, room_height / 4,
					"Boss ghost. Constantly chases you while passing through walls.\n 
					+ "Moves at similar speed as you");
				break;
		}
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