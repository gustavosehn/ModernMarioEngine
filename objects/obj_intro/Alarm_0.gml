if (!instance_exists(obj_fadein))
{
	with instance_create(x, y, obj_fadein)
		target =  rm_template
	global.ambiente = "ground"
}