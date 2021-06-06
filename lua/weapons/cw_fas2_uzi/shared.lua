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
    SWEP.PrintName = "Uzi"
    -- SWEP.CSMuzzleFlashes = true

    SWEP.IronsightPos = Vector(-2.316, -4.906, 1.026)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.CompM4Pos = Vector(-2.32, -2, 0.28)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-0.8, -1, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-1.4, -1, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -2)

    SWEP.ViewModelMovementScale = 1.15

    SWEP.MuzzleEffect = "muzzleflash_smg"
    SWEP.Shell = "fas2_9x19"
    SWEP.PosBasedMuz = false
    -- SWEP.ShellScale = 0.55
    -- SWEP.ShellOffsetMul = 1
    -- SWEP.ShellPosOffset = {x = -1.5, y = 0, z = -3}
    SWEP.SightWithRail = true
    SWEP.ELCANAxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.CustomizationMenuScale = 0.009

    SWEP.AttachmentModelsVM = {
        -- ["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "ak_frame", pos = Vector(-0.46, -3.5, -1.9), angle = Angle(0, -90, 0), size = Vector(0.75, 0.75, 0.75},
    }

end

SWEP.MuzzleVelocity = 320 -- in meter/s

SWEP.BarrelBGs = {main = 2, sd = 1, regular = 0}
SWEP.SightBGs = {main = 3, fas2_aimpoint = 1, regular = 0}
SWEP.StockBGs = {main = 4, wood = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -200},  atts = {"bg_fas2_compm4"}},
    [2] = {header = "Barrel", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    -- [3] = {header = "Caliber", offset = {100, 200}, atts = {"am_fas2_9bizon"}},
    [3] = {header = "Stock", offset = {100, 200}, atts = {"bg_fas2_uziwoodstock"}},
    ["+reload"] = {header = "Ammo", offset = {800, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = "shoot1",
    fire_aim = "shoot_iron",
    reload = "reload",
    reload_empty = "reload_empty",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload_empty_nomen",
    idle = "idle",
    draw = "draw",
    draw_empty = "draw_empty",
    holster = "holster"
}

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        [1] = {time = 0.9, sound = "CW_FAS2_UZI_MAGRELEASE"},
        [2] = {time = 1.25, sound = "CW_FAS2_UZI_MAGOUT"},
        [3] = {time = 1, sound = "CW_FOLEY_HEAVY"},
        [4] = {time = 2.3, sound = "CW_FAS2_UZI_MAGIN_PARTIAL"},
        [5] = {time = 2.55, sound = "CW_FAS2_UZI_MAGIN"}
    },
    reload_nomen = {
        [1] = {time = 0.4, sound = "CW_FAS2_UZI_MAGRELEASE"},
        [2] = {time = 0.65, sound = "CW_FAS2_UZI_MAGOUT"},
        [3] = {time = 1, sound = "CW_FOLEY_HEAVY"},
        [4] = {time = 1.2, sound = "CW_FAS2_UZI_MAGIN_PARTIAL"},
        [5] = {time = 1.37, sound = "CW_FAS2_UZI_MAGIN"}
    },
    reload_empty = {
        [1] = {time = 0.5, sound = "CW_FAS2_UZI_BOLTBACK"},
        [2] = {time = 0.8, sound = "CW_FAS2_UZI_BOLTFORWARD"},
        [3] = {time = 1.6, sound = "CW_FAS2_UZI_MAGRELEASE"},
        [4] = {time = 2, sound = "CW_FAS2_UZI_MAGOUT_EMPTY"},
        [5] = {time = 2.2, sound = "CW_FOLEY_HEAVY"},
        [6] = {time = 2.7, sound = "CW_FAS2_UZI_MAGIN_PARTIAL"},
        [7] = {time = 3.15, sound = "CW_FAS2_UZI_MAGIN"}
    },
    reload_empty_nomen = {
        [1] = {time = 0.3, sound = "CW_FAS2_UZI_BOLTBACK"},
        [2] = {time = 0.5, sound = "CW_FAS2_UZI_BOLTFORWARD"},
        [3] = {time = 1.1, sound = "CW_FAS2_UZI_MAGRELEASE"},
        [4] = {time = 1.3, sound = "CW_FAS2_UZI_MAGOUT_EMPTY"},
        [5] = {time = 1.7, sound = "CW_FOLEY_HEAVY"},
        [6] = {time = 1.95, sound = "CW_FAS2_UZI_MAGIN_PARTIAL"},
        [7] = {time = 2.1, sound = "CW_FAS2_UZI_MAGIN"}
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
SWEP.ViewModel = "models/weapons/view/smgs/uzi.mdl"
SWEP.WorldModel   = "models/weapons/w_smg_mp5.mdl" -- TODO
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 32
SWEP.Primary.DefaultClip	= 128
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x19MM"

SWEP.FireDelay = 0.1
SWEP.FireSound = "CW_FAS2_UZI_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_UZI_FIRE_SUPP"
SWEP.Recoil = 0.6

SWEP.HipSpread = 0.036
SWEP.AimSpread = 0.011
SWEP.VelocitySensitivity = 1.4
SWEP.MaxSpreadInc = 0.034
SWEP.SpreadPerShot = 0.005
SWEP.SpreadCooldown = 0.14
SWEP.Shots = 1
SWEP.Damage = 21
SWEP.DeployTime = 0.45

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 3.3
SWEP.ReloadTime_Empty = 3.8
SWEP.ReloadHalt = 3.5
SWEP.ReloadHalt_Empty = 4

SWEP.ReloadFastTime = 1.9
SWEP.ReloadFastTime_Empty = 2.25
SWEP.ReloadFastHalt = 2.1
SWEP.ReloadFastHalt_Empty = 2.45
