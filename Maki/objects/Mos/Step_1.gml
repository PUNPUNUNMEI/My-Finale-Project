if instance_exists(Mos) {
	move_towards_point(MainChar.x + 10, MainChar.y, 5 * PhaseSystem.phase_lvl);
}

if x == -100 {
	instance_destroy(Mos.id, true);
}

