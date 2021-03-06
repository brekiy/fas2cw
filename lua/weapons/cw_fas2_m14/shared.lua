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
    SWEP.PrintName = "M14"

    SWEP.IronsightPos = Vector(-3.84, -5, 2.0445)
    SWEP.IronsightAng = Vector()

    SWEP.CompM4Pos = Vector(-3.84, -2, 0.81)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.EoTechPos = Vector(-3.84, -5, 0.3)
    SWEP.EoTechAng = Vector()

    SWEP.LeupoldPos = Vector(-3.84, -4.8, 1.065)
    SWEP.LeupoldAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-1, 0, 0)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.AlternativeCrouchPos = Vector(-6, -1, -0.5)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -30)

    SWEP.ViewModelMovementScale = 1.15

    SWEP.MuzzleEffect = "muzzleflash_ak47"
    SWEP.Shell = "fas2_7.62x51"
    SWEP.SightWithRail = true
    SWEP.LeupoldAxisAlignNew = {right = 0, up = 0, forward = 0}
    SWEP.CustomizationMenuScale = 0.02

    SWEP.AttachmentModelsVM = {}

    SWEP.BackupSights = {
        ["bg_fas2_leupold"] = {
            [1] = Vector(-5, -4.8, 0),
            [2] = Vector(0, 0, -25),
        },
    }

end

SWEP.MuzzleVelocity = 880 -- in meter/s

SWEP.MuzzleBGs = {main = 2, sd = 1, regular = 0}
SWEP.SightBGs = {main = 1, none = 4, fas2_leupold = 3, fas2_eotech = 2, fas2_compm4 = 1, regular = 0}
SWEP.MagBGs = {main = 3, rnd20 = 1, regular = 0}
SWEP.BipodBGs = {main = 4, on = 1, off = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -200},  atts = {"bg_fas2_eotech", "bg_fas2_compm4", "bg_fas2_leupold"}},
    [2] = {header = "Muzzle", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Magazine", offset = {100, 450}, atts = {"bg_fas2_m2120mag"}},
    [4] = {header = "Handguard", offset = {-100, 100}, atts = {"bg_fas2_bipod"}},
    ["+use"] = {header = "Perk", offset = {1200, 450}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {600, 450}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"shoot", "shoot2", "shoot3"},
    fire_aim = "shoot_scoped",
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
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        {time = 0.6, sound = "CW_FAS2_M14_MAGOUT"},
        [2] = {time = 1.3, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.9, sound = "CW_FAS2_M14_MAGIN"}
    },
    reload_empty = {
        {time = 0.6, sound = "CW_FAS2_M14_MAGOUT_EMPTY"},
        [2] = {time = 1.3, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.95, sound = "CW_FAS2_M14_MAGIN"},
        [4] = {time = 3.15, sound = "CW_FAS2_M14_BOLTRELEASE"}
    },
    reload_nomen = {
        {time = 0.7, sound = "CW_FAS2_M14_MAGOUT"},
        [2] = {time = 1.2, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.65, sound = "CW_FAS2_M14_MAGIN"}
    },
    reload_empty_nomen = {
        {time = 0.6, sound = "CW_FAS2_M14_MAGOUT_EMPTY"},
        [2] = {time = 1.5, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.9, sound = "CW_FAS2_M14_MAGIN"},
        [4] = {time = 2.35, sound = "CW_FAS2_M14_BOLTRELEASE"}
    },
}

SWEP.SpeedDec = 25

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/rifles/c_m14.mdl"
SWEP.WorldModel   = "models/weapons/w_snip_g3sg1.mdl" --"models/weapons/w_m14.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 40
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "7.62x51MM"

SWEP.FireDelay = 0.08
SWEP.FireSound = "CW_FAS2_M14_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_M14_FIRE_SUPP"
SWEP.Recoil = 1.55
SWEP.RecoilSide = 0.7
SWEP.NearWallDistance = 41

SWEP.HipSpread = 0.05
SWEP.AimSpread = 0.00275
SWEP.VelocitySensitivity = 2
SWEP.MaxSpreadInc = 0.045
SWEP.SpreadPerShot = 0.013
SWEP.SpreadCooldown = 0.168
SWEP.Shots = 1
SWEP.Damage = 42
SWEP.DeployTime = 0.45

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.3
SWEP.ReloadTime_Empty = 3.7
SWEP.ReloadHalt = 2.45
SWEP.ReloadHalt_Empty = 3.85

SWEP.ReloadFastTime = 1.9
SWEP.ReloadFastTime_Empty = 2.65
SWEP.ReloadFastHalt = 2.05
SWEP.ReloadFastHalt_Empty = 2.8
