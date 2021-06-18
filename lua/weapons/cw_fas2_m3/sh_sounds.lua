CustomizableWeaponry:addFireSound("CW_FAS2_AK47_FIRE", "weapons/rpk47/rpk47_fire1.wav", 1, 115, CHAN_STATIC)
-- FAS_FS["FAS2_M3S90"] = "weapons/m3s90p/m3s90_fire1.wav"

CustomizableWeaponry:addReloadSound("CW_FAS2_AK47_BOLTBACK", "weapons/rpk47/rpk47_boltback.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_AK47_BOLTFORWARD", "weapons/rpk47/rpk47_boltforward.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_AK47_MAGOUT", "weapons/rpk47/rpk47_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_AK47_MAGIN", "weapons/rpk47/rpk47_magin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_AK47_MAGIN_PARTIAL", "weapons/rpk47/rpk47_magin_partial.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_AK47_MAGOUT_EMPTY", "weapons/rpk47/rpk47_magout_empty.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_AK47_MAGOUT_EMPTY_NOMEN", "weapons/rpk47/rpk47_magout_empty_nomen.wav")

-- FAS_RS["FAS2_M3S90.BoltCatch"] = "weapons/m3s90p/m3s90_Boltcatch.wav"
-- FAS_RS["FAS2_M3S90.GetAmmo"] = {"weapons/m3s90p/m3s90_getammo1.wav", "weapons/m3s90p/m3s90_getammo2.wav", "weapons/m3s90p/m3s90_getammo3.wav"}
-- FAS_RS["FAS2_M3S90.LoadEjectorPort"] = "weapons/m3s90p/m3s90_load_ejectorport.wav"
-- FAS_RS["FAS2_M3S90.Load"] = {"weapons/m3s90p/m3s90_load1.wav", "weapons/m3s90p/m3s90_load2.wav", "weapons/m3s90p/m3s90_load3.wav", "weapons/m3s90p/m3s90_load4.wav", "weapons/m3s90p/m3s90_load5.wav", "weapons/m3s90p/m3s90_load6.wav", "weapons/m3s90p/m3s90_load7.wav", "weapons/m3s90p/m3s90_load8.wav"}
-- FAS_RS["FAS2_M3S90.Restock"] = "weapons/m3s90p/m3s90_restock.wav"

