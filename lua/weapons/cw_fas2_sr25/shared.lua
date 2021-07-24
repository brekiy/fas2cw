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
    SWEP.PrintName = "SR-25"

    SWEP.IronsightPos = Vector(-3.05, -3, 0.57)
    SWEP.IronsightAng = Vector()

    SWEP.CompM4Pos = Vector(-3, -3.75, -0.28)
    SWEP.CompM4Ang = Vector()

    SWEP.EoTechPos = Vector(-3, -7.5, -0.15)
    SWEP.EoTechAng = Vector(0, 0, 0)

    SWEP.ShortDotPos = Vector(-3.065, -6, 1.13)
    SWEP.ShortDotAng = Vector()

    SWEP.LeupoldPos = Vector(-3, -4.5, 0.7)
    SWEP.LeupoldAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-0.75, 0, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-5, -1, -1)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -30)

    SWEP.MuzzleEffect = "muzzleflash_6"
    SWEP.Shell = "fas2_7.62x51"
    SWEP.SightWithRail = false
    SWEP.SchmidtShortDotAxisAlignNew = {right = 0, up = 0, forward = 0}
    SWEP.ACOGAxisAlignNew = {right = 0, up = 0, forward = 0}
    SWEP.LeupoldAxisAlignNew = {right = 0, up = 0, forward = 0}

    SWEP.BackupSights = {
    }

    SWEP.AttachmentModelsVM = {
        ["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", pos = Vector(-4, 3.5, 0.38), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), bone = "Dummy01"},
    }

end

SWEP.MuzzleVelocity = 787 -- in meter/s

SWEP.MuzzleBGs = {main = 1, sd = 1, regular = 0}
SWEP.BipodBGs = {main = 2, on = 1, off = 0}
SWEP.SightBGs = {main = 3, none = 2, fas2_leupold = 1, regular = 0}
SWEP.MagBGs = {main = 4, rnd20 = 1, off = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -200},  atts = {"md_schmidt_shortdot", "bg_fas2_leupold",}},
    [2] = {header = "Muzzle", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Handguard", offset = {-200, 250}, atts = {"bg_fas2_bipod"}},
    [4] = {header = "Magazine", offset = {100, 600}, atts = {"bg_fas2_m2120mag"}},
    ["+use"] = {header = "Perk", offset = {1200, 500}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {700, 600}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"fire1", "fire2", "fire3"},
    fire_last = "fire_last",
    fire_aim = "fire2",
    fire_aim_last = "fire_last",
    fire_bipod = {"bipod_fire1", "bipod_fire2", "bipod_fire3"},
    fire_bipod_last = "bipod_fire_last",
    fire_bipod_aim = "bipod_fire3_scoped",
    fire_bipod_aim_last = "bipod_fire_last_scoped",
    reload = "reload",
    reload_bipod = "bipod_reload",
    reload_empty = "reload_empty",
    reload_fast = "reload_nomen",
    reload_fast_bipod = "bipod_reload_nomen",
    reload_fast_empty = "reload_empty_nomen",
    reload_fast_bipod_empty = "bipod_reload_empty_nomen",
    idle = "idle",
    draw = "deploy",
    holster = "holster",
    bipod_down = "bipod_down",
    bipod_up = "bipod_up",
}

SWEP.SpeedDec = 20

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_fas2_base"

SWEP.UseHands = true

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/support/c_sr25.mdl"
SWEP.WorldModel   = "models/weapons/w_snip_sg550.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 40
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "7.62x51MM"

SWEP.FireDelay = 0.12
SWEP.FireSound = "CW_FAS2_SR25_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_SR25_FIRE_SUPP"
SWEP.Recoil = 1.1
SWEP.RecoilSide = 0.53
SWEP.FireAnimSpeed = 1.75

SWEP.HipSpread = 0.05
SWEP.AimSpread = 0.0006
SWEP.VelocitySensitivity = 2.1
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.01
SWEP.SpreadCooldown = 0.15
SWEP.Shots = 1
SWEP.Damage = 51
SWEP.DeployTime = 0.6

SWEP.ReloadTime = 2.6
SWEP.ReloadTime_Empty = 3.3
SWEP.ReloadHalt = 2.75
SWEP.ReloadHalt_Empty = 3.45

SWEP.ReloadFastTime = 2.2
SWEP.ReloadFastTime_Empty = 3
SWEP.ReloadFastHalt = 2.35
SWEP.ReloadFastHalt_Empty = 3.15

SWEP.BipodFireAnim = false
SWEP.BipodDeployTime = 0.9
