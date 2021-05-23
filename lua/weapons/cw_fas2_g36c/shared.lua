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
    -- SWEP.CSMuzzleFlashes = true
    -- TODO
    SWEP.IronsightPos = Vector(-2.474, -5.693, 1.143)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.CompM4Pos = Vector(-2.474, -2, 0.7)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.ShortDotPos = Vector(-2.208, -4, -0)
    SWEP.ShortDotAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-1, 0, 0.2)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-1.6, -1, 0.2)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -2)

    SWEP.MuzzleEffect = "muzzleflash_6"
    SWEP.Shell = "5.56x45"
    SWEP.PosBasedMuz = false
    SWEP.ShellScale = 1
    SWEP.ShellOffsetMul = 1
    SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
    SWEP.SightWithRail = false
    SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.CustomizationMenuScale = 0.01
    -- SWEP.AttachmentModelsVM = {
        -- ["md_rail"] = {model = "models/wystan/attachments/akrailmount.mdl", bone = "ak_frame", pos = Vector(-0.1, 1.5, 1), angle = Angle(0, 0, 0), size = Vector(0.8, 0.8, 0.8)},
        -- ["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "frame", pos = Vector(-0.3, -2.5, -2.46), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8)}
    -- }
end

SWEP.MuzzleVelocity = 880 -- in meter/s
SWEP.BarrelBGs = {main = 3, sd = 1, regular = 0}
SWEP.SightBGs = {main = 2, fas2_aimpoint = 1, regular = 0}
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -500},  atts = {"bg_fas2_compm4"}},
    [2] = {header = "Barrel", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    [5] = {header = "Perk", offset = {500, 100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {500, 300}, atts = {"am_magnum", "am_matchgrade"}}
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

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        [1] = {time = 0.5, sound = "CW_FAS2_G36C_MAGOUT"},
        [2] = {time = 1.2, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.55, sound = "CW_FAS2_G36C_MAGIN"}
    },
    reload_empty = {
        [1] = {time = 0.5, sound = "CW_FAS2_G36C_MAGOUT_EMPTY"},
        [2] = {time = 1.15, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.55, sound = "CW_FAS2_G36C_MAGIN"},
        [4] = {time = 2.1, sound = "CW_FAS2_G36C_BOLTBACK"},
        [5] = {time = 2.3, sound = "CW_FAS2_G36C_BOLTFORWARD"}
    },
    reload_nomen = {
        [1] = {time = 0.45, sound = "CW_FAS2_G36C_MAGOUT"},
        [2] = {time = 0.75, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.25, sound = "CW_FAS2_G36C_MAGIN"}
    },
    reload_empty_nomen = {
        [1] = {time = 0.5, sound = "CW_FAS2_G36C_MAGOUT_EMPTY"},
        [2] = {time = 1, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.3, sound = "CW_FAS2_G36C_MAGIN"},
        [4] = {time = 1.65, sound = "CW_FAS2_G36C_BOLTBACK"},
        [5] = {time = 1.85, sound = "CW_FAS2_G36C_BOLTFORWARD"}
    }
}

SWEP.SpeedDec = 30

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "3burst", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 60
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/rifles/g36c.mdl"
SWEP.WorldModel   = "models/weapons/w_g36e.mdl"
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.75
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 60
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 0.08
SWEP.FireSound = "CW_FAS2_G36C_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_G36C_FIRE_SUPP"
SWEP.Recoil = 0.65

SWEP.HipSpread = 0.042
SWEP.AimSpread = 0.006
SWEP.VelocitySensitivity = 1.45
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.009
SWEP.SpreadCooldown = 0.145
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
