CustomizableWeaponry:addFireSound("CW_FAS2_AK74_FIRE", "weapons/ak74/ak74_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_AK74_FIRE_SUPP", "weapons/ak74/ak74_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_AK74_COCK", "weapons/ak74/ak74_cock.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_AK74_MAGOUT", "weapons/ak74/ak74_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_AK74_MAGIN", "weapons/ak74/ak74_magin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_AK74_MAGOUT_EMPTY", "weapons/ak74/ak74_magout_empty.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_AK74_MAGOUT_EMPTY_NOMEN", "weapons/ak74/ak74_magout_empty_nomen.wav")

SWEP.Sounds = {
    deploy = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        {time = 1, sound = "CW_FAS2_AK74_MAGOUT"},
        {time = 1.5, sound = "CW_FOLEY_HEAVY"},
        {time = 1.9, sound = "CW_FAS2_AK74_MAGIN"}
    },
    reload_empty = {
        {time = 0.7, sound = "CW_FAS2_AK74_MAGOUT_EMPTY"},
        {time = 1.15, sound = "CW_FOLEY_HEAVY"},
        {time = 1.85, sound = "CW_FAS2_AK74_MAGIN"},
        {time = 2.9, sound = "CW_FAS2_AK74_COCK"}
    },
    reload_nomen = {
        {time = 0.6, sound = "CW_FAS2_AK74_MAGOUT"},
        {time = 1.2, sound = "CW_FOLEY_HEAVY"},
        {time = 1.8, sound = "CW_FAS2_AK74_MAGIN"}
    },
    reload_empty_nomen = {
        {time = 0.8, sound = "CW_FOLEY_HEAVY"},
        {time = 1.5, sound = "CW_FAS2_AK74_MAGOUT_EMPTY_NOMEN"},
        {time = 1.8, sound = "CW_FAS2_AK74_MAGIN"},
        {time = 2.5, sound = "CW_FAS2_AK74_COCK"}
    }
}
