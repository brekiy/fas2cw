CustomizableWeaponry:addReloadSound("CW_FAS2_TOZ34_CLOSE", "weapons/toz34/toz34_close.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_TOZ34_OPENSTART", "weapons/toz34/toz34_open_start.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_TOZ34_OPENFINISH", "weapons/toz34/toz34_open_finish.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_TOZ34_INSERT", {"weapons/toz34/toz34_shell_in1.wav", "weapons/toz34/toz34_shell_in2.wav"})

SWEP.Sounds = {
    reload = {
        {time = 0.65, sound = "CW_FAS2_TOZ34_OPENSTART"},
        {time = 1.5, sound = "CW_FAS2_TOZ34_OPENFINISH"},
        {time = 2.4, sound = "CW_FOLEY_MEDIUM"},
        -- {time = 1.5, sound = "FAS2_M3S90.GetAmmo"},
        {time = 3.6, sound = "CW_FAS2_TOZ34_INSERT"},
        {time = 4.7, sound = "CW_FAS2_TOZ34_CLOSE"}
    },
    reload_empty = {
        {time = 0.65, sound = "CW_FAS2_TOZ34_OPENSTART"},
        {time = 0.8, sound = "CW_FAS2_TOZ34_OPENFINISH"},
        {time = 1.4, sound = "CW_FOLEY_MEDIUM"},
        {time = 2.6, sound = "CW_FAS2_TOZ34_INSERT"},
        {time = 2.65, sound = "CW_FAS2_TOZ34_INSERT"},
        -- {time = 2.9, sound = "FAS2_SR25.MagSlap"},
        {time = 3.65, sound = "CW_FAS2_TOZ34_CLOSE"}
    }
}