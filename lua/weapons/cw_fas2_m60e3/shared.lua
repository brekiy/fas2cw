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
    SWEP.PrintName = "M60E3"
    SWEP.CSMuzzleFlashes = true

    SWEP.IronsightPos = Vector(-2.835, -5.474, 1.8)
    SWEP.IronsightAng = Vector(0.018, 0, 0)

    SWEP.CompM4Pos = Vector(-2.845, -3.25, 1.355)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.EoTechPos = Vector(-2.845, -5.56, 0.95)
    SWEP.EoTechAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-0.4, -1, 1.2)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.AlternativeCrouchPos = Vector(-0.9, -1.1, 1.4)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -5)

    SWEP.ViewModelMovementScale = 1.15

    SWEP.MuzzleEffect = "muzzleflash_6"
    SWEP.Shell = "762x51"
    SWEP.PosBasedMuz = false
    SWEP.ShellScale = 1
    -- SWEP.ShellOffsetMul = 1
    SWEP.ShellPosOffset = {x = 4, y = 0, z = 1}
    SWEP.SightWithRail = false
    SWEP.ELCANAxisAlign = {right = 0, up = 0, forward = 0}
    -- SWEP.CustomizationMenuScale = 0.01

    SWEP.AttachmentModelsVM = {
        -- ["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "ak_frame", pos = Vector(-0.3, -2.5, -2.46), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8}
    }

end

SWEP.MuzzleVelocity = 853 -- in meter/s

SWEP.BarrelBGs = {main = 4, sd = 1, regular = 0}
SWEP.SightBGs = {main = 3, fas2_eotech = 2, fas2_aimpoint = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -200},  atts = {"bg_fas2_eotech", "bg_fas2_compm4"}},
    [2] = {header = "Barrel", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    ["+reload"] = {header = "Ammo", offset = {800, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"fire1", "fire2", "fire3"},
    -- fire = "fire_first",
    fire_aim = "fire_first",
    fire_last = "Fire_Last00",
    fire_aim_last = "idle00",
    reload = "reload",
    reload_empty = "reload_fired00",
    idle = "idle_unfired",
    draw = "deploy",
    draw_empty = "Deploy00",
    holster = "holster"
}

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_HEAVY"}},
    reload = {
        [1] = {time = 0.14, sound = "CW_FOLEY_HEAVY"},
        [2] = {time = 0.32, sound = "CW_FAS2_M60_OPEN"},
        [3] = {time = 0.7, sound = "CW_FAS2_M60_BELTREMOVE"},
        [4] = {time = 1.4, sound = "CW_FOLEY_HEAVY"},
        [5] = {time = 2.1, sound = "CW_FAS2_M60_VELCRORIP"},
        [6] = {time = 2.6, sound = "CW_FAS2_M60_CARDBOARDREMOVE"},
        [7] = {time = 3.0, sound = "CW_FOLEY_HEAVY"},
        [8] = {time = 4.1, sound = "CW_FAS2_M60_CARDBOARDINSERT"},
        [9] = {time = 4.65, sound = "CW_FAS2_M60_CARDBOARDRIP"},
        [10] = {time = 5.35, sound = "CW_FAS2_M60_BELTINSERT"},
        [11] = {time = 6.58, sound = "CW_FAS2_M60_VELCROCLOSE"},
        [12] = {time = 7.29, sound = "CW_FAS2_M60_CLOSE"}
    },
    reload_fired00 = {
        [1] = {time = 0.13, sound = "CW_FOLEY_HEAVY"},
        [2] = {time = 0.32, sound = "CW_FAS2_M60_OPEN"},
        [3] = {time = 0.9, sound = "CW_FAS2_M60_CHARGE"},
        [4] = {time = 1.2, sound = "CW_FOLEY_HEAVY"},
        [5] = {time = 2.3, sound = "CW_FAS2_M60_VELCRORIP"},
        [6] = {time = 2.9, sound = "CW_FAS2_M60_CARDBOARDREMOVE"},
        [7] = {time = 3.5, sound = "CW_FOLEY_HEAVY"},
        [8] = {time = 4.35, sound = "CW_FAS2_M60_CARDBOARDINSERT"},
        [9] = {time = 4.8, sound = "CW_FAS2_M60_CARDBOARDRIP"},
        [10] = {time = 5.35, sound = "CW_FAS2_M60_BELTINSERT"},
        [11] = {time = 6.28, sound = "CW_FAS2_M60_VELCROCLOSE"},
        [12] = {time = 7.2, sound = "CW_FAS2_M60_CLOSE"}
    }
}

SWEP.SpeedDec = 30

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/support/m60e3.mdl"
SWEP.WorldModel   = "models/weapons/w_m60e3.mdl"
SWEP.MuzzleAttachment = 1
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 100
SWEP.Primary.DefaultClip	= 200
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "7.62x51MM"

SWEP.FireDelay = 0.11
SWEP.FireSound = "CW_FAS2_M60_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_M60_FIRE_SUPP"
SWEP.Recoil = 1.45585

SWEP.HipSpread = 0.05521
SWEP.AimSpread = 0.00425
SWEP.VelocitySensitivity = 2.4
SWEP.MaxSpreadInc = 0.035
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.14
SWEP.Shots = 1
SWEP.Damage = 50
SWEP.DeployAnimSpeed = 0.8
SWEP.DeployTime = 0.65

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 7.65
SWEP.ReloadTime_Empty = 6.1
SWEP.ReloadHalt = 7.65
SWEP.ReloadHalt_Empty = 6.1
SWEP.Chamberable = false
SWEP.BipodInstalled = true
