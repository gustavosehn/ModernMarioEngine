if (vspeed < 0)
{
	if (other.bbox_bottom < y)
	{
		vspeed = 0
		with (other)
		{
			event_user(2)
		}
	}
}