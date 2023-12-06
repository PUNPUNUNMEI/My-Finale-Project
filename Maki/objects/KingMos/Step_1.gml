if instance_exists(KingMos) {
	move_towards_point(MainChar.x + 10, MainChar.y + 10, 4 * PhaseSystem.phase_lvl);
}

if x == -100 {
	instance_destroy(other, true);
}

