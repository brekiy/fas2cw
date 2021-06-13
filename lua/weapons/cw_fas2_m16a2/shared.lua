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
    SWEP.PrintName = "M16A2"

    SWEP.IronsightPos = Vector(-3.41175, -2.5, 0.5445)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.CompM4Pos = Vector(-3.41175, -1.2, -0.9)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.EoTechPos = Vector(-3.41175, -2.2, -1.2)
    SWEP.EoTechAng = Vector(0, 0, 0)

    SWEP.ACOGPos = Vector(-3.38, -4, -1.375)
    SWEP.ACOGAng = Vector()

    SWEP.AlternativePos = Vector(-1, 0, 0.2)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.AlternativeCrouchPos = Vector(-6, -1, -0.2)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -30)

    SWEP.MuzzleEffect = "muzzleflash_6"
    SWEP.Shell = "fas2_5.56x45"
    SWEP.ShellPosOffset = {x = 4, y = 0, z = 0}
    SWEP.SightWithRail = false
    SWEP.ELCANAxisAlign = {right = 0, up = 0, forward = 0}

    -- todo: stupid edge case in the base cl_model.lua
    --[cw20] addons/cw20/lua/weapons/cw_base/sh_attachments.lua:114: attempt to index local 'model' (a nil value)
    --   1. _attach - addons/cw20/lua/weapons/cw_base/sh_attachments.lua:114
    --   2. Function - addons/cw20/lua/weapons/cw_base/sh_attachments.lua:377
    --    3. unknown - lua/includes/modules/usermessage.lua:80
    -- todo: fix hands rig
    SWEP.AttachmentModelsVM = {
        ["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", pos = Vector(-0.2, -10.5, -1.5), angle = Angle(), size = Vector(1, 1, 1), bone = "smdimport"},
    }

    SWEP.BackupSights = {
        ["md_acog"] = {
            [1] = Vector(-3.37, -4, -2.5),
            [2] = Vector(),
        },
    }

end

SWEP.MuzzleVelocity = 880 -- in meter/s

SWEP.MuzzleBGs = {main = 1, sd = 1, regular = 0}
SWEP.SightBGs = {main = 2,  fas2_eotech = 2, fas2_aimpoint = 1, regular = 0}
SWEP.RailBGs = {main = 2, on = 3, off = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -200},  atts = {"bg_fas2_eotech", "bg_fas2_compm4", "md_acog"}},
    [2] = {header = "Muzzle", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Caliber", offset = {100, 200}, atts = {"am_fas2_50ar"}},
    ["+use"] = {header = "Perk", offset = {500, 100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {800, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"fire", "fire2", "fire3"},
    fire_aim = "shoot_scoped",
    fire_last = "idle_scoped",
    fire_aim_last = "idle_scoped_empty",
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
    reload = {
        {time = 0.42, sound = "CW_FAS2_M16A2_MAGOUT"},
        [2] = {time = 0.69, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.21, sound = "CW_FAS2_M16A2_MAGIN"}
    },
    reload_empty = {
        {time = 0.4, sound = "CW_FAS2_M16A2_MAGOUT_EMPTY"},
        [2] = {time = 0.6, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 0.99, sound = "CW_FAS2_M16A2_MAGIN"},
        [4] = {time = 2.13, sound = "CW_FAS2_M16A2_BOLTCATCH"}
    },
    reload_nomen = {
        {time = 0.34, sound = "CW_FAS2_M16A2_MAGOUT"},
        [2] = {time = 0.5, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 0.98, sound = "CW_FAS2_M16A2_MAGIN"}
    },
    reload_empty_nomen = {
        {time = 0.4, sound = "CW_FAS2_M16A2_MAGOUT_EMPTY"},
        [2] = {time = 0.6, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 0.99, sound = "CW_FAS2_M16A2_MAGIN"},
        [4] = {time = 1.59, sound = "CW_FAS2_M16A2_BOLTCATCH"}
    }
}

SWEP.SpeedDec = 25

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"3burst", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.UseHands = true

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/rifles/c_m16a2.mdl"
SWEP.WorldModel   = "models/weapons/b_m16a2.mdl"
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 0.075
SWEP.FireSound = "CW_FAS2_M16A2_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_M16A2_FIRE_SUPP"
SWEP.Recoil = 0.55

SWEP.HipSpread = 0.0485
SWEP.AimSpread = 0.002
SWEP.VelocitySensitivity = 1.8
SWEP.MaxSpreadInc = 0.035
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.14
SWEP.Shots = 1
SWEP.Damage = 30
SWEP.DeployTime = 0.41

-- holy shit the regular speed is fast
SWEP.ReloadTime = 1.76
SWEP.ReloadTime_Empty = 2.65
SWEP.ReloadHalt = 1.9
SWEP.ReloadHalt_Empty = 2.85

SWEP.ReloadFastTime = 1.4
SWEP.ReloadFastTime_Empty = 1.8
SWEP.ReloadFastHalt = 1.6
SWEP.ReloadFastHalt_Empty = 2
