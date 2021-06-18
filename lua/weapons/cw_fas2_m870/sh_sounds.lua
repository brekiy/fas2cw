CustomizableWeaponry:addFireSound("CW_FAS2_AK47_FIRE", "weapons/rpk47/rpk47_fire1.wav", 1, 115, CHAN_STATIC)
-- FAS_FS["FAS2_REM870"] = "weapons/rem870/rem870_fire1.wav"

CustomizableWeaponry:addReloadSound("CW_FAS2_AK47_BOLTBACK", "weapons/rpk47/rpk47_boltback.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_AK47_BOLTFORWARD", "weapons/rpk47/rpk47_boltforward.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_AK47_MAGOUT_EMPTY_NOMEN", "weapons/rpk47/rpk47_magout_empty_nomen.wav")

-- FAS_RS["FAS2_REM870.Insert"] = {"weapons/rem870/rem870_insert1.wav", "weapons/rem870/rem870_insert2.wav", "weapons/rem870/rem870_insert3.wav"}
-- FAS_RS["FAS2_REM870.PumpBack"] = {"weapons/rem870/rem870_pump_back.wav", "weapons/rem870/rem870_pump_back1.wav", "weapons/rem870/rem870_pump_back2.wav"}
-- FAS_RS["FAS2_REM870.PumpForward"] = {"weapons/rem870/rem870_pump_forward.wav", "weapons/rem870/rem870_pump_forward1.wav", "weapons/rem870/rem870_pump_forward2.wav"}

SWEP.Sounds = {
    deploy_first = {
        [1] = {time = 2.2, sound = "FAS2_REM870.PumpBack"},
        [2] = {time = 3.2, sound = "FAS2_REM870.PumpForward"},
        [3] = {time = 5.7, sound = "FAS2_REM870.Insert"}
    },
    reload_start = {{time = 0.2, sound = "CW_FOLEY_CLOTH"}},
    reload_start_nomen = {[1] = {time = 0.2, sound = "CW_FOLEY_CLOTH"}},
    reload = {
        [1] = {time = 0.25, sound = "FAS2_REM870.Insert"},
        [2] = {time = 0.5, sound = "CW_FOLEY_CLOTH"}
    },
    reload_nomen = {[1] = {time = 0.15, sound = "FAS2_REM870.Insert"}},
    reload_start_empty = {
        [1] = {time = 0.2, sound = "FAS2_REM870.PumpBack"},
        [2] = {time = 0.5, sound = "CW_FOLEY_CLOTH"},
        [3] = {time = 1, sound = "FAS2_REM870.Insert"},
        [4] = {time = 1.8, sound = "FAS2_REM870.PumpForward"},
        [5] = {time = 1.9, sound = "CW_FOLEY_CLOTH"}
    },
    reload_start_empty_nomen = {
        [1] = {time = 0.2, sound = "FAS2_REM870.PumpBack"},
        [2] = {time = 0.5, sound = "CW_FOLEY_CLOTH"},
        [3] = {time = 1.05, sound = "FAS2_REM870.Insert"},
        [4] = {time = 1.8, sound = "FAS2_REM870.PumpForward"}
    },
    pump02 = {
        [1] = {time = 0.1, sound = "FAS2_REM870.PumpBack"},
        [2] = {time = 0.35, sound = "FAS2_REM870.PumpForward"}
    },
    pump01_nomen = {
        [1] = {time = 0.1, sound = "FAS2_REM870.PumpBack"},
        [2] = {time = 0.25, sound = "FAS2_REM870.PumpForward"}
    },
    pump01_scoped = {
        [1] = {time = 0.1, sound = "FAS2_REM870.PumpBack"},
        [2] = {time = 0.35, sound = "FAS2_REM870.PumpForward"}
    },
    pump01_nomen_scoped = {
        [1] = {time = 0.1, sound = "FAS2_REM870.PumpBack"},
        [2] = {time = 0.25, sound = "FAS2_REM870.PumpForward"}
    }
}
