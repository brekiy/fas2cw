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
    SWEP.PrintName = "M60E3"

    SWEP.IronsightPos = Vector(-2.835, -5.474, 1.8)
    SWEP.IronsightAng = Vector(0.018, 0, 0)

    SWEP.CompM4Pos = Vector(-2.845, -3.25, 1.355)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.EoTechPos = Vector(-2.845, -5.56, 0.95)
    SWEP.EoTechAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-0.4, -1, 1.2)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.AlternativeCrouchPos = Vector(-0.9, -1.1, 1.4)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -5)

    SWEP.ViewModelMovementScale = 1.15

    SWEP.MuzzleEffect = "muzzleflash_6"
    SWEP.Shell = "fas2_7.62x51"
    SWEP.PosBasedMuz = false
    SWEP.ShellScale = 1
    -- SWEP.ShellOffsetMul = 1
    SWEP.ShellPosOffset = {x = 4, y = 0, z = 1}
    SWEP.SightWithRail = false
    SWEP.ELCANAxisAlign = {right = 0, up = 0, forward = 0}

    SWEP.AttachmentModelsVM = {
        -- ["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "ak_frame", pos = Vector(-0.3, -2.5, -2.46), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8}
    }

end

SWEP.MuzzleVelocity = 853 -- in meter/s

SWEP.BarrelBGs = {main = 4, sd = 1, regular = 0}
SWEP.SightBGs = {main = 3, fas2_eotech = 2, fas2_aimpoint = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -200},  atts = {"bg_fas2_eotech", "bg_fas2_compm4"}},
    [2] = {header = "Barrel", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    ["+reload"] = {header = "Ammo", offset = {800, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"fire1", "fire2", "fire3"},
    fire_aim = "fire_first",
    fire_last = "Fire_Last00",
    fire_aim_last = "idle00",
    reload = "reload",
    reload_empty = "reload_fired00",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload_fired00_nomen",
    idle = "idle_unfired",
    draw = "deploy",
    draw_empty = "Deploy00",
    holster = "holster"
}

SWEP.SpeedDec = 35

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/support/m60e3.mdl"
SWEP.WorldModel   = "models/weapons/w_m60e3.mdl"
SWEP.MuzzleAttachment = 1
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 100
SWEP.Primary.DefaultClip	= 200
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "7.62x51MM"

SWEP.FireDelay = 0.105
SWEP.FireSound = "CW_FAS2_M60_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_M60_FIRE_SUPP"
SWEP.Recoil = 1.2

SWEP.HipSpread = 0.05521
SWEP.AimSpread = 0.00425
SWEP.VelocitySensitivity = 2.4
SWEP.MaxSpreadInc = 0.035
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.14
SWEP.Shots = 1
SWEP.Damage = 50
SWEP.DeployAnimSpeed = 0.8
SWEP.DeployTime = 0.65

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 7.65
SWEP.ReloadTime_Empty = 7.65
SWEP.ReloadHalt = 7.75
SWEP.ReloadHalt_Empty = 7.75

SWEP.ReloadFastTime = 6.1
SWEP.ReloadFastTime_Empty = 6.1
SWEP.ReloadFastHalt = 6.25
SWEP.ReloadFastHalt_Empty = 6.25

SWEP.Chamberable = false
SWEP.BipodInstalled = true
