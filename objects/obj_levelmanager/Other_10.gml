var __prop

if global.aparencia == 2 {
	if global.ambiente == "ground" {
		__prop = snd_music_ground
		levelmusic = __prop
	} else if global.ambiente == "sky" {
		__prop = snd_music_sky
		levelmusic = __prop
	} else if global.ambiente == "underground" {
		__prop = snd_music_underground
		levelmusic = __prop
	} else if global.ambiente == "castle" {
		__prop = snd_music_castle
		levelmusic = __prop
	}
}