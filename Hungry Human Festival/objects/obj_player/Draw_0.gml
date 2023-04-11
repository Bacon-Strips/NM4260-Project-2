/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_rectangle_color(x - 10, y - 30, x + 10, y - 25, c_black, c_black, c_black, c_black, false);
draw_rectangle_color(x - 10, y - 30, x - 10 + (20 * (ghosty_duration / max_ghostyduration)), y - 25, c_aqua, c_aqua, c_aqua, c_aqua, false);
draw_rectangle_color(x - 10, y - 30, x + 10, y - 25, c_white, c_white, c_white, c_white, true);
if (ghosty_duration < 1) {
	draw_rectangle_color(x - 10, y - 30, x + 10, y - 25, c_red, c_red, c_red, c_red, false);	
}