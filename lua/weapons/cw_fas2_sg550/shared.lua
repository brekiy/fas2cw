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
    SWEP.PrintName = "SG550"

    SWEP.IronsightPos = Vector(-1.649, -2.757, 0.463)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.EoTechPos = Vector(-1.65, -2.727, -0.134)
    SWEP.EoTechAng = Vector(0, 0, 0)

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
    -- SWEP.CustomizationMenuScale = 0.01

    SWEP.AttachmentModelsVM = {
        -- ["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "ak_frame", pos = Vector(-0.3, -2.5, -2.46), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8}
    }

end

SWEP.MuzzleVelocity = 880 -- in meter/s

SWEP.BarrelBGs = {main = 2, sd_long = 3, sd_short = 2, sd = 1, regular = 0}
SWEP.HandguardBGs = {main = 1, sg551 = 2, sg552 = 1, regular = 0}
SWEP.SightBGs = {main = 3, fas2_elcan = 3, fas2_eotech = 1, regular = 0}
SWEP.MagBGs = {main = 4, rnd30 = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -200},  atts = {"bg_fas2_eotech"}},
    [2] = {header = "Barrel", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Magazine", offset = {100, 200}, atts = {"bg_fas2_sig55xmag"}},
    [4] = {header = "Variants", offset = {400, 200}, atts = {"bg_fas2_sig552"}},
    [5] = {header = "Perk", offset = {500, 100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {800, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"fire", "fire2", "fire3"},
    fire_aim = {"fire_scoped", "fire_scoped2", "fire_scoped3"},
    fire_last = "fire_last",
    fire_aim_last = "fire_scoped_last",
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
        [1] = {time = 0.65, sound = "CW_FAS2_SG550_MAGOUT"},
        [2] = {time = 1.3, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.8, sound = "CW_FAS2_SG550_MAGIN"}
    },
    reload_empty = {
        [1] = {time = 0.65, sound = "CW_FAS2_SG550_MAGOUT_EMPTY"},
        [2] = {time = 1.3, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 2.1, sound = "CW_FAS2_SG550_MAGIN"},
        [4] = {time = 2.8, sound = "CW_FAS2_M4A1_BOLTCATCH"}
    },
    reload_nomen = {
        [1] = {time = 0.3, sound = "CW_FOLEY_HEAVY"},
        [2] = {time = 0.8, sound = "CW_FAS2_SG550_MAGOUT"},
        [4] = {time = 1.25, sound = "CW_FAS2_SG550_MAGIN"}
    },
    reload_empty_nomen = {
        [1] = {time = 0.3, sound = "CW_FOLEY_HEAVY"},
        [2] = {time = 0.8, sound = "CW_FAS2_SG550_MAGOUT_EMPTY"},
        [3] = {time = 1.25, sound = "CW_FAS2_SG550_MAGIN"},
        [4] = {time = 1.8, sound = "CW_FAS2_M4A1_BOLTCATCH"}
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
SWEP.ViewModel = "models/weapons/view/rifles/c_sg550.mdl"
SWEP.WorldModel   = "models/weapons/w_m4.mdl"
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

-- Special stuff
SWEP.SG552Active = false
SWEP.SG551Active = false

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 60
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 0.0857
SWEP.FireSound = "CW_FAS2_SG550_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_SG550_FIRE_SUPP"
SWEP.Recoil = 0.58

SWEP.HipSpread = 0.052
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 1.85
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.14
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
