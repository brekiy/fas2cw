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
    SWEP.PrintName = "M870"

    SWEP.MuzzleEffect = "muzzleflash_m3"
    SWEP.Shell = "fas2_12g_buck"
    -- a workaround for the shell delay stuff with manual action
    SWEP.NoShells = true
    SWEP.ManualShellDelay = 0.3
    SWEP.ManualShellDelayAim = 0.45
    SWEP.ShellPosOffset = {x = 2, y = 0, z = 2}

    SWEP.IronsightPos = Vector(-2.853, -6.2265, 1.8525)
    SWEP.IronsightAng = Vector(1.093, 0, 0)

    SWEP.AlternativePos = Vector(-0.5, -2, 0)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.AlternativeCrouchPos = Vector(-1.5, -3, 0.5)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -5)

    SWEP.CustomizationMenuScale = 0.02

    SWEP.AttachmentModelsVM = {
    }
end

SWEP.MuzzleVelocity = 360 -- in meter/s


SWEP.Attachments = {
    ["+use"] = {header = "Perk", offset = {500, 400}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {-200, 400}, atts = {"am_slugrounds", "am_flechetterounds"}}
}

SWEP.Animations = {
    fire = "fire02",
    fire_aim = "fire01_scoped",
    cycle_gun = "pump02",
    cycle_gun_aim = "pump01_scoped",
    cycle_gun_fast = "pump01_nomen",
    cycle_gun_fast_aim = "pump01_nomen_scoped",
    reload_start = "reload_start",
    reload_start_empty = "reload_start_empty",
    reload_start_fast = "reload_start_nomen",
    reload_start_fast_empty = "reload_start_empty_nomen",
    insert = "reload",
    insert_fast = "reload_nomen",
    reload_end = "reload_end",
    reload_end_fast = "reload_end_nomen",
    idle = "reload_end",
    draw = "draw",
    holster = "holster"
}

SWEP.SpeedDec = 15

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "shotgun"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"pump"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 60
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/view/shotguns/c_870.mdl"
SWEP.WorldModel		= "models/weapons/world/shotguns/ks23.mdl"
SWEP.ManualCycling = true
SWEP.CycleDelay = 0.67
SWEP.CycleDelayAim = 0.67
SWEP.CycleDelayFast = 0.5
SWEP.CycleDelayFastAim = 0.5
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 8
SWEP.Primary.DefaultClip	= 48
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "12 Gauge"

SWEP.FireDelay = 0.5
SWEP.FireSound = "CW_FAS2_M870_FIRE"
SWEP.Recoil = 2.5

SWEP.HipSpread = 0.04
SWEP.AimSpread = 0.011
SWEP.VelocitySensitivity = 1.4
SWEP.MaxSpreadInc = 0.02
SWEP.ClumpSpread = 0.014
SWEP.SpreadPerShot = 0.015
SWEP.SpreadCooldown = 0.2
SWEP.Shots = 8
SWEP.Damage = 17
SWEP.DeployTime = 1
SWEP.NearWallDistance = 40

SWEP.ReloadStartTime = 0.4
SWEP.ReloadStartFastTime = 0.3
SWEP.ReloadStartTime_Empty = 2.1
SWEP.ReloadStartFastTime_Empty = 2.1
SWEP.InsertShellTime = 1
SWEP.InsertShellFastTime = 0.75
SWEP.ReloadFinishWait = 1.5
SWEP.ReloadFinishFastWait = 1
SWEP.PumpMidReloadWait = 0.7
SWEP.ShotgunReload = true
SWEP.Chamberable = true
SWEP.ShotgunReloadEmptyInsert = true
