/// @description It's a me, Mario!
sprite_index = scr_marioidle()

//Is Mario invulnerable?
invulnerable = 0

//Is Mario spinning?
spinjump = 0

//Mario's current hspeed
xspeed = 0

//Mario's current vspeed
yspeed = 0

//Mario's current state
//0: Stand, 1: Walk, 2: Jump 3: Fall
state = 0

//Is Mario on ground?
canjump = 1

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