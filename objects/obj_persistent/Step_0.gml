np_update()
np_setpresence("", "", "logo", "")

switch(global.ambiente)
{
	case "ground":
		global.fade = 0.25
		break
	case "sky":
		global.fade = 0.25
		break
	case "underground":
		global.fade = 0.2
		break
	case "castle":
		global.fade = 0.5
		break
	default:
		global.fade = 0.25
		break
}