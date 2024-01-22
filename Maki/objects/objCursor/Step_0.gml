scrGetInput();

if input_up y -= 64;
if input_down y += 64;

//Play UI sounds
if !place_meeting(xprevious,yprevious,objButtonParent) && place_meeting(x,y,objButtonParent)
{
	audio_play_sound(sndFocusChange,0,0);	
}

//Play UI sounds
if !place_meeting(xprevious,yprevious,objSettingParent) && place_meeting(x,y,objSettingParent)
{
	audio_play_sound(sndFocusChange,0,0);	
}