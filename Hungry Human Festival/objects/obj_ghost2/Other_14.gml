/// @description Insert description here
// You can write your code in this editor

if (!chasing && chasetime <= 0) {
	var i = irandom(5);

	switch (i) {
		case 1:
			audio_play_sound(sound_ghost2discovered1, 1, false);
			break;
		case 2:
			audio_play_sound(sound_ghost2discovered2, 1, false);
			break;
		case 3:
			audio_play_sound(sound_ghost2discovered3, 1, false);
			break;
		case 4:
			audio_play_sound(sound_ghost2discovered4, 1, false);
			break;
		case 5:
			audio_play_sound(sound_ghost2discovered5, 1, false);
			break;
		default:
			audio_play_sound(sound_ghost2discovered1, 1, false);
	}
}
/*
if (!chasing) {
	pounce_timer = room_speed * 2;
	move_speed = pounce_speed;
	path_end();
}
*/
chasing = true;
chasetime = 3 * room_speed;	

event_user(2);	