/// @description Insert description here
// You can write your code in this editor

fireball_timer = irandom_range(5,10) * room_speed;

effect_create_above(ef_explosion, x, y, 1, c_orange);

var fire_direction = point_direction(x ,y, obj_player.x, obj_player.y)

instance_create_layer(x, y, "Instances", obj_fireball, {
	angle: fire_direction
});

instance_create_layer(x, y, "Instances", obj_fireball, {
	angle: fire_direction + 30
});

instance_create_layer(x, y, "Instances", obj_fireball, {
	angle: fire_direction - 30
});