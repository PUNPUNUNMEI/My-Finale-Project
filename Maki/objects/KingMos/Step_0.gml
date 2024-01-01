timer++;

if timer >= 1000 / phase_lvl  {
	instance_create_layer(KingMos.id.x, KingMos.id.y, "MainScreen", B2);
	timer = 0;
}

