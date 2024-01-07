timer++;

if timer == 3000 {
	phaselvl_step++;
	ScoreUI.score =+ 100;
	STAGE = int64(random_range(1, 5));
	timer = 0;
}







