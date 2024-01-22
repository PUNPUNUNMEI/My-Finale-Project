switch room{
	
	case rmMenu:
		audio_stop_all();
		audio_play_sound(Hope, -1, true);
	break;
	
	case Main:
		audio_stop_all();
		audio_play_sound(mus_boss, -1, true);
	break;
	
	case rmCredits:
		audio_stop_all();
		audio_play_sound(mus_shop02, -1, true);
	break;
	
}
