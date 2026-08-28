if instance_exists(obj_mario_transform)
    depth = -5
else
    depth = -8
if (girar == 1)
    image_angle -= (16 * sign(hspeed))
if (rot_speed > 1)
    rot_speed -= 0.01
else
    rot_speed = 1
if (!instance_exists(obj_deadmario))
{
    if (vspeed > 0)
    {
        if (direct_y == -1)
        {
            gravity = 0.4
            if (vspeed > 4)
                vspeed = 4
        }
        else
        {
            gravity = 0.8
            if (vspeed > 16)
                vspeed = 16
        }
    }
    else
        gravity = 0.8
}
if (hspeed > 4 && hspeed < 8)
    hspeed = 4
else if (hspeed > -8 && hspeed < -4)
    hspeed = -4