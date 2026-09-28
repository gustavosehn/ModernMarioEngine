if (obj_mario.spinjump == 0)
{
	with instance_create_depth(x, y, -99, obj_enemydead)
	{
		sprite_index = other.sprite_index	
	}
	
	instance_create_depth(x, y, depth, obj_spinthump)
	
	with obj_mario
	{
		hitpoints++
		event_user(14)
	}
	
} else
{
	with instance_create_depth(x, y, depth, obj_spinstar)
	{
		hspeed = -6
		vspeed = -6
	}

	with instance_create_depth(x, y, depth, obj_spinstar)
	{
		hspeed = 6
		vspeed = -6
	}

	with instance_create_depth(x, y, depth, obj_spinstar)
	{
		hspeed = -6
		vspeed = 6
	}

	with instance_create_depth(x, y, depth, obj_spinstar)
	{
		hspeed = 6
		vspeed = 6
	}

	with instance_create_depth(x, y, depth, obj_smoke)
	{
		sprite_index = spr_smokebig	
	}
	
	audio_play_sound(snd_stomp, 0, 0)
}

with obj_mario
{
	event_user(7)
}