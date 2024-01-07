if instance_exists(CROWS) {
	move_towards_point(-100, ystart, 5 * PhaseSystem.phase_lvl)
}

if x == -150 {
	instance_destroy(self.id, true);
}
