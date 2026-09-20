if instance_exists(obj_mario)
{
    x_cam = lerp(camera_get_view_x(view_camera[0]), follow.x - (camera_get_view_width(view_camera[0]) / 2), 0.1)
    if follow.y < 864
        y_cam = lerp(camera_get_view_y(view_camera[0]), follow.y - (camera_get_view_height(view_camera[0]) / 2), 0.04)
    else
        y_cam = lerp(camera_get_view_y(view_camera[0]), 864, 0.04)
    camera_set_view_pos(view_camera[0], clamp(x_cam, 0, room_width - camera_get_view_width(view_camera[0])), clamp(y_cam, 0, room_height - camera_get_view_height(view_camera[0])))
    
}