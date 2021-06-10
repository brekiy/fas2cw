CustomizableWeaponry:addFireSound("CW_FAS2_M4A1_FIRE", "weapons/m4a1/m4_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_M4A1_FIRE_SUPP", "weapons/m4a1/m4_suppressed_fire1.wav", 1, 95, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_AR_50_FIRE", "weapons/m4a1/ar50_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_AR_50_FIRE_SUPP", "weapons/m4a1/ar50_suppressed_fire1.wav", 1, 95, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_AR_300_FIRE", "weapons/m4a1/ar300_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_AR_300_FIRE_SUPP", "weapons/m4a1/ar300_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_M4A1_MAGOUT", "weapons/m4a1/m4_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M4A1_MAGOUT_EMPTY", "weapons/m4a1/m4_magout_empty.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M4A1_MAGIN", "weapons/m4a1/m4_magin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M4A1_BOLTCATCH", "weapons/m4a1/m4_boltcatch.wav")

SWEP.Sounds = {
    deploy = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        {time = 0.7, sound = "CW_FAS2_M4A1_MAGOUT"},
        {time = 1.5, sound = "CW_FOLEY_HEAVY"},
        {time = 2.05, sound = "CW_FAS2_M4A1_MAGIN"}
    },
    reload_empty = {
        {time = 0.7, sound = "CW_FAS2_M4A1_MAGOUT_EMPTY"},
        {time = 1.15, sound = "CW_FOLEY_HEAVY"},
        {time = 1.7, sound = "CW_FAS2_M4A1_MAGIN"},
        {time = 2.3, sound = "CW_FAS2_M4A1_BOLTCATCH"}
    }
}