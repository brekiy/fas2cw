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
    SWEP.PrintName = "AKS-74"

    SWEP.IronsightPos = Vector(-3.3015, -5.646, 1.0125)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.CompM4Pos = Vector(-3.3, -3.75, -0.465)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.EoTechPos = Vector(-3.3, -7.5, -0.15)
    SWEP.EoTechAng = Vector(0, 0, 0)

    SWEP.KobraPos = Vector(-3.3125, -5.224, 0.055)
    SWEP.KobraAng = Vector(0.717, -0.638, 0)

    SWEP.PSOPos = Vector(-3, -4.5, 0.7)
    SWEP.PSOAng = Vector(0, 0, 0)

    SWEP.ShortDotPos = Vector(-2, -4, -0.45)
    SWEP.ShortDotAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-0.75, 0, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-1.25, -1, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -2)

    SWEP.MuzzleEffect = "muzzleflash_ak74"
    SWEP.Shell = "fas2_5.45x39"
    SWEP.SightWithRail = false
    SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.PSO1AxisAlign = {right = 0, up = 0, forward = 90}
    SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}
    -- TODO: add offset for fastreload 
    SWEP.ForeGripOffsetCycle_Draw = 0
    SWEP.ForeGripOffsetCycle_Reload = 0.8
    SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9

    SWEP.BackupSights = {
        ["md_pso1"] = {
            [1] = Vector(-4.5, -2, 0.5),
            [2] = Vector(0, 0, -30),
        },
    }

    SWEP.AttachmentModelsVM = {
        ["md_rail"] = {model = "models/wystan/attachments/akrailmount.mdl", bone = "ak_frame", pos = Vector(-0.1, 1.5, 1), angle = Angle(0, 0, 0), size = Vector(0.8, 0.8, 0.8)},
        ["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", pos = Vector(-0.46, -3.5, -1.2), angle = Angle(), size = Vector(0.75, 0.75, 0.5), bone = "ak_frame"},
        ["md_kobra"] = {model = "models/cw2/attachments/kobra.mdl", pos = Vector(0.6, 2, -1), angle = Angle(0, 180, 0), size = Vector(0.7, 0.7, 0.7), bone = "ak_frame"},
        ["md_pso1"] = {model = "models/cw2/attachments/pso.mdl", bone = "ak_frame", pos = Vector(0.25, -1, 0), angle = Angle(0, 180, 0), size = Vector(0.7, 0.7, 0.7)},
    }

    -- blegh
    SWEP.ForeGripHoldPos = {
        ["Left Impudicus Phalanges2"] = { pos = Vector(0, 0, 0), angle = Angle(0, -16.667, 0) },
        ["Left Polex Phalange3"] = { pos = Vector(0, 0, 0), angle = Angle(0, -38.889, 0) },
        ["Left Demonstratus Phalanges1"] = { spos = Vector(0, 0, 0), angle = Angle(0, -38.334, 0) },
        ["Left Annularis Phalanges1"] = { pos = Vector(0, 0, 0), angle = Angle(0, -14.445, 16.666) },
        ["Left Lower Arm 2"] = { pos = Vector(0, 0, 0), angle = Angle(12, 0, 0) },
        ["Left Auricularis Phalanges1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5.556, -7.778, 0) },
        ["Left Polex Phalange2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-10, -43.334, 18.888) },
        ["Left Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0.1, -0.187, -1), angle = Angle(0, -25.556, 67.777) },
        ["Left Annularis Phalanges2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -3.333, 0) },
        ["Left Polex Metacarpal"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-12.223, -23.334, 0) },
        ["Left Polex Phalange1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-7.778, -21.112, 0) }
    }
end

SWEP.MuzzleVelocity = 880 -- in meter/s

SWEP.BarrelBGs = {main = 1, sd = 1, regular = 0}
SWEP.SightBGs = {main = 2, fas2_aimpoint = 1, regular = 0}
SWEP.RailBGs = {main = 2, on = 2, off = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -200},  atts = {"md_kobra", "bg_fas2_compm4", "md_pso1",}},
    [2] = {header = "Barrel", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Handguard", offset = {-100, 100}, atts = {"md_foregrip"}},
    -- [4] = {header = "Magazine", offset = {-400, 0}, atts = {"bg_ak74rpkmag"}},
    [5] = {header = "Perk", offset = {500, 100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {500, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = "fire",
    fire_aim = "fire_scoped",
    reload = "reload",
    reload_empty = "reload_empty",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload_empty_nomen",
    idle = "idle",
    draw = "deploy",
    holster = "holster"
}

SWEP.SpeedDec = 30

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 50
SWEP.ViewModel = "models/weapons/view/rifles/c_ak74.mdl"
SWEP.WorldModel   = "models/weapons/w_rif_ak47.mdl"
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.45x39MM"

SWEP.FireDelay = 0.092307692307692
SWEP.FireSound = "CW_FAS2_AK74_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_AK74_FIRE_SUPP"
SWEP.Recoil = 0.7

SWEP.HipSpread = 0.0475
SWEP.AimSpread = 0.0045
SWEP.VelocitySensitivity = 1.75
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.14
SWEP.Shots = 1
SWEP.Damage = 23
SWEP.DeployTime = 0.8

SWEP.ReloadTime = 2.6
SWEP.ReloadTime_Empty = 3.3
SWEP.ReloadHalt = 2.75
SWEP.ReloadHalt_Empty = 3.45

SWEP.ReloadFastTime = 2.2
SWEP.ReloadFastTime_Empty = 3
SWEP.ReloadFastHalt = 2.35
SWEP.ReloadFastHalt_Empty = 3.15
