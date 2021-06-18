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
    SWEP.PrintName = "Desert Eagle"

    SWEP.IronsightPos = Vector(-3.63, 3, 1.0725)
    SWEP.IronsightAng = Vector(0.7, 0, 0)

    SWEP.MicroT1Pos = Vector(-3.645, 1, 0.55)
    SWEP.MicroT1Ang = Vector()

    SWEP.ACOGPos = Vector(-3.645, -9, 0.16)
    SWEP.ACOGAng = Vector()

    SWEP.AlternativePos = Vector(-2, -1, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-5, -1, -0.5)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -30)

    SWEP.MuzzleEffect = "muzzleflash_pistol_deagle"
    SWEP.Shell = "fas2_50ae"
    SWEP.SightWithRail = false
    SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}

    SWEP.AttachmentModelsVM = {
        ["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", pos = Vector(1, -0.25, 1.95), angle = Angle(90, 0, -90), size = Vector(0.5, 0.5, 0.5), bone = "frame"},
        ["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", pos = Vector(-5.8, 5.5, 2.34), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), bone = "frame"},
    }

    SWEP.BackupSights = {
        ["md_acog"] = {
            [1] = Vector(-3.645, -9, -0.965),
            [2] = Vector(),
        },
    }

end

SWEP.MuzzleVelocity = 470 -- in meter/s
SWEP.SightBGs = {main = 1, tritium = 1, regular = 0}


SWEP.Attachments = {
    [1] = {header = "Sight", offset = {0, -400},  atts = {"bg_fas2_tritiumsights", "md_microt1", "md_acog"}},
    -- [2] = {header = "Muzzle", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Caliber", offset = {0, 150}, atts = {"am_fas2_357deagle", "am_fas2_429deagle"}},
    ["+use"] = {header = "Perk", offset = {500, 100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {-500, 100}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"fire1", "fire2", "fire3", "fire4"},
    fire_aim = "fire_iron",
    fire_last = "fire_last",
    fire_aim_last = "fire_iron_last",
    reload = "reload",
    reload_empty = "reload_empty",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload_nomen_empty",
    idle = "idle",
    draw = "deploy",
    draw_empty = "deploy_empty",
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
SWEP.ViewModel = "models/weapons/view/pistols/c_deagle.mdl"
SWEP.WorldModel   = "models/weapons/world/pistols/w_deserteagle.mdl"
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 7
SWEP.Primary.DefaultClip	= 28
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= ".50 AE"

SWEP.FireDelay = 0.12
SWEP.FireSound = "CW_FAS2_DEAGLE_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_AK74_FIRE_SUPP"
SWEP.Recoil = 3.2

SWEP.HipSpread = 0.035
SWEP.AimSpread = 0.011
SWEP.VelocitySensitivity = 1.5
SWEP.MaxSpreadInc = 0.05
SWEP.SpreadPerShot = 0.018
SWEP.SpreadCooldown = 0.21
SWEP.Shots = 1
SWEP.Damage = 46
SWEP.DeployTime = 0.45

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.67
SWEP.ReloadTime_Empty = 3.13
SWEP.ReloadHalt = 2.67
SWEP.ReloadHalt_Empty = 3.13

SWEP.ReloadFastTime = 1.8
SWEP.ReloadFastTime_Empty = 2.3
SWEP.ReloadFastHalt = 1.8
SWEP.ReloadFastHalt_Empty = 2.3
