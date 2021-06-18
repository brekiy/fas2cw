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
    SWEP.PrintName = "Sterling MK7A4"

    SWEP.IronsightPos = Vector(-4.292325, -4, 2.17875)
    SWEP.IronsightAng = Vector(-0.05, 0.015, 0)

    SWEP.AlternativePos = Vector(-0.5, -1, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-4, -1, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -15)

    SWEP.MuzzleEffect = "muzzleflash_OTS"
    SWEP.Shell = "fas2_9x19"
    SWEP.ShellPosOffset = {x = 3, y = 0, z = -3}
    SWEP.AttachmentModelsVM = {
    }

end

SWEP.MuzzleVelocity = 280 -- in meter/s

SWEP.MuzzleBGs = {main = 1, sd = 1, regular = 0}

SWEP.Attachments = {
    [2] = {header = "Muzzle", offset = {-300, -300}, atts = {"bg_fas2_suppressor"}},
    -- [3] = {header = "Magazine", offset = {-200, 200}, atts = {"bg_fas2_mp5k30mag"}},
    ["+use"] = {header = "Perk", offset = {500, -300}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {400, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

-- man i wish the animators named their stuff consistently
SWEP.Animations = {
    fire = {"fire", "fire2", "fire3"},
    fire_aim = "shoot_scoped",
    fire_last = "fire_last",
    fire_aim_last = "fire_last_scoped",
    reload = "reload",
    reload_empty = "reload_empty",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload_empty_nomen",
    draw = "deploy",
    draw_empty = "deploy_empty",
    holster = "holster"
}

SWEP.SpeedDec = 15

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 55
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/smgs/c_mk7a4.mdl"
SWEP.WorldModel   = "models/weapons/b_sterling.mdl"
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 17
SWEP.Primary.DefaultClip	= 68
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x19MM"
SWEP.Chamberable = false

SWEP.FireDelay = 0.1
SWEP.FireSound = "CW_FAS2_STERLING_MK7_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_STERLING_MK7_FIRE_SUPP"
SWEP.Recoil = 0.72

SWEP.HipSpread = 0.045
SWEP.AimSpread = 0.0136
SWEP.VelocitySensitivity = 1.2
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.008
SWEP.SpreadCooldown = 0.14
SWEP.Shots = 1
SWEP.Damage = 18
SWEP.DeployTime = 0.6

SWEP.ReloadTime = 2.5
SWEP.ReloadTime_Empty = 3.77
SWEP.ReloadHalt = 2.6
SWEP.ReloadHalt_Empty = 3.8

SWEP.ReloadFastTime = 1.8
SWEP.ReloadFastTime_Empty = 2.37
SWEP.ReloadFastHalt = 1.8
SWEP.ReloadFastHalt_Empty = 2.4
