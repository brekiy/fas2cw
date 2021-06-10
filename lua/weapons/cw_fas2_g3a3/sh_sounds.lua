CustomizableWeaponry:addFireSound("CW_FAS2_G3_FIRE", "weapons/g3a3/g3_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_G3_FIRE_SUPP", "weapons/g3a3/g3_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_G3_BOLTBACK", "weapons/g3a3/g3_boltback.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_G3_BOLTFORWARD", "weapons/g3a3/g3_boltforward.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_G3_BOLTPULL_NOMEN", "weapons/g3a3/g3_boltpull_nomen.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_G3_HANDLE", "weapons/g3a3/g3_handle.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_G3_MAGOUT", "weapons/g3a3/g3_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_G3_MAGIN", "weapons/g3a3/g3_magin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_G3_MAGOUT_EMPTY", "weapons/g3a3/g3_magout_empty.wav")

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        {time = 0.85, sound = "CW_FAS2_G3_MAGOUT"},
        {time = 1.3, sound = "CW_FOLEY_HEAVY"},
        {time = 1.85, sound = "CW_FAS2_G3_MAGIN"}
    },
    reload_nomen = {
        {time = 0.7, sound = "CW_FAS2_G3_MAGOUT"},
        {time = 1.2, sound = "CW_FOLEY_HEAVY"},
        {time = 1.7, sound = "CW_FAS2_G3_MAGIN"}
    },
    reload_empty = {
        {time = 0.7, sound = "CW_FAS2_G3_BOLTBACK"},
        {time = 2.1, sound = "CW_FAS2_G3_MAGOUT_EMPTY"},
        {time = 2.6, sound = "CW_FOLEY_HEAVY"},
        {time = 3.2, sound = "CW_FAS2_G3_MAGIN"},
        {time = 4, sound = "CW_FAS2_G3_BOLTFORWARD"}
    },
    reload_empty_nomen = {
        {time = 0.7, sound = "CW_FAS2_G3_MAGOUT_EMPTY"},
        {time = 1.5, sound = "CW_FOLEY_HEAVY"},
        {time = 2, sound = "CW_FAS2_G3_MAGIN"},
        {time = 2.6, sound = "CW_FAS2_G3_BOLTPULL_NOMEN"}
    }
}