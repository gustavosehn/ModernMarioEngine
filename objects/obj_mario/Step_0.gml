if (state <= 3)
{
	mask_index = spr_smallmask
	if (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x, y + 2, obj_solidtop))
		canjump = 1
	else if (!collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x, y + 2, obj_solidtop))
		canjump = 0
	
	if (keyboard_check_released(global.key_left) && (keyboard_check_released(global.key_right)))
	{
		if (xspeed < 0)
			xspeed = min(xspeed + 0.24, 0)
		else if (xspeed > 0)
			xspeed = max(xspeed - 0.24, 0)
	}
	if (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x, y + 2, obj_solid))
	{
		yspeed = 0
		while (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x, y, obj_solid))
			y--
	}
	
	if (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x + 2, y - 1, obj_solid))
	{
		xspeed = 0
		while (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x + 1, y - 1, obj_solid))
			x--
	}

	if (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x - 2, y - 1, obj_solid))
	{
		xspeed = 0
		while (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x - 1, y - 1, obj_solid))
			x++
	}
	
	event_user(2)
}