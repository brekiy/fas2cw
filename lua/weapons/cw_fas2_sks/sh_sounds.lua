CustomizableWeaponry:addFireSound("CW_FAS2_SKS_FIRE", "weapons/sks/sks_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_SKS_FIRE_SUPP", "weapons/sks/sks_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_SKS_BOLTBACK", "weapons/sks/sks_boltback.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SKS_BOLTFORWARD", "weapons/sks/sks_boltforward.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SKS_BOLTRELEASE", "weapons/sks/sks_boltrelease.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SKS_CLIPIN", "weapons/sks/sks_clipin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SKS_INSERTNOMEN", "weapons/sks/sks_insert_nomen.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SKS_INSERT1", "weapons/sks/sks_insert1.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SKS_INSERT2", "weapons/sks/sks_insert2.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SKS_INSERT3", "weapons/sks/sks_insertlast.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SKS_LATCHOPEN", "weapons/sks/sks_latchopen.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SKS_LATCHCLOSE", "weapons/sks/sks_latchclose.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SKS_MAGOUT", "weapons/sks/sks_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SKS_MAGOUT_EMPTY", "weapons/sks/sks_magout_empty.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SKS_MAGIN", "weapons/sks/sks_magin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SKS_REMOVECLIP", "weapons/sks/sks_removeclip.wav")


