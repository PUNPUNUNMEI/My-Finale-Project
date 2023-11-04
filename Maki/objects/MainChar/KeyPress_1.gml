if keyboard_check(vk_shift) {
	spd = 5;
}

if keyboard_check(ord("Z")) and negative_level = 1 {
	sprite_index = Shooting;
}

if keyboard_check(ord("X")) and negative_level = 1 {
	sprite_index = SwingSword;
}

if keyboard_check(ord("Z")) and negative_level = 2 {
	sprite_index = Shooting2;
}

if keyboard_check(ord("C")) and max_stack_nl = true and negative_level != 3 {
	negative_level += 1
	if negative_level > 1 {
		sprite_index = Change;
	}
	if negative_level > 2 {
		sprite_index = Change2;
	}
}

else;





