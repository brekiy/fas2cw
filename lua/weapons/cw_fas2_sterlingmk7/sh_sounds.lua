CustomizableWeaponry:addFireSound("CW_FAS2_STERLING_MK7_FIRE", "weapons/sterling_mk7a4/mk7a4_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_STERLING_MK7_FIRE_SUPP", "weapons/sterling_mk7a4/mk7a4_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_STERLING_MK7_MAGSLAP", "weapons/sterling_mk7a4/mk7a4_magslap.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_STERLING_MK7_MAGOUT", "weapons/sterling_mk7a4/mk7a4_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_STERLING_MK7_MAGOUT_EMPTY", "weapons/sterling_mk7a4/mk7a4_magout_empty.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_STERLING_MK7_MAGIN", "weapons/sterling_mk7a4/mk7a4_magin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_STERLING_MK7_BOLTFORWARD", "weapons/sterling_mk7a4/mk7a4_boltforward.wav")

SWEP.Sounds = {
    Reload = {
        [1] = {time = 0.4, sound = Sound("FAS2_SterlingM.MagOut")},
        [2] = {time = 0.7, sound = Sound("MagPouch_Pistol")},
        [3] = {time = 1.38, sound = Sound("FAS2_Sterling.MagPart")},
        [4] = {time = 1.43, sound = Sound("FAS2_SterlingM.MagIn")}
    },
    reload_nomen = {
        [1] = {time = 0.4, sound = Sound("FAS2_SterlingM.MagOut")},
        [2] = {time = 0.85, sound = Sound("MagPouch_Pistol")},
        [3] = {time = 1.38, sound = Sound("FAS2_Sterling.MagPart")},
        [4] = {time = 1.43, sound = Sound("FAS2_SterlingM.MagIn")}
    },
    Reload_empty = {
        [1] = {time = 0.4, sound = Sound("FAS2_SterlingM.MagOutEmpty")},
        [2] = {time = 0.65, sound = Sound("MagPouch_Pistol")},
        [3] = {time = 1.38, sound = Sound("FAS2_Sterling.MagPart")},
        [4] = {time = 1.46, sound = Sound("FAS2_SterlingM.MagIn")},
        [5] = {time = 2.2, sound = Sound("FAS2_Sterling.BoltBack")}
    },
    reload_empty_nomen = {
        [1] = {time = 0.4, sound = Sound("FAS2_Sterling.MagOutEmpty")},
        [2] = {time = 0.75, sound = Sound("MagPouch_Pistol")},
        [3] = {time = 1.35, sound = Sound("FAS2_Sterling.MagPart")},
        [4] = {time = 1.4, sound = Sound("FAS2_SterlingM.MagIn")},
        [5] = {time = 2, sound = Sound("FAS2_Sterling.BoltBack")}
    }
}
