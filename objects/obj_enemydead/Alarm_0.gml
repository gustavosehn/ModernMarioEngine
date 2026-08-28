var spd = 16
var hspd = 3
if obj_mario.hspeed > 0
	hspeed = hspd
else if obj_mario.hspeed < 0
	hspeed = -hspd
else if obj_mario.hspeed == 0
	hspeed = choose(-hspd, hspd)
vspeed = (-spd)