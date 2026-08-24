/// @description Handles Mario's sprites
if global.powerup == 0 || isduck == 1
	mask_index = spr_mario_small_idle
if global.powerup > 0 && isduck == 0
	mask_index = spr_mario_big_idle
if (state == 0)
{
	sprite_index = scr_marioidle()
	image_speed = 0
} else if (state == 1)
{
	sprite_index = scr_mariowalk()
	var spd = (abs(hspeed) / 20)
	if spd > 0.3
		spd = 0.3
	image_speed = spd
} else if (state == 2)
{
	sprite_index = scr_mariojump()
	image_speed = 0
} else if (state == 3)
{
	sprite_index = scr_mariofall()
	image_speed = 0
}

image_xscale = direct