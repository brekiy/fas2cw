CustomizableWeaponry:addFireSound("CW_FAS2_M3S90_FIRE", "weapons/m3s90p/m3s90_fire1.wav", 1, 115, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_M3S90_BOLTCATCH", "weapons/m3s90p/m3s90_Boltcatch.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M3S90_GETSHELL", {"weapons/m3s90p/m3s90_getammo1.wav", "weapons/m3s90p/m3s90_getammo2.wav", "weapons/m3s90p/m3s90_getammo3.wav"})
CustomizableWeaponry:addReloadSound("CW_FAS2_M3S90_LOAD_EJECTORPORT", "weapons/m3s90p/m3s90_load_ejectorport.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M3S90_LOAD", {"weapons/m3s90p/m3s90_load1.wav", "weapons/m3s90p/m3s90_load2.wav", "weapons/m3s90p/m3s90_load3.wav", "weapons/m3s90p/m3s90_load4.wav", "weapons/m3s90p/m3s90_load5.wav", "weapons/m3s90p/m3s90_load6.wav", "weapons/m3s90p/m3s90_load7.wav", "weapons/m3s90p/m3s90_load8.wav"})
CustomizableWeaponry:addReloadSound("CW_FAS2_M3S90_LOAD_SHELLSADDLE", "weapons/m3s90p/m3s90_restock.wav")

SWEP.Sounds = {
    reload_load1 = {
        {time = 0.05, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 0.35, sound = "CW_FAS2_M3S90_LOAD"}
    },
    reload_load2 = {
        {time = 0.05, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 0.45, sound = "CW_FAS2_M3S90_LOAD"},
        {time = 0.8, sound = "CW_FAS2_M3S90_LOAD"}
    },
    reload_load3 = {
        {time = 0.05, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 0.45, sound = "CW_FAS2_M3S90_LOAD"},
        {time = 0.8, sound = "CW_FAS2_M3S90_LOAD"},
        {time = 1.2, sound = "CW_FAS2_M3S90_LOAD"}
    },
    reload_load4 = {
        {time = 0.05, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 0.3, sound = "CW_FAS2_M3S90_LOAD"},
        {time = 0.6, sound = "CW_FAS2_M3S90_LOAD"},
        {time = 0.9, sound = "CW_FAS2_M3S90_LOAD"},
        {time = 1.2, sound = "CW_FAS2_M3S90_LOAD"}
    },
    reload_start_empty = {
        {time = 0.05, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 0.75, sound = "CW_FAS2_M3S90_LOAD_EJECTORPORT"},
        {time = 1.25, sound = "CW_FAS2_M3S90_BOLTCATCH"}
    },
    last6_reload_insert = {
        {time = 0.1, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 0.4, sound = "CW_FAS2_M3S90_LOAD"}
    },
    last5_reload_insert = {
        {time = 0.1, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 0.4, sound = "CW_FAS2_M3S90_LOAD"}
    },
    last4_reload_insert = {
        {time = 0.1, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 0.4, sound = "CW_FAS2_M3S90_LOAD"}
    },
    last3_reload_insert = {
        {time = 0.1, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 0.4, sound = "CW_FAS2_M3S90_LOAD"}
    },
    last2_reload_insert = {
        {time = 0.1, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 0.4, sound = "CW_FAS2_M3S90_LOAD"}
    },
    last1_reload_insert = {
        {time = 0.1, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 0.4, sound = "CW_FAS2_M3S90_LOAD"}
    },
    last6_reload_end = {
        {time = 0.1, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 0.4, sound = "CW_FAS2_M3S90_LOAD"}
    },
    last5_reload_end = {
        {time = 0.1, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 0.4, sound = "CW_FAS2_M3S90_LOAD"}
    },
    last4_reload_end = {
        {time = 0.1, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 0.4, sound = "CW_FAS2_M3S90_LOAD"}
    },
    last3_reload_end = {
        {time = 0.1, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 0.4, sound = "CW_FAS2_M3S90_LOAD"}
    },
    last2_reload_end = {
        {time = 0.1, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 0.4, sound = "CW_FAS2_M3S90_LOAD"}
    },
    last1_reload_end = {
        {time = 0.1, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 0.4, sound = "CW_FAS2_M3S90_LOAD"}
    },
    last6_reload_start = {
        {time = 0.3, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 0.8, sound = "CW_FAS2_M3S90_LOAD"}
    },
    last5_reload_start = {
        {time = 0.3, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 0.8, sound = "CW_FAS2_M3S90_LOAD"}
    },
    last4_reload_start = {
        {time = 0.3, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 0.8, sound = "CW_FAS2_M3S90_LOAD"}
    },
    last3_reload_start = {
        {time = 0.3, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 0.8, sound = "CW_FAS2_M3S90_LOAD"}
    },
    last2_reload_start = {
        {time = 0.3, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 0.8, sound = "CW_FAS2_M3S90_LOAD"}
    },
    last1_reload_start = {
        {time = 0.3, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 0.8, sound = "CW_FAS2_M3S90_LOAD"}
    },
    last6_reload_start_empty = {
        {time = 0.3, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 1, sound = "CW_FAS2_M3S90_LOAD_EJECTORPORT"},
        {time = 1.52, sound = "CW_FAS2_M3S90_BOLTCATCH"}
    },
    last5_reload_start_empty = {
        {time = 0.3, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 1, sound = "CW_FAS2_M3S90_LOAD_EJECTORPORT"},
        {time = 1.52, sound = "CW_FAS2_M3S90_BOLTCATCH"}
    },
    last4_reload_start_empty = {
        {time = 0.3, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 1, sound = "CW_FAS2_M3S90_LOAD_EJECTORPORT"},
        {time = 1.52, sound = "CW_FAS2_M3S90_BOLTCATCH"}
    },
    last3_reload_start_empty = {
        {time = 0.3, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 1, sound = "CW_FAS2_M3S90_LOAD_EJECTORPORT"},
        {time = 1.52, sound = "CW_FAS2_M3S90_BOLTCATCH"}
    },
    last2_reload_start_empty = {
        {time = 0.3, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 1, sound = "CW_FAS2_M3S90_LOAD_EJECTORPORT"},
        {time = 1.52, sound = "CW_FAS2_M3S90_BOLTCATCH"}
    },
    last1_reload_start_empty = {
        {time = 0.3, sound = "CW_FAS2_M3S90_GETSHELL"},
        {time = 1, sound = "CW_FAS2_M3S90_LOAD_EJECTORPORT"},
        {time = 1.52, sound = "CW_FAS2_M3S90_BOLTCATCH"}
    },
    last5_restock = {{time = 0.7, sound = "CW_FAS2_M3S90_LOAD_SHELLSADDLE"}},
    last4_restock = {{time = 0.7, sound = "CW_FAS2_M3S90_LOAD_SHELLSADDLE"}},
    last3_restock = {{time = 0.7, sound = "CW_FAS2_M3S90_LOAD_SHELLSADDLE"}},
    last2_restock = {{time = 0.7, sound = "CW_FAS2_M3S90_LOAD_SHELLSADDLE"}},
    last1_restock = {
        {time = 0.7, sound = "CW_FAS2_M3S90_LOAD_SHELLSADDLE"},
        {time = 1.45, sound = "CW_FAS2_M3S90_LOAD_SHELLSADDLE"}
    },
    last0_restock = {
        {time = 0.7, sound = "CW_FAS2_M3S90_LOAD_SHELLSADDLE"},
        {time = 1.45, sound = "CW_FAS2_M3S90_LOAD_SHELLSADDLE"}
    },
    last5_restock_empty = {{time = 0.7, sound = "CW_FAS2_M3S90_LOAD_SHELLSADDLE"}},
    last4_restock_empty = {{time = 0.7, sound = "CW_FAS2_M3S90_LOAD_SHELLSADDLE"}},
    last3_restock_empty = {{time = 0.7, sound = "CW_FAS2_M3S90_LOAD_SHELLSADDLE"}},
    last2_restock_empty = {{time = 0.7, sound = "CW_FAS2_M3S90_LOAD_SHELLSADDLE"}},
    last1_restock_empty = {
        {time = 0.7, sound = "CW_FAS2_M3S90_LOAD_SHELLSADDLE"},
        {time = 1.45, sound = "CW_FAS2_M3S90_LOAD_SHELLSADDLE"}
    },
    last0_restock_empty = {
        {time = 0.7, sound = "CW_FAS2_M3S90_LOAD_SHELLSADDLE"},
        {time = 1.45, sound = "CW_FAS2_M3S90_LOAD_SHELLSADDLE"}
    },
}
