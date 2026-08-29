if (vspeed == 0)
{
	image_alpha -= 0.15
    if (image_alpha <= 0)
        instance_destroy()
}
if (y < (camera_get_view_y(view_get_camera(0)) + 32))
    y = (camera_get_view_y(view_get_camera(0)) + 32)