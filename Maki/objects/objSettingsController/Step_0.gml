if room == rmSplash
{
	//Load audio groups
	if !audio_group_is_loaded(audiogroup_sounds) audio_group_load(audiogroup_sounds);
	if !audio_group_is_loaded(audiogroup_music) audio_group_load(audiogroup_music);
	if !audio_group_is_loaded(audiogroup_ui) audio_group_load(audiogroup_ui);
	
	//Finish loading & proceed to title screen
	if audio_group_is_loaded(audiogroup_sounds) && audio_group_is_loaded(audiogroup_music) && audio_group_is_loaded(audiogroup_ui)
	{
		room_goto(rmMenu);	
	}
}

switch room
{
	case rmDisplaySettings:
	//Open settings
	ini_open("settings.ini");

	//Save display settings
	ini_write_real("Display","Fullscreen",global.fullscreen);
	ini_write_real("Display","Zoom",global.zoom);
	
	global.fullscreen = objSettingFullscreen.setting;
	window_set_fullscreen(global.fullscreen);

	//Done saving settings
	ini_close();
	break;
	
	case rmAudioSettings:
	//Open settings
	ini_open("settings.ini");

	//Save audio settings
	global.master_volume = objSettingMasterVol.setting;
	global.sounds_volume = objSettingSoundVol.setting;
	global.music_volume = objSettingMusicVol.setting;
	global.interface_volume = objSettingUIVol.setting;

	audio_group_set_gain(audiogroup_sounds,global.master_volume/10*(global.sounds_volume/10),0);
	audio_group_set_gain(audiogroup_music,global.master_volume/10*(global.music_volume/10),0);
	audio_group_set_gain(audiogroup_ui,global.master_volume/10*(global.interface_volume/10),0);
	
	ini_write_real("Audio","Master",global.master_volume);
	ini_write_real("Audio","Sounds",global.sounds_volume);
	ini_write_real("Audio","Music",global.music_volume);
	ini_write_real("Audio","UI",global.interface_volume);
	
	//Done saving audio settings
	ini_close();
	break;
	
	case rmInterfaceSettings:
	//Open settings
	ini_open("settings.ini");
	
	//Save interface settings
	global.language = objSettingLanguage.setting;
	global.ui_opacity = objSettingOpacity.setting;
	global.text_size = objSettingTextSize.setting;
	
	ini_write_real("Interface","Language",global.language);
	ini_write_real("Interface","Opacity",global.ui_opacity);
	ini_write_real("Interface","Text size",global.text_size);

	//Done saving interface settings
	ini_close();
	break;
}

//Detect input device change
switch global.input
{
	//Keyboard active
	case -2:
	objCursor.visible = false;
	if mouse_check_button_pressed(mb_any) global.input = -1;
	else if scrGamepadAnyButtonPressed() > -1 global.input = i;
	break;
	
	//Mouse active
	case -1:
	objCursor.visible = true;
	if keyboard_check_pressed(vk_anykey) 
	{
		global.input = -2;
		objCursor.x = instance_nearest(x,y,objButtonParent).x;
		objCursor.y = instance_nearest(x,y,objButtonParent).y;
	}
	else if scrGamepadAnyButtonPressed() > -1 
	{
		global.input = i;
		objCursor.x = instance_nearest(x,y,objButtonParent).x;
		objCursor.y = instance_nearest(x,y,objButtonParent).y;
	}
	break;
	
	//Gamepad active
	default:
	objCursor.visible = false;
	if mouse_check_button_pressed(mb_any) 
	{
		global.input = -1;
		objCursor.x = instance_nearest(x,y,objButtonParent).x;
		objCursor.y = instance_nearest(x,y,objButtonParent).y;
	}
	if keyboard_check_pressed(vk_anykey) 
	{
		global.input = -2;
		objCursor.x = instance_nearest(x,y,objButtonParent).x;
		objCursor.y = instance_nearest(x,y,objButtonParent).y;
	}
	break;
}