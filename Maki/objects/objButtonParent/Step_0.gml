if place_meeting(x,y,objCursor) && objCursor.input_interact && objCursor.pressed == false 
{
	objCursor.pressed = true;
	objCursor.alarm[0] = 10;
	script_execute(action);
}

switch global.text_size
{
	case 0: font = Phase; break;	
	case 1: font = Phase; break;	
	case 2: font = Phase; break;	
	default: font = Phase; break;
}