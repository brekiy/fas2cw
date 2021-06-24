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
    SWEP.Shell = "fas2_12g_buck"
    SWEP.NoShells = true

    SWEP.IronsightPos = Vector(-3, -4.151, 2.76)
    SWEP.IronsightAng = Vector(0.55, 0, 0)

    SWEP.AlternativePos = Vector(0, -2, 0)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.AlternativeCrouchPos = Vector(-3, -2, 0.5)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -25)

    SWEP.AttachmentModelsVM = {
    }

    SWEP.LuaVMRecoilAxisMod = {vert = 1.5, hor = 2, roll = 1, forward = 1, pitch = 1}

end

SWEP.MuzzleVelocity = 381 -- in meter/s

SWEP.Attachments = {
    ["+use"] = {header = "Perk", offset = {500, -100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {-200, 100}, atts = {"am_slugrounds", "am_flechetterounds"}}
}

SWEP.Animations = {
    fire = "fire01",
    fire_last = "fire01",
    fire_aim = "fire_iron",
    fire_aim_last = "fire_iron",
    reload = "reload",
    reload_empty = "reload_empty",
    idle = "idle_iron",
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

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/view/shotguns/c_toz34.mdl"
SWEP.WorldModel		= "models/weapons/world/shotguns/ks23.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 2
SWEP.Primary.DefaultClip	= 20
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "12 Gauge"

SWEP.FireDelay = 0.12
SWEP.FireSound = "CW_FAS2_KS23_FIRE"
SWEP.Recoil = 1.4
SWEP.RecoilSide = 0.93
SWEP.FireAnimSpeed = 1.2

SWEP.HipSpread = 0.042
SWEP.AimSpread = 0.0125
SWEP.VelocitySensitivity = 1.8
SWEP.MaxSpreadInc = 0.01
SWEP.ClumpSpread = 0.0115
SWEP.SpreadPerShot = 0.015
SWEP.SpreadCooldown = 0.15
SWEP.Shots = 8
SWEP.Damage = 17
SWEP.DeployTime = 1
SWEP.NearWallDistance = 30

SWEP.ReloadSpeed = 1.2
SWEP.ReloadTime = 5.6
SWEP.ReloadTime_Empty = 4.6
SWEP.ReloadHalt = 5.6
SWEP.ReloadHalt_Empty = 4.6
SWEP.FastReloadVanilla = true
SWEP.Chamberable = false

