AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

CustomizableWeaponry:registerAmmo(".380 ACP", ".380 CAP Rounds", 9, 17.3)

if CLIENT then
    SWEP.Category = "CW 2.0 FA:S 2 Weapons"
    SWEP.Author			= "brekiy"
    SWEP.Contact		= ""
    SWEP.Purpose		= ""
    SWEP.Instructions	= ""

    SWEP.DrawCrosshair = false
    SWEP.PrintName = "MAC-11"

    SWEP.IronsightPos = Vector(-3.0465, -5.177, 0.441)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.CompM4Pos = Vector(-3.474, -2, 0.42)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-0.8, -1, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-5.4, -1, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -40)

    SWEP.MuzzleEffect = "muzzleflash_smg"
    SWEP.Shell = "fas2_380acp"
    SWEP.ShellPosOffset = {x = -1.5, y = 0, z = -3}
    SWEP.SightWithRail = false

    SWEP.AttachmentModelsVM = {    }

end

SWEP.MuzzleVelocity = 320 -- in meter/s

SWEP.BarrelBGs = {main = 1, sd = 1, regular = 0}
-- SWEP.SightBGs = {main = 2, fas2_aimpoint = 1, regular = 0}
-- SWEP.StockBGs = {main = 3, wood = 1, regular = 0}

-- TODO Missing texture for uzi rail
SWEP.Attachments = {
    -- [1] = {header = "Sight", offset = {400, -200},  atts = {"bg_fas2_compm4"}},
    [2] = {header = "Barrel", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    -- [3] = {header = "Caliber", offset = {100, 200}, atts = {"am_fas2_9bizon"}},
    -- [3] = {header = "Stock", offset = {100, 200}, atts = {"bg_fas2_uziwoodstock"}},
    ["+reload"] = {header = "Ammo", offset = {800, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"fire", "fire2"},
    fire_aim = "fire_iron",
    fire_last = "fire_last",
    fire_aim_last = "fire_iron_last",
    reload = "reload",
    reload_empty = "reload_empty",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload_empty_nomen",
    idle = "idle",
    draw = "draw",
    draw_empty = "draw_empty",
    holster = "holster"
}

SWEP.SpeedDec = 10

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 55
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/smgs/c_mac11.mdl"
SWEP.WorldModel   = "models/weapons/w_smg_mac10.mdl" -- TODO
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 32
SWEP.Primary.DefaultClip	= 128
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= ".380 ACP"

SWEP.FireDelay = 0.0375
SWEP.FireSound = "CW_FAS2_MAC11_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_MAC11_FIRE_SUPP"
SWEP.Recoil = 0.5

SWEP.HipSpread = 0.032
SWEP.AimSpread = 0.017
SWEP.VelocitySensitivity = 1.35
SWEP.MaxSpreadInc = 0.05
SWEP.SpreadPerShot = 0.005
SWEP.SpreadCooldown = 0.14
SWEP.Shots = 1
SWEP.Damage = 16
SWEP.DeployTime = 0.45

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.9
SWEP.ReloadTime_Empty = 4
SWEP.ReloadHalt = 3
SWEP.ReloadHalt_Empty = 4

SWEP.ReloadFastTime = 1.8
SWEP.ReloadFastTime_Empty = 2.6
SWEP.ReloadFastHalt = 2.0
SWEP.ReloadFastHalt_Empty = 2.6
