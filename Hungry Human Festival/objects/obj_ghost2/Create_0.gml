/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

default_room_speed = (2.2 * 60) / room_speed;
pounce_speed = (5.0 * 60) / room_speed;
move_speed = default_room_speed;
pouncing = false;
pounce_timer = 0;
buffer = 0;