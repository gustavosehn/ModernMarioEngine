function scr_mario_hold_up(){
	switch(global.powerup) {
		case 0:
			return spr_mario_small_up_hold
		case 1:
			return spr_mario_big_up_hold
		default:
			return spr_mario_small_up_hold
	}
}