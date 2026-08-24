function scr_marioidle(){
	switch(global.powerup) {
		case 0:
			return spr_mario_small_idle
		case 1:
			return spr_mario_big_idle
		default:
			return spr_mario_small_idle
	}
}