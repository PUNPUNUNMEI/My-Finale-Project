timer++

if timer == 1000 {
	timer = 0;
}

if timer % 100 * PhaseSystem.phase_lvl == 0 {
	switch(PhaseSystem.STAGE) {
		case 1:
			instance_create_layer(1320, random_range(0, 720), "MainScreen", Butterfry);
			instance_create_layer(1320, random_range(0, 720), "MainScreen", CROWS);
			instance_create_layer(1320, random_range(0, 720), "MainScreen", Mos);
		break;
	}
}
	