function scr_mariorun(){
	switch(global.powerup) {
		case 0:
			return spr_mario_small_run
		case 1:
			return spr_mario_big_run
		default:
			return spr_mario_small_run
	}
}