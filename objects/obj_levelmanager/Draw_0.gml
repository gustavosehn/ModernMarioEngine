draw_set_font(global.fonte_numeros)
draw_sprite_ext(spr_coinhud, 0, (camera_get_view_x(view_get_camera(0)) + 60), (camera_get_view_y(view_get_camera(0)) + 44), 1, 1, 0, c_white, 1)
draw_text((camera_get_view_x(view_get_camera(0)) + 128), (camera_get_view_y(view_get_camera(0)) + 44), string_hash_to_newline(string_add_zeros(global.coins, 2)))
draw_text((camera_get_view_x(view_get_camera(0)) + 1028), (camera_get_view_y(view_get_camera(0)) + 44), string_hash_to_newline(string_add_zeros(score, 9)))
if global.time > -1
	draw_text((camera_get_view_x(view_get_camera(0)) + 1384), (camera_get_view_y(view_get_camera(0)) + 44), string_hash_to_newline(string_add_zeros(global.time, 3)))
else if global.time == -1
		draw_text((camera_get_view_x(view_get_camera(0)) + 1384), (camera_get_view_y(view_get_camera(0)) + 44), string_hash_to_newline(string_add_zeros("000", 3)))
draw_sprite_ext(spr_timehud, 0, (camera_get_view_x(view_get_camera(0)) + 1348), (camera_get_view_y(view_get_camera(0)) + 44), 1, 1, 0, c_white, 1)