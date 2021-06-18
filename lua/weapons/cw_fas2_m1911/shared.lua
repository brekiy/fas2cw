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
    SWEP.PrintName = "M1911A1"

    SWEP.IronsightPos = Vector(-2.793, 2.555, 1.551)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-1.7, -1, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-4, -2, -1)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -30)

    SWEP.MuzzleEffect = "muzzleflash_pistol"
    SWEP.Shell = "fas2_45acp"
    SWEP.SightWithRail = false

    SWEP.AttachmentModelsVM = {
    }
end

SWEP.MuzzleVelocity = 280 -- in meter/s

SWEP.MuzzleBGs = {main = 1, sd = 1, regular = 0}

SWEP.Attachments = {
    -- [1] = {header = "Sight", offset = {0, -400},  atts = {"bg_fas2_tritiumsights"}},
    [2] = {header = "Muzzle", offset = {-400, -300}, atts = {"bg_fas2_suppressor"}},
    -- [3] = {header = "Caliber", offset = {0, 100}, atts = {"am_fas2_50glock"}},
    ["+use"] = {header = "Perk", offset = {500, 100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {-500, 100}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"Fire1", "Fire2", "Fire3"},
    fire_aim = "Fire_Iron",
    fire_last = "Fire_Last",
    fire_aim_last = "Fire_Last_Iron",
    reload = "Reload",
    reload_empty = "Reload_Empty",
    -- dont actually exist
    reload_fast = "Reload_Nomen",
    reload_fast_empty = "Reload_Empty_Nomen",
    idle = "idle",
    draw = "Draw",
    draw_empty = "Draw_Empty",
    holster = "holster"
}

SWEP.SpeedDec = 10

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "revolver"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 60
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/pistols/c_m1911.mdl"
SWEP.WorldModel   = "models/weapons/w_1911.mdl"
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 7
SWEP.Primary.DefaultClip	= 28
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= ".45 ACP"

SWEP.FireDelay = 0.12
SWEP.FireSound = "CW_FAS2_1911_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_1911_FIRE_SUPP"
SWEP.Recoil = 1.1

SWEP.HipSpread = 0.034
SWEP.AimSpread = 0.012
SWEP.VelocitySensitivity = 1.4
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.0095
SWEP.SpreadCooldown = 0.188
SWEP.Shots = 1
SWEP.Damage = 27
SWEP.DeployTime = 0.45

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.17
SWEP.ReloadTime_Empty = 2.33
SWEP.ReloadHalt = 2.17
SWEP.ReloadHalt_Empty = 2.33

SWEP.ReloadFastTime = 1.44
SWEP.ReloadFastTime_Empty = 1.56
SWEP.ReloadFastHalt = 1.44
SWEP.ReloadFastHalt_Empty = 1.56

