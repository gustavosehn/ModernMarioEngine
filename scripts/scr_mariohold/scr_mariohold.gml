function scr_mariohold(){
	switch(global.powerup) {
		case 0:
			return spr_mario_small_hold
		case 1:
			return spr_mario_big_hold
		default:
			return spr_mario_small_hold
	}
}