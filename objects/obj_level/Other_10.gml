var __prop

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
	} else if global.ambiente == "snow" {
		__prop = snd_music_snow
		levelmusic = __prop
	} else if global.ambiente == "desert" {
		__prop = snd_music_desert
		levelmusic = __prop
	} else if global.ambiente == "airship" {
		__prop = snd_music_airship
		levelmusic = __prop
	}