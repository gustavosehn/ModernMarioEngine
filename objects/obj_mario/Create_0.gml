/// @description It's a me, Mario!
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

//Is Mario invulnerable?
invulnerable = 0

//Is Mario spinning?
spinjump = 0

//Mario's current state
//0: Stand, 1: Walk, 2: Jump 3: Fall
state = 0

//Mario's direction
//-1: Left, 1: Right
direct = 1

//Whether Mario is holding something
//0: Nothing, 1: Holding
holding = 0

//Is Mario turning?
turn = 0

//Is Mario landed on ice?
ice = 0

//Is Mario ducking?
isduck = 0

//Is Mario looking up?
isup = 0

//Is Mario kicking something?
kicking = 0

//Is Mario's controls disabled?
disablecontrols = 0

//Was the jump button held last frame?
jumpnow = 0

//Mario Hit Points
hitpoints = 0

//Is Mario skidding?
skidnow = 0

//Handles Mario's skid smoke
alarm[5] = 8