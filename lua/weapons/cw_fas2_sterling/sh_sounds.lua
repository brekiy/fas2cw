CustomizableWeaponry:addFireSound("CW_FAS2_STERLING_FIRE", "weapons/sterling/sterling_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_STERLING_FIRE_SUPP", "weapons/sterling/sterling_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_STERLING_BOLTBACK", "weapons/sterling/sterling_boltback.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_STERLING_BOLTFORWARD", "weapons/sterling/sterling_boltforward.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_STERLING_MAGOUT", "weapons/sterling/sterling_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_STERLING_MAGOUT_EMPTY", "weapons/sterling/sterling_magout_empty.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_STERLING_MAGIN", "weapons/sterling/sterling_magin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_STERLING_MAGIN_PARTIAL", "weapons/sterling/sterling_magin_partial.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_STERLING_MAGRELEASE", "weapons/sterling/sterling_magrelease.wav")

SWEP.Sounds = {
    shoot_last = {{time = 0.075, sound = "CW_FAS2_STERLING_BOLTFORWARD"},},
    shoot_last_scoped = {{time = 0.075, sound = "CW_FAS2_STERLING_BOLTFORWARD"},},
    reload = {
        {time = 0.2, sound = "CW_FAS2_STERLING_MAGRELEASE"},
        {time = 0.4, sound = "CW_FAS2_STERLING_MAGOUT"},
        {time = 0.7, sound = "CW_FOLEY_HEAVY"},
        {time = 1.38, sound = "CW_FAS2_STERLING_MAGIN_PARTIAL"},
        {time = 1.43, sound = "CW_FAS2_STERLING_MAGIN"}
    },
    reload_nomen = {
        {time = 0.2, sound = "CW_FAS2_STERLING_MAGRELEASE"},
        {time = 0.4, sound = "CW_FAS2_STERLING_MAGOUT"},
        {time = 0.85, sound = "CW_FOLEY_HEAVY"},
        {time = 1.38, sound = "CW_FAS2_STERLING_MAGIN_PARTIAL"},
        {time = 1.43, sound = "CW_FAS2_STERLING_MAGIN"}
    },
    reload_empty = {
        {time = 0.2, sound = "CW_FAS2_STERLING_MAGRELEASE"},
        {time = 0.4, sound = "CW_FAS2_STERLING_MAGOUT_EMPTY"},
        {time = 0.65, sound = "CW_FOLEY_HEAVY"},
        {time = 1.38, sound = "CW_FAS2_STERLING_MAGIN_PARTIAL"},
        {time = 1.46, sound = "CW_FAS2_STERLING_MAGIN"},
        {time = 2.2, sound = "CW_FAS2_STERLING_BOLTBACK"}
    },
    reload_empty_nomen = {
        {time = 0.2, sound = "CW_FAS2_STERLING_MAGRELEASE"},
        {time = 0.4, sound = "CW_FAS2_STERLING_MAGOUT_EMPTY"},
        {time = 0.75, sound = "CW_FOLEY_HEAVY"},
        {time = 1.35, sound = "CW_FAS2_STERLING_MAGIN_PARTIAL"},
        {time = 1.4, sound = "CW_FAS2_STERLING_MAGIN"},
        {time = 2, sound = "CW_FAS2_STERLING_BOLTBACK"}
    }
}
