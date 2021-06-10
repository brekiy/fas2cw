CustomizableWeaponry:addFireSound("CW_FAS2_DEAGLE_FIRE", "weapons/deserteagle/de_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_DEAGLE_FIRE_357", "weapons/deserteagle/de_fire_357_1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_DEAGLE_FIRE_429", "weapons/deserteagle/de_fire_429_1.wav", 1, 115, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_DEAGLE_SLIDESTOP", "weapons/deserteagle/de_sliderelease.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_DEAGLE_MAGOUT", "weapons/deserteagle/de_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_DEAGLE_MAGIN", "weapons/deserteagle/de_magin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_DEAGLE_MAGIN_NOMEN", "weapons/deserteagle/de_magin_nomen.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_DEAGLE_MAGIN_PARTIAL", "weapons/deserteagle/de_magin_partial.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_DEAGLE_MAGOUT_EMPTY", "weapons/deserteagle/de_magout_empty.wav")

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        {time = 0.5, sound = "CW_FAS2_DEAGLE_MAGOUT"},
        {time = 0.9, sound = "CW_FOLEY_MEDIUM"},
        {time = 1.4, sound = "CW_FAS2_DEAGLE_MAGIN_PARTIAL"},
        {time = 1.55, sound = "CW_FAS2_DEAGLE_MAGIN"}
    },
    reload_empty = {
        {time = 0.6, sound = "CW_FAS2_DEAGLE_MAGOUT_EMPTY"},
        {time = 0.9, sound = "CW_FOLEY_MEDIUM"},
        {time = 1.4, sound = "CW_FAS2_DEAGLE_MAGIN_PARTIAL"},
        {time = 1.55, sound = "CW_FAS2_DEAGLE_MAGIN"},
        {time = 2.3, sound = "CW_FAS2_DEAGLE_SLIDESTOP"}
    },
    reload_nomen = {
        {time = 0.3, sound = "CW_FAS2_DEAGLE_MAGOUT"},
        {time = 0.5, sound = "CW_FOLEY_MEDIUM"},
        {time = 0.95, sound = "CW_FAS2_DEAGLE_MAGIN_PARTIAL"},
        {time = 1.1, sound = "CW_FAS2_DEAGLE_MAGIN_NOMEN"}
    },
    reload_nomen_empty = {
        {time = 0.3, sound = "CW_FAS2_DEAGLE_MAGOUT"},
        {time = 0.5, sound = "CW_FOLEY_MEDIUM"},
        {time = 0.95, sound = "CW_FAS2_DEAGLE_MAGIN_PARTIAL"},
        {time = 1.1, sound = "CW_FAS2_DEAGLE_MAGIN_NOMEN"},
        {time = 1.6, sound = "CW_FAS2_DEAGLE_SLIDESTOP"}
    }
}
