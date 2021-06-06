AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

-- Guesstimating case length until i find a spec sheet
-- also cant register in the actual attachment because of loading order or something... zzz
CustomizableWeaponry:registerAmmo(".429 DE", ".429 DE Rounds", 10.9, 32.6)

if CLIENT then
    SWEP.Category = "CW 2.0 FA:S 2 Weapons"
    SWEP.Author			= "brekiy"
    SWEP.Contact		= ""
    SWEP.Purpose		= ""
    SWEP.Instructions	= ""

    SWEP.DrawCrosshair = false
    SWEP.PrintName = "Desert Eagle"
    -- SWEP.CSMuzzleFlashes = true

    SWEP.IronsightPos = Vector(-2.42, 3, 0.715)
    SWEP.IronsightAng = Vector(0.7, 0, 0)

    SWEP.MicroT1Pos = Vector(-2.422, 1, 0.33)
    SWEP.MicroT1Ang = Vector(0, 0, 0)

    SWEP.ShortDotPos = Vector(-2.418, -6.5, 0)
    SWEP.ShortDotAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-1.5, -1, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-3.75, -1, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -30)

    SWEP.MuzzleEffect = "muzzleflash_pistol_deagle"
    SWEP.Shell = "fas2_50ae"
    SWEP.ShellScale = 1
    SWEP.SightWithRail = false
    SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}


    SWEP.AttachmentModelsVM = {
        ["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "frame", pos = Vector(1, -0.25, 1.3), angle = Angle(90, 0, -90), size = Vector(0.3, 0.3, 0.3)},
        ["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "frame", pos = Vector(-4.5, 4.3, 1.6), angle = Angle(0, 0, -90), size = Vector(0.8, 0.8, 0.8)}
    }
end

SWEP.MuzzleVelocity = 470 -- in meter/s
SWEP.SightBGs = {main = 2, tritium = 1, regular = 0}


SWEP.Attachments = {
    [1] = {header = "Sight", offset = {0, -400},  atts = {"bg_fas2_tritiumsights", "md_microt1", "md_schmidt_shortdot"}},
    -- [2] = {header = "Barrel", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Caliber", offset = {0, 150}, atts = {"am_fas2_357deagle", "am_fas2_429deagle"}},
    [5] = {header = "Perk", offset = {500, 100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {-500, 100}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"fire1", "fire2", "fire3", "fire4"},
    fire_aim = "fire_iron",
    fire_last = "fire_last",
    fire_aim_last = "fire_iron_last",
    reload = "reload",
    reload_empty = "reload_empty",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload_nomen_empty",
    idle = "idle",
    draw = "deploy",
    draw_empty = "deploy_empty",
    holster = "holster"
}

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        [1] = {time = 0.5, sound = "CW_FAS2_DEAGLE_MAGOUT"},
        [2] = {time = 0.9, sound = "CW_FOLEY_MEDIUM"},
        [3] = {time = 1.4, sound = "CW_FAS2_DEAGLE_MAGIN_PARTIAL"},
        [4] = {time = 1.55, sound = "CW_FAS2_DEAGLE_MAGIN"}
    },
    reload_empty = {
        [1] = {time = 0.6, sound = "CW_FAS2_DEAGLE_MAGOUT_EMPTY"},
        [2] = {time = 0.9, sound = "CW_FOLEY_MEDIUM"},
        [3] = {time = 1.4, sound = "CW_FAS2_DEAGLE_MAGIN_PARTIAL"},
        [4] = {time = 1.55, sound = "CW_FAS2_DEAGLE_MAGIN"},
        [5] = {time = 2.3, sound = "CW_FAS2_DEAGLE_SLIDESTOP"}
    },
    reload_nomen = {
        [1] = {time = 0.3, sound = "CW_FAS2_DEAGLE_MAGOUT"},
        [2] = {time = 0.5, sound = "CW_FOLEY_MEDIUM"},
        [3] = {time = 0.95, sound = "CW_FAS2_DEAGLE_MAGIN_PARTIAL"},
        [4] = {time = 1.1, sound = "CW_FAS2_DEAGLE_MAGIN_NOMEN"}
    },
    reload_nomen_empty = {
        [1] = {time = 0.3, sound = "CW_FAS2_DEAGLE_MAGOUT"},
        [2] = {time = 0.5, sound = "CW_FOLEY_MEDIUM"},
        [3] = {time = 0.95, sound = "CW_FAS2_DEAGLE_MAGIN_PARTIAL"},
        [4] = {time = 1.1, sound = "CW_FAS2_DEAGLE_MAGIN_NOMEN"},
        [5] = {time = 1.6, sound = "CW_FAS2_DEAGLE_SLIDESTOP"}
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
SWEP.ViewModel = "models/weapons/view/pistols/deagle.mdl"
SWEP.WorldModel   = "models/weapons/world/pistols/w_deserteagle.mdl"
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 7
SWEP.Primary.DefaultClip	= 28
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= ".50 AE"

SWEP.FireDelay = 0.12
SWEP.FireSound = "CW_FAS2_DEAGLE_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_AK74_FIRE_SUPP"
SWEP.Recoil = 3

SWEP.HipSpread = 0.04
SWEP.AimSpread = 0.009
SWEP.VelocitySensitivity = 1.5
SWEP.MaxSpreadInc = 0.055
SWEP.SpreadPerShot = 0.02
SWEP.SpreadCooldown = 0.165
SWEP.Shots = 1
SWEP.Damage = 55
SWEP.DeployTime = 0.45

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.6
SWEP.ReloadTime_Empty = 2.2
SWEP.ReloadHalt = 2.75
SWEP.ReloadHalt_Empty = 2.35

SWEP.ReloadFastTime = 1.3
SWEP.ReloadFastTime_Empty = 1.7
SWEP.ReloadFastHalt = 1.55
SWEP.ReloadFastHalt_Empty = 1.85
