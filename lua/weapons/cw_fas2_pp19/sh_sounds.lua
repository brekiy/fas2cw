CustomizableWeaponry:addFireSound("CW_FAS2_PP19_FIRE", "weapons/bizon/bizon_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_PP19_FIRE_SUPP", "weapons/bizon/bizon_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_PP19_MAGOUT", "weapons/bizon/bizon_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_PP19_MAGOUT_EMPTY", "weapons/bizon/bizon_magout_empty.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_PP19_MAGIN", "weapons/bizon/bizon_magin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_PP19_BOLTPULL", "weapons/bizon/bizon_boltpull.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_PP19_MAGLATCH", "weapons/bizon/bizon_maglatch.wav")

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        {time = 0.8, sound = "CW_FAS2_PP19_MAGLATCH"},
        {time = 1.1, sound = "CW_FAS2_PP19_MAGOUT"},
        {time = 1.4, sound = "CW_FOLEY_HEAVY"},
        {time = 2.2, sound = "CW_FAS2_PP19_MAGLATCH"},
        {time = 2.6, sound = "CW_FAS2_PP19_MAGIN"}
    },
    reload_empty = {
        {time = 1.2, sound = "CW_FAS2_PP19_MAGLATCH"},
        {time = 1.7, sound = "CW_FAS2_PP19_MAGOUT_EMPTY"},
        {time = 2, sound = "CW_FOLEY_HEAVY"},
        {time = 2.8, sound = "CW_FAS2_PP19_MAGLATCH"},
        {time = 3.2, sound = "CW_FAS2_PP19_MAGIN"},
        {time = 4.1, sound = "CW_FAS2_PP19_BOLTPULL"}
    },
    reload_nomen = {
        {time = 0.3, sound = "CW_FAS2_PP19_MAGLATCH"},
        {time = 0.4, sound = "CW_FAS2_PP19_MAGOUT"},
        {time = 1, sound = "CW_FOLEY_HEAVY"},
        {time = 1.6, sound = "CW_FAS2_PP19_MAGLATCH"},
        {time = 2, sound = "CW_FAS2_PP19_MAGIN"}
    },
    reload_empty_nomen = {
        {time = 0.3, sound = "CW_FAS2_PP19_MAGLATCH"},
        {time = 0.5, sound = "CW_FAS2_PP19_MAGOUT_EMPTY"},
        {time = 1, sound = "CW_FOLEY_HEAVY"},
        {time = 1.6, sound = "CW_FAS2_PP19_MAGLATCH"},
        {time = 2, sound = "CW_FAS2_PP19_MAGIN"},
        {time = 2.7, sound = "CW_FAS2_PP19_BOLTPULL"}
    }
}
