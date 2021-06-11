CustomizableWeaponry:addFireSound("CW_FAS2_MP5_FIRE", "weapons/mp5/mp5_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_MP5_FIRE_SUPP", "weapons/mp5/mp5k_suppressed_fire1.wav", 1, 95, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_MP5SD_FIRE", "weapons/mp5/mp5sd_fire1.wav", 0.5, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_MP5_MAGOUT", "weapons/mp5/mp5_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_MP5_MAGOUT_EMPTY", "weapons/mp5/mp5_magout_empty.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_MP5_MAGIN", "weapons/mp5/mp5_magin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_MP5_BOLTBACK", "weapons/mp5/mp5_boltback.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_MP5_BOLTFORWARD", "weapons/mp5/mp5_boltforward.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_MP5_BOLTCATCH", "weapons/mp5/mp5_boltcatch.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_MP5_BOLTPULL", "weapons/mp5/mp5_boltpull.wav")
-- FAS_RS["FAS2_MP5A5.SelectorSwitch"] = "weapons/mp5/mp5_selectorswitch.wav"
-- FAS_RS["FAS2_MP5A5.Stock"] = "weapons/mp5/mp5_stock.wav"

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
        [4] = {time = 1.7, sound = "CW_FAS2_MP5_BOLTBACK"},
        [5] = {time = 2, sound = "CW_FAS2_MP5_BOLTFORWARD"}
    },
    reload_grip = {
        [1] = {time = 0.6, sound = "CW_FAS2_MP5_MAGOUT"},
        [2] = {time = 1.2, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 2.15, sound = "CW_FAS2_MP5_MAGIN"}
    },
    reload_nomen_grip = {
        [1] = {time = 0.45, sound = "CW_FAS2_MP5_MAGOUT"},
        [2] = {time = 1, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.55, sound = "CW_FAS2_MP5_MAGIN"}
    },
    reload_empty_grip = {
        [1] = {time = 0.3, sound = "CW_FAS2_MP5_BOLTPULL"},
        [2] = {time = 0.7, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1, sound = "CW_FAS2_MP5_MAGOUT_EMPTY"},
        [4] = {time = 2.15, sound = "CW_FAS2_MP5_MAGIN"},
        [5] = {time = 2.8, sound = "CW_FAS2_MP5_BOLTCATCH"}
    },
    reload_empty_nomen_grip = {
        [1] = {time = 0.5, sound = "CW_FOLEY_HEAVY"},
        [2] = {time = 0.7, sound = "CW_FAS2_MP5_MAGOUT"},
        [3] = {time = 1.1, sound = "CW_FAS2_MP5_MAGIN"},
        [4] = {time = 1.7, sound = "CW_FAS2_MP5_BOLTBACK"},
        [5] = {time = 2, sound = "CW_FAS2_MP5_BOLTFORWARD"}
    },
}