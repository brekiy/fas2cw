CustomizableWeaponry:addFireSound("CW_FAS2_M24_FIRE", "weapons/m24/m24_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_M24_FIRE_SUPP", "weapons/m24/m24_suppressed_fire1.wav", 1, 95, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_M24_FIRE_300", "weapons/m24/m24_300_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_M24_FIRE_300_SUPP", "weapons/m24/m24_300_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_M24_BACK", "weapons/m24/m24_back.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M24_BOLTBACK", "weapons/m24/m24_boltback.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M24_BOLTBACK_NOMEN", "weapons/m24/m24_boltback_nomen.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M24_BOLTDOWN", "weapons/m24/m24_boltdown.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M24_BOLTDOWN_NOMEN", "weapons/m24/m24_boltdown_nomen.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M24_BOLTFORWARD", "weapons/m24/m24_boltforward.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M24_BOLTFORWARD_NOMEN", "weapons/m24/m24_boltforward_nomen.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M24_BOLTUP", "weapons/m24/m24_boltup.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M24_BOLTUP_NOMEN", "weapons/m24/m24_boltup_nomen.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M24_BUTT", "weapons/m24/m24_butt.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M24_EJECT", "weapons/m24/m24_eject.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M24_FORWARD", "weapons/m24/m24_forward.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M24_INSERT1", "weapons/m24/m24_insert1.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M24_INSERT2", "weapons/m24/m24_insert2.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M24_INSERT3", "weapons/m24/m24_insert3.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M24_INSERT4", "weapons/m24/m24_insert4.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M24_INSERT5", "weapons/m24/m24_insert5.wav")


-- damn there are a lot of sounds and animations
-- i dont really understand this approach to reload sounds. isn't this already covered in the animation compile usually?
SWEP.Sounds = {
    bipod_down = {{time = 0.2, sound = "CW_FAS2_BIPOD_DOWN"}},
    bipod_up = {{time = 0.2, sound = "CW_FAS2_BIPOD_UP"}},
    bipod_cock01 = {
        [1] = {time = 0.2, sound = Sound("FAS2_M24.BoltUp")},
        [2] = {time = 0.35, sound = Sound("FAS2_M24.BoltBack")},
        [3] = {time = 0.55, sound = Sound("FAS2_M24.BoltForward")},
        [4] = {time = 0.7, sound = Sound("FAS2_M24.BoltDown")}
    },
    bipod_cock02 = {
        [1] = {time = 0.2, sound = Sound("FAS2_M24.BoltUp")},
        [2] = {time = 0.35, sound = Sound("FAS2_M24.BoltBack")},
        [3] = {time = 0.55, sound = Sound("FAS2_M24.BoltForward")},
        [4] = {time = 0.7, sound = Sound("FAS2_M24.BoltDown")}
    },
    bipod_cock03 = {
        [1] = {time = 0.2, sound = Sound("FAS2_M24.BoltUp")},
        [2] = {time = 0.35, sound = Sound("FAS2_M24.BoltBack")},
        [3] = {time = 0.55, sound = Sound("FAS2_M24.BoltForward")},
        [4] = {time = 0.7, sound = Sound("FAS2_M24.BoltDown")}
    },
    bipod_cock01_scoped = {
        [1] = {time = 0.2, sound = Sound("FAS2_M24.BoltUp")},
        [2] = {time = 0.35, sound = Sound("FAS2_M24.BoltBack")},
        [3] = {time = 0.55, sound = Sound("FAS2_M24.BoltForward")},
        [4] = {time = 0.7, sound = Sound("FAS2_M24.BoltDown")}
    },
    bipod_cock02_scoped = {
        [1] = {time = 0.2, sound = Sound("FAS2_M24.BoltUp")},
        [2] = {time = 0.35, sound = Sound("FAS2_M24.BoltBack")},
        [3] = {time = 0.55, sound = Sound("FAS2_M24.BoltForward")},
        [4] = {time = 0.7, sound = Sound("FAS2_M24.BoltDown")}
    },
    bipod_cock03_scoped = {
        [1] = {time = 0.2, sound = Sound("FAS2_M24.BoltUp")},
        [2] = {time = 0.35, sound = Sound("FAS2_M24.BoltBack")},
        [3] = {time = 0.55, sound = Sound("FAS2_M24.BoltForward")},
        [4] = {time = 0.7, sound = Sound("FAS2_M24.BoltDown")}
    },
    bipod_cock_nmc_01 = {
        [1] = {time = 0.15, sound = Sound("FAS2_M24.BoltUpNomen")},
        [2] = {time = 0.25, sound = Sound("FAS2_M24.BoltBackNomen")},
        [3] = {time = 0.4, sound = Sound("FAS2_M24.BoltForwardNomen")},
        [4] = {time = 0.5, sound = Sound("FAS2_M24.BoltDownNomen")}
    },
    bipod_cock_nmc_02 = {
        [1] = {time = 0.15, sound = Sound("FAS2_M24.BoltUpNomen")},
        [2] = {time = 0.25, sound = Sound("FAS2_M24.BoltBackNomen")},
        [3] = {time = 0.4, sound = Sound("FAS2_M24.BoltForwardNomen")},
        [4] = {time = 0.5, sound = Sound("FAS2_M24.BoltDownNomen")}
    },
    bipod_cock_nmc_03 = {
        [1] = {time = 0.15, sound = Sound("FAS2_M24.BoltUpNomen")},
        [2] = {time = 0.25, sound = Sound("FAS2_M24.BoltBackNomen")},
        [3] = {time = 0.4, sound = Sound("FAS2_M24.BoltForwardNomen")},
        [4] = {time = 0.5, sound = Sound("FAS2_M24.BoltDownNomen")}
    },
    bipod_cock_nmc_01_scoped = {
        [1] = {time = 0.15, sound = Sound("FAS2_M24.BoltUpNomen")},
        [2] = {time = 0.25, sound = Sound("FAS2_M24.BoltBackNomen")},
        [3] = {time = 0.4, sound = Sound("FAS2_M24.BoltForwardNomen")},
        [4] = {time = 0.55, sound = Sound("FAS2_M24.BoltDownNomen")}
    },
    bipod_cock_nmc_02_scoped = {
        [1] = {time = 0.15, sound = Sound("FAS2_M24.BoltUpNomen")},
        [2] = {time = 0.25, sound = Sound("FAS2_M24.BoltBackNomen")},
        [3] = {time = 0.4, sound = Sound("FAS2_M24.BoltForwardNomen")},
        [4] = {time = 0.55, sound = Sound("FAS2_M24.BoltDownNomen")}
    },
    bipod_cock_nmc_03_scoped = {
        [1] = {time = 0.15, sound = Sound("FAS2_M24.BoltUpNomen")},
        [2] = {time = 0.25, sound = Sound("FAS2_M24.BoltBackNomen")},
        [3] = {time = 0.4, sound = Sound("FAS2_M24.BoltForwardNomen")},
        [4] = {time = 0.55, sound = Sound("FAS2_M24.BoltDownNomen")}
    },
    cock01 = {
        {time = 0.25, sound = "CW_FAS2_M24_BOLTUP"},
        {time = 0.45, sound = "CW_FAS2_M24_BOLTBACK"},
        {time = 0.65, sound = "CW_FAS2_M24_BOLTFORWARD"},
        {time = 0.85, sound = "CW_FAS2_M24_BOLTDOWN"}
    },
    cock02 = {
        {time = 0.25, sound = "CW_FAS2_M24_BOLTUP"},
        {time = 0.45, sound = "CW_FAS2_M24_BOLTBACK"},
        {time = 0.65, sound = "CW_FAS2_M24_BOLTFORWARD"},
        {time = 0.85, sound = "CW_FAS2_M24_BOLTDOWN"}
    },
    cock03 = {
        {time = 0.25, sound = "CW_FAS2_M24_BOLTUP"},
        {time = 0.45, sound = "CW_FAS2_M24_BOLTBACK"},
        {time = 0.65, sound = "CW_FAS2_M24_BOLTFORWARD"},
        {time = 0.85, sound = "CW_FAS2_M24_BOLTDOWN"}
    },
    cock01_scoped = {
        {time = 0.25, sound = "CW_FAS2_M24_BOLTUP"},
        {time = 0.45, sound = "CW_FAS2_M24_BOLTBACK"},
        {time = 0.65, sound = "CW_FAS2_M24_BOLTFORWARD"},
        {time = 0.85, sound = "CW_FAS2_M24_BOLTDOWN"}
    },
    cock02_scoped = {
        {time = 0.25, sound = "CW_FAS2_M24_BOLTUP"},
        {time = 0.45, sound = "CW_FAS2_M24_BOLTBACK"},
        {time = 0.65, sound = "CW_FAS2_M24_BOLTFORWARD"},
        {time = 0.85, sound = "CW_FAS2_M24_BOLTDOWN"}
    },
    cock03_scoped = {
        {time = 0.25, sound = "CW_FAS2_M24_BOLTUP"},
        {time = 0.45, sound = "CW_FAS2_M24_BOLTBACK"},
        {time = 0.65, sound = "CW_FAS2_M24_BOLTFORWARD"},
        {time = 0.85, sound = "CW_FAS2_M24_BOLTDOWN"}
    },
    cock_nmc_01 = {
        {time = 0.15, sound = "CW_FAS2_M24_BOLTUP_NOMEN"},
        {time = 0.3, sound = "CW_FAS2_M24_BOLTBACK_NOMEN"},
        {time = 0.45, sound = "CW_FAS2_M24_BOLTFORWARD_NOMEN"},
        {time = 0.6, sound = "CW_FAS2_M24_BOLTDOWN_NOMEN"}
    },
    cock_nmc_02 = {
        {time = 0.15, sound = "CW_FAS2_M24_BOLTUP_NOMEN"},
        {time = 0.3, sound = "CW_FAS2_M24_BOLTBACK_NOMEN"},
        {time = 0.45, sound = "CW_FAS2_M24_BOLTFORWARD_NOMEN"},
        {time = 0.6, sound = "CW_FAS2_M24_BOLTDOWN_NOMEN"}
    },
    cock_nmc_03 = {
        {time = 0.15, sound = "CW_FAS2_M24_BOLTUP_NOMEN"},
        {time = 0.3, sound = "CW_FAS2_M24_BOLTBACK_NOMEN"},
        {time = 0.45, sound = "CW_FAS2_M24_BOLTFORWARD_NOMEN"},
        {time = 0.6, sound = "CW_FAS2_M24_BOLTDOWN_NOMEN"}
    },
    cock_nmc_01_scoped = {
        {time = 0.15, sound = "CW_FAS2_M24_BOLTUP_NOMEN"},
        {time = 0.3, sound = "CW_FAS2_M24_BOLTBACK_NOMEN"},
        {time = 0.45, sound = "CW_FAS2_M24_BOLTFORWARD_NOMEN"},
        {time = 0.6, sound = "CW_FAS2_M24_BOLTDOWN_NOMEN"}
    },
    cock_nmc_02_scoped = {
        {time = 0.15, sound = "CW_FAS2_M24_BOLTUP_NOMEN"},
        {time = 0.3, sound = "CW_FAS2_M24_BOLTBACK_NOMEN"},
        {time = 0.45, sound = "CW_FAS2_M24_BOLTFORWARD_NOMEN"},
        {time = 0.6, sound = "CW_FAS2_M24_BOLTDOWN_NOMEN"}
    },
    cock_nmc_03_scoped = {
        {time = 0.15, sound = "CW_FAS2_M24_BOLTUP_NOMEN"},
        {time = 0.3, sound = "CW_FAS2_M24_BOLTBACK_NOMEN"},
        {time = 0.45, sound = "CW_FAS2_M24_BOLTFORWARD_NOMEN"},
        {time = 0.6, sound = "CW_FAS2_M24_BOLTDOWN_NOMEN"}
    },
    reload_1 = {
        {time = 0.45, sound = "CW_FAS2_M24_BOLTUP"},
        {time = 0.6, sound = "CW_FAS2_M24_BOLTBACK"},
        {time = 1, sound = "CW_FAS2_M24_INSERT5"},
        {time = 2.6, sound = "CW_FAS2_M24_INSERT1"},
        {time = 3.3, sound = "CW_FAS2_M24_BOLTFORWARD"},
        {time = 3.55, sound = "CW_FAS2_M24_BOLTDOWN"}
    },
    reload_2 = {
        {time = 0.45, sound = "CW_FAS2_M24_BOLTUP"},
        {time = 0.6, sound = "CW_FAS2_M24_BOLTBACK"},
        {time = 1, sound = "CW_FAS2_M24_INSERT5"},
        {time = 2.6, sound = "CW_FAS2_M24_INSERT1"},
        {time = 3, sound = "CW_FAS2_M24_INSERT2"},
        {time = 3.7, sound = "CW_FAS2_M24_BOLTFORWARD"},
        {time = 3.95, sound = "CW_FAS2_M24_BOLTDOWN"}
    },
    reload_3 = {
        {time = 0.45, sound = "CW_FAS2_M24_BOLTUP"},
        {time = 0.6, sound = "CW_FAS2_M24_BOLTBACK"},
        {time = 1, sound = "CW_FAS2_M24_INSERT5"},
        {time = 2.6, sound = "CW_FAS2_M24_INSERT1"},
        {time = 3, sound = "CW_FAS2_M24_INSERT2"},
        {time = 3.4, sound = "CW_FAS2_M24_INSERT3"},
        {time = 4.1, sound = "CW_FAS2_M24_BOLTFORWARD"},
        {time = 4.35, sound = "CW_FAS2_M24_BOLTDOWN"}
    },
    reload_4 = {
        {time = 0.45, sound = "CW_FAS2_M24_BOLTUP"},
        {time = 0.6, sound = "CW_FAS2_M24_BOLTBACK"},
        {time = 1, sound = "CW_FAS2_M24_INSERT5"},
        {time = 2.6, sound = "CW_FAS2_M24_INSERT1"},
        {time = 3, sound = "CW_FAS2_M24_INSERT2"},
        {time = 3.4, sound = "CW_FAS2_M24_INSERT3"},
        {time = 3.8, sound = "CW_FAS2_M24_INSERT4"},
        {time = 4.5, sound = "CW_FAS2_M24_BOLTFORWARD"},
        {time = 4.75, sound = "CW_FAS2_M24_BOLTDOWN"}
    },
    reload_empty = {
        {time = 0.4, sound = "CW_FAS2_M24_BOLTUP"},
        {time = 0.5, sound = "CW_FAS2_M24_BOLTBACK"},
        {time = 1.5, sound = "CW_FAS2_M24_INSERT1"},
        {time = 1.9, sound = "CW_FAS2_M24_INSERT2"},
        {time = 2.3, sound = "CW_FAS2_M24_INSERT3"},
        {time = 2.7, sound = "CW_FAS2_M24_INSERT4"},
        {time = 3.1, sound = "CW_FAS2_M24_INSERT5"},
        {time = 3.7, sound = "CW_FAS2_M24_BOLTFORWARD"},
        {time = 3.9, sound = "CW_FAS2_M24_BOLTDOWN"}
    },
    reload_empty_4 = {
        {time = 0.4, sound = "CW_FAS2_M24_BOLTUP"},
        {time = 0.5, sound = "CW_FAS2_M24_BOLTBACK"},
        {time = 1.5, sound = "CW_FAS2_M24_INSERT1"},
        {time = 1.9, sound = "CW_FAS2_M24_INSERT2"},
        {time = 2.3, sound = "CW_FAS2_M24_INSERT3"},
        {time = 2.7, sound = "CW_FAS2_M24_INSERT4"},
        {time = 3.4, sound = "CW_FAS2_M24_BOLTFORWARD"},
        {time = 3.6, sound = "CW_FAS2_M24_BOLTDOWN"}
    },
    reload_empty_3 = {
        {time = 0.4, sound = "CW_FAS2_M24_BOLTUP"},
        {time = 0.5, sound = "CW_FAS2_M24_BOLTBACK"},
        {time = 1.5, sound = "CW_FAS2_M24_INSERT1"},
        {time = 1.9, sound = "CW_FAS2_M24_INSERT2"},
        {time = 2.3, sound = "CW_FAS2_M24_INSERT3"},
        {time = 3, sound = "CW_FAS2_M24_BOLTFORWARD"},
        {time = 3.2, sound = "CW_FAS2_M24_BOLTDOWN"}
    },
    reload_empty_2 = {
        {time = 0.4, sound = "CW_FAS2_M24_BOLTUP"},
        {time = 0.5, sound = "CW_FAS2_M24_BOLTBACK"},
        {time = 1.5, sound = "CW_FAS2_M24_INSERT1"},
        {time = 1.9, sound = "CW_FAS2_M24_INSERT2"},
        {time = 2.6, sound = "CW_FAS2_M24_BOLTFORWARD"},
        {time = 2.8, sound = "CW_FAS2_M24_BOLTDOWN"}
    },
    reload_empty_1 = {
        {time = 0.4, sound = "CW_FAS2_M24_BOLTUP"},
        {time = 0.5, sound = "CW_FAS2_M24_BOLTBACK"},
        {time = 1.5, sound = "CW_FAS2_M24_INSERT1"},
        {time = 2.3, sound = "CW_FAS2_M24_BOLTFORWARD"},
        {time = 2.5, sound = "CW_FAS2_M24_BOLTDOWN"}
    },
    reload_empty_nomen = {
        {time = 0.3, sound = "CW_FAS2_M24_BOLTUP_NOMEN"},
        {time = 0.4, sound = "CW_FAS2_M24_BOLTBACK_NOMEN"},
        {time = 1.2, sound = "CW_FAS2_M24_INSERT1"},
        {time = 1.5, sound = "CW_FAS2_M24_INSERT2"},
        {time = 1.8, sound = "CW_FAS2_M24_INSERT3"},
        {time = 2.1, sound = "CW_FAS2_M24_INSERT4"},
        {time = 2.4, sound = "CW_FAS2_M24_INSERT5"},
        {time = 3, sound = "CW_FAS2_M24_BOLTFORWARD_NOMEN"},
        {time = 3.15, sound = "CW_FAS2_M24_BOLTDOWN_NOMEN"}
    },
    reload_empty_1_nomen = {
        {time = 0.3, sound = "CW_FAS2_M24_BOLTUP_NOMEN"},
        {time = 0.4, sound = "CW_FAS2_M24_BOLTBACK_NOMEN"},
        {time = 1.2, sound = "CW_FAS2_M24_INSERT1"},
        {time = 1.8, sound = "CW_FAS2_M24_BOLTFORWARD_NOMEN"},
        {time = 1.95, sound = "CW_FAS2_M24_BOLTDOWN_NOMEN"}
    },
    reload_empty_2_nomen = {
        {time = 0.3, sound = "CW_FAS2_M24_BOLTUP_NOMEN"},
        {time = 0.4, sound = "CW_FAS2_M24_BOLTBACK_NOMEN"},
        {time = 1.2, sound = "CW_FAS2_M24_INSERT1"},
        {time = 1.5, sound = "CW_FAS2_M24_INSERT2"},
        {time = 2.1, sound = "CW_FAS2_M24_BOLTFORWARD_NOMEN"},
        {time = 2.25, sound = "CW_FAS2_M24_BOLTDOWN_NOMEN"}
    },
    reload_empty_3_nomen = {
        {time = 0.3, sound = "CW_FAS2_M24_BOLTUP_NOMEN"},
        {time = 0.4, sound = "CW_FAS2_M24_BOLTBACK_NOMEN"},
        {time = 1.2, sound = "CW_FAS2_M24_INSERT1"},
        {time = 1.5, sound = "CW_FAS2_M24_INSERT2"},
        {time = 1.8, sound = "CW_FAS2_M24_INSERT3"},
        {time = 2.4, sound = "CW_FAS2_M24_BOLTFORWARD_NOMEN"},
        {time = 2.55, sound = "CW_FAS2_M24_BOLTDOWN_NOMEN"}
    },
    reload_empty_4_nomen = {
        {time = 0.3, sound = "CW_FAS2_M24_BOLTUP_NOMEN"},
        {time = 0.4, sound = "CW_FAS2_M24_BOLTBACK_NOMEN"},
        {time = 1.2, sound = "CW_FAS2_M24_INSERT1"},
        {time = 1.5, sound = "CW_FAS2_M24_INSERT2"},
        {time = 1.8, sound = "CW_FAS2_M24_INSERT3"},
        {time = 2.1, sound = "CW_FAS2_M24_INSERT4"},
        {time = 2.7, sound = "CW_FAS2_M24_BOLTFORWARD_NOMEN"},
        {time = 2.85, sound = "CW_FAS2_M24_BOLTDOWN_NOMEN"}
    },
    reload_1_nomen = {
        {time = 0.3, sound = "CW_FAS2_M24_BOLTUP_NOMEN"},
        {time = 0.4, sound = "CW_FAS2_M24_BOLTBACK_NOMEN"},
        {time = 0.75, sound = "CW_FAS2_M24_INSERT5"},
        {time = 2.1, sound = "CW_FAS2_M24_INSERT1"},
        {time = 2.7, sound = "CW_FAS2_M24_BOLTFORWARD_NOMEN"},
        {time = 2.85, sound = "CW_FAS2_M24_BOLTDOWN_NOMEN"}
    },
    reload_2_nomen = {
        {time = 0.3, sound = "CW_FAS2_M24_BOLTUP_NOMEN"},
        {time = 0.4, sound = "CW_FAS2_M24_BOLTBACK_NOMEN"},
        {time = 0.75, sound = "CW_FAS2_M24_INSERT5"},
        {time = 2.1, sound = "CW_FAS2_M24_INSERT1"},
        {time = 2.4, sound = "CW_FAS2_M24_INSERT2"},
        {time = 3, sound = "CW_FAS2_M24_BOLTFORWARD_NOMEN"},
        {time = 3.15, sound = "CW_FAS2_M24_BOLTDOWN_NOMEN"}
    },
    reload_3_nomen = {
        {time = 0.3, sound = "CW_FAS2_M24_BOLTUP_NOMEN"},
        {time = 0.4, sound = "CW_FAS2_M24_BOLTBACK_NOMEN"},
        {time = 0.75, sound = "CW_FAS2_M24_INSERT5"},
        {time = 2.1, sound = "CW_FAS2_M24_INSERT1"},
        {time = 2.4, sound = "CW_FAS2_M24_INSERT2"},
        {time = 2.7, sound = "CW_FAS2_M24_INSERT3"},
        {time = 3.3, sound = "CW_FAS2_M24_BOLTFORWARD_NOMEN"},
        {time = 3.45, sound = "CW_FAS2_M24_BOLTDOWN_NOMEN"}
    },
    reload_4_nomen = {
        {time = 0.3, sound = "CW_FAS2_M24_BOLTUP_NOMEN"},
        {time = 0.4, sound = "CW_FAS2_M24_BOLTBACK_NOMEN"},
        {time = 0.75, sound = "CW_FAS2_M24_INSERT5"},
        {time = 2.1, sound = "CW_FAS2_M24_INSERT1"},
        {time = 2.4, sound = "CW_FAS2_M24_INSERT2"},
        {time = 2.7, sound = "CW_FAS2_M24_INSERT3"},
        {time = 3, sound = "CW_FAS2_M24_INSERT4"},
        {time = 3.6, sound = "CW_FAS2_M24_BOLTFORWARD_NOMEN"},
        {time = 3.75, sound = "CW_FAS2_M24_BOLTDOWN_NOMEN"}
    }
}
