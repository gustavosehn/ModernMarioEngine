score = 0
alarm[0] = 1
alarm[2] = 1
alarm[3] = 1
alarm[4] = 60
alarm[6] = 1
global.time = 300
global.coins = 0
global.onoffblock = 1
barrier = 0
follow = 0
x_cam = 0
y_cam = 0
editor = 0
canpause = 0
pswitch = 0
paused = 0
musicdisabled = 0
pmeter = 0
levelmusic = snd_music_ground
bg_xspeed = __background_get(e__BG.X, 0)
instance_create(x, y, obj_fadeout)
event_user(0)