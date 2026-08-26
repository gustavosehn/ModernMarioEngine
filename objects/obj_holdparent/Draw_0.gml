if (held == 1)
{
	if (instance_exists(obj_mario))
	{
		var xx, yy, inst
		inst = obj_mario
		xx = inst.x
		yy = inst.y
		
		if (global.powerup == 0)
		{
			if (inst.direct == 1)
			{
				if (inst.turn == 0)
				{
					xx = inst.x + 52
					yy = inst.y + 58
					vspeed = 0
					hspeed = 0
					gravity = 0
				} else
				{
					xx = inst.x
					yy = inst.y + 58
					vspeed = 0
					hspeed = 0
					gravity = 0
				}
			} else
			{
				if (inst.turn == 0)
				{
					xx = inst.x - 52
					yy = inst.y + 58
					vspeed = 0
					hspeed = 0
					gravity = 0
				} else
				{
					xx = inst.x
					yy = inst.y + 58
					vspeed = 0
					hspeed = 0
					gravity = 0
				}
			}
		}
		if (global.powerup > 0)
		{
			if (inst.direct == 1)
			{
				if (inst.turn == 0)
				{
					xx = inst.x + 52
					yy = inst.y + 58
					vspeed = 0
					hspeed = 0
					gravity = 0
				} else
				{
					xx = inst.x
					yy = inst.y + 58
					vspeed = 0
					hspeed = 0
					gravity = 0
				}
			} else
			{
				if (inst.turn == 0)
				{
					xx = inst.x - 52
					yy = inst.y + 58
					vspeed = 0
					hspeed = 0
					gravity = 0
				} else
				{
					xx = inst.x
					yy = inst.y + 58
					vspeed = 0
					hspeed = 0
					gravity = 0
				}
			}
		}
		vspeed = 0
		hspeed = 0
		gravity = 0
		x = xx
		y = yy
	}
}
draw_sprite_ext(sprite_index, image_index, x, y, direct, 1, image_angle, c_white, image_alpha)