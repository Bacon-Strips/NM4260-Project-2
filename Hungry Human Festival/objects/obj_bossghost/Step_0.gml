/// @description Insert description here
// You can write your code in this editor
stunned--;
charge_timer--;
charge_prep--;
charging_duration--;

if (stunned >= 0) {
	return;	
}

image_alpha = 1;

if (charging_duration > 0) {
	return;	
} else if (charging_duration == 0) {
	charge_timer = irandom_range(3, 7) * room_speed;	
}

if (charge_prep == 0) {
	move_speed = default_room_speed
	move_towards_point(obj_player.x, obj_player.y, move_speed * 4);
	charging_duration = 1.5 * room_speed;
	return;
} else if (charge_prep > 0) {
	effect_create_above(ef_firework, x, y, 1, c_orange)
	return;	
}

if (charge_timer <= 0) {
	charge_prep = room_speed / 2;
	move_speed = 0;
	move_towards_point(obj_player.x, obj_player.y, move_speed);
	return;
}

move_towards_point(obj_player.x, obj_player.y, move_speed);