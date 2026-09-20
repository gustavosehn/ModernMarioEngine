depth = -25
sprite_index = scr_marioidle()
canjump = 1
jumphold = 0
jumpcut = 0
switch global.powerup
{
    case 0:
        mask_index = spr_smallmask
        break
    case 1:
        mask_index = spr_bigmask
        break
    default:
        mask_index = spr_bigmask
}
enable_gravity = 1
canturn = 1
canskid = 1
speed_conveyor = 0

invulnerable = 0

spinjump = 0

state = 0

direct = 1

holding = 0

turn = 0

ice = 0

isduck = 0

isup = 0

kicking = 0

disablecontrols = 0

jumpnow = 0

hitpoints = 0

skidnow = 0

alarm[5] = 8