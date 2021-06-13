CustomizableWeaponry:addFireSound("CW_FAS2_STERLING_MK7_FIRE", "weapons/sterling_mk7a4/mk7a4_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_STERLING_MK7_FIRE_SUPP", "weapons/sterling_mk7a4/mk7a4_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_STERLING_MK7_MAGSLAP", "weapons/sterling_mk7a4/mk7a4_magslap.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_STERLING_MK7_MAGOUT", "weapons/sterling_mk7a4/mk7a4_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_STERLING_MK7_MAGOUT_EMPTY", "weapons/sterling_mk7a4/mk7a4_magout_empty.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_STERLING_MK7_MAGIN", "weapons/sterling_mk7a4/mk7a4_magin.wav")
-- CustomizableWeaponry:addReloadSound("CW_FAS2_STERLING_MK7_BOLTFORWARD", "weapons/sterling_mk7a4/mk7a4_boltforward.wav")

SWEP.Sounds = {
    fire_last = {{time = 0.2, sound = "CW_FAS2_STERLING_BOLTFORWARD"},},
    fire_last_scoped = {{time = 0.2, sound = "CW_FAS2_STERLING_BOLTFORWARD"},},
    reload = {
        [1] = {time = 0.4, sound = "CW_FAS2_STERLING_MK7_MAGOUT"},
        [2] = {time = 0.7, sound = "CW_FOLEY_MEDIUM"},
        [3] = {time = 1.38, sound = "CW_FAS2_STERLING_MAGIN_PARTIAL"},
        [4] = {time = 1.43, sound = "CW_FAS2_STERLING_MK7_MAGIN"}
    },
    reload_nomen = {
        [1] = {time = 0.4, sound = "CW_FAS2_STERLING_MK7_MAGOUT"},
        [2] = {time = 0.85, sound = "CW_FOLEY_MEDIUM"},
        [3] = {time = 1.08, sound = "CW_FAS2_STERLING_MAGIN_PARTIAL"},
        [4] = {time = 1.13, sound = "CW_FAS2_STERLING_MK7_MAGIN"}
    },
    reload_empty = {
        [1] = {time = 0.4, sound = "CW_FAS2_STERLING_MK7_MAGOUT_EMPTY"},
        [2] = {time = 0.65, sound = "CW_FOLEY_MEDIUM"},
        [3] = {time = 1.38, sound = "CW_FAS2_STERLING_MAGIN_PARTIAL"},
        [4] = {time = 1.96, sound = "CW_FAS2_STERLING_MK7_MAGSLAP"},
        [5] = {time = 2.6, sound = "CW_FAS2_STERLING_BOLTBACK"}
    },
    reload_empty_nomen = {
        [1] = {time = 0.4, sound = "CW_FAS2_STERLING_MK7_MAGOUT_EMPTY"},
        [2] = {time = 0.75, sound = "CW_FOLEY_MEDIUM"},
        [3] = {time = 1.1, sound = "CW_FAS2_STERLING_MAGIN_PARTIAL"},
        [4] = {time = 1.2, sound = "CW_FAS2_STERLING_MK7_MAGIN"},
        [5] = {time = 1.75, sound = "CW_FAS2_STERLING_BOLTBACK"}
    }
}
