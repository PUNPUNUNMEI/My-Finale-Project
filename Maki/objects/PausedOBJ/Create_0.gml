gpu_set_tex_filter(false);

//general
draw_set_font(Phase);

pause = false;
gwidth = 1410;
gheight = 768;
cx = gwidth / 2;
cy = gheight / 2;
screen_alpha = 0;
screen_alpha_set = 0;

window = true;
windowprey = true;

//buttons

b = 1;
bc = 0;
bgap = 40;

var n = 0;
bstring[n] = "Resume"; n++;
bstring[n] = "Restart"; n++;
bstring[n] = "MainMenu"; n++;
bstring[n] = "Exit"; n++;

for(i = 0; i < bc; i++){
	bx[i] = 0;
	by[i] = 0;
	bsca[i] = 1;
	bcol[i] = c_white;
	balpha[i] = 1;
	bxoff[i] = 0;
	byoff[i] = 0;
}
