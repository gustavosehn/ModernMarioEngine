if global.ambiente == "ground" {
	__background_set(e__BG.Index, 0, bg_ground)
} else if global.ambiente == "sky" || global.ambiente == "airship" {
	__background_set(e__BG.Index, 0, bg_airship)
} else if global.ambiente == "underground" {
	__background_set(e__BG.Index, 0, bg_underground)
} else if global.ambiente == "castle" {
    __background_set(e__BG.Index, 0, bg_underground)
}