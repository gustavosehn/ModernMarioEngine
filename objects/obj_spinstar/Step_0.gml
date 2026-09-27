if (vspeed == 0 && hspeed == 0)
{
	scale = lerp(scale, 0, 0.15)	
	if (scale == 0)
	{
		instance_destroy()	
	}
}