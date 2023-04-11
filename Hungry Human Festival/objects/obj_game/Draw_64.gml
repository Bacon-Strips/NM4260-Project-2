/// @description Insert description here
// You can write your code in this editor

draw_set_font(font_title);

switch (room) {
	case main_menu:
		var c = c_red;
		draw_text_transformed_colour(room_width / 2, 100, "Hungry Human Festival", 3, 3, 0, c, c, c, c, 1);
		break;
	case how_to_play_pg1:
		draw_set_font(font_instructions_header);
		draw_text(room_width / 2, 50, 
			"You are a NSF lost in hell. Help him find the\n" 
			+ "required hell money to pay the gatekeeper to go home!\n");
		draw_text(room_width / 2, 150,
			"Movement:");
			
		var movement_row_y = 225;
			
		draw_sprite_ext(sprite_arrowkey, 1, room_width / 5, movement_row_y, 1, 1, 0, c_white, 1);
		draw_sprite_ext(sprite_arrowkey, 3, 2 * room_width / 5, movement_row_y, 1, 1, 0, c_white, 1);
		draw_sprite_ext(sprite_arrowkey, 2, 3 * room_width / 5, movement_row_y, 1, 1, 0, c_white, 1);
		draw_sprite_ext(sprite_arrowkey, 0, 4 * room_width / 5, movement_row_y, 1, 1, 0, c_white, 1);
		draw_sprite_ext(sprite_player_side, 0, 5 * room_width / 20, movement_row_y, -2, 2, 0, c_white, 1);
		draw_sprite_ext(sprite_player_back, 0, 9 * room_width / 20, movement_row_y, 2, 2, 0, c_white, 1);
		draw_sprite_ext(sprite_player_side, 0, 13 * room_width / 20, movement_row_y, 2, 2, 0, c_white, 1);
		draw_sprite_ext(sprite_player_front, 0, 17 * room_width / 20, movement_row_y, 2, 2, 0, c_white, 1);
		
		draw_text(room_width / 2, 300, 
			"Items:");
		draw_sprite_ext(sprite_holywater, -1, room_width / 16, 375, 2, 2, 0, c_white, 1);
		draw_set_halign(fa_left);
		draw_set_font(font_instructions);
		draw_text(room_width / 16 + 100, 375,
			"Holy water: Briefly stuns all ghosts (Hotkey:                   )");
		draw_sprite_ext(sprite_spacekey, -1, room_width / 16 + 895, 375, 0.75, 0.75, 0, c_white, 1);
		draw_sprite_ext(sprite_rosarybeads, -1, room_width / 16, 500, 2, 2, 0, c_white, 1);
		draw_text(room_width / 16 + 100, 500,
			"Rosary beads: NSF's life points. 1 is lost each time he gets caught by a ghost.");
		draw_sprite_ext(sprite_ghostmoney, -1, room_width / 16, 625, 2, 2, 0, c_white, 1);
		draw_text(room_width / 16 + 100, 625,
			"Hell money: Gather these and hand it to the gatekeeper to leave");
		draw_sprite_ext(sprite_gatekeeper, 0, 14 * room_width / 16, 750, 2, 2, 0, c_white, 1);
		draw_text(11 * room_width / 16, 750, 
			"This guy --->");
		draw_set_halign(fa_center);
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
		draw_text_transformed(room_width / 16, 3 * room_height / 32,
			"Spirit form:", 1.5, 1.5, 0);
		draw_sprite_ext(sprite_player_front, -1, room_width / 8, 9 * room_height / 32, 3, 3, 0, c_white, 1);
		draw_arrow(3 * room_width / 16, 5 * room_height / 16, 3 * room_width / 8, 5 * room_height / 16, 20);
		draw_sprite_ext(sprite_shiftkey, -1, 15 * room_width / 64, 7 * room_height / 32, 0.5, 0.5, 0, c_white, 1);
		draw_sprite_ext(sprite_ghostyidle, -1, room_width / 2, 9 * room_height / 32, 3, 3, 0, c_white, 1);
		draw_rectangle_color(31 * room_width / 64, 11 * room_height / 64, 33 * room_width / 64, 3 * room_height / 16, c_black, c_black, c_black, c_black, false);
		draw_rectangle_color(31 * room_width / 64, 11 * room_height / 64, room_width / 2, 3 * room_height / 16, c_aqua, c_aqua, c_aqua, c_aqua, false);
		draw_rectangle_color(63 * room_width / 128 - 1, 11 * room_height / 64, 63 * room_width / 128 + 1, 3 * room_height / 16, c_red, c_red, c_red, c_red, false);
		draw_text( 5 * room_width / 8, 9 * room_height / 32, 
			"You can move faster and pass\n"
			+ "through walls in spirit form.");
		draw_text(3 * room_width / 16, 7 * room_height / 16,
			"Hold shift to remain in spirit form");
		draw_sprite_ext(sprite_ghostyidle, -1, room_width / 2, 5 * room_height / 8, 3, 3, 0, c_white, 1);
		draw_rectangle_color(31 * room_width / 64, 33 * room_height / 64, 33 * room_width / 64, 8 * room_height / 16, c_red, c_red, c_red, c_red, false);
		draw_text( 5 * room_width / 8, 5 * room_height / 8, 
			"When the gauge is empty, you\n"
			+ "will start to lose lives");
		break;
	case how_to_play_pg3:
		draw_set_halign(fa_left);
		draw_text(room_width / 4, 500,
			+ "Gatekeeper\n"
			+ "You ticket out of hell\n"
			+ "You need to gather hell money to pay him to be able to leave\n\n");
		draw_sprite_ext(sprite_gatekeeper, -1, room_width / 16, 275, 3, 3, 0, c_white, 1);
		break;
	case level_transition1:
		var c = c_red;
		draw_text_transformed_colour(room_width / 2, 100, "Level 1", 3, 3, 0, c, c, c, c, 1);
		draw_sprite_ext(sprite_ghost1, 0, room_width / 16, 3 * room_height / 8, 3, 3, 0, c_white, 1);
		draw_set_halign(fa_left);
		draw_text(2 * room_width / 16, 3 * room_height / 8,
			"Basic ghost. Moves slower than you.\n"
			+ "Will chase if you are nearby and directly above, below or to her sides.\n"
			+ "Break the chase by running away or avoid staying in their direct vertical\n" 
			+ "or horizontal from their position.");
		draw_set_halign(fa_center);
		break;
	case level_transition2:
		var c = c_red;
		draw_text_transformed_colour(room_width / 2, 100, "Level 2", 3, 3, 0, c, c, c, c, 1);
		draw_set_halign(fa_left);
		draw_sprite_ext(sprite_ghost2, 0, room_width / 16, 3 * room_height / 8, 2, 2, 0, c_white, 1);
		draw_text(2 * room_width / 16, 3 * room_height / 8,
			"Medium ghost. Same behavior as basic ghost, but faster than you.\n");
		draw_sprite_ext(sprite_ghost3, 0, room_width / 16, 5 * room_height / 8, 2, 2, 0, c_white, 1);
		draw_text(2 * room_width / 16, 5 * room_height / 8,
			"Big ghost. A lot slower than you, but she's always chasing. Silent too.");
		draw_set_halign(fa_center);
		break;
	case level_transition3:
		var c = c_red;
		draw_text_transformed_colour(room_width / 2, 100, "Level 3", 3, 3, 0, c, c, c, c, 1);
		draw_set_halign(fa_left);
		draw_sprite_ext(sprite_gravestone, 0, room_width / 16, 3 * room_height / 8, 3, 3, 0, c_white, 1);
		draw_text(2 * room_width / 16, 3 * room_height / 8, 
			"Gravestone. Harmless, but blocks your path when you get close.\n"
			+ "Disappears after a while.");
		draw_set_halign(fa_center);
		break;
	case level_transition4:
		var c = c_red;
		draw_text_transformed_colour(room_width / 2, 100, "Level 4", 3, 3, 0, c, c, c, c, 1);
		draw_set_halign(fa_left);
		draw_sprite_ext(sprite_bossghost, 0, room_width / 16, 3 * room_height / 8, 2, 2, 0, c_white, 1);
		draw_text(2 * room_width / 16, 3 * room_height / 8,
			"Boss ghost. Constantly chases you while passing through walls.\n" 
			+ "Slightly slower than you but occasionally charges at high speed\n"
			+ "Keep him close so you know when to dodge");
		draw_sprite_ext(sprite_bossghostalt, 0, room_width / 16, 5 * room_height / 8, 2, 2, 0, c_white, 1);
		draw_text(2 * room_width / 16, 5 * room_height / 8,
			"Boss ghost's twin. Constantly chases you while passing through walls.\n" 
			+ "A lot slower than you but occasionally casts fireballs\n"
			+ "Stay away unless you want a face full of fireballs");
		draw_set_halign(fa_center);
		break;
	case level_select:
		var c = c_red;
		draw_text_transformed_colour(room_width / 2, 100, "Level Select", 3, 3, 0, c, c, c, c, 1);
		break;
	case level_clear:
		draw_text(room_width / 2, 300,
			"Congratulations! You have cleared the game!\n"
			+ "Thanks for playing\n"
			+ "Developer: Peigeng (Bacon-Strips)\n"
			+ "Artist: Jolin\n"
			+ "Designer: Vanessa & Yining\n"
			+ "QA Testor: Dominic");
		break;
	case game_over:
		var c = c_red;
		draw_text_transformed_colour(room_width / 2, 100, "Game Over", 3, 3, 0, c, c, c, c, 1);
		break;
}