CustomizableWeaponry:addFireSound("CW_FAS2_M82_FIRE", "weapons/m82/m82_fire1.wav", 1, 115, CHAN_STATIC)
-- CustomizableWeaponry:addFireSound("CW_FAS2_M82_FIRE_SUPP", "weapons/m82/m82_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_M82_BOLTBACK", "weapons/m82/m82_boltback.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M82_BOLTFORWARD", "weapons/m82/m82_boltforward.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M82_MAGOUT", "weapons/m82/m82_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M82_MAGIN", "weapons/m82/m82_magin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M82_MAGOUT_EMPTY", "weapons/m82/m82_magout_empty.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M82_MAGRELEASE", "weapons/m82/m82_magrelease.wav")

SWEP.Sounds = {
    reload = {
        {time = 1.3, sound = "CW_FAS2_M82_MAGRELEASE"},
        {time = 1.8, sound = "CW_FAS2_M82_MAGOUT"},
        {time = 1.7, sound = "CW_FOLEY_HEAVY"},
        {time = 3.1, sound = "CW_FAS2_M82_MAGIN"}
    },
    bipod_reload = {
        {time = 0.8, sound = "CW_FAS2_M82_MAGRELEASE"},
        {time = 0.9, sound = "CW_FAS2_M82_MAGOUT"},
        {time = 1.2, sound = "CW_FOLEY_HEAVY"},
        {time = 2.4, sound = "CW_FAS2_M82_MAGIN"}
    },
    bipod_reload_empty = {
        {time = 0.8, sound = "CW_FAS2_M82_MAGRELEASE"},
        {time = 0.9, sound = "CW_FAS2_M82_MAGOUT_EMPTY"},
        {time = 1.2, sound = "CW_FOLEY_HEAVY"},
        {time = 2.4, sound = "CW_FAS2_M82_MAGIN"},
        {time = 3.8, sound = "CW_FAS2_M82_BOLTBACK"},
        {time = 4.1, sound = "CW_FAS2_M82_BOLTFORWARD"}
    },
    reload_nomen = {
        {time = 0.5, sound = "CW_FOLEY_HEAVY"},
        {time = 1.1, sound = "CW_FAS2_M82_MAGRELEASE"},
        {time = 1.2, sound = "CW_FAS2_M82_MAGOUT"},
        {time = 1.75, sound = "CW_FAS2_M82_MAGIN"}
    },
    reload_empty = {
        {time = 1.3, sound = "CW_FAS2_M82_MAGRELEASE"},
        {time = 1.8, sound = "CW_FAS2_M82_MAGOUT_EMPTY"},
        {time = 1.7, sound = "CW_FOLEY_HEAVY"},
        {time = 3.1, sound = "CW_FAS2_M82_MAGIN"},
        {time = 4.8, sound = "CW_FAS2_M82_BOLTBACK"},
        {time = 5.15, sound = "CW_FAS2_M82_BOLTFORWARD"}
    },
    reload_empty_nomen = {
        {time = 0.5, sound = "CW_FOLEY_HEAVY"},
        {time = 1.1, sound = "CW_FAS2_M82_MAGRELEASE"},
        {time = 1.2, sound = "CW_FAS2_M82_MAGOUT_EMPTY"},
        {time = 1.75, sound = "CW_FAS2_M82_MAGIN"},
        {time = 2.8, sound = "CW_FAS2_M82_BOLTBACK"},
        {time = 3.1, sound = "CW_FAS2_M82_BOLTFORWARD"}
    },
    bipod_reload_nomen = {
        {time = 0.5, sound = "CW_FAS2_M82_MAGRELEASE"},
        {time = 0.6, sound = "CW_FAS2_M82_MAGOUT"},
        {time = 1, sound = "CW_FOLEY_HEAVY"},
        {time = 1.5, sound = "CW_FAS2_M82_MAGIN"}
    },
    bipod_reload_empty_nomen = {
        {time = 0.5, sound = "CW_FAS2_M82_MAGRELEASE"},
        {time = 0.6, sound = "CW_FAS2_M82_MAGOUT_EMPTY"},
        {time = 1.2, sound = "CW_FOLEY_HEAVY"},
        {time = 1.5, sound = "CW_FAS2_M82_MAGIN"},
        {time = 2.5, sound = "CW_FAS2_M82_BOLTBACK"},
        {time = 2.6, sound = "CW_FAS2_M82_BOLTFORWARD"}
    },
    bipod_dn = {
        {time = 0.8, sound = "CW_FAS2_BIPOD_DOWN"},
        {time = 1.65, sound = "CW_FAS2_BIPOD_DOWN"}
    },
    bipod_up = {{time = 1.2, sound = "CW_FAS2_M82_BOLTFORWARD"}}
}
