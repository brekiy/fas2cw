CustomizableWeaponry:addFireSound("CW_FAS2_SG550_FIRE", "weapons/sg55x/sg550_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_SG552_FIRE", "weapons/sg55x/sg552_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_SG550_FIRE_SUPP", "weapons/sg55x/sg550_suppressed_fire1.wav", 1, 95, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_SG552_FIRE_SUPP", "weapons/sg55x/sg552_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_SG550_MAGOUT", "weapons/sg55x/sg550_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SG550_MAGOUT_EMPTY", "weapons/sg55x/sg550_magout_empty.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_SG550_MAGIN", "weapons/sg55x/sg550_magin.wav")

SWEP.Sounds = {
    deploy = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        {time = 0.65, sound = "CW_FAS2_SG550_MAGOUT"},
        {time = 1.3, sound = "CW_FOLEY_HEAVY"},
        {time = 1.8, sound = "CW_FAS2_SG550_MAGIN"}
    },
    reload_empty = {
        {time = 0.65, sound = "CW_FAS2_SG550_MAGOUT_EMPTY"},
        {time = 1.3, sound = "CW_FOLEY_HEAVY"},
        {time = 2.1, sound = "CW_FAS2_SG550_MAGIN"},
        {time = 2.8, sound = "CW_FAS2_M4A1_BOLTCATCH"}
    },
    reload_nomen = {
        {time = 0.3, sound = "CW_FOLEY_HEAVY"},
        {time = 0.8, sound = "CW_FAS2_SG550_MAGOUT"},
        {time = 1.25, sound = "CW_FAS2_SG550_MAGIN"}
    },
    reload_empty_nomen = {
        {time = 0.3, sound = "CW_FOLEY_HEAVY"},
        {time = 0.8, sound = "CW_FAS2_SG550_MAGOUT_EMPTY"},
        {time = 1.25, sound = "CW_FAS2_SG550_MAGIN"},
        {time = 1.8, sound = "CW_FAS2_M4A1_BOLTCATCH"}
    }
}