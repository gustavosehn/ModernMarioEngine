if (disablecontrols == 0) 
{
	if (keyboard_check(global.key_left)) {
		if (!collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x + 2, y - 1, obj_solid))
		{
			
		}
	}
}