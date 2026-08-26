/// @description Mario's default step event
if (global.pp == 0)
{
	if (disablecontrols == 0) 
	{
		if (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x + 1, y - 1, obj_solid))
		{
			hspeed = 0
			while (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x, y - 1, obj_solid))
				x--
		}
		if (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x - 1, y - 1, obj_solid))
		{
			hspeed = 0
			while (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x, y - 1, obj_solid))
				x++
		}
		
		if (keyboard_check(global.key_up))
		{
			if (isduck == 0)
				isup = 1
		} else
		{
			isup = 0	
		}
		
		if (keyboard_check(global.key_left))
		{
			if (direct == 1 && holding == 1)
			{
				alarm[4] = 7
				turn = 1
			}
			direct = -1
			if (!collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x - 4, y - 1, obj_solid) && (isduck == 0 || !canjump))
			{
				if (hspeed > 0)
				{
					hspeed -= 0.4
				}
				else if (keyboard_check(global.throw_catch))
				{
					hspeed -= 0.24
					if (hspeed < -12)
						hspeed = -12
				}
				else
				{
					if (hspeed < -5.2)
						hspeed = min(hspeed + 0.6, -5.2)
					else
					{
						hspeed -= 0.24
						if (hspeed < -5.2)
							hspeed = -5.2
					}
				}
			}
		}
	
		if (keyboard_check(global.key_right))
		{
			if (direct == -1 && holding == 1)
			{
				alarm[4] = 7
				turn = 1
			}
			direct = 1
			if (!collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x + 4, y - 1, obj_solid) && (isduck == 0 || !canjump))
			{
				if (hspeed < 0)
				{
					hspeed += 0.4
				}
				else if (keyboard_check(global.throw_catch))
				{
					hspeed += 0.24
					if (hspeed > 12)
						hspeed = 12
				}
				else
				{
					if (hspeed > 5.2)
						hspeed = max(hspeed - 0.6, 5.2)
					else
					{
						hspeed += 0.24
						if (hspeed > 5.2)
							hspeed = 5.2
					}
				}
			}
		}
		
		if (keyboard_check(global.key_down))
		{
			if (vspeed == 0)
				isduck = 1
		} else
		{
			if (vspeed >= 0)
				isduck = 0
		}
	
		if (keyboard_check(global.jump_bounce) && !jumpnow)
		{
			if (collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + 2, obj_solidtop, false, true) && !collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x, y - 2, obj_solid))
			{
				if (hspeed == 0)
					vspeed = -16.2
				else if (abs(hspeed) < 10)
					vspeed = -18
				else if (abs(hspeed) >= 10)
					vspeed = -19
				jumphold = 0
				jumpcut = 0
				audio_play_sound(scr_snd_jump(), 0, 0)
			}
		}
	}
	jumpnow = keyboard_check(global.jump_bounce)
	if (!collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + 2, obj_solidtop, false, true))
	{
		if (!jumpcut && !keyboard_check(global.jump_bounce))
		{
			if (jumphold >= 4 && !collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x, y - 2, obj_solid))
			{
				if (vspeed < -6)
					vspeed = -6
				jumpcut = 1
			}
		}
		jumphold++
	}
	if (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x + 1, y - 1, obj_solid))
	{
		hspeed = 0
		while (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x, y - 1, obj_solid))
			x--
	}
	if (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x - 1, y - 1, obj_solid))
	{
		hspeed = 0
		while (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x, y - 1, obj_solid))
			x++
	}
}