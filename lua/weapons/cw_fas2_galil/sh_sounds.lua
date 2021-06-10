CustomizableWeaponry:addFireSound("CW_FAS2_GALIL_FIRE", "weapons/galilar/galil_fire1.wav", 1, 115, CHAN_STATIC)

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        {time = 0.7, sound = "CW_FAS2_RK95_MAGOUT"},
        {time = 1.5, sound = "CW_FOLEY_HEAVY"},
        {time = 2, sound = "CW_FAS2_RK95_MAGIN"}
    },
    reload_nomen = {
        {time = 0.6, sound = "CW_FAS2_RK95_MAGOUT"},
        {time = 1.2, sound = "CW_FOLEY_HEAVY"},
        {time = 1.55, sound = "CW_FAS2_RK95_MAGIN"}
    },
    reload_empty = {
        {time = 0.7, sound = "CW_FAS2_RK95_MAGOUT_EMPTY"},
        {time = 1.15, sound = "CW_FOLEY_HEAVY"},
        {time = 1.9, sound = "CW_FAS2_RK95_MAGIN"},
        {time = 3.2, sound = "CW_FAS2_RK95_BOLTBACK"},
        {time = 3.5, sound = "CW_FAS2_RK95_BOLTFORWARD"}
    },
    reload_empty_nomen = {
        {time = 0.6, sound = "CW_FAS2_RK95_MAGOUT_EMPTY"},
        {time = 1.15, sound = "CW_FOLEY_HEAVY"},
        {time = 1.6, sound = "CW_FAS2_RK95_MAGIN"},
        {time = 2.6, sound = "CW_FAS2_RK95_BOLTBACK"},
        {time = 2.8, sound = "CW_FAS2_RK95_BOLTFORWARD"}
    },
}