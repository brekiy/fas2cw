CustomizableWeaponry:addFireSound("CW_FAS2_UZI_FIRE", "weapons/uzi/uzi_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_UZI_FIRE_SUPP", "weapons/uzi/uzi_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_UZI_MAGOUT", "weapons/uzi/uzi_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_UZI_MAGOUT_EMPTY", "weapons/uzi/uzi_magout_empty.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_UZI_MAGIN", "weapons/uzi/uzi_magin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_UZI_MAGIN_PARTIAL", "weapons/uzi/uzi_magin_partial.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_UZI_BOLTBACK", "weapons/uzi/uzi_boltback.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_UZI_BOLTFORWARD", "weapons/uzi/uzi_boltforward.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_UZI_MAGRELEASE", "weapons/uzi/uzi_magrelease.wav")
-- FAS_RS["FAS2_UZI.StockUnfold"] = "weapons/uzi/uzi_stockunfold.wav"

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        {time = 0.9, sound = "CW_FAS2_UZI_MAGRELEASE"},
        {time = 1.25, sound = "CW_FAS2_UZI_MAGOUT"},
        {time = 1, sound = "CW_FOLEY_HEAVY"},
        {time = 2.3, sound = "CW_FAS2_UZI_MAGIN_PARTIAL"},
        {time = 2.55, sound = "CW_FAS2_UZI_MAGIN"}
    },
    reload_nomen = {
        {time = 0.4, sound = "CW_FAS2_UZI_MAGRELEASE"},
        {time = 0.65, sound = "CW_FAS2_UZI_MAGOUT"},
        {time = 1, sound = "CW_FOLEY_HEAVY"},
        {time = 1.2, sound = "CW_FAS2_UZI_MAGIN_PARTIAL"},
        {time = 1.37, sound = "CW_FAS2_UZI_MAGIN"}
    },
    reload_empty = {
        {time = 0.5, sound = "CW_FAS2_UZI_BOLTBACK"},
        {time = 0.8, sound = "CW_FAS2_UZI_BOLTFORWARD"},
        {time = 1.6, sound = "CW_FAS2_UZI_MAGRELEASE"},
        {time = 2, sound = "CW_FAS2_UZI_MAGOUT_EMPTY"},
        {time = 2.2, sound = "CW_FOLEY_HEAVY"},
        {time = 2.7, sound = "CW_FAS2_UZI_MAGIN_PARTIAL"},
        {time = 3.15, sound = "CW_FAS2_UZI_MAGIN"}
    },
    reload_empty_nomen = {
        {time = 0.3, sound = "CW_FAS2_UZI_BOLTBACK"},
        {time = 0.5, sound = "CW_FAS2_UZI_BOLTFORWARD"},
        {time = 1.1, sound = "CW_FAS2_UZI_MAGRELEASE"},
        {time = 1.3, sound = "CW_FAS2_UZI_MAGOUT_EMPTY"},
        {time = 1.7, sound = "CW_FOLEY_HEAVY"},
        {time = 1.95, sound = "CW_FAS2_UZI_MAGIN_PARTIAL"},
        {time = 2.1, sound = "CW_FAS2_UZI_MAGIN"}
    }
}