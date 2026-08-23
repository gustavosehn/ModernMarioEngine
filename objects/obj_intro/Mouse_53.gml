if (!instance_exists(obj_fadein))
{
	with instance_create(x, y, obj_fadein)
		target =  rm_template
	event_user(1)
}