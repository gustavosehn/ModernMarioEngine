if (other.vspeed >= 0)
{
	if (collision_rectangle(bbox_left + 4, bbox_top - 4, bbox_right - 4, bbox_top, other, 0, 1))
	{
		hardness -= 1
		
		if (hardness == 0)
		{
			instance_destroy()	
		}
	}
}

if (collision_rectangle(bbox_left, bbox_top + 4, bbox_left - 1, bbox_bottom, other, 0, 1))
{
	with (obj_mario)
	{
		event_user(0)	
	}
}

if (collision_rectangle(bbox_right, bbox_top + 4, bbox_right + 1, bbox_bottom, other, 0, 1))
{
	with (obj_mario)
	{
		event_user(0)	
	}
}