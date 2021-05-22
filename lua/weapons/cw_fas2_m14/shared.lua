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
    SWEP.CSMuzzleFlashes = true

    SWEP.IronsightPos = Vector(-2.56, -5.354, 1.363)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.CompM4Pos = Vector(-2.56, -2, 0.54)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.EoTechPos = Vector(-2.56, -5.354, 0.15)
    SWEP.EoTechAng = Vector(0, 0, 0)

    SWEP.LeupoldPos = Vector(-2.56, -4.8, 0.71)
    SWEP.LeupoldAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-1, 0, 0)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.AlternativeCrouchPos = Vector(-1.3, -1, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -2)

    SWEP.ViewModelMovementScale = 1.15

    SWEP.MuzzleEffect = "muzzleflash_ak47"
    SWEP.Shell = "762x51"
    SWEP.PosBasedMuz = false
    SWEP.SightWithRail = false
    SWEP.LeupoldAxisAlign = {right = 0, up = 0, forward = 0}


    SWEP.AttachmentModelsVM = {
        -- ["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "ak_frame", pos = Vector(-0.46, -3.5, -1.9), angle = Angle(0, -90, 0), size = Vector(0.75, 0.75, 0.75},
        -- ["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "ak_frame", pos = Vector(-0.3, -2.5, -2.46), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8}
    }

end

SWEP.MuzzleVelocity = 880 -- in meter/s

SWEP.BarrelBGs = {main = 3, sd = 1, regular = 0}
SWEP.SightBGs = {main = 2, fas2_leupold = 3, fas2_eotech = 2, fas2_aimpoint = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -200},  atts = {"bg_fas2_eotech", "bg_fas2_compm4", "bg_fas2_leupold"}},
    [2] = {header = "Barrel", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    ["+reload"] = {header = "Ammo", offset = {800, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"shoot", "shoot2", "shoot3"},
    fire_aim = "shoot_scoped",
    fire_last = "shoot_last",
    fire_aim_last = "shoot_last_scoped",
    reload = "reload",
    reload_empty = "reload_empty",
    idle = "idle",
    draw = "deploy",
    draw_empty = "deploy_empty",
    holster = "holster"
}

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        [1] = {time = 0.6, sound = "CW_FAS2_M14_MAGOUT"},
        [2] = {time = 1.3, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.9, sound = "CW_FAS2_M14_MAGIN"}
    },
    reload_empty = {
        [1] = {time = 0.6, sound = "CW_FAS2_M14_MAGOUT_EMPTY"},
        [2] = {time = 1.3, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.95, sound = "CW_FAS2_M14_MAGIN"},
        [4] = {time = 3.15, sound = "CW_FAS2_M14_BOLTRELEASE"}
    }
}

SWEP.SpeedDec = 30

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/rifles/m14.mdl"
SWEP.WorldModel   = "models/weapons/w_m14.mdl"
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 20
SWEP.Primary.DefaultClip	= 40
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "7.62x51MM"

SWEP.FireDelay = 0.08
SWEP.FireSound = "CW_FAS2_M14_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_M14_FIRE_SUPP"
SWEP.Recoil = 1.25

SWEP.HipSpread = 0.05
SWEP.AimSpread = 0.0027
SWEP.VelocitySensitivity = 2
SWEP.MaxSpreadInc = 0.045
SWEP.SpreadPerShot = 0.015
SWEP.SpreadCooldown = 0.155
SWEP.Shots = 1
SWEP.Damage = 55
SWEP.DeployTime = 0.45

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.3
SWEP.ReloadTime_Empty = 1.9
SWEP.ReloadHalt = 3.7
SWEP.ReloadHalt_Empty = 2.65
