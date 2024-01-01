timer++;

if timer == 3000 {
	phase_lvl++;
	STAGE = int64(random_range(1, 5));
	timer = 0;
}







