CustomizableWeaponry:addFireSound("CW_FAS2_AN94_FIRE", {"weapons/an-94/an-94_fire.wav", "weapons/an-94/an-94_fire2.wav", "weapons/an-94/an-94_fire3.wav", "weapons/an-94/an-94_fire4.wav"}, 1, 115, CHAN_STATIC)

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
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