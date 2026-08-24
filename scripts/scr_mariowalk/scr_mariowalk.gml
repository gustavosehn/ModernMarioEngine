function scr_mariowalk(){
	switch(global.powerup) {
		case 0:
			return spr_mario_small_walk
		case 1:
			return spr_mario_big_walk
		default:
			return spr_mario_small_walk
	}
}