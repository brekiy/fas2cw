CustomizableWeaponry:addFireSound("CW_FAS2_RBULL_FIRE", "weapons/ragingbull/ragingbull_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_RBULL_45_FIRE", "weapons/ragingbull/ragingbull_45lc_fire1.wav", 1, 115, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_RBULL_CYLINDEROPEN", "weapons/ragingbull/ragingbull_open.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_RBULL_REMOVE", {"weapons/ragingbull/ragingbull_remove1.wav", "weapons/ragingbull/ragingbull_remove2.wav", "weapons/ragingbull/ragingbull_remove3.wav", "weapons/ragingbull/ragingbull_remove4.wav", "weapons/ragingbull/ragingbull_remove5.wav"})
CustomizableWeaponry:addReloadSound("CW_FAS2_RBULL_INSERT", {"weapons/ragingbull/ragingbull_insert1.wav", "weapons/ragingbull/ragingbull_insert2.wav", "weapons/ragingbull/ragingbull_insert3.wav", "weapons/ragingbull/ragingbull_insert4.wav", "weapons/ragingbull/ragingbull_insert5.wav"})
CustomizableWeaponry:addReloadSound("CW_FAS2_RBULL_JIGGLE", {"weapons/ragingbull/ragingbull_jiggle1.wav", "weapons/ragingbull/ragingbull_jiggle2.wav", "weapons/ragingbull/ragingbull_jiggle3.wav", "weapons/ragingbull/ragingbull_jiggle4.wav"})
CustomizableWeaponry:addReloadSound("CW_FAS2_RBULL_CYLINDERCLOSE", "weapons/ragingbull/ragingbull_close.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_RBULL_EXTRACTOR", "weapons/ragingbull/ragingbull_extractor.wav")

SWEP.Sounds = {
    Reload1 = {
        {time = 0.4, sound = "CW_FAS2_RBULL_CYLINDEROPEN"},
        {time = 1.1, sound = "CW_FAS2_RBULL_REMOVE"},
        {time = 1.65, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 1.85, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 2.3, sound = "CW_FAS2_RBULL_CYLINDERCLOSE"}
    },
    Reload2 = {
        {time = 0.4, sound = "CW_FAS2_RBULL_CYLINDEROPEN"},
        {time = 1, sound = "CW_FAS2_RBULL_REMOVE"},
        {time = 1.5, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 1.75, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 1.9, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 2.2, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 2.9, sound = "CW_FAS2_RBULL_CYLINDERCLOSE"}
    },
    Reload3 = {
        {time = 0.4, sound = "CW_FAS2_RBULL_CYLINDEROPEN"},
        {time = 0.9, sound = "CW_FAS2_RBULL_REMOVE"},
        {time = 1.5, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 1.75, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 1.9, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 2.2, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 2.4, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 2.7, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 3.4, sound = "CW_FAS2_RBULL_CYLINDERCLOSE"}
    },
    Reload4 = {
        {time = 0.4, sound = "CW_FAS2_RBULL_CYLINDEROPEN"},
        {time = 0.9, sound = "CW_FAS2_RBULL_REMOVE"},
        {time = 1.5, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 1.75, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 1.9, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 2.2, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 2.4, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 2.7, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 2.9, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 3.2, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 3.8, sound = "CW_FAS2_RBULL_CYLINDERCLOSE"}
    },
    Reload5 = {
        {time = 0.4, sound = "CW_FAS2_RBULL_CYLINDEROPEN"},
        {time = 0.85, sound = "CW_FAS2_RBULL_EXTRACTOR"},
        {time = 0.8, sound = "CW_FAS2_RBULL_REMOVE"},
        {time = 1.2, sound = "CW_FAS2_RBULL_EXTRACTOR"},
        {time = 1.5, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 1.75, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 1.9, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 2.2, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 2.4, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 2.7, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 2.9, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 3.2, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 3.4, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 3.6, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 4.4, sound = "CW_FAS2_RBULL_CYLINDERCLOSE"}
    },
    Reload1_nomen = {
        {time = 0.2, sound = "CW_FAS2_RBULL_CYLINDEROPEN"},
        {time = 0.8, sound = "CW_FAS2_RBULL_REMOVE"},
        {time = 1.35, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 1.55, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 1.8, sound = "CW_FAS2_RBULL_CYLINDERCLOSE"}
    },
    Reload2_nomen = {
        {time = 0.2, sound = "CW_FAS2_RBULL_CYLINDEROPEN"},
        {time = 0.6, sound = "CW_FAS2_RBULL_REMOVE"},
        {time = 1.25, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 1.45, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 1.55, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 1.65, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 2.1, sound = "CW_FAS2_RBULL_CYLINDERCLOSE"}
    },
    Reload3_nomen = {
        {time = 0.2, sound = "CW_FAS2_RBULL_CYLINDEROPEN"},
        {time = 0.6, sound = "CW_FAS2_RBULL_REMOVE"},
        {time = 1.35, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 1.55, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 1.65, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 1.75, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 1.85, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 1.95, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 2.5, sound = "CW_FAS2_RBULL_CYLINDERCLOSE"}
    },
    Reload4_nomen = {
        {time = 0.2, sound = "CW_FAS2_RBULL_CYLINDEROPEN"},
        {time = 0.6, sound = "CW_FAS2_RBULL_REMOVE"},
        {time = 1.35, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 1.55, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 1.7, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 1.8, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 2, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 2.1, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 2.3, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 2.4, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 2.85, sound = "CW_FAS2_RBULL_CYLINDERCLOSE"}
    },
    Reload5_nomen = {
        {time = 0.2, sound = "CW_FAS2_RBULL_CYLINDEROPEN"},
        {time = 0.6, sound = "CW_FAS2_RBULL_EXTRACTOR"},
        {time = 0.6, sound = "CW_FAS2_RBULL_REMOVE"},
        {time = 1.2, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 1.4, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 1.5, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 1.6, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 1.8, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 2, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 2.2, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 2.3, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 2.5, sound = "CW_FAS2_RBULL_JIGGLE"},
        {time = 2.6, sound = "CW_FAS2_RBULL_INSERT"},
        {time = 3.4, sound = "CW_FAS2_RBULL_CYLINDERCLOSE"}
    }
}