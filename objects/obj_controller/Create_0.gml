gml_release_mode(true);
scr_init_globals()
global.shadows = 1
global.ambiente = "ground"
global.gw = 1536
global.gh = 864
global.night = 0
global.fade = 0.25
global.showfps = 0
s = 1
version_equivalent = 100
token_equivalent = "1541158256859418755"
global.ver = "MME 1.0.0"
global.creator = "GustavoSehn 2026"
global.star_flash = 0
global.timer = 0
global.world = 1
global.font_google_legacy = font_add("font_as.ttf", 36, 0, 0, 32, 128)
global.coins = 0
global.language = 0
global.levelname = ""
event_user(3)
switch (os_get_language())
{
    case "es": global.language = 0; break;
    case "pt": global.language = 2; break;
    default: global.language = 1; break;
}

np_initdiscord(token_equivalent, false, "0")