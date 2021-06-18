CustomizableWeaponry:addFireSound("CW_FAS2_SVD_FIRE", "weapons/svd/svd_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_SVD_FIRE_SUPP", "weapons/svd/svd_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_SVD_BOLTBACK", "weapons/svd/svd_boltback.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SVD_BOLTFORWARD", "weapons/svd/svd_boltforward.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SVD_MAGOUT", "weapons/svd/svd_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SVD_MAGIN", "weapons/svd/svd_magin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SVD_MAGIN_PARTIAL", "weapons/svd/svd_magin_partial.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SVD_MAGOUT_EMPTY", "weapons/svd/svd_magout_empty.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SVD_MAGIN_NOMEN", "weapons/svd/svd_magin_nomen.wav")

SWEP.Sounds = {
    reload = {
        {time = 0.5, sound = "CW_FAS2_SVD_MAGOUT"},
        {time = 1, sound = "CW_FOLEY_HEAVY"},
        {time = 1.8, sound = "CW_FAS2_SVD_MAGIN"}
    },
    reload_nomen = {
        {time = 0.5, sound = "CW_FAS2_SVD_MAGOUT"},
        {time = 1.0, sound = "CW_FOLEY_HEAVY"},
        {time = 1.5, sound = "CW_FAS2_SVD_MAGIN"}
    },
    reload_empty = {
        {time = 0.45, sound = "CW_FAS2_SVD_MAGOUT_EMPTY"},
        {time = 1, sound = "CW_FOLEY_HEAVY"},
        {time = 1.96, sound = "CW_FAS2_SVD_MAGIN"},
        {time = 3.81, sound = "CW_FAS2_SVD_BOLTBACK"},
        {time = 3.99, sound = "CW_FAS2_SVD_BOLTFORWARD"}
    },
    reload_empty_nomen = {
        {time = 0.35, sound = "CW_FAS2_SVD_MAGOUT_EMPTY"},
        {time = 1, sound = "CW_FOLEY_HEAVY"},
        {time = 1.82, sound = "CW_FAS2_SVD_MAGIN"},
        {time = 3, sound = "CW_FAS2_SVD_BOLTBACK"},
        {time = 3.28, sound = "CW_FAS2_SVD_BOLTFORWARD"}
    }
}
