canjump = 0
jumphold = 0
jumpcut = 0

if (keyboard_check(global.jump_bounce) || keyboard_check(global.stompjump))
    vspeed = -19
else
    vspeed = -12

vspeed += 0.5
gravity = 0