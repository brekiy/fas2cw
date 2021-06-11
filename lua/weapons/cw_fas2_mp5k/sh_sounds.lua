CustomizableWeaponry:addFireSound("CW_FAS2_MP5K_FIRE", "weapons/mp5/mp5k_fire1.wav", 1, 115, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_MP5K_BOLTBACK", "weapons/mp5/mp5k_boltback.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_MP5K_BOLTFORWARD", "weapons/mp5/mp5k_boltforward.wav")

SWEP.Sounds = {
    reload = {
        [1] = {time = 0.6, sound = "CW_FAS2_MP5_MAGOUT"},
        [2] = {time = 1.2, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 2.15, sound = "CW_FAS2_MP5_MAGIN"}
    },
    reload_nomen = {
        [1] = {time = 0.45, sound = "CW_FAS2_MP5_MAGOUT"},
        [2] = {time = 1, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.55, sound = "CW_FAS2_MP5_MAGIN"}
    },
    reload_empty = {
        [1] = {time = 0.3, sound = "CW_FAS2_MP5_BOLTPULL"},
        [2] = {time = 0.7, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1, sound = "CW_FAS2_MP5_MAGOUT_EMPTY"},
        [4] = {time = 2.15, sound = "CW_FAS2_MP5_MAGIN"},
        [5] = {time = 2.8, sound = "CW_FAS2_MP5_BOLTCATCH"}
    },
    reload_empty_nomen = {
        [1] = {time = 0.5, sound = "CW_FOLEY_HEAVY"},
        [2] = {time = 0.7, sound = "CW_FAS2_MP5_MAGOUT"},
        [3] = {time = 1.1, sound = "CW_FAS2_MP5_MAGIN"},
        [4] = {time = 1.7, sound = "CW_FAS2_MP5K_BOLTBACK"},
        [5] = {time = 1.85, sound = "CW_FAS2_MP5K_BOLTFORWARD"}
    },
}
