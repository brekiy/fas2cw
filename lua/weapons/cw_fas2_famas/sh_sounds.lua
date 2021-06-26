CustomizableWeaponry:addFireSound("CW_FAS2_FAMAS_FIRE", "weapons/famas/famas_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_FAMAS_FIRE_SUPP", "weapons/famas/famas_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_FAMAS_COCK", "weapons/famas/famas_cock.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_FAMAS_MAGOUT", "weapons/famas/famas_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_FAMAS_MAGIN", "weapons/famas/famas_magin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_FAMAS_MAGOUT_EMPTY", "weapons/famas/famas_magout_empty.wav")

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        {time = 0.7, sound = "CW_FAS2_FAMAS_MAGOUT"},
        {time = 1.2, sound = "CW_FOLEY_HEAVY"},
        {time = 1.65, sound = "CW_FAS2_FAMAS_MAGIN"}
    },
    reload_nomen = {
        {time = 0.5, sound = "CW_FAS2_FAMAS_MAGOUT"},
        {time = 1.2, sound = "CW_FOLEY_HEAVY"},
        {time = 1.5, sound = "CW_FAS2_FAMAS_MAGIN"}
    },
    reload_empty = {
        {time = 0.7, sound = "CW_FAS2_FAMAS_MAGOUT_EMPTY"},
        {time = 1.15, sound = "CW_FOLEY_HEAVY"},
        {time = 1.7, sound = "CW_FAS2_FAMAS_MAGIN"},
        {time = 2.5, sound = "CW_FAS2_FAMAS_COCK"}
    },
    reload_empty_nomen = {
        {time = 0.5, sound = "CW_FAS2_FAMAS_MAGOUT_EMPTY"},
        {time = 1.15, sound = "CW_FOLEY_HEAVY"},
        {time = 1.5, sound = "CW_FAS2_FAMAS_MAGIN"},
        {time = 2.2, sound = "CW_FAS2_FAMAS_COCK"}
    }
}