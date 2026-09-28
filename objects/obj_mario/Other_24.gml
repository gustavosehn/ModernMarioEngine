audio_play_sound(scr_snd_score(), 0, 0)

if (hitpoints == 8)
{
	audio_play_sound(snd_spin, 0, 0)
}

with instance_create_depth(x, y - 64, -50, obj_score)
{
	image_index = other.hitpoints
}