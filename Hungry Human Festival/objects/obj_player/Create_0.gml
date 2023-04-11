/// @description Insert description here
// You can write your code in this editor
holy_effect = 0;
default_speed = (2 * 60) / room_speed;
move_speed = default_speed;

var l = layer_get_id("collision_map");
tilemap = layer_tilemap_get_id(l);
var k = layer_get_id("collision_map_1");
tilemap2 = layer_tilemap_get_id(k);
invincibility_time = 0;
fix_directionx = 0;
fix_directiony = 0;
dead = false;
paused = false;
ghosty = false;
max_ghostyduration = 3000;
ghosty_duration = max_ghostyduration;
ghosty_buffer = 0;

sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);
