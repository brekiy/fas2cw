CustomizableWeaponry:addFireSound("CW_FAS2_RPK_FIRE", "weapons/rpk47/rpk47_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_RPK_FIRE_SUPP", "weapons/rpk47/rpk47_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_RPK_BOLTBACK", "weapons/rpk47/rpk47_boltback.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_RPK_BOLTFORWARD", "weapons/rpk47/rpk47_boltforward.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_RPK_MAGOUT", "weapons/rpk47/rpk47_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_RPK_MAGIN", "weapons/rpk47/rpk47_magin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_RPK_MAGIN_PARTIAL", "weapons/rpk47/rpk47_magin_partial.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_RPK_MAGOUT_EMPTY", "weapons/rpk47/rpk47_magout_empty.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_RPK_MAGOUT_EMPTY_NOMEN", "weapons/rpk47/rpk47_magout_empty_nomen.wav")
CustomizableWeaponry:addRegularSound("CW_FAS2_RPK_BIPOD", "weapons/rpk47/rpk47_bipod_open.wav")

SWEP.Sounds = {
    bipod_down = {
        {time = 0, sound = "CW_FOLEY_CLOTH"},
        {time = 0.6, sound = "CW_FAS2_RPK_BIPOD"}
    },
    bipod_up = {
        {time = 0, sound = "CW_FOLEY_CLOTH"},
        {time = 0.6, sound = "CW_FAS2_RPK_BIPOD"}
    },
    reload = {
        {time = 0.85, sound = "CW_FAS2_RPK_MAGOUT"},
        {time = 1.5, sound = "CW_FOLEY_HEAVY"},
        {time = 2.2, sound = "CW_FAS2_RPK_MAGIN_PARTIAL"},
        {time = 2.4, sound = "CW_FAS2_RPK_MAGIN"}
    },
    reload_bipod = {
        {time = 0.6, sound = "CW_FAS2_RPK_MAGOUT"},
        {time = 1.1, sound = "CW_FOLEY_HEAVY"},
        {time = 1.6, sound = "CW_FAS2_RPK_MAGIN_PARTIAL"},
        {time = 1.75, sound = "CW_FAS2_RPK_MAGIN"}
    },
    reload_nomen = {
        {time = 0.6, sound = "CW_FOLEY_HEAVY"},
        {time = 1.2, sound = "CW_FAS2_RPK_MAGOUT"},
        {time = 1.4, sound = "CW_FAS2_RPK_MAGIN_PARTIAL"},
        {time = 1.6, sound = "CW_FAS2_RPK_MAGIN"}
    },
    reload_nomen_bipod = {
        {time = 0.4, sound = "CW_FAS2_RPK_MAGOUT"},
        {time = 0.9, sound = "CW_FOLEY_HEAVY"},
        {time = 1.2, sound = "CW_FAS2_RPK_MAGIN_PARTIAL"},
        {time = 1.3, sound = "CW_FAS2_RPK_MAGIN"}
    },
    reload_empty = {
        {time = 1, sound = "CW_FAS2_RPK_MAGOUT_EMPTY"},
        {time = 1.5, sound = "CW_FOLEY_HEAVY"},
        {time = 2.9, sound = "CW_FAS2_RPK_MAGIN_PARTIAL"},
        {time = 3.1, sound = "CW_FAS2_RPK_MAGIN"},
        {time = 4.45, sound = "CW_FAS2_RPK_BOLTBACK"},
        {time = 4.75, sound = "CW_FAS2_RPK_BOLTFORWARD"}
    },
    reload_empty_bipod = {
        {time = 0.6, sound = "CW_FAS2_RPK_MAGOUT_EMPTY"},
        {time = 1.2, sound = "CW_FOLEY_HEAVY"},
        {time = 1.6, sound = "CW_FAS2_RPK_MAGIN_PARTIAL"},
        {time = 1.75, sound = "CW_FAS2_RPK_MAGIN"},
        {time = 3, sound = "CW_FAS2_RPK_BOLTBACK"},
        {time = 3.15, sound = "CW_FAS2_RPK_BOLTFORWARD"}
    },
    reload_empty_nomen_bipod = {
        {time = 0.4, sound = "CW_FAS2_RPK_MAGOUT_EMPTY"},
        {time = 0.9, sound = "CW_FOLEY_HEAVY"},
        {time = 1.2, sound = "CW_FAS2_RPK_MAGIN_PARTIAL"},
        {time = 1.3, sound = "CW_FAS2_RPK_MAGIN"},
        {time = 2.2, sound = "CW_FAS2_RPK_BOLTBACK"},
        {time = 2.35, sound = "CW_FAS2_RPK_BOLTFORWARD"}
    },
    reload_empty_nomen = {
        {time = 0.6, sound = "CW_FOLEY_HEAVY"},
        {time = 1, sound = "CW_FAS2_RPK_MAGOUT_EMPTY_NOMEN"},
        {time = 1.4, sound = "CW_FAS2_RPK_MAGIN_PARTIAL"},
        {time = 1.6, sound = "CW_FAS2_RPK_MAGIN"},
        {time = 2.15, sound = "CW_FAS2_RPK_BOLTBACK"},
        {time = 2.35, sound = "CW_FAS2_RPK_BOLTFORWARD"}
    }
}
