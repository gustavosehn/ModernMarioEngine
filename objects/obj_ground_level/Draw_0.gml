draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha)
if (global.ambiente != "airship")
    image_index = scr_autotile()
else
    image_index = scr_autotile_level()
sprite_index = scr_tile_ground_start()