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

    SWEP.RMRPos = Vector(-3.63, 3, 1.2)
    SWEP.RMRAng = Vector(0, 0, 0)

    SWEP.MicroT1Pos = Vector(-3.645, 2, 0.55)
    SWEP.MicroT1Ang = Vector()

    SWEP.ACOGPos = Vector(-3.645, -9.5, 0.15)
    SWEP.ACOGAng = Vector()

    SWEP.AlternativePos = Vector(-2, -1, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-5, -1, -0.5)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -30)

    SWEP.MuzzleEffect = "muzzleflash_pistol_deagle"
    SWEP.Shell = "fas2_50ae"
    SWEP.ShellPosOffset = {x = 0, y = 0, z = -2}
    SWEP.SightWithRail = false
    SWEP.ACOGAxisAlignNew = {right = 0, up = 0, forward = 0}
    SWEP.CustomizationMenuScale = 0.0125
    SWEP.AttachmentModelsVM = {
        ["md_rmr"] = {model = "models/cw2/attachments/pistolholo.mdl", pos = Vector(-2, 3.3, 2.2), angle = Angle(0, 0, -90), size = Vector(0.6, 0.6, 0.6), bone = "frame"},
        ["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", pos = Vector(1, -0.25, 1.95), angle = Angle(90, 0, -90), size = Vector(0.5, 0.5, 0.5), bone = "frame"},
        ["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", pos = Vector(-5.8, 5.5, 2.34), angle = Angle(-90, 0, -90), size = Vector(1, 1, 1), bone = "frame"},
        ["md_fas2_suppressor"] = {model = "models/cw2/attachments/9mmsuppressor.mdl", pos = Vector(6.5, 1.1, 2), angle = Angle(90, -90, 0), size = Vector(0.75, 0.75, 0.75), bone = "frame"},
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
    [1] = {header = "Sight", offset = {0, -500},  atts = {"bg_fas2_tritiumsights", "md_rmr", "md_microt1", "md_acog"}},
    [2] = {header = "Muzzle", offset = {-500, -200}, atts = {"md_fas2_suppressor"}},
    [3] = {header = "Caliber", offset = {-200, 300}, atts = {"am_fas2_357deagle", "am_fas2_429deagle"}},
    ["+use"] = {header = "Perk", offset = {800, -100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {500, 300}, atts = {"am_magnum", "am_matchgrade"}}
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
SWEP.WorldModel   = "models/weapons/w_pist_deagle.mdl" --"models/weapons/world/pistols/w_deserteagle.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 7
SWEP.Primary.DefaultClip	= 28
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= ".50 AE"

SWEP.FireDelay = 0.15
SWEP.FireSound = "CW_FAS2_DEAGLE_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_HK51_FIRE_SUPP"
SWEP.Recoil = 3
SWEP.RecoilSide = 1.3

SWEP.HipSpread = 0.035
SWEP.AimSpread = 0.009
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
