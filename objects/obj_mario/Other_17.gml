/// @description Make Mario bounce off of something
canjump = 0
jumphold = 0
jumpcut = 0

if (keyboard_check(global.saltar) || keyboard_check(global.saltar_giro))
    hspeed = -19
else
    hspeed = -12

hspeed += 0.5
gravity = 0