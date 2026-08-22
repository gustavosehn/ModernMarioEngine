if (dir == 0)
    image_angle += 6
else
    image_angle -= 6
gravity = 0.8
if (vspeed > 12)
    vspeed = 12
hspeed = (4 * sign(hspeed))