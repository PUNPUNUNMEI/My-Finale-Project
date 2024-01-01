timer++;

move_towards_point(MainChar.x + 10, MainChar.y + 10, 1 * phase_lvl);


if timer == 250 / phase_lvl  {
	instance_create_layer(FryK.id.x + 30, FryK.id.y + 30, "MainScreen", fry);
	instance_create_layer(FryK.id.x + 30, FryK.id.y - 30, "MainScreen", fry);
	instance_create_layer(FryK.id.x - 30, FryK.id.y + 30, "MainScreen", fry);
	instance_create_layer(FryK.id.x - 30, FryK.id.y - 30, "MainScreen", fry);
	timer = 0;
}