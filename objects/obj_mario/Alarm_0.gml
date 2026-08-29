/// @description Make Mario's alpha blink
if (invulnerable == 1)
{
	if image_alpha == 1
	    image_alpha = 0
	else
	    image_alpha = 1
	alarm[0] = 5
} else
	image_alpha = 1