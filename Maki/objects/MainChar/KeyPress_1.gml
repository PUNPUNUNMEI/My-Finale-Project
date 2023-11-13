if keyboard_check(vk_shift) {
	spd = 5;
}

if keyboard_check(ord("Z")) and phase_lvl = 1 {
	sprite_index = Shooting;
	image_index = 0;
}

if keyboard_check(ord("X")) and phase_lvl = 1 {
	sprite_index = SwingSword;
	image_index = 0;
}

if keyboard_check(ord("Z")) and phase_lvl = 2 {
	sprite_index = Shooting2;
	image_index = 0;
}


else;





