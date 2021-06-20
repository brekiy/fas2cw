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
    SWEP.PrintName = "AN-94"

    SWEP.IronsightPos = Vector(-3.288, -5.375, 1.395)
    SWEP.IronsightAng = Vector(0.589, 0, 0)

    SWEP.CompM4Pos = Vector(-3.3, -5.75, -0.465)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.EoTechPos = Vector(-3.3, -7.5, -0.7125)
    SWEP.EoTechAng = Vector(0, 0, 0)

    SWEP.PSOPos = Vector(-3.3165, -3.25, 0.3345)
    SWEP.PSOAng = Vector(0, 0, 0)

    SWEP.KobraPos = Vector(-3.24, -5, 0.12)
    SWEP.KobraAng = Vector()

    SWEP.AlternativePos = Vector(-2, -5, -1)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-5, -6, -0.5)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -30)

    SWEP.MuzzleEffect = "muzzleflash_ak74"
    SWEP.Shell = "fas2_5.45x39"
    SWEP.SightWithRail = false
    SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.PSO1AxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.ForeGripOffsetCycle_Draw = 0
    SWEP.ForeGripOffsetCycle_Reload = 0.7
    SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9

    SWEP.BackupSights = {
        ["bg_fas2_pso1"] = {
            [1] = Vector(-5, -4, -0.5),
            [2] = Vector(0, 0, -30),
        },
    }

    SWEP.AttachmentModelsVM = {
        ["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", pos = Vector(-0.3, 0.3, -1.5), angle = Angle(), size = Vector(0.5, 0.5, 0.5), bone = "ak_frame"},
        ["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "ak_frame", pos = Vector(-0.3, -2.5, -2.46), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8)},
        ["md_kobra"] = {model = "models/cw2/attachments/kobra.mdl", pos = Vector(0.6, 2, -1), angle = Angle(0, 180, 0), size = Vector(0.7, 0.7, 0.7), bone = "ak_frame"},
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
        ["Left Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0.1, -0.187, -1.5), angle = Angle(0, -25.556, 67.777) },
        ["Left Annularis Phalanges2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -3.333, 0) },
        ["Left Polex Metacarpal"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-12.223, -23.334, 0) },
        ["Left Polex Phalange1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-7.778, -21.112, 0) }
    }
end

SWEP.MuzzleVelocity = 900 -- in meter/s

SWEP.MuzzleBGs = {main = 1, sd = 1, regular = 0}
SWEP.SightBGs = {main = 2, fas2_eotech = 3, fas2_pso1 = 2, fas2_aimpoint = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -200},  atts = {"md_kobra", "bg_fas2_eotech", "bg_fas2_compm4", "bg_fas2_pso1"}},
    [2] = {header = "Muzzle", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Handguard", offset = {-100, 300}, atts = {"md_foregrip"}},
    ["+use"] = {header = "Perk", offset = {1200, 500}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {500, 500}, atts = {"am_magnum", "am_matchgrade"}}
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

-- render target shit
SWEP.PSO1Glass = Material("models/weapons/view/accessories/Lens_EnvSolid")
SWEP.SpeedDec = 30

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"hyperburst_auto", "2burst", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/rifles/c_an94.mdl"
SWEP.WorldModel   = "models/weapons/world/rifles/an94.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.45x39MM"

SWEP.FireDelay = 0.1
SWEP.FireSound = "CW_FAS2_AN94_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_AK74_FIRE_SUPP"
SWEP.Recoil = 0.8375
-- SWEP.BurstSpreadIncMul = 0.5
-- SWEP.BurstRecoilMul = 0.85

SWEP.SpecialBurstTable = {
    [0] = {
        fireDelayMult = 0.03333,
        recoilMult = 0.1,
        spreadPerShotMult = 0.1
    }
}

SWEP.HipSpread = 0.047
SWEP.AimSpread = 0.0037
SWEP.VelocitySensitivity = 1.8
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.153
SWEP.Shots = 1
SWEP.Damage = 24
SWEP.DeployTime = 0.8

SWEP.ReloadTime = 2.6
SWEP.ReloadTime_Empty = 3.3
SWEP.ReloadHalt = 2.75
SWEP.ReloadHalt_Empty = 3.45

SWEP.ReloadFastTime = 2.2
SWEP.ReloadFastTime_Empty = 3
SWEP.ReloadFastHalt = 2.35
SWEP.ReloadFastHalt_Empty = 3.15
