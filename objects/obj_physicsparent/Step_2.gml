if (vspeed >= 0)
{
    if (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x, y, obj_solid))
    {
        vspeed = 0
        while (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x, y, obj_solid))
            y--
    }
}

if (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x + 4, y - 1, obj_solid))
{
    hspeed = 0
    while (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x + 3, y - 1, obj_solid))
        x--
}
if (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x - 4, y - 1, obj_solid))
{
    hspeed = 0
    while (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x - 3, y - 1, obj_solid))
        x++
}