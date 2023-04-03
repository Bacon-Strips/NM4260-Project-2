/// @description Insert description here
// You can write your code in this editor
draw_rectangle_colour(0, 0, port_width, port_height / 20, c_lime, c_lime, c_lime, c_lime, false);
draw_set_color(c_black);
draw_set_font(font_player_lives);
draw_set_halign(fa_left);
draw_set_alpha(1);
draw_text(25, port_height / 35, "Life: ");
draw_text(350, port_height / 35, "Holy water: ");
draw_text(750, port_height / 35, "Hell money: ");
draw_text(1400, port_height / 35, "Pause: P / ESC");
/**
		+ "Holy water: \n"
		+ "Hell money needed: " + string(max(0, obj_gatekeeppassive.gate_fee - hellmoney)));
*/
for (var i = 0; i < player_lives; i++) {
	draw_sprite(sprite_rosarybeads, 0, 125 + 32 * i, port_height / 35);	
}

for (var i = 0; i < holywater; i++) {
	draw_sprite_ext(sprite_holywater, 0, 550 + 32 * i, port_height / 35, 1, 1, 0, c_white, 1);	
}

for (var i = 0; i < obj_gatekeeppassive.gate_fee; i++) {
	if (i < hellmoney) {
		draw_sprite_ext(sprite_ghostmoney, 0, 950 + 32 * i, port_height / 35, 1, 1, 0, c_white, 1);
	} else {
		draw_sprite_ext(sprite_ghostmoneynottaken, 0, 950 + 32 * i, port_height / 35, 1, 1, 0, c_white, 1);
	}
}

draw_rectangle_color(1200, port_height / 60, 1350, 2 * port_height / 60, c_black, c_black, c_black, c_black, false);
draw_rectangle_color(1200, port_height / 60, 1200 + 150 * (obj_player.ghosty_duration / 3000), port_height / 30, c_aqua, c_aqua, c_aqua, c_aqua, false);
draw_rectangle_color(1200, port_height / 60, 1350, 2 * port_height / 60, c_black, c_black, c_black, c_black, true);


if (player_lives <= 1) {
	draw_set_alpha(0.2);
	draw_rectangle_colour(0, 0, port_width, port_height, c_red, c_red, c_red, c_red, false);
	draw_set_alpha(1)
}

if (paused) {
	draw_sprite_ext(sprite_pausemenu, 0, port_width / 2, 21 * port_height / 40, 1.5, 5, 0, c_white, 1);
	draw_set_halign(fa_center);
	draw_set_font(font_instructions_header);
	draw_text_transformed_color(port_width / 2, 5 * port_height / 20, 
		"Paused", 2, 2, 0, c_red, c_red, c_red, c_red, 1);
}