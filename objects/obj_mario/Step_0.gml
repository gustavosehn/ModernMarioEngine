/// @description Handles Mario's physics and movements
if (global.pp == 0)
{
	if (state < 4)
	{
		var topblock = collision_rectangle(bbox_left, bbox_bottom - vspeed - 1, bbox_right, bbox_bottom + 2, obj_solidtop, false, true)
		mask_index = spr_smallmask
		if (vspeed >= 0)
		{
			if (topblock != noone)
			{
				if (canjump == 0)
					event_user(15)
				canjump = 1
				y = topblock.bbox_top - (bbox_bottom - y)
			}
			else
				canjump = 0
		}
		else
		{
			canjump = 0
		}
		if (canjump)
		{
		    vspeed = 0
		}
		else
		{
		    if (vspeed < 0)
		        vspeed += 0.5
		    else
		        vspeed += 1.1
		    if (vspeed > 17)
		        vspeed = 17
		}
		if ((!keyboard_check(global.key_left) && !keyboard_check(global.key_right)) || (isduck == 1 && canjump))
		{
			if (vspeed == 0) {
				if (hspeed < 0)
					hspeed = min(hspeed + 0.24, 0)
				else if (hspeed > 0)
					hspeed = max(hspeed - 0.24, 0)
			}
		}
		if (vspeed >= 0)
		{
			if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom + 2, obj_solid, false, true))
			{
				if (canjump == 0)
					event_user(15)
				vspeed = 0
				while (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, false, true))
					y--
			}
		}
		if (vspeed < 0)
		{
			if (collision_rectangle(bbox_left + 2, bbox_top - 2, bbox_right - 2, bbox_top, obj_solid, false, true))
			{
				vspeed = 0
				while (collision_rectangle(bbox_left + 2, bbox_top - 1, bbox_right - 2, bbox_top, obj_solid, false, true))
					y++
			}
		}
		if (collision_rectangle(bbox_right, bbox_top + 4, bbox_right + 4, bbox_bottom - 2, obj_solid, false, true))
		{
			hspeed = 0
			while (collision_rectangle(bbox_right, bbox_top + 4, bbox_right + 1, bbox_bottom - 2, obj_solid, false, true))
				x--
		}
		if (collision_rectangle(bbox_left - 4, bbox_top + 4, bbox_left, bbox_bottom - 2, obj_solid, false, true))
		{
			hspeed = 0
			while (collision_rectangle(bbox_left - 1, bbox_top + 4, bbox_left, bbox_bottom - 2, obj_solid, false, true))
				x++
		}
		if (hspeed == 0 && (vspeed == 0 && (collision_rectangle(bbox_left, bbox_bottom - 1, bbox_right, bbox_bottom + 2, obj_solidtop, false, true))))
		    state = 0
		else if (hspeed != 0 && (vspeed == 0 && (collision_rectangle(bbox_left, bbox_bottom - 1, bbox_right, bbox_bottom + 2, obj_solidtop, false, true))))
		{
		    if (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x + 5, y - 1, obj_solid)) or (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x - 5, y - 1, obj_solid))
		        state = 0
		    else
		        state = 1
		}
		else if (vspeed < 0)
		    state = 2
		else if (vspeed > 0)
		    state = 3
	
		if (keyboard_check(global.key_left) && hspeed > 8)
		{
		    skidnow = 1
			if (!audio_is_playing(scr_snd_skid()))
				audio_play_sound(scr_snd_skid(), 0, 1)
		}
		else if (keyboard_check(global.key_right) && hspeed < -8)
		{
		    skidnow = 1
			if (!audio_is_playing(scr_snd_skid()))
				audio_play_sound(scr_snd_skid(), 0, 1)
		}
		else if (hspeed > 0 && hspeed < 2 && isduck == 1 && canjump == 1)
		{
		    skidnow = 1
			if (!audio_is_playing(scr_snd_skid()))
				audio_play_sound(scr_snd_skid(), 0, 1)
		}
		else if (hspeed < 0 && hspeed > -2 && isduck == 1 && canjump == 1)
		{
		    skidnow = 1
			if (!audio_is_playing(scr_snd_skid()))
				audio_play_sound(scr_snd_skid(), 0, 1)
		} else
		{
		    skidnow = 0
			audio_stop_sound(scr_snd_skid())
		}
		
		if (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x, y - 4, obj_solid))
		{
			audio_stop_sound(scr_snd_jump())
			if !audio_is_playing(scr_snd_bump())
			{
				audio_play_sound(scr_snd_bump(), 0, 0)
			}
		}
	
		event_user(2)
	}
}