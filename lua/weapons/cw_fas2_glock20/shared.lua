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
    SWEP.PrintName = "Glock 20"

    SWEP.IronsightPos = Vector(-2.16, 3, 0.81)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.RMRPos = Vector(-2.16, 3, 0.68)
    SWEP.RMRAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-0.9, -2, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-3, -3, -1)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -25)

    SWEP.MuzzleEffect = "muzzleflash_pistol"
    SWEP.Shell = "fas2_10x25"
    SWEP.PosBasedMuz = false
    SWEP.ShellPosOffset = {x = 1, y = 3, z = -3}
    SWEP.SightWithRail = false
    SWEP.CustomizationMenuScale = 0.0125

    SWEP.AttachmentModelsVM = {
        ["md_rmr"] = {model = "models/cw2/attachments/pistolholo.mdl", pos = Vector(-0.25, -5.5, -3.2), angle = Angle(0, -90, 0), size = Vector(0.6, 0.6, 0.6), bone = "glock_slide"},
    }
end

SWEP.MuzzleVelocity = 365 -- in meter/s

SWEP.MuzzleBGs = {main = 1, sd = 1, regular = 0}
SWEP.SightBGs = {main = 2, tritium = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -350},  atts = {"bg_fas2_tritiumsights", "md_rmr"}},
    [2] = {header = "Muzzle", offset = {-400, -350}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Caliber", offset = {100, 250}, atts = {"am_fas2_50glock"}},
    ["+use"] = {header = "Perk", offset = {600, 250}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {-400, 250}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"fire_1", "fire_2"},
    fire_aim = "iron_fire",
    fire_last = "fire_last",
    fire_aim_last = "iron_fire_last",
    reload = "reload",
    reload_empty = "reload_empty",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload_empty_nomen",
    idle = "idle",
    draw = "draw",
    draw_empty = "draw_Empty",
    holster = "holster"
}

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        {time = 0.4, sound = "CW_FAS2_GLOCK20_MAGOUT"},
        [2] = {time = 0.9, sound = "CW_FOLEY_MEDIUM"},
        [3] = {time = 1.7, sound = "CW_FAS2_GLOCK20_MAGIN"}
    },
    reload_empty = {
        {time = 0.4, sound = "CW_FAS2_GLOCK20_MAGOUT_EMPTY"},
        [2] = {time = 0.9, sound = "CW_FOLEY_MEDIUM"},
        [3] = {time = 1.55, sound = "CW_FAS2_GLOCK20_MAGIN"},
        [4] = {time = 1.85, sound = "CW_FAS2_GLOCK20_SLIDESTOP"}
    },
    reload_nomen = {
        {time = 0.2, sound = "CW_FAS2_GLOCK20_MAGOUT"},
        [2] = {time = 0.6, sound = "CW_FOLEY_MEDIUM"},
        [3] = {time = 1.05, sound = "CW_FAS2_GLOCK20_MAGIN"}
    },
    reload_empty_nomen = {
        {time = 0.2, sound = "CW_FOLEY_MEDIUM"},
        [2] = {time = 0.6, sound = "CW_FAS2_GLOCK20_MAGOUT_EMPTY"},
        [3] = {time = 1.05, sound = "CW_FAS2_GLOCK20_MAGIN"},
        [4] = {time = 1.2, sound = "CW_FAS2_GLOCK20_SLIDESTOP"}
    },
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
SWEP.ViewModel = "models/weapons/view/pistols/c_glock20.mdl"
SWEP.WorldModel   = "models/weapons/w_pist_glock18.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 15
SWEP.Primary.DefaultClip	= 45
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "10mm Auto"

SWEP.FireDelay = 0.12
SWEP.FireSound = "CW_FAS2_GLOCK20_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_GLOCK20_FIRE_SUPP"
SWEP.Recoil = 1.2
SWEP.RecoilSide = 0.6
SWEP.NearWallDistance = 10

SWEP.HipSpread = 0.034
SWEP.AimSpread = 0.015
SWEP.VelocitySensitivity = 1.4
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.01
SWEP.SpreadCooldown = 0.2
SWEP.Shots = 1
SWEP.Damage = 28
SWEP.DeployTime = 0.45

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.9
SWEP.ReloadTime_Empty = 3.3
SWEP.ReloadHalt = 2.92
SWEP.ReloadHalt_Empty = 3.3

SWEP.ReloadFastTime = 2.51
SWEP.ReloadFastTime_Empty = 2.59
SWEP.ReloadFastHalt = 2.51
SWEP.ReloadFastHalt_Empty = 2.59
