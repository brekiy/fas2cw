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
    SWEP.PrintName = "CF05"

    SWEP.IronsightPos = Vector(-3.465, -4, 0.4)
    SWEP.IronsightAng = Vector(1, 0, 0)

    SWEP.MicroT1Pos = Vector(-1.607, 1.5, -0.173)
    SWEP.MicroT1Ang = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-0.24, 0, -0.48)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.AlternativeCrouchPos = Vector(-1.25, -1, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -2)

    SWEP.MuzzleEffect = "muzzleflash_6"
    SWEP.Shell = "fas2_9x19"
    SWEP.SightWithRail = true
    SWEP.ELCANAxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.ForeGripOffsetCycle_Draw = 0
    SWEP.ForeGripOffsetCycle_Reload = 0.65
    SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9

    SWEP.AttachmentModelsVM = {
        ["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", bone = "Dummy02", pos = Vector(-1, -2.8, 10), angle = Angle(0, 0, -90), size = Vector(0.65, 0.65, 0.65)},
        ["md_tundra9mm"] = {model = "models/cw2/attachments/9mmsuppressor.mdl", pos = Vector(1, 1.5, -6), angle = Angle(0, 90, -90), size = Vector(0.8, 0.8, 0.8), bone = "Cylinder01"},
    }

end

SWEP.MuzzleVelocity = 880 -- in meter/s

SWEP.BarrelBGs = {main = 2, sd = 1, regular = 0}
SWEP.RailBGs = {main = 1, on = 1, off = 0}

SWEP.Attachments = {
    -- [1] = {header = "Sight", offset = {0, -400},  atts = {"md_microt1"}},
    [2] = {header = "Barrel", offset = {-200, -200}, atts = {"md_tundra9mm"}},
    ["+reload"] = {header = "Ammo", offset = {800, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"shoot", "shoot2", "shoot3"},
    fire_aim = {"shoot1_scoped", "shoot2_scoped", "shoot3_scoped"},
    fire_last = "shoot_last",
    fire_aim_last = "shoot_last_scoped",
    reload = "reload",
    reload_empty = "reload_empty",
    idle = "idle",
    draw = "deploy",
    draw_empty = "deploy_empty",
    holster = "holster"
}

SWEP.SpeedDec = 10

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/smgs/c_cf05.mdl"
SWEP.WorldModel   = "models/weapons/world/smgs/w_changfeng.mdl"
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.MuzzleAttachmentName = "1"
SWEP.EjectorAttachmentName = "2"

SWEP.Primary.ClipSize		= 50
SWEP.Primary.DefaultClip	= 150
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x19MM"

SWEP.FireDelay = 0.075
SWEP.FireSound = "CW_FAS2_M4A1_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_M4A1_FIRE_SUPP"
SWEP.Recoil = 0.5

SWEP.HipSpread = 0.048
SWEP.AimSpread = 0.00425
SWEP.VelocitySensitivity = 1.55
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.14
SWEP.Shots = 1
SWEP.Damage = 25
SWEP.DeployTime = 0.6

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.6
SWEP.ReloadTime_Empty = 1.9
SWEP.ReloadHalt = 2.7
SWEP.ReloadHalt_Empty = 1.9

SWEP.FastReloadVanilla = true