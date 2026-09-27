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
event_user(7)