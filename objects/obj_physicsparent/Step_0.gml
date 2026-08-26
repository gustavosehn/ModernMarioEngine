if (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x, y - 4, obj_solidtop))
{
	if (vspeed >= 0)
		vspeed = 0
} else if (!collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x, y - 4, obj_solidtop))
{
	vspeed += 0.7
	if (vspeed > 19)
		vspeed = 19
}

event_user(3)