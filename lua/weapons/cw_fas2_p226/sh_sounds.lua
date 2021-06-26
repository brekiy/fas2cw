CustomizableWeaponry:addFireSound("CW_FAS2_P226_FIRE", "weapons/p226/p226_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_P226_FIRE_SUPP", "weapons/p226/p226_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_P226_SLIDESTOP", "weapons/p226/p226_slidestop.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_P226_SLIDEFORWARD", "weapons/p226/p226_slideforward.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_P226_SLIDEBACK", "weapons/p226/p226_slideback.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_P226_MAGOUT", "weapons/p226/p226_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_P226_MAGIN", "weapons/p226/p226_magin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_P226_MAGIN_PARTIAL", "weapons/p226/p226_magin_partial.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_P226_MAGOUT_EMPTY", "weapons/p226/p226_magout_empty.wav")

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        {time = 0.5, sound = "CW_FAS2_P226_MAGOUT"},
        {time = 0.9, sound = "CW_FOLEY_MEDIUM"},
        {time = 1.45, sound = "CW_FAS2_P226_MAGIN_PARTIAL"},
        {time = 1.65, sound = "CW_FAS2_P226_MAGIN"}
    },
    reload_empty = {
        {time = 0.3, sound = "CW_FAS2_P226_MAGOUT_EMPTY"},
        {time = 0.5, sound = "CW_FOLEY_MEDIUM"},
        {time = 0.9, sound = "CW_FAS2_P226_MAGIN_PARTIAL"},
        {time = 1, sound = "CW_FAS2_P226_MAGIN"},
        {time = 1.8, sound = "CW_FAS2_P226_SLIDEBACK"},
        {time = 1.95, sound = "CW_FAS2_P226_SLIDEFORWARD"},
        {time = 2, sound = "CW_FAS2_P226_SLIDESTOP"}
    },
    reload_nomen = {
        {time = 0.5, sound = "CW_FAS2_P226_MAGOUT"},
        {time = 0.7, sound = "CW_FOLEY_MEDIUM"},
        {time = 1.15, sound = "CW_FAS2_P226_MAGIN_PARTIAL"},
        {time = 1.35, sound = "CW_FAS2_P226_MAGIN"}
    },
    reload_empty_nomen = {
        {time = 0.5, sound = "CW_FAS2_P226_MAGOUT_EMPTY"},
        {time = 0.7, sound = "CW_FOLEY_MEDIUM"},
        {time = 1.15, sound = "CW_FAS2_P226_MAGIN_PARTIAL"},
        {time = 1.35, sound = "CW_FAS2_P226_MAGIN"},
        {time = 1.6, sound = "CW_FAS2_P226_SLIDEFORWARD"},
        {time = 1.65, sound = "CW_FAS2_P226_SLIDESTOP"}
    }
}