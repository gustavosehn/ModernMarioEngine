if !audio_is_playing(levelmusic) && !instance_exists(obj_mario_clear) && editor == 0 && global.time > 100 && musicdisabled == 0
	audio_play_sound(levelmusic, 1, true)
	
if !audio_is_playing(levelmusic) && !instance_exists(obj_mario_clear) && editor == 0 && global.time <= 100 && musicdisabled == 0 {
	var _pitched = audio_play_sound(levelmusic, 1, true)
	audio_sound_pitch(_pitched, 1.1)
}