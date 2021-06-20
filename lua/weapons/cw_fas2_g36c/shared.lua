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
    SWEP.PrintName = "G36C"

    SWEP.IronsightPos = Vector(-3.711, -5.693, 1.7145)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.CompM4Pos = Vector(-3.711, -3, 1.05)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.ShortDotPos = Vector(-3.711, -4, 0)
    SWEP.ShortDotAng = Vector(0, 0, 0)

    SWEP.ACOGPos = Vector(-3.737, -8, 0.77)
    SWEP.ACOGAng = Vector()

    SWEP.AlternativePos = Vector(-1, 0, 0.2)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-5, -1, -0.2)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -30)

    SWEP.MuzzleEffect = "muzzleflash_6"
    SWEP.Shell = "fas2_5.56x45"
    SWEP.PosBasedMuz = false
    SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
    SWEP.SightWithRail = false
    SWEP.AttachmentModelsVM = {
        -- ["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "frame", pos = Vector(-0.3, -2.5, -2.46), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8)}
        ["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", pos = Vector(-0.46, 0, -2.6), angle = Angle(), size = Vector(1, 1, 1), bone = "Bone07"},
    }

    SWEP.BackupSights = {
        ["md_acog"] = {
            [1] = Vector(-3.86, -8, -0.365),
            [2] = Vector(),
        },
    }

end

SWEP.MuzzleVelocity = 722 -- in meter/s
SWEP.MuzzleBGs = {main = 2, sd = 1, regular = 0}
SWEP.SightBGs = {main = 1, fas2_aimpoint = 1, regular = 0}
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -500},  atts = {"bg_fas2_compm4", "md_acog"}},
    [2] = {header = "Muzzle", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    ["+use"] = {header = "Perk", offset = {500, 300}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {-200, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"fire1", "fire2", "fire3"},
    fire_aim = {"fire1_scoped", "fire2_scoped", "fire3_scoped"},
    fire_last = "fire_last",
    fire_aim_last = "fire_Last_scoped",
    reload = "reload",
    reload_empty = "reload_empty",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload_empty_nomen",
    idle = "idle",
    draw = "deploy",
    draw_empty = "deploy_empty",
    holster = "holster"
}

SWEP.SpeedDec = 20

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "3burst", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/rifles/c_g36c.mdl"
SWEP.WorldModel   = "models/weapons/w_g36e.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 90
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 0.08
SWEP.FireSound = "CW_FAS2_G36C_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_G36C_FIRE_SUPP"
SWEP.Recoil = 0.83

SWEP.HipSpread = 0.042
SWEP.AimSpread = 0.006
SWEP.VelocitySensitivity = 1.45
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.15
SWEP.Shots = 1
SWEP.Damage = 27
SWEP.DeployTime = 0.6

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 1.8
SWEP.ReloadTime_Empty = 2.6
SWEP.ReloadHalt = 1.95
SWEP.ReloadHalt_Empty = 2.85

SWEP.ReloadFastTime = 1.35
SWEP.ReloadFastTime_Empty = 1.9
SWEP.ReloadFastHalt = 1.5
SWEP.ReloadFastHalt_Empty = 2.05
