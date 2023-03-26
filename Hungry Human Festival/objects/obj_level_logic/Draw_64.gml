/// @description Insert description here
// You can write your code in this editor
draw_rectangle_colour(0, 0, port_width, port_height / 20, c_lime, c_lime, c_lime, c_lime, false);
draw_set_color(c_black);
draw_set_font(font_player_lives);
draw_set_halign(fa_left);
draw_set_alpha(1);
draw_text(25, port_height / 35, "Life: ")
draw_text(350, port_height / 35, "Holy water: ")
draw_text(800, port_height / 35, "Hell money: ");
/**
		+ "Holy water: \n"
		+ "Hell money needed: " + string(max(0, obj_gatekeeppassive.gate_fee - hellmoney)));
*/
for (var i = 0; i < player_lives; i++) {
	draw_sprite(sprite_rosarybeads, 0, 125 + 32 * i, port_height / 35);	
}

for (var i = 0; i < holywater; i++) {
	draw_sprite_ext(sprite_holywater, 0, 585 + 32 * i, port_height / 35, 1.5, 1.5, 0, c_white, 1);	
}

for (var i = 0; i < obj_gatekeeppassive.gate_fee; i++) {
	if (i < hellmoney) {
		draw_sprite_ext(sprite_ghostmoney, 0, 1050 + 40 * i, port_height / 35, 1.5, 1.5, 0, c_white, 1);
	} else {
		draw_sprite_ext(sprite_ghostmoneynottaken, 0, 1050 + 40 * i, port_height / 35, 1.5, 1.5, 0, c_white, 1);
	}
	
}
