function scr_mario_hold_down(){
	switch(global.powerup) {
		case 0:
			return spr_mario_small_down_hold
		case 1:
			return spr_mario_big_down_hold
		default:
			return spr_mario_small_down_hold
	}
}