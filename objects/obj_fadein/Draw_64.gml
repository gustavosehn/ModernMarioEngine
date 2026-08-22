if (!ready)
{
    ready = sprite_create_from_surface(application_surface, 0, 0, room_width, room_height, false, false, 0, 0)
}

instance_deactivate_all(self)
draw_sprite(ready, 0, 0, 0)

if alpha < 1
{
    alpha += 0.025
}

draw_set_alpha(alpha)
draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false)
draw_set_alpha(1)

if (alpha >= 1)
{
    room_goto(target)
}