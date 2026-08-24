/// @description Create Mario's skid smoke
if (skidnow == 1 && canjump == 1)
{
    if ((direct == 1) || (direct == -1))
    {
        with (instance_create((x + 4), (y + 128), obj_skidsmoke))
        {
            sprite_index = spr_skidsmoke
            depth = -12
        }
    }
    else
    {
        with (instance_create((x - 32), (y + 128), obj_skidsmoke))
        {
            sprite_index = spr_skidsmoke
            depth = -12
        }
    }
}
alarm[5] = 4.75