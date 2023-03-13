/// @description Insert description here
// You can write your code in this editor

dx = 0;
dy = 0;

var l = layer_get_id("collision_map");
tilemap = layer_tilemap_get_id(l);

show_debug_message(string(obj_player.image_index));

switch (obj_player.sprite_index) {
	case sprite_player_front:
		dy = (5 * 60) / room_speed;
		dx = 0;
		break;
	case sprite_player_back:
		dy = - (5 * 60) / room_speed;
		dx = 0;
		break;
	case sprite_player_side:
		if (obj_player.image_xscale == 1) {
			dy = 0;
			dx = (5 * 60) / room_speed;
		} else {
			dy = 0;
			dx = - (5 * 60) / room_speed;
		}
		break;
	default:
		dx = (5 * 60) / room_speed;
		dy = (5 * 60) / room_speed;
}

time_till_destruction = 1.5 * room_speed;