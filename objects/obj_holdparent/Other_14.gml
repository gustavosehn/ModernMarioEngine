if (instance_exists(obj_mario)) 
{
	if (held == 1)
	{
		if (keyboard_check_released(global.throw_catch) && keyboard_check(global.key_up))
		{
			held = 0
			bouncy = 0
			vspeed = -25
			hspeed = obj_mario.hspeed * 0.5
			obj_mario.holding = 0
			obj_mario.kicking = 1
			instance_create(x, y, obj_spinthump)
			audio_play_sound(scr_snd_kick(), 0, 0)
			if (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x, y - abs(vspeed), obj_solid))
				vspeed = 0
			obj_mario.alarm[6] = 7
		}
		if (keyboard_check_released(global.throw_catch) && keyboard_check(global.key_down) && !keyboard_check(global.key_up))
		{
			held = 0
			bouncy = 0
			vspeed = 0
			hspeed = obj_mario.direct
			obj_mario.holding = 0
			if (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x, y, obj_solid))
				x = obj_mario.x
			obj_mario.alarm[6] = 7
		}
		if (keyboard_check_released(global.throw_catch) && !keyboard_check(global.key_down) && !keyboard_check(global.key_up))
		{
			held = 0
			bouncy = 4
			vspeed = -8
			if (abs(obj_mario.hspeed) < 3)
				hspeed = (8 * obj_mario.direct)
			else
				hspeed = ((obj_mario.hspeed * 1.35) * obj_mario.direct)
			obj_mario.holding = 0
			obj_mario.kicking = 1
			instance_create(x, y, obj_spinthump)
			audio_play_sound(scr_snd_kick(), 0, 0)
			if (collision_box(bbox_left, bbox_bottom, bbox_right, bbox_top, x, y, obj_solid))
				x = obj_mario.x
			obj_mario.alarm[6] = 7
		}
	}
}