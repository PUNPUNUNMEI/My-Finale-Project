if keyboard_check(vk_shift) {
	spd = 5;
}

if keyboard_check_pressed(ord("Z")) and bullet != 0 {
	instance_create_layer(x + 0, y + -10, "MainScreen", Bullet);
	bullet -= 1;
	sprite_index = Shooting;
	image_index = 0;
}

if keyboard_check_pressed(ord("X")) {
	sprite_index = SwingSword;
	instance_create_layer(x + 20, y + -55, "MainScreen", hitbox);
	image_index = 0;
}


else;