SWEP.Sounds = {
    Reload1 = {
        {time = 0.2, sound = "CW_FAS2_SKS_BOLTBACK"},
        {time = 0.5, sound = "CW_FOLEY_MEDIUM"},
        {time = 1.3, sound = "CW_FAS2_SKS_CLIPIN"},
        {time = 1.8, sound = "CW_FAS2_SKS_INSERT1"},
        {time = 2.2, sound = "CW_FAS2_SKS_INSERT2"},
        {time = 2.6, sound = "CW_FAS2_SKS_INSERT3"},
        {time = 3.15, sound = "CW_FAS2_SKS_REMOVECLIP"},
        {time = 3.55, sound = "CW_FAS2_SKS_BOLTBACK"},
        {time = 3.75, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    },
    Reload1_nmc = {
        {time = 0.2, sound = "CW_FOLEY_MEDIUM"},
        {time = 0.3, sound = "CW_FAS2_SKS_BOLTBACK"},
        {time = 1, sound = "CW_FAS2_SKS_CLIPIN"},
        {time = 1.5, sound = "CW_FAS2_SKS_INSERTNOMEN"},
        {time = 2, sound = "CW_FAS2_SKS_REMOVECLIP"},
        {time = 2.4, sound = "CW_FAS2_SKS_BOLTBACK"},
        {time = 2.5, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    },
    Reload2 = {
        {time = 0.2, sound = "CW_FAS2_SKS_BOLTBACK"},
        {time = 0.5, sound = "CW_FAS2_SKS_BOLTFORWARD"},
        {time = 0.7, sound = "CW_FAS2_SKS_BOLTBACK"},
        {time = 1, sound = "CW_FOLEY_MEDIUM"},
        {time = 1.8, sound = "CW_FAS2_SKS_CLIPIN"},
        {time = 2.3, sound = "CW_FAS2_SKS_INSERT1"},
        {time = 2.7, sound = "CW_FAS2_SKS_INSERT2"},
        {time = 3.1, sound = "CW_FAS2_SKS_INSERT3"},
        {time = 3.6, sound = "CW_FAS2_SKS_REMOVECLIP"},
        {time = 3.9, sound = "CW_FAS2_SKS_BOLTBACK"},
        {time = 4.1, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    },
    Reload2_nmc = {
        {time = 0.2, sound = "CW_FAS2_SKS_BOLTBACK"},
        {time = 0.5, sound = "CW_FAS2_SKS_BOLTFORWARD"},
        {time = 0.7, sound = "CW_FAS2_SKS_BOLTBACK"},
        {time = 0.8, sound = "CW_FOLEY_MEDIUM"},
        {time = 1.5, sound = "CW_FAS2_SKS_CLIPIN"},
        {time = 1.9, sound = "CW_FAS2_SKS_INSERTNOMEN"},
        {time = 2.55, sound = "CW_FAS2_SKS_REMOVECLIP"},
        {time = 3.1, sound = "CW_FAS2_SKS_BOLTBACK"},
        {time = 3.3, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    },
    Reload3 = {
        {time = 0.5, sound = "CW_FAS2_SKS_LATCHOPEN"},
        {time = 1.3, sound = "CW_FAS2_SKS_LATCHCLOSE"},
        {time = 2.2, sound = "CW_FAS2_SKS_BOLTBACK"},
        {time = 2.25, sound = "CW_FOLEY_MEDIUM"},
        {time = 3.2, sound = "CW_FAS2_SKS_CLIPIN"},
        {time = 3.8, sound = "CW_FAS2_SKS_INSERT1"},
        {time = 4.2, sound = "CW_FAS2_SKS_INSERT2"},
        {time = 4.6, sound = "CW_FAS2_SKS_INSERT3"},
        {time = 5.15, sound = "CW_FAS2_SKS_REMOVECLIP"},
        {time = 5.55, sound = "CW_FAS2_SKS_BOLTBACK"},
        {time = 5.75, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    },
    Reload3_nmc = {
        {time = 0.5, sound = "CW_FAS2_SKS_LATCHOPEN"},
        {time = 1, sound = "CW_FAS2_SKS_LATCHCLOSE"},
        {time = 1.6, sound = "CW_FOLEY_MEDIUM"},
        {time = 2.05, sound = "CW_FAS2_SKS_BOLTBACK"},
        {time = 2.5, sound = "CW_FAS2_SKS_CLIPIN"},
        {time = 3, sound = "CW_FAS2_SKS_INSERTNOMEN"},
        {time = 3.55, sound = "CW_FAS2_SKS_REMOVECLIP"},
        {time = 3.9, sound = "CW_FAS2_SKS_BOLTBACK"},
        {time = 4, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    },
    Reload_empty = {
        {time = 0.5, sound = "CW_FOLEY_HEAVY"},
        {time = 1, sound = "CW_FAS2_SKS_CLIPIN"},
        {time = 1.6, sound = "CW_FAS2_SKS_INSERT1"},
        {time = 2, sound = "CW_FAS2_SKS_INSERT2"},
        {time = 2.4, sound = "CW_FAS2_SKS_INSERT3"},
        {time = 2.8, sound = "CW_FAS2_SKS_REMOVECLIP"},
        {time = 3.2, sound = "CW_FAS2_SKS_LATCHCLOSE"},
        {time = 3.4, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    },
    Reload_empty_nmc = {
        {time = 0.4, sound = "CW_FOLEY_HEAVY"},
        {time = 0.85, sound = "CW_FAS2_SKS_CLIPIN"},
        {time = 1.4, sound = "CW_FAS2_SKS_INSERTNOMEN"},
        {time = 2, sound = "CW_FAS2_SKS_REMOVECLIP"},
        {time = 2.35, sound = "CW_FAS2_SKS_BOLTBACK"},
        {time = 2.45, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    },
    Reload_20_add = {
        {time = 0.5, sound = "CW_FAS2_SKS_BOLTBACK"},
        {time = 1, sound = "CW_FOLEY_HEAVY"},
        {time = 1.6, sound = "CW_FAS2_SKS_CLIPIN"},
        {time = 2.1, sound = "CW_FAS2_SKS_INSERT1"},
        {time = 2.5, sound = "CW_FAS2_SKS_INSERT3"},
        {time = 2.9, sound = "CW_FAS2_SKS_REMOVECLIP"},
        {time = 3.15, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    },
    Reload_20_add_nmc = {
        {time = 0.4, sound = "CW_FOLEY_HEAVY"},
        {time = 0.75, sound = "CW_FAS2_SKS_BOLTBACK"},
        {time = 1.1, sound = "CW_FAS2_SKS_CLIPIN"},
        {time = 1.6, sound = "CW_FAS2_SKS_INSERTNOMEN"},
        {time = 2.05, sound = "CW_FAS2_SKS_BOLTFORWARD"},
        {time = 2.35, sound = "CW_FAS2_SKS_REMOVECLIP"}
    },
    Reload_20_empty = {
        {time = 0.5, sound = "CW_FOLEY_HEAVY"},
        {time = 1, sound = "CW_FAS2_SKS_CLIPIN"},
        {time = 1.6, sound = "CW_FAS2_SKS_INSERT1"},
        {time = 2, sound = "CW_FAS2_SKS_INSERT2"},
        {time = 2.4, sound = "CW_FAS2_SKS_INSERT3"},
        {time = 2.8, sound = "CW_FAS2_SKS_REMOVECLIP"},
        {time = 3.3, sound = "CW_FOLEY_HEAVY"},
        {time = 4, sound = "CW_FAS2_SKS_CLIPIN"},
        {time = 4.5, sound = "CW_FAS2_SKS_INSERT1"},
        {time = 4.9, sound = "CW_FAS2_SKS_INSERT2"},
        {time = 5.3, sound = "CW_FAS2_SKS_INSERT3"},
        {time = 5.8, sound = "CW_FAS2_SKS_REMOVECLIP"},
        {time = 6.2, sound = "CW_FAS2_SKS_LATCHCLOSE"},
        {time = 6.4, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    },
    Reload_20_empty_nmc = {
        {time = 0.4, sound = "CW_FOLEY_HEAVY"},
        {time = 0.85, sound = "CW_FAS2_SKS_CLIPIN"},
        {time = 1.4, sound = "CW_FAS2_SKS_INSERTNOMEN"},
        {time = 2.05, sound = "CW_FAS2_SKS_REMOVECLIP"},
        {time = 3, sound = "CW_FAS2_SKS_CLIPIN"},
        {time = 3.6, sound = "CW_FAS2_SKS_INSERTNOMEN"},
        {time = 4.2, sound = "CW_FAS2_SKS_REMOVECLIP"},
        {time = 4.65, sound = "CW_FAS2_SKS_BOLTBACK"},
        {time = 4.75, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    },
    Reload_30 = {
        {time = 0.7, sound = "CW_FAS2_SKS_BOLTBACK"},
        {time = 1.15, sound = "CW_FAS2_SKS_MAGOUT"},
        {time = 1.7, sound = "CW_FOLEY_HEAVY"},
        {time = 2.5, sound = "CW_FAS2_SKS_MAGIN"},
        {time = 2.8, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    },
    Reload_30_nmc = {
        {time = 0.4, sound = "CW_FAS2_SKS_BOLTBACK"},
        {time = 0.9, sound = "CW_FAS2_SKS_MAGOUT"},
        {time = 1.4, sound = "CW_FOLEY_HEAVY"},
        {time = 2, sound = "CW_FAS2_SKS_MAGIN"},
        {time = 2.47, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    },
    Reload_30_empty = {
        {time = 0.9, sound = "CW_FAS2_SKS_MAGOUT_EMPTY"},
        {time = 1.7, sound = "CW_FOLEY_HEAVY"},
        {time = 2.35, sound = "CW_FAS2_SKS_MAGIN"},
        {time = 3.3, sound = "CW_FAS2_SKS_BOLTBACK"},
        {time = 3.5, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    },
    Reload_30_empty_nmc = {
        {time = 0.6, sound = "CW_FAS2_SKS_MAGOUT_EMPTY"},
        {time = 1.4, sound = "CW_FOLEY_HEAVY"},
        {time = 1.8, sound = "CW_FAS2_SKS_MAGIN"},
        {time = 2.4, sound = "CW_FAS2_SKS_BOLTBACK"},
        {time = 2.55, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    }
}
