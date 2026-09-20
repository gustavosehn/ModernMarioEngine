function scr_tile_ground_start() {
	switch(global.ambiente) {
		case "ground":
			return spr_ground
		case "sky":
			return spr_ground6
		case "underground":
			return spr_ground2
		case "castle":
			return spr_ground8
		case "snow":
			return spr_ground7
		case "airship":
			return spr_ground5
		case "desert":
			return spr_ground9
	}
}