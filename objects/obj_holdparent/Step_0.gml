if (held == 0)
{
    if (landed == 1)
    {
        if (!collision_rectangle(bbox_left + 4, bbox_bottom, bbox_right - 4, bbox_bottom + 1, obj_solid, false, true))
            landed = 0

        if (hspeed > 0)
        {
            hspeed -= 0.24
            if (hspeed < 0)
                hspeed = 0
        }
        else if (hspeed < 0)
        {
            hspeed += 0.24
            if (hspeed > 0)
                hspeed = 0
        }
    }

    if (landed == 0)
    {
        if (vspeed >= 0 || !collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x, y - 4, obj_solidtop))
        {
            vspeed += 0.7
            if (vspeed > 19)
                vspeed = 19
        }
    }

    if (vspeed < 0)
    {
        landed = 0
        if (collision_rectangle(bbox_left + 8, bbox_top, bbox_right - 8, bbox_top + 2, obj_solid, false, true))
        {
            vspeed = 0
            while (collision_rectangle(bbox_left + 12, bbox_top, bbox_right - 12, bbox_top + 2, obj_solid, false, true))
                y++
        }
    }
    else if (vspeed >= 0)
    {
        if (collision_rectangle(bbox_left + 12, bbox_bottom - 2, bbox_right - 12, bbox_bottom, obj_solid, false, true))
        {
            if (bouncy < 1)
            {
                vspeed = 0
                landed = 1
            } else
            {
                vspeed = -bouncy
                bouncy *= 0.5
            }
            while (collision_rectangle(bbox_left + 12, bbox_bottom - 2, bbox_right - 12, bbox_bottom, obj_solid, false, true))
                y--
            y = floor(y)
        }
    }

    if (collision_rectangle(bbox_right, bbox_top + 10, bbox_right + 2, bbox_bottom - 10, obj_solid, false, true))
    {
        hspeed = 0
        while (collision_rectangle(bbox_right, bbox_top + 10, bbox_right + 2, bbox_bottom - 10, obj_solid, false, true))
            x--
    }
    if (collision_rectangle(bbox_left - 2, bbox_top + 10, bbox_left, bbox_bottom - 10, obj_solid, false, true))
    {
        hspeed = 0
        while (collision_rectangle(bbox_left - 2, bbox_top + 10, bbox_left, bbox_bottom - 10, obj_solid, false, true))
            x++
    }
}
event_user(3)
event_user(4)