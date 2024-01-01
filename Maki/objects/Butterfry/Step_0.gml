timer++;

if timer >= 1000 / phase_lvl {
	instance_create_layer(Butterfry.id.x, Butterfry.id.y, "MainScreen", B);
	timer = 0;
}
