/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
draw_set_font(font_player_lives);
draw_text(150, 50, "Life: " + "\n" 
		+ "Holy water: ");
for (var i = 0; i < player_lives; i++) {
	draw_sprite(sprite_rosarybeads, 0, 225 + 32 * i, 30);	
}

for (var i = 0; i < holywater; i++) {
	draw_sprite(sprite_holywater, 0, 275 + 32 * i, 75);	
}