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
    SWEP.PrintName = "FAMAS"
    SWEP.CSMuzzleFlashes = true

    SWEP.IronsightPos = Vector(-1.989, -5.487, 0.7)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.CompM4Pos = Vector(-1.989, 0, -0.585)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.ShortDotPos = Vector(-2.208, -4, -0)
    SWEP.ShortDotAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-0.24, 0, -0.48)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.MuzzleEffect = "muzzleflash_6"
    SWEP.Shell = "5.56x45"
    SWEP.PosBasedMuz = false
    SWEP.ShellScale = 1
    SWEP.ShellOffsetMul = 1
    SWEP.ShellPosOffset = {x = -1.5, y = 0, z = -3}
    SWEP.SightWithRail = false
    SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}

    SWEP.AttachmentModelsVM = {
        -- ["md_rail"] = {model = "models/wystan/attachments/akrailmount.mdl", bone = "ak_frame", pos = Vector(-0.1, 1.5, 1), angle = Angle(0, 0, 0), size = Vector(0.8, 0.8, 0.8)},
        -- ["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "frame", pos = Vector(-0.3, -2.5, -2.46), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8)}
    }
end

SWEP.MuzzleVelocity = 880 -- in meter/s
SWEP.BarrelBGs = {main = 2, sd = 1, regular = 0}
SWEP.SightBGs = {main = 3, fas2_aimpoint = 1, regular = 0}
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -500},  atts = {"bg_fas2_compm4"}},
    [2] = {header = "Barrel", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    ["+reload"] = {header = "Ammo", offset = {500, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = "shoot1",
    fire_aim = "shoot_ironsight",
    fire_last = "shoot_last",
    fire_aim_last = "shoot_ironsight_last",
    reload = "reload",
    reload_empty = "reload_empty",
    idle = "idle",
    draw = "draw",
    draw_empty = "draw_empty",
    holster = "holster"
}

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        [1] = {time = 0.7, sound = "CW_FAS2_FAMAS_MAGOUT"},
        [2] = {time = 1.2, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.65, sound = "CW_FAS2_FAMAS_MAGIN"}
    },
    reload_empty = {
        [1] = {time = 0.7, sound = "CW_FAS2_FAMAS_MAGOUT_EMPTY"},
        [2] = {time = 1.15, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.7, sound = "CW_FAS2_FAMAS_MAGIN"},
        [4] = {time = 2.5, sound = "CW_FAS2_FAMAS_COCK"}
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
SWEP.ViewModel = "models/weapons/view/rifles/famas.mdl"
SWEP.WorldModel   = "models/weapons/w_famas.mdl"
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 25
SWEP.Primary.DefaultClip	= 50
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 0.06
SWEP.FireSound = "CW_FAS2_FAMAS_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_FAMAS_FIRE_SUPP"
SWEP.Recoil = 0.75

SWEP.HipSpread = 0.044
SWEP.AimSpread = 0.0035
SWEP.VelocitySensitivity = 1.55
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.009
SWEP.SpreadCooldown = 0.14
SWEP.Shots = 1
SWEP.Damage = 27
SWEP.DeployTime = 0.75

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.4
SWEP.ReloadTime_Empty = 2
SWEP.ReloadHalt = 3.3
SWEP.ReloadHalt_Empty = 2.7
