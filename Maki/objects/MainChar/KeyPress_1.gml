if keyboard_check(vk_shift) {
	spd = 5;
}

if keyboard_check_pressed(ord("Z")) and bullet != 0 {
	instance_create_layer(x + 90, y + 40, "MainScreen", Bullet);
	bullet -= 1;
	sprite_index = Shooting;
	image_index = 0;
}

if keyboard_check_pressed(ord("X")) {
	sprite_index = SwingSword;
	image_index = 0;
}

else;





