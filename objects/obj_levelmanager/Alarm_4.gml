if instance_exists(obj_mario_transform)
	alarm[4] = 65

if global.time >= 0 && !instance_exists(obj_deadmario) && !instance_exists(obj_mario_transform) && !instance_exists(obj_mario_goal) {
	global.time--
	alarm[4] = 60
}

if global.time == -1 && !instance_exists(obj_deadmario) && !instance_exists(obj_mario_transform) && !instance_exists(obj_mario_goal)
	event_user(1)
	
if global.time == 100 && !instance_exists(obj_deadmario) && !instance_exists(obj_mario_transform) && !instance_exists(obj_mario_goal)
	alarm[5] = 1