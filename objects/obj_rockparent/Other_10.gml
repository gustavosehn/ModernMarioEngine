with (instance_create_depth((x + 16), (y + 16), depth, obj_shard)) {
	sprite_index = other.shard
	motion_set(45, 24)
	dir = 1
}
with (instance_create_depth((x + 16), (y + 64), depth, obj_shard)) {
	sprite_index = other.shard
	motion_set(60, 24)
	dir = 1
}
with (instance_create_depth((x + 64), (y + 64), depth, obj_shard)) {
	sprite_index = other.shard
	motion_set(120, 24)
	dir = 0
}
with (instance_create_depth((x + 64), (y + 16), depth, obj_shard)) {
	sprite_index = other.shard
	motion_set(135, 24)
	dir = 0
}