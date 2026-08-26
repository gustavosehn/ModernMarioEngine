if (instance_exists(obj_mario))
{
	if (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x, y, obj_mario))
	{
		if (keyboard_check(global.throw_catch) && obj_mario.holding == 0 && held == 0)
		{
			obj_mario.holding = 1
			held = 1
			vspeed = 0
			hspeed = 0
			depth = obj_mario.depth++
		}
	}
}