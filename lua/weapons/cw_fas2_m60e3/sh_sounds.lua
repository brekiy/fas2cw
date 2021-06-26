CustomizableWeaponry:addFireSound("CW_FAS2_M60_FIRE", "weapons/m60/m60_fire1.wav", 1, 115, CHAN_STATIC)
CustomizableWeaponry:addFireSound("CW_FAS2_M60_FIRE_SUPP", "weapons/m60/m60_suppressed_fire1.wav", 1, 95, CHAN_STATIC)

CustomizableWeaponry:addReloadSound("CW_FAS2_M60_BELTINSERT", "weapons/m60/m60_belt_insert.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M60_BELTREMOVE", "weapons/m60/m60_belt_remove.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M60_BELT", {"weapons/m60/m60_belt1.wav", "weapons/m60/m60_belt2.wav", "weapons/m60/m60_belt3.wav", "weapons/m60/m60_belt4.wav"})
CustomizableWeaponry:addReloadSound("CW_FAS2_M60_BIPOD", "weapons/m60/m60_bipod.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M60_CARDBOARDINSERT", "weapons/m60/m60_cardboard_insert.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M60_CARDBOARDREMOVE", "weapons/m60/m60_cardboard_remove.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M60_CARDBOARDREMOVE_FULL", "weapons/m60/m60_cardboard_remove_full.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M60_CARDBOARDRIP", {"weapons/m60/m60_cardboard_rip1.wav", "weapons/m60/m60_cardboard_rip2.wav"})
CustomizableWeaponry:addReloadSound("CW_FAS2_M60_BIPOD", "weapons/m60/m60_bipod.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M60_CARRYINGHANDLE", "weapons/m60/m60_carryinghandle.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M60_CHARGE", "weapons/m60/m60_charge.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M60_CLOSE", "weapons/m60/m60_close.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M60_FEEDINGMECHANISM", "weapons/m60/m60_feeding_mechanism.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M60_FEEDINGTRAY", "weapons/m60/m60_feeding_tray.wav")
-- CustomizableWeaponry:addReloadSound("CW_FAS2_M60_FLIPSIGHTS", "weapons/m60/m60_flipsights.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M60_OPEN", "weapons/m60/m60_open.wav")
-- CustomizableWeaponry:addReloadSound("CW_FAS2_M60_SHOULDERREST", "weapons/m60/m60_shoulderrest.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M60_STARTERTAB", "weapons/m60/m60_startertab.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M60_VELCROCLOSE", "weapons/m60/m60_velcro_close.wav")
CustomizableWeaponry:addReloadSound("CW_FAS2_M60_VELCRORIP", {"weapons/m60/m60_velcro_rip1.wav", "weapons/m60/m60_velcro_rip2.wav"})

SWEP.Sounds = {
    deploy = {{time = 0, sound = "CW_FOLEY_HEAVY"}},
    bipod_dn = {{time = 0, sound = "CW_FAS2_M60_BIPOD"}},
    bipod_up = {{time = 0, sound = "CW_FAS2_M60_BIPOD"}},
    reload = {
        {time = 0.14, sound = "CW_FOLEY_HEAVY"},
        {time = 0.32, sound = "CW_FAS2_M60_OPEN"},
        {time = 0.7, sound = "CW_FAS2_M60_BELTREMOVE"},
        {time = 1.4, sound = "CW_FOLEY_HEAVY"},
        {time = 2.1, sound = "CW_FAS2_M60_VELCRORIP"},
        {time = 2.6, sound = "CW_FAS2_M60_CARDBOARDREMOVE"},
        {time = 3.0, sound = "CW_FOLEY_HEAVY"},
        {time = 4.1, sound = "CW_FAS2_M60_CARDBOARDINSERT"},
        {time = 4.65, sound = "CW_FAS2_M60_CARDBOARDRIP"},
        {time = 5.35, sound = "CW_FAS2_M60_BELTINSERT"},
        {time = 6.58, sound = "CW_FAS2_M60_VELCROCLOSE"},
        {time = 7.29, sound = "CW_FAS2_M60_CLOSE"}
    },
    reload_fired00 = {
        {time = 0.13, sound = "CW_FOLEY_HEAVY"},
        {time = 0.32, sound = "CW_FAS2_M60_OPEN"},
        {time = 0.9, sound = "CW_FAS2_M60_CHARGE"},
        {time = 1.2, sound = "CW_FOLEY_HEAVY"},
        {time = 2.3, sound = "CW_FAS2_M60_VELCRORIP"},
        {time = 2.9, sound = "CW_FAS2_M60_CARDBOARDREMOVE"},
        {time = 3.5, sound = "CW_FOLEY_HEAVY"},
        {time = 4.35, sound = "CW_FAS2_M60_CARDBOARDINSERT"},
        {time = 4.8, sound = "CW_FAS2_M60_CARDBOARDRIP"},
        {time = 5.35, sound = "CW_FAS2_M60_BELTINSERT"},
        {time = 6.28, sound = "CW_FAS2_M60_VELCROCLOSE"},
        {time = 7.2, sound = "CW_FAS2_M60_CLOSE"}
    },
    reload_nomen = {
        {time = 0.14, sound = "CW_FOLEY_HEAVY"},
        {time = 0.32, sound = "CW_FAS2_M60_OPEN"},
        {time = 0.6, sound = "CW_FAS2_M60_BELTREMOVE"},
        {time = 1.4, sound = "CW_FOLEY_HEAVY"},
        {time = 1.8, sound = "CW_FAS2_M60_VELCRORIP"},
        {time = 2.2, sound = "CW_FAS2_M60_CARDBOARDREMOVE"},
        {time = 3.0, sound = "CW_FOLEY_HEAVY"},
        {time = 3.3, sound = "CW_FAS2_M60_CARDBOARDINSERT"},
        {time = 3.75, sound = "CW_FAS2_M60_CARDBOARDRIP"},
        {time = 4.35, sound = "CW_FAS2_M60_BELTINSERT"},
        {time = 5, sound = "CW_FAS2_M60_VELCROCLOSE"},
        {time = 5.8, sound = "CW_FAS2_M60_CLOSE"}
    },
    reload_fired00_nomen = {
        {time = 0.13, sound = "CW_FOLEY_HEAVY"},
        {time = 0.32, sound = "CW_FAS2_M60_OPEN"},
        {time = 0.75, sound = "CW_FAS2_M60_CHARGE"},
        {time = 1.2, sound = "CW_FOLEY_HEAVY"},
        {time = 1.6, sound = "CW_FAS2_M60_VELCRORIP"},
        {time = 2.1, sound = "CW_FAS2_M60_CARDBOARDREMOVE"},
        {time = 2.5, sound = "CW_FOLEY_HEAVY"},
        {time = 3.25, sound = "CW_FAS2_M60_CARDBOARDINSERT"},
        {time = 3.75, sound = "CW_FAS2_M60_CARDBOARDRIP"},
        {time = 4.25, sound = "CW_FAS2_M60_BELTINSERT"},
        {time = 4.65, sound = "CW_FAS2_M60_VELCROCLOSE"},
        {time = 5.7, sound = "CW_FAS2_M60_CLOSE"}
    }
}