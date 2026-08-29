function scr_snd_score(){
		switch(obj_mario.hitpoints) {
		case 1:
			return snd_stomp
		case 2:
			return snd_kick2
		case 3:
			return snd_kick3
		case 4:
			return snd_kick4
		case 5:
			return snd_kick5
		case 6:
			return snd_kick6
		case 7:
			return snd_kick7
		case 8:
			return snd_1up
		default:
			return snd_stomp
	}
}