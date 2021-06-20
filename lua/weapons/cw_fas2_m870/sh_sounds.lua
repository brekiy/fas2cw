CustomizableWeaponry:addFireSound("CW_FAS2_M870_FIRE", "weapons/rem870/rem870_fire1.wav", 1, 115, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_M870_INSERT", {"weapons/rem870/rem870_insert1.wav", "weapons/rem870/rem870_insert2.wav", "weapons/rem870/rem870_insert3.wav"})
CustomizableWeaponry:addReloadSound("CW_FAS2_M870_PUMPBACK", {"weapons/rem870/rem870_pump_back.wav", "weapons/rem870/rem870_pump_back1.wav", "weapons/rem870/rem870_pump_back2.wav"})
CustomizableWeaponry:addReloadSound("CW_FAS2_M870_PUMPFORWARD", {"weapons/rem870/rem870_pump_forward.wav", "weapons/rem870/rem870_pump_forward1.wav", "weapons/rem870/rem870_pump_forward2.wav"})


SWEP.Sounds = {
    deploy_first = {
        {time = 2.2, sound = "CW_FAS2_M870_PUMPBACK"},
        {time = 3.2, sound = "CW_FAS2_M870_PUMPFORWARD"},
        {time = 5.7, sound = "CW_FAS2_M870_INSERT"}
    },
    reload_start = {{time = 0.2, sound = "CW_FOLEY_CLOTH"}},
    reload_start_nomen = {{time = 0.2, sound = "CW_FOLEY_CLOTH"}},
    reload = {
        {time = 0.25, sound = "CW_FAS2_M870_INSERT"},
        {time = 0.5, sound = "CW_FOLEY_CLOTH"}
    },
    reload_nomen = {{time = 0.15, sound = "CW_FAS2_M870_INSERT"}},
    reload_start_empty = {
        {time = 0.2, sound = "CW_FAS2_M870_PUMPBACK"},
        {time = 0.5, sound = "CW_FOLEY_CLOTH"},
        {time = 1, sound = "CW_FAS2_M870_INSERT"},
        {time = 1.8, sound = "CW_FAS2_M870_PUMPFORWARD"},
        {time = 1.9, sound = "CW_FOLEY_CLOTH"}
    },
    reload_start_empty_nomen = {
        {time = 0.2, sound = "CW_FAS2_M870_PUMPBACK"},
        {time = 0.5, sound = "CW_FOLEY_CLOTH"},
        {time = 1.05, sound = "CW_FAS2_M870_INSERT"},
        {time = 1.8, sound = "CW_FAS2_M870_PUMPFORWARD"}
    },
    pump02 = {
        {time = 0.1, sound = "CW_FAS2_M870_PUMPBACK"},
        {time = 0.35, sound = "CW_FAS2_M870_PUMPFORWARD"}
    },
    pump01_nomen = {
        {time = 0.1, sound = "CW_FAS2_M870_PUMPBACK"},
        {time = 0.25, sound = "CW_FAS2_M870_PUMPFORWARD"}
    },
    pump01_scoped = {
        {time = 0.1, sound = "CW_FAS2_M870_PUMPBACK"},
        {time = 0.35, sound = "CW_FAS2_M870_PUMPFORWARD"}
    },
    pump01_nomen_scoped = {
        {time = 0.1, sound = "CW_FAS2_M870_PUMPBACK"},
        {time = 0.25, sound = "CW_FAS2_M870_PUMPFORWARD"}
    }
}
