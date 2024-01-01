if instance_exists(EagK) {
	move_towards_point(MainChar.x + 10, MainChar.y + 10, 3 * phase_lvl);
}

if x == -100 {
	instance_destroy(EagK.id, true);
}


