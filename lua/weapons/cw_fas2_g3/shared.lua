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
    SWEP.PrintName = "G3A3"
    SWEP.CSMuzzleFlashes = true

    SWEP.IronsightPos = Vector(-2.004, -2.652, 0.18)
    SWEP.IronsightAng = Vector(0.814, 0, 0)

    SWEP.CompM4Pos = Vector(-2, -1.5, -0.477)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.EoTechPos = Vector(-2, -5.191, -0.447)
    SWEP.EoTechAng = Vector(0, 0, 0)

    SWEP.ShortDotPos = Vector(-2.208, -4, -0)
    SWEP.ShortDotAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-1, 0, 0)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.AlternativeCrouchPos = Vector(-1.2, -1, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -2)


    SWEP.MuzzleEffect = "muzzleflash_g3"
    SWEP.Shell = "7.62x51"
    SWEP.PosBasedMuz = false
    SWEP.ShellScale = 1
    SWEP.ShellOffsetMul = 1
    SWEP.ShellPosOffset = {x = 3, y = 6, z = -3}
    SWEP.SightWithRail = false
    SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}

    -- SWEP.BoltBone = "ak74_Bolt"
    -- SWEP.BoltShootOffset = Vector(-3.6, 0, 0)
    -- SWEP.OffsetBoltOnBipodShoot = true

    SWEP.AttachmentModelsVM = {
        -- ["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "ak_frame", pos = Vector(-0.46, -3.5, -1.9), angle = Angle(0, -90, 0), size = Vector(0.75, 0.75, 0.75)},
        ["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "ak_frame", pos = Vector(-0.3, -2.5, -2.46), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8)}
    }

end

SWEP.MuzzleVelocity = 850 -- in meter/s
SWEP.BarrelBGs = {main = 2, sd = 1, regular = 0}
SWEP.SightBGs = {main = 3, fas2_eotech = 2, fas2_aimpoint = 1, regular = 0}
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -200},  atts = {"bg_fas2_compm4", "bg_fas2_eotech"}},
    [2] = {header = "Barrel", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    ["+reload"] = {header = "Ammo", offset = {500, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = "fire",
    fire_aim = "fire_scoped",
    reload = "reload",
    reload_empty = "reload_empty",
    idle = "idle",
    draw = "draw",
    holster = "holster"
}

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        [1] = {time = 0.85, sound = "CW_FAS2_G3_MAGOUT"},
        [2] = {time = 1.3, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.85, sound = "CW_FAS2_G3_MAGIN"}
    },
    reload_empty = {
        [1] = {time = 0.7, sound = "CW_FAS2_G3_BOLTBACK"},
        [2] = {time = 2.1, sound = "CW_FAS2_G3_MAGOUT_EMPTY"},
        [3] = {time = 2.6, sound = "CW_FOLEY_HEAVY"},
        [4] = {time = 3.2, sound = "CW_FAS2_G3_MAGIN"},
        [5] = {time = 4, sound = "CW_FAS2_G3_BOLTFORWARD"}
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
SWEP.ViewModel = "models/weapons/view/rifles/g3.mdl"
SWEP.WorldModel   = "models/weapons/w_g3a3.mdl"
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 20
SWEP.Primary.DefaultClip	= 40
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "7.62x51MM"

SWEP.FireDelay = 0.12
SWEP.FireSound = "CW_FAS2_G3_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_G3_FIRE_SUPP"
SWEP.Recoil = 1.1

SWEP.HipSpread = 0.055
SWEP.AimSpread = 0.0035
SWEP.VelocitySensitivity = 2.2
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.009
SWEP.SpreadCooldown = 0.15
SWEP.Shots = 1
SWEP.Damage = 42
SWEP.DeployTime = 0.8

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.3
SWEP.ReloadTime_Empty = 2.1
SWEP.ReloadHalt = 4.2
SWEP.ReloadHalt_Empty = 3.2
