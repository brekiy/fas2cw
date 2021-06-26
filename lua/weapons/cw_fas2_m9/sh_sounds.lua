CustomizableWeaponry:addFireSound("CW_FAS2_M9_FIRE", {"weapons/m9/m9_fire1.wav", "weapons/m9/m9_fire2.wav", "weapons/m9/m9_fire3.wav", "weapons/m9/m9_fire4.wav", "weapons/m9/m9_fire5.wav"}, 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_M9_FIRE_SUPP", "weapons/m9/m9_silenced_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_M9_SLIDESTOP", "weapons/m9/m9_slidestop.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M9_MAGOUT", "weapons/m9/m9_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M9_MAGIN", "weapons/m9/m9_magin.wav")

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        {time = 0.5, sound = "CW_FAS2_M9_MAGOUT"},
        {time = 0.9, sound = "CW_FOLEY_MEDIUM"},
        {time = 1.5, sound = "CW_FAS2_M9_MAGIN"}
    },
    reload_empty = {
        {time = 0.3, sound = "CW_FAS2_M9_MAGOUT"},
        {time = 0.5, sound = "CW_FOLEY_MEDIUM"},
        {time = 1, sound = "CW_FAS2_M9_MAGIN"},
        {time = 1.9, sound = "CW_FAS2_M9_SLIDESTOP"}
    },
    reload_nomen = {
        {time = 0.5, sound = "CW_FAS2_M9_MAGOUT"},
        {time = 0.7, sound = "CW_FOLEY_MEDIUM"},
        {time = 1.1, sound = "CW_FAS2_M9_MAGIN"}
    },
    reload_empty_nomen = {
        {time = 0.5, sound = "CW_FAS2_M9_MAGOUT"},
        {time = 0.7, sound = "CW_FOLEY_MEDIUM"},
        {time = 1.1, sound = "CW_FAS2_M9_MAGIN"},
        {time = 1.35, sound = "CW_FAS2_M9_SLIDESTOP"}
    }
}