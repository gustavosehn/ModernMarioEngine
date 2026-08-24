function scr_marioclear(){
	switch(global.powerup) {
		case 0:
			return spr_mario_small_clear
		case 1:
			return spr_mario_big_clear
		default:
			return spr_mario_small_clear
	}
}