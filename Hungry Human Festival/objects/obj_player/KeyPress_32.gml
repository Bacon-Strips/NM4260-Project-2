/// @description Insert description here
// You can write your code in this editor
with (obj_level_logic) {
	show_debug_message("testing space");
	if (obj_level_logic.holywater > 0) {
		obj_level_logic.alarm[3] = 1;
		instance_create_layer(obj_player.x, obj_player.y, "instances", obj_thrown_holywater)	
	}
}