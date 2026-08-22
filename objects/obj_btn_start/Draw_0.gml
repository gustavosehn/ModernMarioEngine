draw_sprite_ext(sprite_index, image_index, x, y, scalex, scaley, image_angle, c_white, image_alpha)
draw_set_font(global.font_google_legacy)
draw_set_halign(fa_center)
draw_text_colour(x + ((sprite_width * scalex) / 2), y - 15 + ((sprite_height * scaley) / 2), text, colour, colour, colour, colour, 1)