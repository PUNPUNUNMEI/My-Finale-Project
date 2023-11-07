if keyboard_check(vk_shift) {
	spd = 5;
}

if keyboard_check(ord("Z")) and negative_level = 1 {
	sprite_index = Shooting;
	image_index = 0;
}

if keyboard_check(ord("X")) and negative_level = 1 {
	sprite_index = SwingSword;
	image_index = 0;
}

if keyboard_check(ord("Z")) and negative_level = 2 {
	sprite_index = Shooting2;
	image_index = 0;
}

if keyboard_check(ord("C")) and max_stack_nl = true and negative_level != 3 {
	negative_level += 1
	if negative_level > 1 {
		sprite_index = Change;
		image_index = 0;
	}
	if negative_level > 2 {
		sprite_index = Change2;
		image_index = 0;
	}
}

else;





