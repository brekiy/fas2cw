CustomizableWeaponry:addFireSound("CW_FAS2_RK95_FIRE", "weapons/sako95/sako95_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_RK95_FIRE_SUPP", "weapons/sako95/sako95_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_RK95_BOLTBACK", "weapons/sako95/sako95_boltback.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_RK95_BOLTFORWARD", "weapons/sako95/sako95_boltforward.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_RK95_MAGOUT_EMPTY", "weapons/sako95/sako95_magout_empty.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_RK95_MAGOUT", "weapons/sako95/sako95_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_RK95_MAGIN", "weapons/sako95/sako95_magin.wav")

SWEP.Sounds = {
    deploy = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
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