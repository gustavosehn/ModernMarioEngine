if y > ystart - 80 && vspeed > 0 {
	global.coins++
	instance_create_depth(x, ystart - 128, depth, obj_coinsparkles)
	instance_destroy()
}