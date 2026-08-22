if (fallow == 0)
{
    x = (camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2))
    y = (camera_get_view_y(view_get_camera(0)) + (camera_get_view_height(view_get_camera(0)) / 2))
}
if (listo == 1)
    scale += 12
if (scale > 1200)
{
    instance_destroy()
	exit
}