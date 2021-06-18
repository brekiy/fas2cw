CustomizableWeaponry:addFireSound("CW_FAS2_1911_FIRE", "weapons/1911/1911_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_1911_FIRE_SUPP", "weapons/1911/1911_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_1911_SLIDESTOP", "weapons/1911/1911_sliderelease.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_1911_MAGOUT", "weapons/1911/1911_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_1911_MAGIN", "weapons/1911/1911_magin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_1911_MAGIN_PARTIAL", "weapons/1911/1911_magin_partial.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_1911_MAGOUT_EMPTY", "weapons/1911/1911_magout_empty.wav")

SWEP.Sounds = {
    Draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    Reload = {
        {time = 0.4, sound = "CW_FAS2_1911_MAGOUT"},
        {time = 0.6, sound = "CW_FOLEY_MEDIUM"},
        {time = 1, sound = "CW_FAS2_1911_MAGIN_PARTIAL"},
        {time = 1.15, sound = "CW_FAS2_1911_MAGIN"}
    },
    Reload_Empty = {
        {time = 0.4, sound = "CW_FAS2_1911_MAGOUT"},
        {time = 0.6, sound = "CW_FOLEY_MEDIUM"},
        {time = 1, sound = "CW_FAS2_1911_MAGIN_PARTIAL"},
        {time = 1.15, sound = "CW_FAS2_1911_MAGIN"},
        {time = 1.45, sound = "CW_FAS2_1911_SLIDESTOP"}
    },
    Reload_Nomen = {
        {time = 0.2, sound = "CW_FAS2_1911_MAGOUT"},
        {time = 0.4, sound = "CW_FOLEY_MEDIUM"},
        {time = 0.65, sound = "CW_FAS2_1911_MAGIN_PARTIAL"},
        {time = 0.8, sound = "CW_FAS2_1911_MAGIN"}
    },
    Reload_Empty_Nomen = {
        {time = 0.2, sound = "CW_FAS2_1911_MAGOUT"},
        {time = 0.4, sound = "CW_FOLEY_MEDIUM"},
        {time = 0.65, sound = "CW_FAS2_1911_MAGIN_PARTIAL"},
        {time = 0.8, sound = "CW_FAS2_1911_MAGIN"},
        {time = 1, sound = "CW_FAS2_1911_SLIDESTOP"}
    }
}