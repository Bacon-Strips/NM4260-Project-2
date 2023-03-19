/// @description Insert description here
// You can write your code in this editor

switch (room) {
	case main_menu:
		var c = c_red;
		draw_text_transformed_colour(room_width / 2, 100, "Hungry Human Festival", 3, 3, 0, c, c, c, c, 1);
		break;
	case how_to_play:
		draw_text(room_width / 2, 600, 
			"You are a little boy lost in hell. Help him find the\n" 
			+ "required hell money to pay the greedy gatekeeper to go home!\n\n"
			+ "UP: Move up\n"
			+ "DOWN: Move down\n"
			+ "LEFT: Move left\n"
			+ "RIGHT: Move right\n"
			+ "SPACE BAR: Throw holy water\n\n"
			+ "Holy water: Briefly stuns the ghosts haunting the maze\n\n"
			+ "Rosary beads: Your protection in hell. You lose one each time you get caught by a ghost.\n"
			+ "It is game over if you run out of them.");
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