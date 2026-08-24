function scr_mariojump(){
	switch(global.powerup) {
		case 0:
			return spr_mario_small_jump
		case 1:
			return spr_mario_big_jump
		default:
			return spr_mario_small_jump
	}
}