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
    SWEP.PrintName = "M4A1"

    SWEP.IronsightPos = Vector(-3.066, -4.2, 0.669)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.CompM4Pos = Vector(-3.066, -4, 0.9)
    SWEP.CompM4Ang = Vector(-0.631, 0, 0)

    SWEP.ELCANPos = Vector(-3.066, -4, 0.645)
    SWEP.ELCANAng = Vector(-0.631, 0, 0)

    SWEP.EoTechPos = Vector(-3.066, -4.848, 0.8055)
    SWEP.EoTechAng = Vector(-0.631, 0, 0)

    SWEP.AlternativePos = Vector(-1.5, -3, 0)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.AlternativeCrouchPos = Vector(-4, -3, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -25)

    SWEP.MuzzleEffect = "muzzleflash_6"
    SWEP.Shell = "fas2_5.56x45"
    SWEP.ShellPosOffset = {x = 3, y = 0, z = 0}
    SWEP.SightWithRail = false
    SWEP.ELCANAxisAlign = {right = 0, up = 0, forward = 0}

    SWEP.AttachmentModelsVM = {
    }

end

SWEP.MuzzleVelocity = 880 -- in meter/s

SWEP.MuzzleBGs = {main = 2, sd = 1, regular = 0}
SWEP.SightBGs = {main = 1, fas2_elcan = 3, fas2_eotech = 2, fas2_aimpoint = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -250},  atts = {"bg_fas2_eotech", "bg_fas2_compm4", "bg_fas2_elcan"}},
    [2] = {header = "Muzzle", offset = {-200, -250}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Caliber", offset = {-200, 250}, atts = {"am_fas2_300ar", "am_fas2_68ar", "am_fas2_50ar"}},
    ["+use"] = {header = "Perk", offset = {1200, 50}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {600, 250}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"shoot", "shoot2", "shoot3"},
    fire_aim = {"shoot1_scoped", "shoot2_scoped", "shoot3_scoped"},
    fire_last = "shoot_last",
    fire_aim_last = "shoot_last_scoped",
    reload = "reload",
    reload_empty = "reload_empty",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload_empty_nomen",
    idle = "idle",
    draw = "deploy",
    draw_empty = "deploy_empty",
    holster = "holster"
}

SWEP.Sounds = {
    deploy = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        {time = 0.7, sound = "CW_FAS2_M4A1_MAGOUT"},
        {time = 1.5, sound = "CW_FOLEY_HEAVY"},
        {time = 2.05, sound = "CW_FAS2_M4A1_MAGIN"}
    },
    reload_empty = {
        {time = 0.7, sound = "CW_FAS2_M4A1_MAGOUT_EMPTY"},
        {time = 1.15, sound = "CW_FOLEY_HEAVY"},
        {time = 1.7, sound = "CW_FAS2_M4A1_MAGIN"},
        {time = 2.3, sound = "CW_FAS2_M4A1_BOLTCATCH"}
    },
    reload_nomen = {
        {time = 0.3, sound = "CW_FOLEY_HEAVY"},
        {time = 0.8, sound = "CW_FAS2_M4A1_MAGOUT"},
        {time = 1.1, sound = "CW_FAS2_M4A1_MAGIN"}
    },
    reload_empty_nomen = {
        {time = 0.4, sound = "CW_FOLEY_HEAVY"},
        {time = 0.7, sound = "CW_FAS2_M4A1_MAGOUT_EMPTY"},
        {time = 1.1, sound = "CW_FAS2_M4A1_MAGIN"},
        {time = 1.6, sound = "CW_FAS2_M4A1_BOLTCATCH"}
    }
}

SWEP.SpeedDec = 20

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/rifles/c_m4a1.mdl"
SWEP.WorldModel   = "models/weapons/w_m4.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 0.075
SWEP.FireSound = "CW_FAS2_M4A1_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_M4A1_FIRE_SUPP"
SWEP.Recoil = 0.75
SWEP.RecoilSide = 0.37

SWEP.HipSpread = 0.048
SWEP.AimSpread = 0.0045
SWEP.VelocitySensitivity = 1.55
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.15
SWEP.Shots = 1
SWEP.Damage = 27
SWEP.DeployTime = 0.6

SWEP.ReloadTime = 2.6
SWEP.ReloadTime_Empty = 2.7
SWEP.ReloadHalt = 2.7
SWEP.ReloadHalt_Empty = 2.8

SWEP.ReloadFastTime = 1.9
SWEP.ReloadFastTime_Empty = 1.9
SWEP.ReloadFastHalt = 2.05
SWEP.ReloadFastHalt_Empty = 2.15
