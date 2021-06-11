CustomizableWeaponry:addFireSound("CW_FAS2_CF05_FIRE", {"weapons/cf05/cf05_fire1.wav", "weapons/cf05/cf05_fire2.wav", "weapons/cf05/cf05_fire3.wav", "weapons/cf05/cf05_fire4.wav", "weapons/cf05/cf05_fire5.wav"}, 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_CF05_FIRE_SUPP", "weapons/cf05/cf05_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_CF05_MAGOUT", "weapons/cf05/cf05_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_CF05_MAGIN", "weapons/cf05/cf05_magin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_CF05_BOLTPULL", "weapons/cf05/cf05_boltback.wav")

SWEP.Sounds = {
    deploy = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        {time = 0.7, sound = "CW_FAS2_CF05_MAGOUT"},
        {time = 1.5, sound = "CW_FOLEY_HEAVY"},
        {time = 2.05, sound = "CW_FAS2_CF05_MAGIN"}
    },
    reload_empty = {
        {time = 0.7, sound = "CW_FAS2_CF05_MAGOUT"},
        {time = 1.15, sound = "CW_FOLEY_HEAVY"},
        {time = 1.7, sound = "CW_FAS2_CF05_MAGIN"},
        {time = 2.3, sound = "CW_FAS2_CF05_BOLTPULL"}
    }
}
