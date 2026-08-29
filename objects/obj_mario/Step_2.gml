/// @description Handles Mario's sprites
if (global.pp == 0)
{
	if (disablecontrols == 0)
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
		if (kicking == 1)
		{
			sprite_index = scr_mariokick()
		}
		else if (turn == 1)
		{
			sprite_index = scr_mariospin()
			image_speed = 0
			image_index = 1
		}
		else if (isduck == 1)
		{
			if (holding == 1)
				sprite_index = scr_mario_hold_down()
			else
				sprite_index = scr_mariodown()
			image_speed = 0
		} else if (state == 0)
		{
			if (holding == 1)
			{
				if (isup == 1)
					sprite_index = scr_mario_hold_up()
				else
					sprite_index = scr_mariohold()
				image_speed = 0
				image_index = 0
			} else
			{
				sprite_index = scr_marioidle()
				image_speed = 0
				image_index = keyboard_check(global.key_up)
			}
		} else if (state == 1)
		{
			if (holding == 1)
			{
				if (skidnow == 1)
				{
					sprite_index = scr_mariohold()
					image_speed = 0
				} else if (abs(hspeed) < 12)
				{
					sprite_index = scr_mariohold()
					var spd = (abs(hspeed) / 20)
					if spd > 0.3
						spd = 0.3
					image_speed = spd
				} else
				{
					sprite_index = scr_mariohold()
					image_speed = 0.4
				}
			} else
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
			}
		} else if (state == 2)
		{
			if (holding == 1)
			{
				sprite_index = scr_mariohold()
				image_speed = 0
				image_index = 1
			} else
			{
				if (spinjump == 0)
				{
					sprite_index = scr_mariojump()
					image_speed = 0
				} else
				{
					sprite_index = scr_mariospin()
					image_speed = 0.25
				}
			}
		} else if (state == 3)
		{
			if (holding == 1)
			{
				sprite_index = scr_mariohold()
				image_speed = 0
				image_index = 1
			} else
			{
				if (spinjump == 0)
				{
					sprite_index = scr_mariofall()
					image_speed = 0
				} else
				{
					sprite_index = scr_mariospin()	
					image_speed = 0.25					
				}
			}
		}
		image_xscale = direct
	}
}