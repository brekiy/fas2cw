AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

CustomizableWeaponry:registerAmmo(".357 SIG", ".357 SIG Rounds", 9.02, 21.97)
if CLIENT then
    SWEP.Category = "CW 2.0 FA:S 2 Weapons"
    SWEP.Author			= "brekiy"
    SWEP.Contact		= ""
    SWEP.Purpose		= ""
    SWEP.Instructions	= ""

    SWEP.DrawCrosshair = false
    SWEP.PrintName = "P226"

    SWEP.IronsightPos = Vector(-1.899, -0.78, 0.915)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-1.6, -1, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-2.6, -1.5, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -25)

    SWEP.MuzzleEffect = "muzzleflash_pistol"
    SWEP.Shell = "fas2_357sig"
    SWEP.PosBasedMuz = false
    SWEP.ShellScale = 1
    SWEP.ShellOffsetMul = 1
    SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
    SWEP.SightWithRail = false

    SWEP.CustomizationMenuScale = 0.01

    SWEP.AttachmentModelsVM = {
        ["md_insight_x2"] = {model = "models/cw2/attachments/pistollaser.mdl", bone = "Frame", pos = Vector(-3.01, 10.85, -1.385), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5)},
    }
end

SWEP.MuzzleVelocity = 412 -- in meter/s

SWEP.BarrelBGs = {main = 2, sd = 1, regular = 0}
-- SWEP.SightBGs = {main = 3, tritium = 1, regular = 0}

SWEP.Attachments = {
    -- [1] = {header = "Sight", offset = {0, -400},  atts = {"bg_fas2_tritiumsights"}},
    [2] = {header = "Barrel", offset = {-400, -300}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Caliber", offset = {0, 100}, atts = {"am_fas2_9p226"}},
    -- [4] = {header = "Rail", offset = {400, -20}, atts = {"md_insight_x2"}}, -- TODO: fix
    [5] = {header = "Perk", offset = {500, 100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {-500, 100}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"fire1", "fire2"},
    fire_aim = "fire_scoped2",
    fire_last = "fire_last",
    fire_aim_last = "fire_last_iron",
    reload = "reload",
    reload_empty = "reload_empty",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload_empty_nomen",
    idle = "idle",
    draw = "draw",
    draw_empty = "draw_empty",
    holster = "holster"
}

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        [1] = {time = 0.5, sound = "CW_FAS2_P226_MAGOUT"},
        [2] = {time = 0.9, sound = "CW_FOLEY_MEDIUM"},
        [3] = {time = 1.45, sound = "CW_FAS2_P226_MAGIN_PARTIAL"},
        [4] = {time = 1.65, sound = "CW_FAS2_P226_MAGIN"}
    },
    reload_empty = {
        [1] = {time = 0.3, sound = "CW_FAS2_P226_MAGOUT_EMPTY"},
        [2] = {time = 0.5, sound = "CW_FOLEY_MEDIUM"},
        [3] = {time = 0.9, sound = "CW_FAS2_P226_MAGIN_PARTIAL"},
        [4] = {time = 1, sound = "CW_FAS2_P226_MAGIN"},
        [5] = {time = 1.8, sound = "CW_FAS2_P226_SLIDEBACK"},
        [6] = {time = 1.95, sound = "CW_FAS2_P226_SLIDEFORWARD"},
        [7] = {time = 2, sound = "CW_FAS2_P226_SLIDESTOP"}
    },
    reload_nomen = {
        [1] = {time = 0.5, sound = "CW_FAS2_P226_MAGOUT"},
        [2] = {time = 0.7, sound = "CW_FOLEY_MEDIUM"},
        [3] = {time = 1.15, sound = "CW_FAS2_P226_MAGIN_PARTIAL"},
        [4] = {time = 1.35, sound = "CW_FAS2_P226_MAGIN"}
    },
    reload_empty_nomen = {
        [1] = {time = 0.5, sound = "CW_FAS2_P226_MAGOUT_EMPTY"},
        [2] = {time = 0.7, sound = "CW_FOLEY_MEDIUM"},
        [3] = {time = 1.15, sound = "CW_FAS2_P226_MAGIN_PARTIAL"},
        [4] = {time = 1.35, sound = "CW_FAS2_P226_MAGIN"},
        [5] = {time = 1.6, sound = "CW_FAS2_P226_SLIDEFORWARD"},
        [6] = {time = 1.65, sound = "CW_FAS2_P226_SLIDESTOP"}
    }
}

SWEP.SpeedDec = 10

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "revolver"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 60
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/pistols/p226.mdl"
SWEP.WorldModel   = "models/weapons/w_pist_p228.mdl"
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 13
SWEP.Primary.DefaultClip	= 52
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= ".357 SIG"

SWEP.FireDelay = 0.12
SWEP.FireSound = "CW_FAS2_P226_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_P226_FIRE_SUPP"
SWEP.Recoil = 0.75

SWEP.HipSpread = 0.033
SWEP.AimSpread = 0.017
SWEP.VelocitySensitivity = 1.2
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.006
SWEP.SpreadCooldown = 0.16
SWEP.Shots = 1
SWEP.Damage = 27
SWEP.DeployTime = 0.45

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2
SWEP.ReloadTime_Empty = 2.2
SWEP.ReloadHalt = 2.15
SWEP.ReloadHalt_Empty = 2.35
SWEP.ReloadFastTime = 1.5
SWEP.ReloadFastTime_Empty = 1.7
SWEP.ReloadFastHalt = 1.65
SWEP.ReloadFastHalt_Empty = 1.85
