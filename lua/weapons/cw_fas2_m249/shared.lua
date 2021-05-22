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
    SWEP.PrintName = "M249"
    SWEP.CSMuzzleFlashes = true

    SWEP.IronsightPos = Vector(-3.516, -3, 2.01)
    SWEP.IronsightAng = Vector(0.018, 0, 0)

    SWEP.CompM4Pos = Vector(-3.516, -5, 1.565)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.CompM4Pos_Bipod = Vector(-2.591, -4.274, 0.775)
    SWEP.CompM4Ang_Bipod = Vector(0, 0, 0)

    SWEP.ELCANPos = Vector(-3.515, -4.64, 1.05)
    SWEP.ELCANAng = Vector(-0.6, 0, 0)

    SWEP.ELCANPos_Bipod = Vector(-2.591, -4.474, 0.23)
    SWEP.ELCANAng_Bipod = Vector(-0.6, 0, 0)

    SWEP.EoTechPos_Bipod = Vector(-2.591, -4.874, 0.315)
    SWEP.EoTechAng_Bipod = Vector(0, 0, 0)

    SWEP.EoTechPos = Vector(-3.516, -6, 1.162)
    SWEP.EoTechAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-0.4, -1, 1.2)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.AlternativeCrouchPos = Vector(-0.9, -1.1, 1.4)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -5)

    SWEP.ViewModelMovementScale = 1.15

    SWEP.MuzzleEffect = "muzzleflash_6"
    SWEP.Shell = "556x45"
    SWEP.PosBasedMuz = false
    -- SWEP.ShellScale = 0.55
    -- SWEP.ShellOffsetMul = 1
    SWEP.ShellPosOffset = {x = 3, y = -2, z = 5}
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
SWEP.MagBGs = {main = 4, rnd200 = 1, regular = 0}
SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -200},  atts = {"bg_fas2_eotech", "bg_fas2_compm4", "bg_fas2_elcan"}},
    [2] = {header = "Barrel", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Magazine", offset = {500, 200}, atts = {"bg_fas2_lmgx200mag"}},
    ["+reload"] = {header = "Ammo", offset = {800, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = "fire1",
    fire_aim = "fire1_scoped",
    fire_last = "Fire_empty",
    fire_aim_last = "fire_empty_scoped",
    reload = "reload",
    reload_empty = "reload_empty",
    idle = "idle_unfired",
    draw = "deploy",
    draw_empty = "deploy_empty",
    holster = "holster"
}

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_HEAVY"}},
    reload = {
        [1] = {time = 0.07, sound = "CW_FOLEY_HEAVY"},
        [2] = {time = 0.4, sound = "CW_FAS2_M249_LIDOPEN"},
        [3] = {time = 0.8, sound = "CW_FOLEY_HEAVY"},
        [4] = {time = 1, sound = "CW_FAS2_M249_BELTREMOVE"},
        [5] = {time = 1.52, sound = "CW_FOLEY_HEAVY"},
        [6] = {time = 2.2, sound = "CW_FAS2_M249_BOXREMOVE"},
        [7] = {time = 3, sound = "CW_FOLEY_HEAVY"},
        [8] = {time = 3.65, sound = "CW_FAS2_M249_BOXINSERT"},
        [9] = {time = 4.15, sound = "CW_FAS2_M249_BELTPULL"},
        [10] = {time = 4.4, sound = "CW_FAS2_M249_BELTLOAD"},
        [11] = {time = 5.6, sound = "CW_FAS2_M249_LIDCLOSE"}
    },
    reload_empty = {
        [1] = {time = 0.07, sound = "CW_FOLEY_HEAVY"},
        [2] = {time = 0.35, sound = "CW_FAS2_M249_CHARGE"},
        [3] = {time = 1.1, sound = "CW_FAS2_M249_LIDOPEN"},
        -- [4] = {time = 1.45, sound = "Generic_Cloth"},
        [4] = {time = 2.85, sound = "CW_FOLEY_HEAVY"},
        [5] = {time = 3, sound = "CW_FAS2_M249_BOXREMOVE"},
        [6] = {time = 3.55, sound = "CW_FOLEY_HEAVY"},
        [7] = {time = 4.42, sound = "CW_FAS2_M249_BOXINSERT"},
        [8] = {time = 4.9, sound = "CW_FAS2_M249_BELTPULL"},
        [9] = {time = 5.1, sound = "CW_FAS2_M249_BELTLOAD"},
        [10] = {time = 6.25, sound = "CW_FAS2_M249_LIDCLOSE"}
    }
}

SWEP.SpeedDec = 50

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/support/m249.mdl"
SWEP.WorldModel   = "models/weapons/w_m249.mdl"
SWEP.MuzzleAttachment = 1
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 100
SWEP.Primary.DefaultClip	= 200
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 0.08
SWEP.FireSound = "CW_FAS2_M249_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_M249_FIRE_SUPP"
SWEP.Recoil = 0.65

SWEP.HipSpread = 0.0512
SWEP.AimSpread = 0.00425
SWEP.VelocitySensitivity = 2.4
SWEP.MaxSpreadInc = 0.035
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.135
SWEP.Shots = 1
SWEP.Damage = 32
SWEP.DeployAnimSpeed = 0.8
SWEP.DeployTime = 0.65

SWEP.ReloadSpeed = 1
-- dude what the hell do these do?
SWEP.ReloadTime = 6.4
SWEP.ReloadTime_Empty = 4.8
-- SWEP.ReloadHalt = 7.2
-- SWEP.ReloadHalt_Empty = 5.35
SWEP.ReloadHalt = 6.4
SWEP.ReloadHalt_Empty = 7.2
SWEP.Chamberable = false
SWEP.BipodInstalled = true
