AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
    SWEP.Category = "CW 2.0 FA:S 2 Weapons"
    SWEP.Author			= "brekiy"
    SWEP.Contact		= ""
    SWEP.Purpose		= ""
    SWEP.Instructions	= ""

    SWEP.DrawCrosshair = false
    SWEP.PrintName = "OTs-33"
    -- SWEP.CSMuzzleFlashes = true

    SWEP.IronsightPos = Vector(-1.65, -0.786, 0.63)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-1, 0, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-1.5, -2, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -10)

    SWEP.WickPos = Vector(-3, 0, 0)
    SWEP.WickAng = Vector(0, 0, -30)

    SWEP.MuzzleEffect = "muzzleflash_pistol"
    SWEP.Shell = "9x18"
    SWEP.PosBasedMuz = false
    SWEP.ShellScale = 1
    SWEP.ShellOffsetMul = 1
    SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
    SWEP.SightWithRail = false

    SWEP.CustomizationMenuScale = 0.01

    SWEP.AttachmentModelsVM = {
        ["md_insight_x2"] = {model = "models/cw2/attachments/pistollaser.mdl", bone = "Base", pos = Vector(-3.01, 10.85, -1.385), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5)},
        ["md_tundra9mm"] = {model = "models/cw2/attachments/9mmsuppressor.mdl", bone = "Base", pos = Vector(-0.038, -12.216, 0.305), angle = Angle(0, 0, 0), size = Vector(0.8, 0.8, 0.8)},
    }
end

SWEP.MuzzleVelocity = 330 -- in meter/s

-- SWEP.BarrelBGs = {main = 2, sd = 1, regular = 0}
-- SWEP.SightBGs = {main = 3, tritium = 1, regular = 0}

SWEP.Attachments = {
    -- [1] = {header = "Sight", offset = {0, -400},  atts = {"bg_fas2_tritiumsights"}},
    -- [2] = {header = "Barrel", offset = {-400, -300}, atts = {"md_tundra9mm"}},
    -- [3] = {header = "Caliber", offset = {0, 100}, atts = {"am_fas2_9p226"}},
    -- [4] = {header = "Rail", offset = {-100, 200}, atts = {"md_insight_x2"}},
    -- lol weird support hand stuff going on here
    [5] = {header = "Perk", offset = {500, 100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {-500, 100}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"Fire1", "Fire2", "Fire3"},
    fire_aim = "Fire_Iron",
    fire_last = "Fire_Last",
    fire_aim_last = "Fire_Last_Iron",
    reload = "Reload_Wet",
    reload_empty = "Reload_Dry",
    reload_fast = "Fast_Reload_Wet",
    reload_fast_empty = "Fast_Reload_Dry",
    idle = "idle",
    draw = "Draw",
    draw_empty = "Draw_Empty",
    holster = "Holster"
}

SWEP.Sounds = {
    Draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    Reload_Wet = {
        [1] = {time = 0.4, sound = "CW_FAS2_OTS33_MAGOUT"},
        [2] = {time = 0.6, sound = "CW_FOLEY_MEDIUM"},
        [3] = {time = 1, sound = "CW_FAS2_OTS33_MAGIN_PARTIAL"},
        [4] = {time = 1.25, sound = "CW_FAS2_OTS33_MAGIN"}
    },
    Fast_Reload_Wet = {
        [1] = {time = 0.4, sound = "CW_FAS2_OTS33_MAGOUT"},
        [2] = {time = 0.6, sound = "CW_FOLEY_MEDIUM"},
        [3] = {time = 0.7, sound = "CW_FAS2_OTS33_MAGIN_PARTIAL"},
        [4] = {time = 0.9, sound = "CW_FAS2_OTS33_MAGIN"}
    },
    Reload_Dry = {
        [1] = {time = 0.4, sound = "CW_FAS2_OTS33_MAGOUT"},
        [2] = {time = 0.6, sound = "CW_FOLEY_MEDIUM"},
        [3] = {time = 1, sound = "CW_FAS2_OTS33_MAGIN_PARTIAL"},
        [4] = {time = 1.25, sound = "CW_FAS2_OTS33_MAGIN"},
        [5] = {time = 1.9, sound = "CW_FAS2_OTS33_SLIDESTOP"}
    },
    Fast_Reload_Dry = {
        [1] = {time = 0.4, sound = "CW_FAS2_OTS33_MAGOUT"},
        [2] = {time = 0.6, sound = "CW_FOLEY_MEDIUM"},
        [3] = {time = 0.7, sound = "CW_FAS2_OTS33_MAGIN_PARTIAL"},
        [4] = {time = 0.9, sound = "CW_FAS2_OTS33_MAGIN"},
        [5] = {time = 1.2, sound = "CW_FAS2_OTS33_SLIDESTOP"}
    }
}

SWEP.SpeedDec = 10

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "revolver"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 60
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/pistols/ots33.mdl"
SWEP.WorldModel = "models/weapons/world/pistols/ots33.mdl"
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 18
SWEP.Primary.DefaultClip	= 36
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x18MM"

SWEP.FireDelay = 0.06667
SWEP.FireSound = "CW_FAS2_OTS33_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_PP19_FIRE_SUPP"
SWEP.Recoil = 0.65

SWEP.HipSpread = 0.032
SWEP.AimSpread = 0.018
SWEP.VelocitySensitivity = 1.2
SWEP.MaxSpreadInc = 0.04
SWEP.SpreadPerShot = 0.006
SWEP.SpreadCooldown = 0.15
SWEP.Shots = 1
SWEP.Damage = 17
SWEP.DeployTime = 0.45

SWEP.ReloadTime = 1.8
SWEP.ReloadTime_Empty = 2
SWEP.ReloadHalt = 1.95
SWEP.ReloadHalt_Empty = 2.15
SWEP.ReloadFastTime = 1.2
SWEP.ReloadFastTime_Empty = 1.4
SWEP.ReloadFastHalt = 1.35
SWEP.ReloadFastHalt_Empty = 1.55
