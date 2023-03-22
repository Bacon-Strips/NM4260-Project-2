/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(0.5);
draw_rectangle_colour(0, 0, 500, 200, c_lime, c_lime, c_lime, c_lime, false);
draw_set_color(c_black);
draw_set_font(font_player_lives);
draw_set_halign(fa_left);
draw_set_alpha(1);
draw_text(25, 100, "Life: " + "\n" 
		+ "Holy water: \n"
		+ "Hell money needed: " + string(max(0, obj_gatekeeppassive.gate_fee - hellmoney)));
for (var i = 0; i < player_lives; i++) {
	draw_sprite(sprite_rosarybeads, 0, 125 + 32 * i, 50);	
}

for (var i = 0; i < holywater; i++) {
	draw_sprite(sprite_holywater, 0, 275 + 32 * i, 100);	
}
