function scr_marioskid(){
	switch(global.powerup) {
		case 0:
			return spr_mario_small_skid
		case 1:
			return spr_mario_big_skid
		default:
			return spr_mario_small_skid
	}
}