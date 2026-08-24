sprite_index = spr_decoration_1
image_speed = 0

switch(global.ambiente) {
	case "ground":
		image_index = 0
		break
	case "sky":
		image_index = 1
		break
	case "underground":
		image_index = 2
		break
	case "castle":
		image_index = 3
		break
}

event_user(0)