SWEP.Sounds = {
    reload_load1 = {
        {time = 0.05, sound = "FAS2_M3S90.GetAmmo"},
        {time = 0.35, sound = "FAS2_M3S90.Load"}
    },
    reload_load2 = {
        {time = 0.05, sound = "FAS2_M3S90.GetAmmo"},
        {time = 0.45, sound = "FAS2_M3S90.Load"},
        {time = 0.8, sound = "FAS2_M3S90.Load"}
    },
    reload_load3 = {
        {time = 0.05, sound = "FAS2_M3S90.GetAmmo"},
        {time = 0.45, sound = "FAS2_M3S90.Load"},
        {time = 0.8, sound = "FAS2_M3S90.Load"},
        {time = 1.2, sound = "FAS2_M3S90.Load"}
    },
    reload_load4 = {
        {time = 0.05, sound = "FAS2_M3S90.GetAmmo"},
        {time = 0.3, sound = "FAS2_M3S90.Load"},
        {time = 0.6, sound = "FAS2_M3S90.Load"},
        {time = 0.9, sound = "FAS2_M3S90.Load"},
        {time = 1.2, sound = "FAS2_M3S90.Load"}
    },
    reload_start_empty = {
        {time = 0.05, sound = "FAS2_M3S90.GetAmmo"},
        {time = 0.75, sound = "FAS2_M3S90.LoadEjectorPort"},
        {time = 1.25, sound = "FAS2_M3S90.BoltCatch"}
    },
    last6_reload_insert = {
        {time = 0.1, sound = "FAS2_M3S90.GetAmmo"},
        {time = 0.4, sound = "FAS2_M3S90.Load"}
    },
    last5_reload_insert = {
        {time = 0.1, sound = "FAS2_M3S90.GetAmmo"},
        {time = 0.4, sound = "FAS2_M3S90.Load"}
    },
    last4_reload_insert = {
        {time = 0.1, sound = "FAS2_M3S90.GetAmmo"},
        {time = 0.4, sound = "FAS2_M3S90.Load"}
    },
    last3_reload_insert = {
        {time = 0.1, sound = "FAS2_M3S90.GetAmmo"},
        {time = 0.4, sound = "FAS2_M3S90.Load"}
    },
    last2_reload_insert = {
        {time = 0.1, sound = "FAS2_M3S90.GetAmmo"},
        {time = 0.4, sound = "FAS2_M3S90.Load"}
    },
    last1_reload_insert = {
        {time = 0.1, sound = "FAS2_M3S90.GetAmmo"},
        {time = 0.4, sound = "FAS2_M3S90.Load"}
    },
    last6_reload_end = {
        {time = 0.1, sound = "FAS2_M3S90.GetAmmo"},
        {time = 0.4, sound = "FAS2_M3S90.Load"}
    },
    last5_reload_end = {
        {time = 0.1, sound = "FAS2_M3S90.GetAmmo"},
        {time = 0.4, sound = "FAS2_M3S90.Load"}
    },
    last4_reload_end = {
        {time = 0.1, sound = "FAS2_M3S90.GetAmmo"},
        {time = 0.4, sound = "FAS2_M3S90.Load"}
    },
    last3_reload_end = {
        {time = 0.1, sound = "FAS2_M3S90.GetAmmo"},
        {time = 0.4, sound = "FAS2_M3S90.Load"}
    },
    last2_reload_end = {
        {time = 0.1, sound = "FAS2_M3S90.GetAmmo"},
        {time = 0.4, sound = "FAS2_M3S90.Load"}
    },
    last1_reload_end = {
        {time = 0.1, sound = "FAS2_M3S90.GetAmmo"},
        {time = 0.4, sound = "FAS2_M3S90.Load"}
    },
    
    last6_reload_start = {
        {time = 0.3, sound = "FAS2_M3S90.GetAmmo"},
        {time = 0.8, sound = "FAS2_M3S90.Load"}
    },
    last5_reload_start = {
        {time = 0.3, sound = "FAS2_M3S90.GetAmmo"},
        {time = 0.8, sound = "FAS2_M3S90.Load"}
    },
    last4_reload_start = {
        {time = 0.3, sound = "FAS2_M3S90.GetAmmo"},
        {time = 0.8, sound = "FAS2_M3S90.Load"}
    },
    last3_reload_start = {
        {time = 0.3, sound = "FAS2_M3S90.GetAmmo"},
        {time = 0.8, sound = "FAS2_M3S90.Load"}
    },
    last2_reload_start = {
        {time = 0.3, sound = "FAS2_M3S90.GetAmmo"},
        {time = 0.8, sound = "FAS2_M3S90.Load"}
    },
    last1_reload_start = {
        {time = 0.3, sound = "FAS2_M3S90.GetAmmo"},
        {time = 0.8, sound = "FAS2_M3S90.Load"}
    },
    last6_reload_start_empty = {
        {time = 0.3, sound = "FAS2_M3S90.GetAmmo"},
        {time = 1, sound = "FAS2_M3S90.LoadEjectorPort"},
        {time = 1.52, sound = "FAS2_M3S90.BoltCatch"}
    },
    last5_reload_start_empty = {
        {time = 0.3, sound = "FAS2_M3S90.GetAmmo"},
        {time = 1, sound = "FAS2_M3S90.LoadEjectorPort"},
        {time = 1.52, sound = "FAS2_M3S90.BoltCatch"}
    },
    last4_reload_start_empty = {
        {time = 0.3, sound = "FAS2_M3S90.GetAmmo"},
        {time = 1, sound = "FAS2_M3S90.LoadEjectorPort"},
        {time = 1.52, sound = "FAS2_M3S90.BoltCatch"}
    },
    last3_reload_start_empty = {
        {time = 0.3, sound = "FAS2_M3S90.GetAmmo"},
        {time = 1, sound = "FAS2_M3S90.LoadEjectorPort"},
        {time = 1.52, sound = "FAS2_M3S90.BoltCatch"}
    },
    last2_reload_start_empty = {
        {time = 0.3, sound = "FAS2_M3S90.GetAmmo"},
        {time = 1, sound = "FAS2_M3S90.LoadEjectorPort"},
        {time = 1.52, sound = "FAS2_M3S90.BoltCatch"}
    },
    last1_reload_start_empty = {
        {time = 0.3, sound = "FAS2_M3S90.GetAmmo"},
        {time = 1, sound = "FAS2_M3S90.LoadEjectorPort"},
        {time = 1.52, sound = "FAS2_M3S90.BoltCatch"}
    },
    last5_restock = {{time = 0.7, sound = "FAS2_M3S90.Restock"}},
    last4_restock = {{time = 0.7, sound = "FAS2_M3S90.Restock"}},
    last3_restock = {{time = 0.7, sound = "FAS2_M3S90.Restock"}},
    last2_restock = {{time = 0.7, sound = "FAS2_M3S90.Restock"}},
    last1_restock = {
        {time = 0.7, sound = "FAS2_M3S90.Restock"},
        {time = 1.45, sound = "FAS2_M3S90.Restock"}
    },
    last0_restock = {
        {time = 0.7, sound = "FAS2_M3S90.Restock"},
        {time = 1.45, sound = "FAS2_M3S90.Restock"}
    },
    last5_restock_empty = {{time = 0.7, sound = "FAS2_M3S90.Restock"}},
    last4_restock_empty = {{time = 0.7, sound = "FAS2_M3S90.Restock"}},
    last3_restock_empty = {{time = 0.7, sound = "FAS2_M3S90.Restock"}},
    last2_restock_empty = {{time = 0.7, sound = "FAS2_M3S90.Restock"}},
    last1_restock_empty = {
        {time = 0.7, sound = "FAS2_M3S90.Restock"},
        {time = 1.45, sound = "FAS2_M3S90.Restock"}
    },
    last0_restock_empty = {
        {time = 0.7, sound = "FAS2_M3S90.Restock"},
        {time = 1.45, sound = "FAS2_M3S90.Restock"}
    },
    reload_insert = {
        {time = 0.1, sound = "FAS2_M3S90.GetAmmo"},
        {time = 0.4, sound = "FAS2_M3S90.Load"}
    },
    reload_nomen = {
        {time = 0.3, sound = "FAS2_DEAGLE.MagOut"},
        {time = 0.5, sound = "MagPouch_Pistol"},
        {time = 0.95, sound = "FAS2_DEAGLE.MagInPartial"},
        {time = 1.1, sound = "FAS2_DEAGLE.MagInNomen"}
    },
    reload_empty = {
        {time = 0.6, sound = "FAS2_DEAGLE.MagOutEmpty"},
        {time = 0.9, sound = "MagPouch_Pistol"},
        {time = 1.4, sound = "FAS2_DEAGLE.MagInPartial"},
        {time = 1.55, sound = "FAS2_DEAGLE.MagIn"},
        {time = 2.3, sound = "FAS2_DEAGLE.SlideStop"}
    },
    reload_nomen_empty = {
        {time = 0.3, sound = "FAS2_DEAGLE.MagOut"},
        {time = 0.5, sound = "MagPouch_Pistol"},
        {time = 0.95, sound = "FAS2_DEAGLE.MagInPartial"},
        {time = 1.1, sound = "FAS2_DEAGLE.MagInNomen"},
        {time = 1.6, sound = "FAS2_DEAGLE.SlideStop"}
    },
}
