timer++

if timer == 500  {
	instance_create_layer(KingMos.x, KingMos.y, "MainScreen", B2);
	timer = 0;
}

