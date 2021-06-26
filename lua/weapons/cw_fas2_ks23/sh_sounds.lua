CustomizableWeaponry:addFireSound("CW_FAS2_KS23_FIRE", "weapons/ks23/ks23_fire1.wav", 1, 115, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_KS23_INSERTPORT", "weapons/ks23/ks23_insert_port.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_KS23_INSERT", {"weapons/ks23/ks23_insert1.wav", "weapons/ks23/ks23_insert2.wav", "weapons/ks23/ks23_insert3.wav"})
CustomizableWeaponry:addReloadSound("CW_FAS2_KS23_PUMPBACK", "weapons/ks23/ks23_pump_back.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_KS23_PUMPFORWARD", "weapons/ks23/ks23_pump_forward.wav")

SWEP.Sounds = {
    start = {{time = 0.2, sound = "CW_FOLEY_LIGHT"}},
    start_nomen = {{time = 0.2, sound = "CW_FOLEY_LIGHT"}},
    start_empty = {
        {time = 0.1, sound = "CW_FAS2_KS23_PUMPBACK"},
        [2] = {time = 0.5, sound = "CW_FOLEY_LIGHT"},
        [3] = {time = 0.7, sound = "CW_FAS2_KS23_INSERTPORT"},
        [4] = {time = 1.4, sound = "CW_FAS2_KS23_PUMPFORWARD"},
        [5] = {time = 1.9, sound = "CW_FOLEY_LIGHT"}
    },
    start_empty_nomen = {
        {time = 0.1, sound = "CW_FAS2_KS23_PUMPBACK"},
        [2] = {time = 0.5, sound = "CW_FOLEY_LIGHT"},
        [3] = {time = 0.65, sound = "CW_FAS2_KS23_INSERTPORT"},
        [4] = {time = 1.4, sound = "CW_FAS2_KS23_PUMPFORWARD"}
    },
    insert = {
        {time = 0.25, sound = "CW_FAS2_KS23_INSERT"},
        {time = 0.5, sound = "CW_FOLEY_LIGHT"}
    },
    insert_nomen = {
        {time = 0.15, sound = "CW_FAS2_KS23_INSERT"},
        {time = 0.35, sound = "CW_FOLEY_LIGHT"}
    },
    pump = {
        {time = 0.15, sound = "CW_FAS2_KS23_PUMPBACK"},
        {time = 0.35, sound = "CW_FAS2_KS23_PUMPFORWARD"}
    },
    pump_nomen = {
        {time = 0.1, sound = "CW_FAS2_KS23_PUMPBACK"},
        {time = 0.25, sound = "CW_FAS2_KS23_PUMPFORWARD"}
    },
    pump_iron = {
        {time = 0.1, sound = "CW_FAS2_KS23_PUMPBACK"},
        {time = 0.5, sound = "CW_FAS2_KS23_PUMPFORWARD"}
    },
    pump_nomen_iron = {
        {time = 0.1, sound = "CW_FAS2_KS23_PUMPBACK"},
        {time = 0.35, sound = "CW_FAS2_KS23_PUMPFORWARD"}
    }
}