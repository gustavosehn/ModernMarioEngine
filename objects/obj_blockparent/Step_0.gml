if (collision_rectangle(bbox_left + 4, bbox_bottom + 3, bbox_right - 4, bbox_bottom, obj_mario, false, true) && ready == 0)
{
	if (obj_mario.vspeed < 0)
	{
		ready = 1
		event_user(2)
		event_user(3)
	}
}