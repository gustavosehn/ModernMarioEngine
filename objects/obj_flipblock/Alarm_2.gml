if (!collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x, y, obj_mario))
{
	instance_activate_object(mysolid)
	ready = 0
	image_speed = 0
	image_index = 0
} else
	alarm[2] = 30