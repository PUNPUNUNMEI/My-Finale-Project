timer++;

if timer == 100 / phase_lvl  {
	instance_create_layer(Squid.id.x + 10, Squid.id.y, "MainScreen", Cum);
	timer = 0;
}