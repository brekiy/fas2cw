CustomizableWeaponry:addFireSound("CW_FAS2_M249_FIRE", "weapons/m249/m249_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_M249_FIRE_SUPP", "weapons/m249/m249_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_M249_BELTLOAD", "weapons/m249/m249_beltload.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M249_BELTPULL", "weapons/m249/m249_beltpull.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M249_BELTREMOVE", "weapons/m249/m249_beltremove.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M249_BIPOD", "weapons/m249/m249_bipod.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M249_BOXINSERT", "weapons/m249/m249_boxinsert.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M249_BOXREMOVE", "weapons/m249/m249_boxremove.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M249_CHARGE", "weapons/m249/m249_charge.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M249_LIDCLOSE", "weapons/m249/m249_lidclose.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M249_LIDOPEN", "weapons/m249/m249_lidopen.wav")

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_HEAVY"}},
    bipod_down = {{time = 0, sound = "CW_FAS2_M249_BIPOD"}},
    bipod_up = {{time = 0, sound = "CW_FAS2_M249_BIPOD"}},
    reload = {
        {time = 0.07, sound = "CW_FOLEY_HEAVY"},
        {time = 0.4, sound = "CW_FAS2_M249_LIDOPEN"},
        {time = 0.8, sound = "CW_FOLEY_HEAVY"},
        {time = 1, sound = "CW_FAS2_M249_BELTREMOVE"},
        {time = 2.2, sound = "CW_FAS2_M249_BOXREMOVE"},
        {time = 3, sound = "CW_FOLEY_HEAVY"},
        {time = 3.65, sound = "CW_FAS2_M249_BOXINSERT"},
        {time = 4.15, sound = "CW_FAS2_M249_BELTPULL"},
        {time = 4.4, sound = "CW_FAS2_M249_BELTLOAD"},
        {time = 5.6, sound = "CW_FAS2_M249_LIDCLOSE"}
    },
    reload_empty = {
        {time = 0.07, sound = "CW_FOLEY_HEAVY"},
        {time = 0.35, sound = "CW_FAS2_M249_CHARGE"},
        {time = 1.1, sound = "CW_FAS2_M249_LIDOPEN"},
        {time = 3, sound = "CW_FAS2_M249_BOXREMOVE"},
        {time = 3.55, sound = "CW_FOLEY_HEAVY"},
        {time = 4.42, sound = "CW_FAS2_M249_BOXINSERT"},
        {time = 4.9, sound = "CW_FAS2_M249_BELTPULL"},
        {time = 5.1, sound = "CW_FAS2_M249_BELTLOAD"},
        {time = 6.25, sound = "CW_FAS2_M249_LIDCLOSE"}
    },
    reload_nomen = {
        {time = 0.07, sound = "CW_FOLEY_HEAVY"},
        {time = 0.4, sound = "CW_FAS2_M249_LIDOPEN"},
        {time = 0.8, sound = "CW_FOLEY_HEAVY"},
        {time = 1, sound = "CW_FAS2_M249_BELTREMOVE"},
        {time = 1.6, sound = "CW_FAS2_M249_BOXREMOVE"},
        {time = 2, sound = "CW_FOLEY_HEAVY"},
        {time = 2.65, sound = "CW_FAS2_M249_BOXINSERT"},
        {time = 3.1, sound = "CW_FAS2_M249_BELTPULL"},
        {time = 3.2, sound = "CW_FAS2_M249_BELTLOAD"},
        {time = 4.2, sound = "CW_FAS2_M249_LIDCLOSE"}
    },
    reload_empty_nomen = {
        {time = 0.07, sound = "CW_FOLEY_HEAVY"},
        {time = 0.35, sound = "CW_FAS2_M249_LIDOPEN"},
        {time = 1.1, sound = "CW_FAS2_M249_CHARGE"},
        {time = 2.2, sound = "CW_FAS2_M249_BOXREMOVE"},
        {time = 2.55, sound = "CW_FOLEY_HEAVY"},
        {time = 3.22, sound = "CW_FAS2_M249_BOXINSERT"},
        {time = 3.7, sound = "CW_FAS2_M249_BELTPULL"},
        {time = 4, sound = "CW_FAS2_M249_BELTLOAD"},
        {time = 4.8, sound = "CW_FAS2_M249_LIDCLOSE"}
    },
}