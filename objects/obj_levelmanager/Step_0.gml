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