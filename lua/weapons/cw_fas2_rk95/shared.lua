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
    SWEP.PrintName = "Rk 95"

    SWEP.IronsightPos = Vector(-4.4955, -4.053, 0.6555)
    SWEP.IronsightAng = Vector(-0.084, 0, 0)

    SWEP.CompM4Pos = Vector(-4.4955, -2, -0.015)
    SWEP.CompM4Ang = Vector(-0.084, 0, 0)

    SWEP.EoTechPos = Vector(-4.4955, -4, -0.84)
    SWEP.EoTechAng = Vector(0, 0, 0)

    SWEP.ACOGPos = Vector(-4.4955, -3, -0.84)
    SWEP.ACOGAng = Vector(-0.631, 0, 0)

    SWEP.AlternativePos = Vector(-1.5, 0, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-6, -1, -0.5)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -30)

    SWEP.MuzzleEffect = "muzzleflash_ak47"
    SWEP.Shell = "fas2_7.62x39"
    SWEP.SightWithRail = false
    SWEP.ELCANAxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.ForeGripOffsetCycle_Draw = 0
    SWEP.ForeGripOffsetCycle_Reload = 0.85
    SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
    SWEP.ForeGripOffsetCycle_Reload_Fast = 0.75
    SWEP.ForeGripOffsetCycle_Reload_Fast_Empty = 0.9

    SWEP.AttachmentModelsVM = {
        ["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "frame", pos = Vector(0, 2, 1), angle = Angle(0, 0, -90), size = Vector(0.75, 0.75, 0.75)},
        -- ["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "ak_frame", pos = Vector(-0.3, -2.5, -2.46), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8}
    }

    -- blegh
    SWEP.ForeGripHoldPos = {
        ["Left Impudicus Phalanges2"] = { pos = Vector(0, 0, 0), angle = Angle(0, -16.667, 0) },
        ["Left Polex Phalange3"] = { pos = Vector(0, 0, 0), angle = Angle(0, -38.889, 0) },
        ["Left Demonstratus Phalanges1"] = { spos = Vector(0, 0, 0), angle = Angle(0, -38.334, 0) },
        ["Left Annularis Phalanges1"] = { pos = Vector(0, 0, 0), angle = Angle(0, -14.445, 16.666) },
        ["Left Lower Arm 2"] = { pos = Vector(0, 0, 0), angle = Angle(-30, 0, 0) },
        ["Left Auricularis Phalanges1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5.556, -7.778, 0) },
        ["Left Polex Phalange2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-10, -43.334, 18.888) },
        ["Left Hand"] = { scale = Vector(1, 1, 1), pos = Vector(-1.2, 0.2, 0), angle = Angle(-20, -25.556, 90) },
        ["Left Annularis Phalanges2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -3.333, 0) },
        ["Left Polex Metacarpal"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-22.223, -6, -14) },
        ["Left Polex Phalange1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-7.778, 0.112, 0) }
    }
end

SWEP.MuzzleVelocity = 738 -- in meter/s

SWEP.MuzzleBGs = {main = 1, sd = 1, regular = 0}
SWEP.SightBGs = {main = 2, fas2_aimpoint = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -200},  atts = {"bg_fas2_compm4"}},
    [2] = {header = "Muzzle", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Handguard", offset = {-100, 100}, atts = {"md_foregrip"}},
    ["+reload"] = {header = "Ammo", offset = {500, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = "fire",
    fire_aim = "fire_scoped",
    fire_last = "fire_last",
    fire_aim_last = "fire_Last_scoped",
    reload = "reload",
    reload_empty = "reload_empty",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload_empty_nomen",
    idle = "idle",
    draw = "deploy",
    draw_empty = "deploy_empty",
    holster = "holster"
}

SWEP.SpeedDec = 20

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/rifles/c_rk95.mdl"
SWEP.WorldModel   = "models/weapons/w_rif_ak47.mdl" --"models/weapons/world/rifles/rk95.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "7.62x39MM"

SWEP.FireDelay = 0.08
SWEP.FireSound = "CW_FAS2_RK95_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_RK95_FIRE_SUPP"
SWEP.Recoil = 0.99
SWEP.RecoilSide = 0.53

SWEP.HipSpread = 0.05
SWEP.AimSpread = 0.0055
SWEP.VelocitySensitivity = 1.7
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.145
SWEP.Shots = 1
SWEP.Damage = 34
SWEP.DeployTime = 0.7

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.6
SWEP.ReloadTime_Empty = 2.2
SWEP.ReloadHalt = 3.7
SWEP.ReloadHalt_Empty = 2.8

SWEP.ReloadFastTime = 2.2
SWEP.ReloadFastTime_Empty = 2.8
SWEP.ReloadFastHalt = 2.35
SWEP.ReloadFastHalt_Empty = 2.95
