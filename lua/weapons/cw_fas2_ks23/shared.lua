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
    SWEP.PrintName = "KS-23"

    SWEP.MuzzleEffect = "muzzleflash_m3"
    SWEP.Shell = "fas2_23x75"
    -- a workaround for the shell delay stuff with manual action
    SWEP.NoShells = true
    SWEP.ManualShellDelay = 0.3
    SWEP.ManualShellDelayAim = 0.45
    SWEP.ShellPosOffset = {x = 2, y = 0, z = 2}

    SWEP.IronsightPos = Vector(-2.853, -6.2265, 1.8525)
    SWEP.IronsightAng = Vector(1.093, 0, 0)

    SWEP.AlternativePos = Vector(-1, -2, 0)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.AlternativeCrouchPos = Vector(-1.5, -3, 0.5)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -5)

    SWEP.CustomizationMenuScale = 0.02

    SWEP.AttachmentModelsVM = {
    }
end

SWEP.MuzzleVelocity = 400 -- in meter/s

SWEP.SightBGs = {main = 1, tritium = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {800, 0}, atts = {"bg_fas2_tritiumsights"}},
    ["+use"] = {header = "Perk", offset = {500, 400}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {-200, 400}, atts = {"am_fas2_ks23barrikada", "am_fas2_ks23shrap25"}}
}

SWEP.Animations = {
    fire = {"fire01", "fire02", "fire03"},
    fire_last = {"fire01", "fire02", "fire03"},
    fire_aim = "fire_iron",
    fire_aim_last = "fire_iron",
    cycle_gun = "pump",
    cycle_gun_aim = "pump_iron",
    cycle_gun_fast = "pump_nomen",
    cycle_gun_fast_aim = "pump_nomen_iron",
    reload_start = "start",
    reload_start_empty = "start_empty",
    reload_start_fast = "start_nomen",
    reload_start_fast_empty = "start_empty_nomen",
    insert = "insert",
    insert_fast = "insert_nomen",
    reload_end = "end_nopump",
    reload_end_fast = "end_nopump_nomen",
    idle = "idle",
    draw = "draw",
    holster = "holster"
}

SWEP.SpeedDec = 20

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "shotgun"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"pump"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 60
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/view/shotguns/c_ks23.mdl"
SWEP.WorldModel		= "models/weapons/w_shot_m3super90.mdl" --"models/weapons/world/shotguns/ks23.mdl"
SWEP.ManualCycling = true
SWEP.CycleDelay = 0.8
SWEP.CycleDelayAim = 0.83
SWEP.CycleDelayFast = 0.67
SWEP.CycleDelayFastAim = 0.62
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 3
SWEP.Primary.DefaultClip	= 21
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "23x75MMR"

SWEP.FireDelay = 0.5
SWEP.FireSound = "CW_FAS2_KS23_FIRE"
SWEP.Recoil = 3.5
SWEP.RecoilSide = 2.3

SWEP.HipSpread = 0.04
SWEP.AimSpread = 0.012
SWEP.VelocitySensitivity = 1.5
SWEP.MaxSpreadInc = 0.02
SWEP.ClumpSpread = 0.025
SWEP.SpreadPerShot = 0.017
SWEP.SpreadCooldown = 0.17
SWEP.Shots = 9
SWEP.Damage = 21
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

-- function SWEP:IndividualThink()
--     self:ManualAction()
--     self:FAS2ShotgunReload()
-- end