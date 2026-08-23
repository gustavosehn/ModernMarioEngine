with instance_create(x, y, obj_fadein)
{
	target = rm_introduction
}
audio_play_sound(snd_accept, 0, 0)
audio_play_sound(snd_letsgo, 0, 0)
audio_stop_sound(obj_title_c.music)