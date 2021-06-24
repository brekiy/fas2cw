CustomizableWeaponry:addFireSound("CW_FAS2_KACPDW_FIRE", "weapons/kacpdw/kacpdw_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_KACPDW_FIRE_SUPP", "weapons/kacpdw/kacpdw_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_KACPDW_BOLTRELEASE", "weapons/kacpdw/kacpdw_boltrelease.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_KACPDW_MAGOUT", "weapons/kacpdw/kacpdw_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_KACPDW_MAGIN", "weapons/kacpdw/kacpdw_magin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_KACPDW_MAGTAP", "weapons/kacpdw/kacpdw_magtap.wav")

SWEP.Sounds = {
    deploy = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        {time = 0.25, sound = "CW_FAS2_KACPDW_MAGOUT"},
        {time = 1, sound = "CW_FOLEY_HEAVY"},
        {time = 1.4, sound = "CW_FAS2_KACPDW_MAGIN"},
        {time = 1.85, sound = "CW_FAS2_KACPDW_MAGTAP"}
    },
    reload_empty = {
        {time = 0.3, sound = "CW_FAS2_KACPDW_MAGOUT"},
        {time = 1, sound = "CW_FOLEY_HEAVY"},
        {time = 1.4, sound = "CW_FAS2_KACPDW_MAGIN"},
        {time = 1.85, sound = "CW_FAS2_KACPDW_MAGTAP"},
        {time = 2.2, sound = "CW_FAS2_KACPDW_BOLTRELEASE"}
    },
}
