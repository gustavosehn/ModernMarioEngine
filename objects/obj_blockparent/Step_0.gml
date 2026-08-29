if (collision_rectangle(bbox_left + 2, bbox_bottom + 3, bbox_right - 2, bbox_bottom, obj_mario, false, true) && ready == 0)
{
	ready = 1
	event_user(2)
}