CustomizableWeaponry:addFireSound("CW_FAS2_OTS33_FIRE", "weapons/ots33/ots33_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_OTS33_FIRE_SUPP", "weapons/ots33/ots33_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_OTS33_SLIDESTOP", "weapons/ots33/ots33_sliderelease.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_OTS33_SLIDEBACK", "weapons/ots33/ots33_slideback.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_OTS33_MAGOUT", "weapons/ots33/ots33_magout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_OTS33_MAGIN", "weapons/ots33/ots33_magin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_OTS33_MAGIN_PARTIAL", "weapons/ots33/ots33_magin_partial.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_OTS33_MAGOUT_EMPTY", "weapons/ots33/ots33_magout_empty.wav")

SWEP.Sounds = {
    Draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    Reload_Wet = {
        {time = 0.4, sound = "CW_FAS2_OTS33_MAGOUT"},
        {time = 0.6, sound = "CW_FOLEY_MEDIUM"},
        {time = 1, sound = "CW_FAS2_OTS33_MAGIN_PARTIAL"},
        {time = 1.25, sound = "CW_FAS2_OTS33_MAGIN"}
    },
    Fast_Reload_Wet = {
        {time = 0.4, sound = "CW_FAS2_OTS33_MAGOUT"},
        {time = 0.6, sound = "CW_FOLEY_MEDIUM"},
        {time = 0.7, sound = "CW_FAS2_OTS33_MAGIN_PARTIAL"},
        {time = 0.9, sound = "CW_FAS2_OTS33_MAGIN"}
    },
    Reload_Dry = {
        {time = 0.4, sound = "CW_FAS2_OTS33_MAGOUT"},
        {time = 0.6, sound = "CW_FOLEY_MEDIUM"},
        {time = 1, sound = "CW_FAS2_OTS33_MAGIN_PARTIAL"},
        {time = 1.25, sound = "CW_FAS2_OTS33_MAGIN"},
        {time = 1.9, sound = "CW_FAS2_OTS33_SLIDESTOP"}
    },
    Fast_Reload_Dry = {
        {time = 0.4, sound = "CW_FAS2_OTS33_MAGOUT"},
        {time = 0.6, sound = "CW_FOLEY_MEDIUM"},
        {time = 0.7, sound = "CW_FAS2_OTS33_MAGIN_PARTIAL"},
        {time = 0.9, sound = "CW_FAS2_OTS33_MAGIN"},
        {time = 1.2, sound = "CW_FAS2_OTS33_SLIDESTOP"}
    }
}