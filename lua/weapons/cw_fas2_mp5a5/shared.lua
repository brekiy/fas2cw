AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")
-- TODO
if CLIENT then
    SWEP.Category = "CW 2.0 FA:S 2 Weapons"
    SWEP.Author			= "brekiy"
    SWEP.Contact		= ""
    SWEP.Purpose		= ""
    SWEP.Instructions	= ""

    SWEP.DrawCrosshair = false
    SWEP.PrintName = "MP5A5"

    SWEP.IronsightPos = Vector(-1.969, -3.449, 0.958)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.CompM4Pos = Vector(-1.969, -2, 0.28)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-0.5, -1, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-1, -1, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -2)

    SWEP.ViewModelMovementScale = 1.15

    SWEP.MuzzleEffect = "muzzleflash_smg"
    SWEP.Shell = "9x19"
    SWEP.PosBasedMuz = false
    SWEP.SightWithRail = true
    SWEP.ELCANAxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.CustomizationMenuScale = 0.009

    SWEP.AttachmentModelsVM = {
    }

end

SWEP.MuzzleVelocity = 345 -- in meter/s

SWEP.BarrelBGs = {main = 3, sd = 1, regular = 0}
SWEP.SightBGs = {main = 2, fas2_aimpoint = 1, regular = 0}
SWEP.GripBGs = {main = 4, sd = 2, grip = 1, regular = 0}
SWEP.FrontSightBGs = {main = 6, sd = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -200},  atts = {"bg_fas2_compm4"}},
    [2] = {header = "Barrel", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    -- [3] = {header = "Caliber", offset = {100, 200}, atts = {"am_fas2_9bizon"}},
    [3] = {header = "Underbarrel", offset = {100, 200}, atts = {"bg_fas2_foregrip", "bg_fas2_mp5sd"}},
    [5] = {header = "Perk", offset = {500, 100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {800, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = "shoot",
    fire_aim = "shoot_scoped",
    fire_last = "shoot_last",
    fire_aim_last = "shoot_last_scoped",
    reload = "reload",
    reload_empty = "reload_empty",
    reload_grip = "reload_grip",
    reload_empty_grip = "reload_empty_grip",
    reload_fast_grip = "reload_nomen_grip",
    reload_fast_empty_grip = "reload_empty_nomen_grip",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload_empty_nomen",
    idle = "idle1",
    idle_grip = "idle1_grip",
    draw = "draw",
    draw_empty = "draw_empty",
    holster = "holster"
}

SWEP.Sounds = {
    reload = {
        [1] = {time = 0.6, sound = "CW_FAS2_MP5_MAGOUT"},
        [2] = {time = 1.2, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 2.15, sound = "CW_FAS2_MP5_MAGIN"}
    },
    reload_nomen = {
        [1] = {time = 0.45, sound = "CW_FAS2_MP5_MAGOUT"},
        [2] = {time = 1, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.55, sound = "CW_FAS2_MP5_MAGIN"}
    },
    reload_empty = {
        [1] = {time = 0.3, sound = "CW_FAS2_MP5_BOLTPULL"},
        [2] = {time = 0.7, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1, sound = "CW_FAS2_MP5_MAGOUT_EMPTY"},
        [4] = {time = 2.15, sound = "CW_FAS2_MP5_MAGIN"},
        [5] = {time = 2.8, sound = "CW_FAS2_MP5_BOLTCATCH"}
    },
    reload_empty_nomen = {
        [1] = {time = 0.5, sound = "CW_FOLEY_HEAVY"},
        [2] = {time = 0.7, sound = "CW_FAS2_MP5_MAGOUT"},
        [3] = {time = 1.1, sound = "CW_FAS2_MP5_MAGIN"},
        [4] = {time = 1.7, sound = "CW_FAS2_MP5_BOLTBACK"},
        [5] = {time = 2, sound = "CW_FAS2_MP5_BOLTFORWARD"}
    },
    reload_grip = {
        [1] = {time = 0.6, sound = "CW_FAS2_MP5_MAGOUT"},
        [2] = {time = 1.2, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 2.15, sound = "CW_FAS2_MP5_MAGIN"}
    },
    reload_nomen_grip = {
        [1] = {time = 0.45, sound = "CW_FAS2_MP5_MAGOUT"},
        [2] = {time = 1, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.55, sound = "CW_FAS2_MP5_MAGIN"}
    },
    reload_empty_grip = {
        [1] = {time = 0.3, sound = "CW_FAS2_MP5_BOLTPULL"},
        [2] = {time = 0.7, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1, sound = "CW_FAS2_MP5_MAGOUT_EMPTY"},
        [4] = {time = 2.15, sound = "CW_FAS2_MP5_MAGIN"},
        [5] = {time = 2.8, sound = "CW_FAS2_MP5_BOLTCATCH"}
    },
    reload_empty_nomen_grip = {
        [1] = {time = 0.5, sound = "CW_FOLEY_HEAVY"},
        [2] = {time = 0.7, sound = "CW_FAS2_MP5_MAGOUT"},
        [3] = {time = 1.1, sound = "CW_FAS2_MP5_MAGIN"},
        [4] = {time = 1.7, sound = "CW_FAS2_MP5_BOLTBACK"},
        [5] = {time = 2, sound = "CW_FAS2_MP5_BOLTFORWARD"}
    },
}

SWEP.SpeedDec = 10

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "3burst", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 55
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/smgs/mp5a5.mdl"
SWEP.WorldModel   = "models/weapons/w_smg_mp5.mdl"
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 60
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x19MM"

SWEP.FireDelay = 0.075
SWEP.FireSound = "CW_FAS2_UZI_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_UZI_FIRE_SUPP"
SWEP.Recoil = 0.5

SWEP.HipSpread = 0.036
SWEP.AimSpread = 0.0105
SWEP.VelocitySensitivity = 1.4
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.005
SWEP.SpreadCooldown = 0.14
SWEP.Shots = 1
SWEP.Damage = 20
SWEP.DeployTime = 0.45

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.7
SWEP.ReloadTime_Empty = 3.2
SWEP.ReloadHalt = 2.9
SWEP.ReloadHalt_Empty = 3.4

SWEP.ReloadFastTime = 1.9
SWEP.ReloadFastTime_Empty = 2.3
SWEP.ReloadFastHalt = 2.1
SWEP.ReloadFastHalt_Empty = 2.45
