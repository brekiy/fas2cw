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
    SWEP.PrintName = "M82"

    SWEP.IronsightPos = Vector(-3.19, -4.646, 1.48)
    SWEP.IronsightAng = Vector(0.3, 0, 0)

    SWEP.CompM4Pos = Vector(-3.2715, -3.75, -0.28)
    SWEP.CompM4Ang = Vector()

    SWEP.EoTechPos = Vector(-3.19, -7.5, 0.7)
    SWEP.EoTechAng = Vector()

    SWEP.ShortDotPos = Vector(-3.312, -5.5, -0.05)
    SWEP.ShortDotAng = Vector(0, 0, 0)

    SWEP.LeupoldPos = Vector(-3.19, -5.5, 1.08)
    SWEP.LeupoldAng = Vector()

    SWEP.AlternativePos = Vector(-0.75, -1, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-2, -2, -1)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -5)

    SWEP.MuzzleEffect = "muzzleflash_6"
    SWEP.Shell = "fas2_50bmg"
    SWEP.ShellPosOffset = {x = 0, y = 0, z = -5}
    SWEP.SightWithRail = false
    SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.LeupoldAxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}

    SWEP.BackupSights = {
    }

    SWEP.AttachmentModelsVM = {
        ["md_eotech"] = {model = "models/wystan/attachments/2otech557sight.mdl", pos = Vector(0.3, -13, -7.7), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), bone = "M82_Body"},
    }
    SWEP.CustomizationMenuScale = 0.02
end

SWEP.MuzzleVelocity = 738 -- in meter/s

SWEP.SightBGs = {main = 1, none = 2, fas2_leupold = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {500, 0},  atts = {"md_eotech", "bg_fas2_leupold",}},
    ["+use"] = {header = "Perk", offset = {1100, 500}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {500, 500}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"fire", "fire_2", "fire_3"},
    fire_aim = "",--{"fire", "fire_2", "fire_3"},
    fire_bipod = "bipod_fire",
    fire_bipod_aim = "bipod_fire",
    reload = "reload",
    reload_empty = "reload_empty",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload_empty_nomen",
    idle = "idlee",
    draw = "deploy",
    holster = "holster",
    bipod_down = "bipod_dn",
    bipod_up = "bipod_up",
}

SWEP.SpeedDec = 40

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.UseHands = true

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/support/c_m82.mdl"
SWEP.WorldModel   = "models/weapons/w_rif_ak47.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 40
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= ".50 BMG"

SWEP.FireDelay = 0.3
SWEP.FireSound = "CW_FAS2_M82_FIRE"
SWEP.Recoil = 6

SWEP.HipSpread = 0.06
SWEP.AimSpread = 0.0035
SWEP.VelocitySensitivity = 3
SWEP.MaxSpreadInc = 0.2
SWEP.SpreadPerShot = 0.04
SWEP.SpreadCooldown = 0.25
SWEP.Shots = 1
SWEP.Damage = 100
SWEP.DeployTime = 0.6

SWEP.ReloadTime = 4.94
SWEP.ReloadTime_Empty = 6.69
SWEP.ReloadHalt = 4.94
SWEP.ReloadHalt_Empty = 6.69

SWEP.ReloadFastTime = 3.34
SWEP.ReloadFastTime_Empty = 4.66
SWEP.ReloadFastHalt = 3.34
SWEP.ReloadFastHalt_Empty = 4.66

SWEP.BipodInstalled = true
SWEP.BipodFireAnim = false
SWEP.BipodDeployTime = 3.33
