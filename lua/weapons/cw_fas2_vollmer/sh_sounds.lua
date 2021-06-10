CustomizableWeaponry:addFireSound("CW_FAS2_HK51_FIRE", "weapons/vollmer/vollmer_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_HK51_FIRE_SUPP", "weapons/vollmer/vollmer_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_HK51_BELTLOAD", "weapons/vollmer/vollmer_beltload.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_HK51_BELTREMOVE", "weapons/vollmer/vollmer_beltremove.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_HK51_BELTPULL", "weapons/vollmer/vollmer_beltpull.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_HK51_BELT", {"weapons/vollmer/vollmer_belt1.wav", "weapons/vollmer/vollmer_belt2.wav", "weapons/vollmer/vollmer_belt3.wav"})
CustomizableWeaponry:addReloadSound("CW_FAS2_HK51_BOXIN", "weapons/vollmer/vollmer_boxin.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_HK51_BOXOUT", "weapons/vollmer/vollmer_boxout.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_HK51_LIDCLOSE", "weapons/vollmer/vollmer_close.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_HK51_LIDOPEN", "weapons/vollmer/vollmer_open.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_HK51_BOLTBACK", "weapons/vollmer/vollmer_boltback.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_HK51_BOLTFORWARD", "weapons/vollmer/vollmer_boltforward.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_HK51_RIP", "weapons/vollmer/vollmer_rip.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_HK51_BOX", "weapons/vollmer/vollmer_box.wav")
-- FAS_RS["FAS2_MC51.stock"] = "weapons/vollmer/vollmer_stock.wav"

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_HEAVY"}},
    reload = {
        {time = 0.5, sound = "CW_FAS2_HK51_BELT"},
        {time = 0.5, sound = "CW_FOLEY_HEAVY"},
        {time = 0.95, sound = "CW_FAS2_HK51_LIDOPEN"},
        {time = 1.55, sound = "CW_FAS2_HK51_BOXOUT"},
        {time = 2.4, sound = "CW_FOLEY_HEAVY"},
        {time = 3.1, sound = "CW_FAS2_HK51_BOXIN"},
        {time = 3.6, sound = "CW_FAS2_HK51_RIP"},
        {time = 4.15, sound = "CW_FAS2_HK51_BELTPULL"},
        {time = 4.9, sound = "CW_FAS2_HK51_BOX"},
        {time = 5.35, sound = "CW_FAS2_HK51_LIDCLOSE"},
        {time = 6, sound = "CW_FAS2_HK51_BELT"}
    },
    reload00 = {
        {time = 0.45, sound = "CW_FAS2_HK51_BOLTBACK"},
        {time = 0.5, sound = "CW_FOLEY_HEAVY"},
        {time = 0.99, sound = "CW_FAS2_HK51_LIDOPEN"},
        {time = 1.55, sound = "CW_FAS2_HK51_BOXOUT"},
        {time = 2.5, sound = "CW_FOLEY_HEAVY"},
        {time = 3.1, sound = "CW_FAS2_HK51_BOXIN"},
        {time = 3.6, sound = "CW_FAS2_HK51_RIP"},
        {time = 4.15, sound = "CW_FAS2_HK51_BELTPULL"},
        {time = 4.9, sound = "CW_FAS2_HK51_BOX"},
        {time = 5.35, sound = "CW_FAS2_HK51_LIDCLOSE"},
        {time = 6, sound = "CW_FAS2_HK51_BELT"},
        {time = 6.8, sound = "CW_FAS2_HK51_BOLTFORWARD"}
    },
    reload_nomen = {
        {time = 0.4, sound = "CW_FAS2_HK51_BELT"},
        {time = 0.5, sound = "CW_FOLEY_HEAVY"},
        {time = 0.95, sound = "CW_FAS2_HK51_LIDOPEN"},
        {time = 1.3, sound = "CW_FAS2_HK51_BOXOUT"},
        {time = 2.1, sound = "CW_FOLEY_HEAVY"},
        {time = 2.55, sound = "CW_FAS2_HK51_BOXIN"},
        {time = 2.9, sound = "CW_FAS2_HK51_RIP"},
        {time = 3.4, sound = "CW_FAS2_HK51_BELTPULL"},
        {time = 3.9, sound = "CW_FAS2_HK51_BOX"},
        {time = 4.3, sound = "CW_FAS2_HK51_LIDCLOSE"},
        {time = 4.8, sound = "CW_FAS2_HK51_BELT"}
    },
    reload00_nomen = {
        {time = 0.5, sound = "CW_FAS2_HK51_BOLTBACK"},
        {time = 0.5, sound = "CW_FOLEY_HEAVY"},
        {time = 0.99, sound = "CW_FAS2_HK51_LIDOPEN"},
        {time = 1.45, sound = "CW_FAS2_HK51_BOXOUT"},
        {time = 2.76, sound = "CW_FAS2_HK51_BOXIN"},
        {time = 3, sound = "CW_FAS2_HK51_RIP"},
        {time = 3.45, sound = "CW_FAS2_HK51_BELTPULL"},
        {time = 3.9, sound = "CW_FAS2_HK51_BOX"},
        {time = 4.35, sound = "CW_FAS2_HK51_LIDCLOSE"},
        {time = 4.8, sound = "CW_FAS2_HK51_BELT"},
        {time = 5.4, sound = "CW_FAS2_HK51_BOLTFORWARD"}
    }
}