if (global.round == 1)
	draw_sprite_ext(sprite_index, image_index, round(x / 4) * 4, round(y / 4) * 4, direct, 1, image_angle, c_white, image_alpha)
else
	draw_sprite_ext(sprite_index, image_index, x, y, direct, 1, image_angle, c_white, image_alpha)