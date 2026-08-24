function scr_mariofall(){
	switch(global.powerup) {
		case 0:
			return spr_mario_small_fall
		case 1:
			return spr_mario_big_fall
		default:
			return spr_mario_small_fall
	}
}