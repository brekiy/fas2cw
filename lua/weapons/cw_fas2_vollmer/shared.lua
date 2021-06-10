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
    SWEP.PrintName = "Vollmer HK51-B"
    -- SWEP.CSMuzzleFlashes = true

    SWEP.IronsightPos = Vector(-1.8625, -3.646, 0.775)
    SWEP.IronsightAng = Vector(0.018, 0, 0)

    SWEP.CompM4Pos = Vector(-1.8625, -1.5, 0.055)
    SWEP.CompM4Ang = Vector(0.6, 0, 0)

    SWEP.EoTechPos_Bipod = Vector(-2.591, -4.874, 0.315)
    SWEP.EoTechAng_Bipod = Vector(0, 0, 0)

    SWEP.EoTechPos = Vector(-3.516, -6, 1.162)
    SWEP.EoTechAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-0.4, 0, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-1, -0.6, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -10)

    SWEP.ViewModelMovementScale = 1.15

    SWEP.MuzzleEffect = "muzzleflash_6"
    SWEP.Shell = "fas2_7.62x51"
    SWEP.PosBasedMuz = false
    -- SWEP.ShellScale = 0.55
    -- SWEP.ShellOffsetMul = 1
    SWEP.ShellPosOffset = {x = 3, y = -2, z = 5}
    SWEP.SightWithRail = false
    SWEP.ELCANAxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.ForeGripOffsetCycle_Draw = 0
    SWEP.ForeGripOffsetCycle_Reload = 0.65
    SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9

    SWEP.AttachmentModelsVM = {
        -- ["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "ak_frame", pos = Vector(-0.3, -2.5, -2.46), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8}
    }

end

SWEP.MuzzleVelocity = 880 -- in meter/s

SWEP.BarrelBGs = {main = 3, sd = 1, regular = 0}
SWEP.SightBGs = {main = 4, fas2_aimpoint = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -200},  atts = {"bg_fas2_compm4"}},
    [2] = {header = "Barrel", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    [5] = {header = "Perk", offset = {500, 100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {800, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"fire1", "fire2", "fire3"},
    fire_aim = "fire1_scoped",
    fire_last = "fire_last01",
    fire_aim_last = "fire_last01",
    reload = "reload",
    reload_empty = "reload00",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload00_nomen",
    idle = "idle",
    draw = "deploy",
    draw_empty = "Deploy00",
    holster = "holster"
}

SWEP.SpeedDec = 25

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/support/mc51b.mdl"
SWEP.WorldModel   = "models/weapons/w_mc51.mdl"
SWEP.MuzzleAttachment = 1
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 100
SWEP.Primary.DefaultClip	= 200
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "7.62x51MM"

SWEP.FireDelay = 0.077945
SWEP.FireSound = "CW_FAS2_HK51_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_HK51_FIRE_SUPP"
SWEP.Recoil = 1.3

SWEP.HipSpread = 0.045
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 1.6
SWEP.MaxSpreadInc = 0.04151
SWEP.SpreadPerShot = 0.017
SWEP.SpreadCooldown = 0.17
SWEP.Shots = 1
-- short barrel kills the 7.62 :(
SWEP.Damage = 45
SWEP.DeployAnimSpeed = 0.8
SWEP.DeployTime = 0.7

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 6.75
SWEP.ReloadTime_Empty = 7.15
SWEP.ReloadHalt = 6.9
SWEP.ReloadHalt_Empty = 7.4
SWEP.ReloadFastTime = 5.3
SWEP.ReloadFastTime_Empty = 5.69
SWEP.ReloadFastHalt = 5.45
SWEP.ReloadFastHalt_Empty = 5.85
SWEP.Chamberable = false
