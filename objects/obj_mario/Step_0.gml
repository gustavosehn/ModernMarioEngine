/// @description Handles Mario's physics and movements
if (global.pp == 0)
{
	if (state < 4)
	{
		mask_index = spr_smallmask
		if (vspeed >= 0)
		{
			if (collision_rectangle(bbox_left, bbox_bottom - 1, bbox_right, bbox_bottom + 2, obj_solidtop, false, true))
				canjump = 1
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
			if (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x, y, obj_solid))
			{
				vspeed = 0
				while (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x, y, obj_solid))
					y--
			}
		}
	
		if (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x + 4, y - 1, obj_solid))
		{
			hspeed = 0
			while (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x + 3, y - 1, obj_solid))
				x--
		}
		if (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x - 4, y - 1, obj_solid))
		{
			hspeed = 0
			while (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x - 3, y - 1, obj_solid))
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
	
		event_user(2)
	}
}