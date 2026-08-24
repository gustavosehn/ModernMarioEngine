if global.ambiente == "sky" || global.ambiente == "airship" {
    if editor == 0 {
        bg_xspeed--
        __background_set(e__BG.X, 0, bg_xspeed)
    }
} else
    __background_set(e__BG.X, 0, 0)
	
if instance_exists(obj_mario)
    if obj_mario.y > 1800
        event_user(1)
		
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

var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])

var backinfo = __background_get_element(0)

__background_set_internal(e__BG.X, 0, camx * 0.3, backinfo)