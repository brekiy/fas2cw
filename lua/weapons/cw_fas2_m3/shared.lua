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
    SWEP.PrintName = "M3"

    SWEP.IronsightPos = Vector(-3.3015, -6.646, 1.0125)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.CompM4Pos = Vector(-3.2715, -3.75, -0.28)
    SWEP.CompM4Ang = Vector()

    SWEP.EoTechPos = Vector(-3.3, -7.5, -0.15)
    SWEP.EoTechAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-0.75, 0, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-5, -1, -1)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -30)

    SWEP.MuzzleEffect = "muzzleflash_6"
    SWEP.Shell = "fas2_7.62x39"
    SWEP.SightWithRail = false

    SWEP.AttachmentModelsVM = {
    }
end

SWEP.MuzzleVelocity = 738 -- in meter/s

SWEP.MuzzleBGs = {main = 1, sd = 1, regular = 0}
SWEP.SightBGs = {main = 2, fas2_aimpoint = 1, regular = 0}
SWEP.RailBGs = {main = 2, on = 2, off = 0}

SWEP.Attachments = {
    -- [1] = {header = "Sight", offset = {400, -200},  atts = {"bg_fas2_pso1",}},
    [2] = {header = "Muzzle", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Handguard", offset = {-100, 100}, atts = {"md_foregrip"}},
    ["+use"] = {header = "Perk", offset = {500, 100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {500, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"fire1", "fire2", "fire3"},
    fire_aim = "fire1_scoped",
    reload_start = "reload_start",
    reload_start_empty = "reload_start_empty",
    reload_start_fast = "start_nomen",
    reload_start_fast_empty = "start_empty_nomen",
    insert = "insert",
    insert_fast = "insert_nomen",
    reload_end = "end_nopump",
    reload_end_fast = "end_nopump_nomen",
    idle = "end_nopump",
    draw = "draw",
    holster = "holster"
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
SWEP.ViewModel = "models/weapons/view/shotguns/c_m3s90.mdl"
SWEP.WorldModel   = "models/weapons/w_rif_ak47.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 8
SWEP.Primary.DefaultClip	= 64
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "12 Gauge"

SWEP.FireDelay = 0.1
SWEP.FireSound = "CW_FAS2_AK47_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_AK47_FIRE_SUPP"
SWEP.Recoil = 1.025

SWEP.HipSpread = 0.048
SWEP.AimSpread = 0.006
SWEP.ClumpSpread = 0.0185
SWEP.VelocitySensitivity = 1.6
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.0075
SWEP.SpreadCooldown = 0.145
SWEP.Shots = 8
SWEP.Damage = 17
SWEP.DeployTime = 0.6

SWEP.ReloadTime = 2.6
SWEP.ReloadTime_Empty = 3.3
SWEP.ReloadHalt = 2.75
SWEP.ReloadHalt_Empty = 3.45

SWEP.ReloadFastTime = 2.2
SWEP.ReloadFastTime_Empty = 3
SWEP.ReloadFastHalt = 2.35
SWEP.ReloadFastHalt_Empty = 3.15

SWEP.ReloadStartTime = 0.4
SWEP.ReloadStartFastTime = 0.3
SWEP.ReloadStartTime_Empty = 2.1
SWEP.ReloadStartFastTime_Empty = 2.1
SWEP.ShotgunReload = true
SWEP.Chamberable = true
SWEP.ShotgunReloadEmptyInsert = true
