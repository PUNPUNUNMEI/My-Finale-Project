timer++

if timer == 1000 {
	timer = 0;
}

if timer % 200 * PhaseSystem.phase_lvl == 0 {
	switch(PhaseSystem.STAGE) {
		case 1:
			instance_create_layer(2000, random_range(0, 720), "MainScreen", Butterfry);
			instance_create_layer(2000, random_range(0, 720), "MainScreen", CROWS);
			instance_create_layer(2000, random_range(0, 720), "MainScreen", Mos);
			instance_create_layer(2000, random_range(0, 720), "MainScreen", KingMos);
		break;
		case 2:
			instance_create_layer(random_range(1000, 2000), -50, "MainScreen", eag);
			instance_create_layer(2000, 500, "MainScreen", EagK);
			instance_create_layer(random_range(90, 1200), -50, "MainScreen", FA);
			instance_create_layer(2000, random_range(0, 720), "MainScreen", HF);
		break;
		case 3:
			instance_create_layer(-2000, random_range(0, 720), "MainScreen", EEK);
			instance_create_layer(-2000, random_range(0, 720), "MainScreen", ghost);
			instance_create_layer(-2000, random_range(0, 720), "MainScreen", ghost22);
			instance_create_layer(-2000, random_range(0, 720), "MainScreen", ghost2223);
		break;
		case 4:
			instance_create_layer(random_range(1000, 2000), -50, "MainScreen", fruit1);
			instance_create_layer(random_range(1000, 2000), -50, "MainScreen", fruit125);
			instance_create_layer(random_range(1000, 2000), -50, "MainScreen", fruit12526);
			instance_create_layer(2000, random_range(0, 720), "MainScreen", FryK);
		break;
		case 5:
			instance_create_layer(2000, 500, "MainScreen", BigFish);
			instance_create_layer(random_range(1000, 2000), 800, "MainScreen", Fis1);
			instance_create_layer(random_range(1000, 2000), -50, "MainScreen", Fis130);
			instance_create_layer(random_range(1000, 2000), -50, "MainScreen", Squid);
		break;
			
	}
}
	