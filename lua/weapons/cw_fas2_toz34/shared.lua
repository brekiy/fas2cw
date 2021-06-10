-- TODO
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
    SWEP.PrintName = "TOZ-34"

    SWEP.MuzzleEffect = "muzzleflash_m3"
    SWEP.PosBasedMuz = false
    SWEP.SnapToGrip = false
    SWEP.ShellOffsetMul = 1
    SWEP.Shell = "fas2_23x75"
    SWEP.NoShells = true
    -- SWEP.ShellPosOffset = {x = 2, y = 0, z = 2}

    SWEP.IronsightPos = Vector(-1.902, -4.151, 1.235)
    SWEP.IronsightAng = Vector(1.093, 0, 0)

    SWEP.AlternativePos = Vector(0, -2, 0)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.AlternativeCrouchPos = Vector(0, -2, 0.5)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -5)

    SWEP.ReticleInactivityPostFire = 0.9

    SWEP.AttachmentModelsVM = {
    }

    SWEP.LuaVMRecoilAxisMod = {vert = 1.5, hor = 2, roll = 1, forward = 1, pitch = 1}

end

SWEP.MuzzleVelocity = 400 -- in meter/s


SWEP.Attachments = {
    -- [1] = {header = "Sight", offset = {800, -300}, atts = {"bg_fas2_tritiumsights"}},
    [5] = {header = "Perk", offset = {500, -100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {-200, 100}, atts = {"am_slugrounds", "am_flechetterounds"}}
}

SWEP.Animations = {
    fire = "fire01",
    fire_aim = "fire_iron",
    reload = "reload",
    reload_empty = "reload_empty",
    idle = "idle",
    draw = "draw",
    holster = "holster"
}


SWEP.SpeedDec = 20

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "shotgun"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 60
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/view/shotguns/toz34.mdl"
SWEP.WorldModel		= "models/weapons/world/shotguns/ks23.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 2
SWEP.Primary.DefaultClip	= 12
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "12 Gauge"

SWEP.FireDelay = 0.2
SWEP.FireSound = "CW_FAS2_KS23_FIRE"
SWEP.Recoil = 3

SWEP.HipSpread = 0.06
SWEP.AimSpread = 0.05
SWEP.VelocitySensitivity = 1.8
SWEP.MaxSpreadInc = 0.01
SWEP.ClumpSpread = 0.02
SWEP.SpreadPerShot = 0.017
SWEP.SpreadCooldown = 0.15
SWEP.Shots = 9
SWEP.Damage = 8
SWEP.DeployTime = 1
SWEP.NearWallDistance = 30

SWEP.ReloadTime = 5.6
SWEP.ReloadTime_Empty = 4.6
SWEP.ReloadHalt = 5.6
SWEP.ReloadHalt_Empty = 4.6
SWEP.FastReloadVanilla = true
-- SWEP.ReloadFastHalt = 1.6
-- SWEP.ReloadFastHalt_Empty = 2
