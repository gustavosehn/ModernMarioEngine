function scr_mariokick(){
	switch(global.powerup) {
		case 0:
			return spr_mario_small_kick
		case 1:
			return spr_mario_big_kick
		default:
			return spr_mario_small_kick
	}
}