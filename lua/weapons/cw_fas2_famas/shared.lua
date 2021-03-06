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
    SWEP.PrintName = "FAMAS"

    SWEP.IronsightPos = Vector(-2.9835, -5.487, 1.05)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.CompM4Pos = Vector(-2.9835, -3, -0.8775)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.ShortDotPos = Vector(-2.9835, -7.5, -0.8775)
    SWEP.ShortDotAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-1, -2, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-5, -3, -0.5)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -40)

    SWEP.MuzzleEffect = "muzzleflash_6"
    SWEP.Shell = "fas2_5.56x45"
    SWEP.SightWithRail = true
    SWEP.SchmidtShortDotAxisAlignNew = {right = 0, up = 0, forward = 0}
    SWEP.CustomizationMenuScale = 0.013
    SWEP.AttachmentModelsVM = {
        ["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", pos = Vector(-2.8, 7, -5.7), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), bone = "famas"},
    }
end

SWEP.MuzzleVelocity = 930 -- in meter/s
SWEP.MuzzleBGs = {main = 1, sd = 1, regular = 0}
SWEP.SightBGs = {main = 2, fas2_compm4 = 1, regular = 0}
SWEP.RailBGs = {main = 3, on = 1, off = 0}
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -500},  atts = {"bg_fas2_compm4", "md_schmidt_shortdot"}},
    [2] = {header = "Muzzle", offset = {-200, -250}, atts = {"bg_fas2_suppressor"}},
    ["+use"] = {header = "Perk", offset = {700, 250}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {0, 250}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = "shoot1",
    fire_aim = "shoot_ironsight",
    fire_last = "shoot_last",
    fire_aim_last = "shoot_ironsight_last",
    reload = "reload",
    reload_empty = "reload_empty",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload_empty_nomen",
    idle = "idle",
    draw = "draw",
    draw_empty = "draw_empty",
    holster = "holster"
}

SWEP.SpeedDec = 20

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "3burst", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/rifles/c_famas.mdl"
SWEP.WorldModel   = "models/weapons/w_rif_famas.mdl" --"models/weapons/w_famas.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 25
SWEP.Primary.DefaultClip	= 75
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 0.06
SWEP.FireSound = "CW_FAS2_FAMAS_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_FAMAS_FIRE_SUPP"
SWEP.Recoil = 0.85
SWEP.RecoilSide = 0.53

SWEP.HipSpread = 0.044
SWEP.AimSpread = 0.0035
SWEP.VelocitySensitivity = 1.55
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.154
SWEP.Shots = 1
SWEP.Damage = 28
SWEP.DeployTime = 0.75

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.4
SWEP.ReloadTime_Empty = 3.3
SWEP.ReloadHalt = 2.55
SWEP.ReloadHalt_Empty = 3.45

SWEP.ReloadFastTime = 2
SWEP.ReloadFastTime_Empty = 2.7
SWEP.ReloadFastHalt = 2.1
SWEP.ReloadFastHalt_Empty = 2.8
