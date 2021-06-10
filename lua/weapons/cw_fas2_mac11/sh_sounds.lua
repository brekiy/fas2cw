CustomizableWeaponry:addFireSound("CW_FAS2_MAC11_FIRE", "weapons/mac11/mac11_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_MAC11_FIRE_SUPP", "weapons/mac11/mac11_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_MAC11_MAGOUT", "weapons/mac11/mac11_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_MAC11_MAGOUT_EMPTY", "weapons/mac11/mac11_magout_empty.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_MAC11_MAGIN", "weapons/mac11/mac11_magin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_MAC11_BOLTBACK", "weapons/mac11/mac11_boltback.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_MAC11_BOLTFORWARD", "weapons/mac11/mac11_boltforward.wav")

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        {time = 0.9, sound = "CW_FAS2_MAC11_MAGOUT"},
        {time = 1, sound = "CW_FOLEY_HEAVY"},
        {time = 2.1, sound = "CW_FAS2_MAC11_MAGIN"}
    },
    reload_nomen = {
        {time = 0.6, sound = "CW_FAS2_MAC11_MAGOUT"},
        {time = 0.7, sound = "CW_FOLEY_HEAVY"},
        {time = 1.35, sound = "CW_FAS2_MAC11_MAGIN"}
    },
    reload_empty = {
        {time = 0.9, sound = "CW_FAS2_MAC11_MAGOUT_EMPTY"},
        {time = 1, sound = "CW_FOLEY_HEAVY"},
        {time = 2.1, sound = "CW_FAS2_MAC11_MAGIN"},
        {time = 3, sound = "CW_FAS2_MAC11_BOLTBACK"},
        {time = 3.5, sound = "CW_FAS2_MAC11_BOLTFORWARD"}
    },
    reload_empty_nomen = {
        {time = 0.6, sound = "CW_FAS2_MAC11_MAGOUT_EMPTY"},
        {time = 0.7, sound = "CW_FOLEY_HEAVY"},
        {time = 1.35, sound = "CW_FAS2_MAC11_MAGIN"},
        {time = 2, sound = "CW_FAS2_MAC11_BOLTBACK"},
        {time = 2.35, sound = "CW_FAS2_MAC11_BOLTFORWARD"}
    }
}