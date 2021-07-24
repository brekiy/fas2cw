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
    SWEP.PrintName = "Sterling L2A3"

    SWEP.IronsightPos = Vector(-3.40125, -3, 2.13)
    SWEP.IronsightAng = Vector(-0.05, 0.185, 0)

    SWEP.AlternativePos = Vector(-0.5, -1, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-3, -1, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -20)

    SWEP.MuzzleEffect = "muzzleflash_smg"
    SWEP.Shell = "fas2_9x19"
    SWEP.ShellPosOffset = {x = 1, y = 0, z = 5}
    SWEP.AttachmentModelsVM = {}

end

SWEP.MuzzleVelocity = 320 -- in meter/s

SWEP.MuzzleBGs = {main = 1, sd = 1, regular = 0}

SWEP.Attachments = {
    -- [1] = {header = "Sight", offset = {400, -200},  atts = {"bg_fas2_compm4"}},
    [1] = {header = "Muzzle", offset = {-300, -300}, atts = {"bg_fas2_suppressor"}},
    ["+use"] = {header = "Perk", offset = {500, -300}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {400, 300}, atts = {"am_magnum", "am_matchgrade"}}
}
-- TODO: unsuppressed irons shoot low to the left
SWEP.Animations = {
    fire = {"shoot1", "shoot2", "shoot3"},
    fire_aim = "Fire_scoped",
    fire_last = "shoot_Last",
    fire_aim_last = "shoot_last_scoped",
    reload = "reload",
    reload_empty = "reload_empty",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload_empty_nomen",
    draw = "Draw",
    draw_empty = "Draw_Empty",
    holster = "Holster"
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
SWEP.ViewModel = "models/weapons/view/smgs/c_sterling_sil.mdl"
SWEP.WorldModel   = "models/weapons/b_sterling.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 34
SWEP.Primary.DefaultClip	= 136
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x19MM"
SWEP.Chamberable = false

SWEP.FireDelay = 0.109091
SWEP.FireSound = "CW_FAS2_STERLING_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_STERLING_FIRE_SUPP"
SWEP.Recoil = 0.66
SWEP.RecoilSide = 0.43

SWEP.HipSpread = 0.041
SWEP.AimSpread = 0.011
SWEP.VelocitySensitivity = 1.6
SWEP.MaxSpreadInc = 0.025
SWEP.SpreadPerShot = 0.005
SWEP.SpreadCooldown = 0.14
SWEP.Shots = 1
SWEP.Damage = 21
SWEP.DeployTime = 0.6

SWEP.ReloadTime = 2.4
SWEP.ReloadTime_Empty = 3.2
SWEP.ReloadHalt = 2.4
SWEP.ReloadHalt_Empty = 3.3

SWEP.ReloadFastTime = 2.3
SWEP.ReloadFastTime_Empty = 2.6
SWEP.ReloadFastHalt = 2.3
SWEP.ReloadFastHalt_Empty = 2.6
