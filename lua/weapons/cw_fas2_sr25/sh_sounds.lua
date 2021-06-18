CustomizableWeaponry:addFireSound("CW_FAS2_SR25_FIRE", "weapons/sr25/sr25_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_SR25_FIRE_SUPP", "weapons/sr25/sr25_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_SR25_BOLTCATCH", "weapons/sr25/sr25_boltcatch.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SR25_BOLTCATCH_SLAP", "weapons/sr25/sr25_boltcatchslap.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SR25_CHARGINGHANDLE_BACK", "weapons/sr25/sr25_charginghandle_back.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SR25_CHARGINGHANDLE_FORWARD", "weapons/sr25/sr25_charginghandle_forward.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SR25_DUSTCOVER", "weapons/sr25/sr25_dustcover.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SR25_MAGOUT", "weapons/sr25/sr25_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SR25_MAGIN", "weapons/sr25/sr25_magin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SR25_MAGSLAP", "weapons/sr25/sr25_magslap.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SR25_MAGOUT_EMPTY", "weapons/sr25/sr25_magout_empty.wav")

CustomizableWeaponry:addRegularSound("CW_FAS2_BIPOD_DOWN", {"weapons/accessories/harrisbipod_down1.wav", "weapons/accessories/harrisbipod_down2.wav"})
CustomizableWeaponry:addRegularSound("CW_FAS2_BIPOD_UP", {"weapons/accessories/harrisbipod_up1.wav", "weapons/accessories/harrisbipod_up2.wav"})

SWEP.Sounds = {
    reload = {
        {time = 0.45, sound = "CW_FAS2_SR25_MAGOUT"},
        {time = 1, sound = "CW_FOLEY_HEAVY"},
        {time = 1.7, sound = "CW_FAS2_SR25_MAGIN"},
        {time = 2.2, sound = "CW_FAS2_SR25_MAGSLAP"}
    },
    bipod_reload = {
        {time = 0.55, sound = "CW_FAS2_SR25_MAGOUT"},
        {time = 1, sound = "CW_FOLEY_HEAVY"},
        {time = 2.1, sound = "CW_FAS2_SR25_MAGIN"}
    },
    bipod_reload_nomen = {
        {time = 0.55, sound = "CW_FAS2_SR25_MAGOUT"},
        {time = 1, sound = "CW_FOLEY_HEAVY"},
        {time = 1.5, sound = "CW_FAS2_SR25_MAGIN"}
    },
    bipod_reload_empty = {
        {time = 0.35, sound = "CW_FAS2_SR25_MAGOUT_EMPTY"},
        {time = 0.6, sound = "CW_FOLEY_HEAVY"},
        {time = 1.3, sound = "CW_FAS2_SR25_MAGIN"},
        {time = 2, sound = "CW_FAS2_SR25_CHARGINGHANDLE_BACK"},
        {time = 2.2, sound = "CW_FAS2_SR25_CHARGINGHANDLE_FORWARD"}
    },
    bipod_reload_empty_nomen = {
        {time = 0.35, sound = "CW_FAS2_SR25_MAGOUT_EMPTY"},
        {time = 0.8, sound = "CW_FOLEY_HEAVY"},
        {time = 1.3, sound = "CW_FAS2_SR25_MAGIN"},
        {time = 1.6, sound = "CW_FAS2_SR25_BOLTCATCH"}
    },
    reload_nomen = {
        {time = 0.3, sound = "CW_FAS2_SR25_MAGOUT"},
        {time = 1, sound = "CW_FOLEY_HEAVY"},
        {time = 1.5, sound = "CW_FAS2_SR25_MAGIN"}
    },
    reload_empty = {
        {time = 0.45, sound = "CW_FAS2_SR25_MAGOUT_EMPTY"},
        {time = 1, sound = "CW_FOLEY_HEAVY"},
        {time = 1.7, sound = "CW_FAS2_SR25_MAGIN"},
        {time = 2.2, sound = "CW_FAS2_SR25_BOLTCATCH_SLAP"}
    },
    reload_empty_nomen = {
        {time = 0.35, sound = "CW_FAS2_SR25_MAGOUT_EMPTY"},
        {time = 1, sound = "CW_FOLEY_HEAVY"},
        {time = 1.5, sound = "CW_FAS2_SR25_MAGIN"},
        {time = 1.75, sound = "CW_FAS2_SR25_BOLTCATCH"}
    },
    bipod_down = {
        {time = 0.15, sound = "CW_FAS2_BIPOD_DOWN"},
    },
    bipod_down_empty = {
        {time = 0.15, sound = "CW_FAS2_BIPOD_DOWN"},
    },
    bipod_up = {{time = 0.6, sound = "CW_FAS2_BIPOD_UP"}},
    bipod_up_empty = {{time = 0.6, sound = "CW_FAS2_BIPOD_UP"}}
}
