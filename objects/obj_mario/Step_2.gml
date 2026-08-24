/// @description Handles Mario's sprites
if (global.pp == 0)
{
	switch global.powerup
	{
	    case 0:
	        mask_index = spr_smallmask
	        break
	    case 1:
	        mask_index = spr_bigmask
	        break
	    default:
	        mask_index = spr_bigmask
	}
	if (isduck == 1)
	{
		sprite_index = scr_mariodown()
		image_speed = 0
	} else if (state == 0)
	{
		sprite_index = scr_marioidle()
		image_speed = 0
	} else if (state == 1)
	{
		if (skidnow == 1)
		{
			sprite_index = scr_marioskid()
			image_speed = 0
		} else if (abs(hspeed) < 12)
		{
			sprite_index = scr_mariowalk()
			var spd = (abs(hspeed) / 20)
			if spd > 0.3
				spd = 0.3
			image_speed = spd
		} else 
		{
			sprite_index = scr_mariorun()
			image_speed = 0.4
		}
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
}