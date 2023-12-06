timer++

if timer == 250  {
	instance_create_layer(Butterfry.x, Butterfry.y, "MainScreen", B);
	timer = 0;
}
