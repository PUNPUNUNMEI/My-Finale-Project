if instance_exists(Butterfry) {
	move_towards_point(MainChar.x + 10, MainChar.y, 3 * PhaseSystem.phase_lvl);
}

if x == -100 {
	instance_destroy(other, true);
}

