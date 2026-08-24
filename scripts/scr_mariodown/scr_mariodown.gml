function scr_mariodown(){
	switch(global.powerup) {
		case 0:
			return spr_mario_small_down
		case 1:
			return spr_mario_big_down
		default:
			return spr_mario_small_down
	}
}