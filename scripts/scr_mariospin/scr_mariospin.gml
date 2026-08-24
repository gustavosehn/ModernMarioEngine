function scr_mariospin(){
	switch(global.powerup) {
		case 0:
			return spr_mario_small_spin
		case 1:
			return spr_mario_big_spin
		default:
			return spr_mario_small_spin
	}
}