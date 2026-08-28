with (obj_mario)
{
	if visible == 1 && image_alpha == 1
		scr_shadows()
}

with (obj_mariointro)
{
	scr_shadows()
}

with (obj_groundparent)
{
	if visible == 1 && image_alpha == 1
		scr_shadows()
}

with (obj_blockparent)
{
	if visible == 1 && image_alpha == 1
		scr_shadows()
}

with (obj_rockparent)
{
	if visible == 1 && image_alpha == 1
		scr_shadows()
}

with (obj_physicsparent)
{
	if visible == 1 && image_alpha == 1
		scr_shadows()
}

with (obj_spinthump)
{
	if visible == 1 && image_alpha == 1
		scr_shadows()
}

if (global.shadows == 0)
	instance_destroy()