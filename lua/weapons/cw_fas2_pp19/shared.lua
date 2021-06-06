AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

CustomizableWeaponry:registerAmmo("9x18MM", "9x18MM Rounds", 9, 18)

if CLIENT then
    SWEP.Category = "CW 2.0 FA:S 2 Weapons"
    SWEP.Author			= "brekiy"
    SWEP.Contact		= ""
    SWEP.Purpose		= ""
    SWEP.Instructions	= ""

    SWEP.DrawCrosshair = false
    SWEP.PrintName = "PP-19"

    SWEP.IronsightPos = Vector(-1.742, -2, 0.386)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.CompM4Pos = Vector(-1.742, 0, -0.33)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.EoTechPos = Vector(-2.04, -4.848, 0.537)
    SWEP.EoTechAng = Vector(-0.631, 0, 0)

    SWEP.AlternativePos = Vector(-0.8, -1, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-1.4, -1, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -2)

    SWEP.ViewModelMovementScale = 1.15

    SWEP.MuzzleEffect = "muzzleflash_smg"
    SWEP.Shell = "fas2_9x18"
    SWEP.PosBasedMuz = false
    -- SWEP.ShellScale = 0.55
    -- SWEP.ShellOffsetMul = 1
    -- SWEP.ShellPosOffset = {x = -1.5, y = 0, z = -3}
    SWEP.SightWithRail = true
    SWEP.ELCANAxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.CustomizationMenuScale = 0.009

    SWEP.AttachmentModelsVM = {
        -- ["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "ak_frame", pos = Vector(-0.46, -3.5, -1.9), angle = Angle(0, -90, 0), size = Vector(0.75, 0.75, 0.75},
        -- ["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "ak_frame", pos = Vector(-0.3, -2.5, -2.46), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8}
    }

end

SWEP.MuzzleVelocity = 320 -- in meter/s

SWEP.BarrelBGs = {main = 2, sd = 1, regular = 0}
SWEP.SightBGs = {main = 3, fas2_aimpoint = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -200},  atts = {"bg_fas2_compm4"}},
    [2] = {header = "Barrel", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Caliber", offset = {100, 200}, atts = {"am_fas2_9bizon"}},
    ["+reload"] = {header = "Ammo", offset = {800, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = "fire",
    fire_aim = "fire_ironsight",
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
        [1] = {time = 0.8, sound = "CW_FAS2_PP19_MAGLATCH"},
        [2] = {time = 1.1, sound = "CW_FAS2_PP19_MAGOUT"},
        [3] = {time = 1.4, sound = "CW_FOLEY_HEAVY"},
        [4] = {time = 2.2, sound = "CW_FAS2_PP19_MAGLATCH"},
        [5] = {time = 2.6, sound = "CW_FAS2_PP19_MAGIN"}
    },
    reload_empty = {
        [1] = {time = 1.2, sound = "CW_FAS2_PP19_MAGLATCH"},
        [2] = {time = 1.7, sound = "CW_FAS2_PP19_MAGOUT_EMPTY"},
        [3] = {time = 2, sound = "CW_FOLEY_HEAVY"},
        [4] = {time = 2.8, sound = "CW_FAS2_PP19_MAGLATCH"},
        [5] = {time = 3.2, sound = "CW_FAS2_PP19_MAGIN"},
        [6] = {time = 4.1, sound = "CW_FAS2_PP19_BOLTPULL"}
    },
    reload_nomen = {
        [1] = {time = 0.3, sound = "CW_FAS2_PP19_MAGLATCH"},
        [2] = {time = 0.4, sound = "CW_FAS2_PP19_MAGOUT"},
        [3] = {time = 1, sound = "CW_FOLEY_HEAVY"},
        [4] = {time = 1.6, sound = "CW_FAS2_PP19_MAGLATCH"},
        [5] = {time = 2, sound = "CW_FAS2_PP19_MAGIN"}
    },
    reload_empty_nomen = {
        [1] = {time = 0.3, sound = "CW_FAS2_PP19_MAGLATCH"},
        [2] = {time = 0.5, sound = "CW_FAS2_PP19_MAGOUT_EMPTY"},
        [3] = {time = 1, sound = "CW_FOLEY_HEAVY"},
        [4] = {time = 1.6, sound = "CW_FAS2_PP19_MAGLATCH"},
        [5] = {time = 2, sound = "CW_FAS2_PP19_MAGIN"},
        [6] = {time = 2.7, sound = "CW_FAS2_PP19_BOLTPULL"}
    }
}

SWEP.SpeedDec = 10

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 55
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/smgs/bizon.mdl"
SWEP.WorldModel   = "models/weapons/w_smg_biz.mdl"
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 64
SWEP.Primary.DefaultClip	= 128
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x18MM"

SWEP.FireDelay = 0.0857
SWEP.FireSound = "CW_FAS2_PP19_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_PP19_FIRE_SUPP"
SWEP.Recoil = 0.55

SWEP.HipSpread = 0.036
SWEP.AimSpread = 0.013
SWEP.VelocitySensitivity = 1.6
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.0065
SWEP.SpreadCooldown = 0.14
SWEP.Shots = 1
SWEP.Damage = 20
SWEP.DeployTime = 0.55

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.9
SWEP.ReloadTime_Empty = 4
SWEP.ReloadHalt = 3.1
SWEP.ReloadHalt_Empty = 4.2
SWEP.ReloadFastTime = 2.3
SWEP.ReloadFastTime_Empty = 3
SWEP.ReloadFastHalt = 2.5
SWEP.ReloadFastHalt_Empty = 3.2
