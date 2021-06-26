CustomizableWeaponry:addFireSound("CW_FAS2_G36C_FIRE", "weapons/g36c/g36c_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_G36C_FIRE_SUPP", "weapons/g36c/g36c_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_G36C_BOLTBACK", "weapons/g36c/g36c_boltback.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_G36C_BOLTFORWARD", "weapons/g36c/g36c_boltforward.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_G36C_HANDLE", "weapons/g36c/g36c_handle.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_G36C_MAGOUT", "weapons/g36c/g36c_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_G36C_MAGIN", "weapons/g36c/g36c_magin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_G36C_MAGOUT_EMPTY", "weapons/g36c/g36c_magout_empty.wav")

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        {time = 0.5, sound = "CW_FAS2_G36C_MAGOUT"},
        {time = 1.2, sound = "CW_FOLEY_HEAVY"},
        {time = 1.55, sound = "CW_FAS2_G36C_MAGIN"}
    },
    reload_empty = {
        {time = 0.5, sound = "CW_FAS2_G36C_MAGOUT_EMPTY"},
        {time = 1.15, sound = "CW_FOLEY_HEAVY"},
        {time = 1.55, sound = "CW_FAS2_G36C_MAGIN"},
        {time = 2.1, sound = "CW_FAS2_G36C_BOLTBACK"},
        {time = 2.3, sound = "CW_FAS2_G36C_BOLTFORWARD"}
    },
    reload_nomen = {
        {time = 0.45, sound = "CW_FAS2_G36C_MAGOUT"},
        {time = 0.75, sound = "CW_FOLEY_HEAVY"},
        {time = 1.25, sound = "CW_FAS2_G36C_MAGIN"}
    },
    reload_empty_nomen = {
        {time = 0.5, sound = "CW_FAS2_G36C_MAGOUT_EMPTY"},
        {time = 1, sound = "CW_FOLEY_HEAVY"},
        {time = 1.3, sound = "CW_FAS2_G36C_MAGIN"},
        {time = 1.65, sound = "CW_FAS2_G36C_BOLTBACK"},
        {time = 1.85, sound = "CW_FAS2_G36C_BOLTFORWARD"}
    }
}