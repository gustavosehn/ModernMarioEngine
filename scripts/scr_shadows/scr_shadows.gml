function scr_shadows() {
    if variable_instance_exists(id, "direct")
		draw_sprite_ext(sprite_index, image_index, x + 12, y + 12, direct, image_yscale, image_angle, c_black, global.fade)
	else
		draw_sprite_ext(sprite_index, image_index, x + 12, y + 12, image_xscale, image_yscale, image_angle, c_black, global.fade)
}