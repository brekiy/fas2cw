AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

CustomizableWeaponry:registerAmmo(".50 Beowulf", ".50 Beowulf Rounds", 12.7, 42)
CustomizableWeaponry:registerAmmo(".300 Blackout", ".300 Blackout Rounds", 7.8, 34.7)

if CLIENT then
    SWEP.Category = "CW 2.0 FA:S 2 Weapons"
    SWEP.Author			= "brekiy"
    SWEP.Contact		= ""
    SWEP.Purpose		= ""
    SWEP.Instructions	= ""

    SWEP.DrawCrosshair = false
    SWEP.PrintName = "M4A1"
    -- SWEP.CSMuzzleFlashes = true

    SWEP.IronsightPos = Vector(-2.044, -4.2, 0.446)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.CompM4Pos = Vector(-2.04, -2, 0.6)
    SWEP.CompM4Ang = Vector(-0.631, 0, 0)

    SWEP.ELCANPos = Vector(-2.04, -2, 0.43)
    SWEP.ELCANAng = Vector(-0.631, 0, 0)

    SWEP.EoTechPos = Vector(-2.04, -4.848, 0.537)
    SWEP.EoTechAng = Vector(-0.631, 0, 0)

    SWEP.AlternativePos = Vector(-0.24, 0, -0.18)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.AlternativeCrouchPos = Vector(-0.7, 0, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -5)

    SWEP.ViewModelMovementScale = 1.15

    SWEP.MuzzleEffect = "muzzleflash_6"
    SWEP.Shell = "556x45"
    SWEP.PosBasedMuz = false
    -- SWEP.ShellScale = 0.55
    -- SWEP.ShellOffsetMul = 1
    -- SWEP.ShellPosOffset = {x = -1.5, y = 0, z = -3}
    SWEP.SightWithRail = false
    SWEP.ELCANAxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.ForeGripOffsetCycle_Draw = 0
    SWEP.ForeGripOffsetCycle_Reload = 0.65
    SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
    SWEP.CustomizationMenuScale = 0.01

    SWEP.AttachmentModelsVM = {
        -- ["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "ak_frame", pos = Vector(-0.3, -2.5, -2.46), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8}
    }

end

SWEP.MuzzleVelocity = 880 -- in meter/s

SWEP.BarrelBGs = {main = 3, sd = 1, regular = 0}
SWEP.SightBGs = {main = 2, fas2_elcan = 3, fas2_eotech = 2, fas2_aimpoint = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -200},  atts = {"bg_fas2_eotech", "bg_fas2_compm4", "bg_fas2_elcan"}},
    [2] = {header = "Barrel", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Caliber", offset = {100, 200}, atts = {"am_fas2_300ar", "am_fas2_50ar"}},
    [5] = {header = "Perk", offset = {500, 100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {800, 300}, atts = {"am_magnum", "am_matchgrade"}}
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
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
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

SWEP.SpeedDec = 30

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "3burst", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/rifles/m4a1.mdl"
SWEP.WorldModel   = "models/weapons/w_m4.mdl"
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 60
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 0.075
SWEP.FireSound = "CW_FAS2_M4A1_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_M4A1_FIRE_SUPP"
SWEP.Recoil = 0.6

SWEP.HipSpread = 0.048
SWEP.AimSpread = 0.00425
SWEP.VelocitySensitivity = 1.55
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.145
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
