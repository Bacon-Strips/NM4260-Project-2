/// @description Insert description here
// You can write your code in this editor

var i = irandom(5);

switch (i) {
	case 1:
		audio_play_sound(sound_ghostdiscovered1, 1, false);
		break;
	case 2:
		audio_play_sound(sound_ghostdiscovered2, 1, false);
		break;
	case 3:
		audio_play_sound(sound_ghostdiscovered3, 1, false);
		break;
	case 4:
		audio_play_sound(sound_ghostdiscovered4, 1, false);
		break;
	case 5:
		audio_play_sound(sound_ghostdiscovered5, 1, false);
		break;
	default:
		audio_play_sound(sound_ghostdiscovered1, 1, false);
}