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
    SWEP.PrintName = "AK-74"
    SWEP.CSMuzzleFlashes = true

    SWEP.IronsightPos = Vector(-2.201, -4.646, 0.675)
    SWEP.IronsightAng = Vector(0.264, 0, 0)

    SWEP.CompM4Pos = Vector(-2.2, -2.5, -0.31)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.EoTechPos = Vector(-2.2, -5, -0.1)
    SWEP.EoTechAng = Vector(0, 0, 0)

    SWEP.KobraPos = Vector(-2.275, -3.224, 0.055)
    SWEP.KobraAng = Vector(0.717, -0.638, 0)

    SWEP.PSOPos = Vector(-1.85, -3, 0.33)
    SWEP.PSOAng = Vector(0, 0, 0)

    SWEP.ShortDotPos = Vector(-2, -4, -0.45)
    SWEP.ShortDotAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-0.24, 0, -0.48)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.MuzzleEffect = "muzzleflash_ak74"
    SWEP.PosBasedMuz = false
    SWEP.ShellScale = 0.55
    SWEP.ShellOffsetMul = 1
    SWEP.ShellPosOffset = {x = -1.5, y = 0, z = -3}
    SWEP.SightWithRail = false
    SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.PSO1AxisAlign = {right = 0, up = 0, forward = 90}
    SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.ForeGripOffsetCycle_Draw = 0
    SWEP.ForeGripOffsetCycle_Reload = 0.65
    SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9

    -- SWEP.BoltBone = "ak74_Bolt"
    -- SWEP.BoltShootOffset = Vector(-3.6, 0, 0)
    -- SWEP.OffsetBoltOnBipodShoot = true

    SWEP.AttachmentModelsVM = {
        ["md_rail"] = {model = "models/wystan/attachments/akrailmount.mdl", bone = "ak_frame", pos = Vector(-0.1, 1.5, 1), angle = Angle(0, 0, 0), size = Vector(0.8, 0.8, 0.8)},
        ["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "ak_frame", pos = Vector(-0.46, -3.5, -1.9), angle = Angle(0, -90, 0), size = Vector(0.75, 0.75, 0.75)},
        ["md_kobra"] = {model = "models/cw2/attachments/kobra.mdl", bone = "ak_frame", pos = Vector(0.4, 2, -1), angle = Angle(0, 180, 0), size = Vector(0.5, 0.5, 0.5)},
        ["md_pso1"] = {model = "models/cw2/attachments/pso.mdl", bone = "ak_frame", pos = Vector(0.25, -1, 0), angle = Angle(0, 180, 0), size = Vector(0.5, 0.5, 0.5)},
        -- ["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "ak_frame", pos = Vector(-0.2, -3, -2.05), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8)}
    }

    -- blegh
    SWEP.ForeGripHoldPos = {
        ["Left Impudicus Phalanges2"] = { pos = Vector(0, 0, 0), angle = Angle(0, -16.667, 0) },
        ["Left Polex Phalange3"] = { pos = Vector(0, 0, 0), angle = Angle(0, -38.889, 0) },
        ["Left Demonstratus Phalanges1"] = { spos = Vector(0, 0, 0), angle = Angle(0, -38.334, 0) },
        ["Left Annularis Phalanges1"] = { pos = Vector(0, 0, 0), angle = Angle(0, -14.445, 16.666) },
        ["Left Lower Arm 2"] = { pos = Vector(0, 0, 0), angle = Angle(12, 0, 0) },
        ["Left Auricularis Phalanges1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(5.556, -7.778, 0) },
        ["Left Polex Phalange2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-10, -43.334, 18.888) },
        ["Left Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0.1, -0.187, -1), angle = Angle(0, -25.556, 67.777) },
        ["Left Annularis Phalanges2"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, -3.333, 0) },
        ["Left Polex Metacarpal"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-12.223, -23.334, 0) },
        ["Left Polex Phalange1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-7.778, -21.112, 0) }
    }
end

SWEP.MuzzleVelocity = 880 -- in meter/s

SWEP.BarrelBGs = {main = 2, sd = 1, regular = 0}
SWEP.SightBGs = {main = 3, fas2_eotech = 3, fas2_elcan = 2, fas2_aimpoint = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -200},  atts = {"md_kobra", "bg_fas2_compm4", "md_pso1",}},
    [2] = {header = "Barrel", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Handguard", offset = {-100, 100}, atts = {"md_foregrip"}},
    -- [4] = {header = "Magazine", offset = {-400, 0}, atts = {"bg_ak74rpkmag"}},
    ["+reload"] = {header = "Ammo", offset = {500, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = "fire",
    fire_aim = "fire_scoped",
    reload = "reload",
    reload_empty = "reload_empty",
    idle = "idle",
    draw = "deploy",
    holster = "holster"
}

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        [1] = {time = 1, sound = "CW_FAS2_AK12_MAGOUT"},
        [2] = {time = 1.5, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.9, sound = "CW_FAS2_AK12_MAGIN"}
    },
    reload_empty = {
        [1] = {time = 0.7, sound = "CW_FAS2_AK12_MAGOUT_EMPTY"},
        [2] = {time = 1.15, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.85, sound = "CW_FAS2_AK12_MAGIN"},
        [4] = {time = 2.9, sound = "CW_FAS2_AK12_COCK"}
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
SWEP.ViewModel = "models/weapons/view/rifles/ak74.mdl"
SWEP.WorldModel   = "models/weapons/w_rif_ak47.mdl"
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 60
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.45x39MM"

SWEP.FireDelay = 0.092307692307692
SWEP.FireSound = "CW_FAS2_AK74_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_AK74_FIRE_SUPP"
SWEP.Recoil = 0.85

SWEP.HipSpread = 0.0475
SWEP.AimSpread = 0.0045
SWEP.VelocitySensitivity = 1.8
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.14
SWEP.Shots = 1
SWEP.Damage = 31
SWEP.DeployTime = 0.8

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.6
SWEP.ReloadTime_Empty = 2.2
SWEP.ReloadHalt = 3
SWEP.ReloadHalt_Empty = 3.3
