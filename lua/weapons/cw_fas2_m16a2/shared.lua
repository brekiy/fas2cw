AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

CustomizableWeaponry:registerAmmo(".50 Beowulf", ".50 Beowulf Rounds", 12.7, 42)

if CLIENT then
    SWEP.Category = "CW 2.0 FA:S 2 Weapons"
    SWEP.Author			= "brekiy"
    SWEP.Contact		= ""
    SWEP.Purpose		= ""
    SWEP.Instructions	= ""

    SWEP.DrawCrosshair = false
    SWEP.PrintName = "M16A2"
    -- SWEP.CSMuzzleFlashes = true

    SWEP.IronsightPos = Vector(-2.2745, -2.5, 0.363)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.CompM4Pos = Vector(-2.28, -1.2, -0.6)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.EoTechPos = Vector(-2.28, -2.2, -0.8)
    SWEP.EoTechAng = Vector(0, 0, 0)

    SWEP.ELCANPos = Vector(-2.28, -2.2, -0.8)
    SWEP.ELCANAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-1, 0, 0.2)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.AlternativeCrouchPos = Vector(-1.6, -1, 0.2)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -2)

    SWEP.ViewModelMovementScale = 1.15

    SWEP.MuzzleEffect = "muzzleflash_6"
    SWEP.Shell = "556x45"
    SWEP.PosBasedMuz = false
    -- SWEP.ShellScale = 0.55
    -- SWEP.ShellOffsetMul = 1
    -- SWEP.ShellPosOffset = {x = -1.5, y = 0, z = -3}
    SWEP.SightWithRail = false
    SWEP.ELCANAxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.CustomizationMenuScale = 0.01

    SWEP.AttachmentModelsVM = {}

end

SWEP.MuzzleVelocity = 880 -- in meter/s

SWEP.BarrelBGs = {main = 2, sd = 1, regular = 0}
SWEP.SightBGs = {main = 3, fas2_elcan = 3, fas2_eotech = 2, fas2_aimpoint = 1, regular = 0}

-- TODO: fix elcan
SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -200},  atts = {"bg_fas2_eotech", "bg_fas2_compm4", "bg_fas2_elcan"}},
    [2] = {header = "Barrel", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Caliber", offset = {100, 200}, atts = {"am_fas2_50ar"}},
    ["+reload"] = {header = "Ammo", offset = {800, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"fire", "fire2", "fire3"},
    fire_aim = "shoot_scoped",
    fire_last = "idle_scoped",
    fire_aim_last = "idle_scoped_empty",
    reload = "reload",
    reload_empty = "reload_empty",
    idle = "idle",
    draw = "deploy",
    draw_empty = "deploy_empty",
    holster = "holster"
}

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        [1] = {time = 0.42, sound = "CW_FAS2_M16A2_MAGOUT"},
        [2] = {time = 0.69, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.21, sound = "CW_FAS2_M16A2_MAGIN"}
    },
    reload_empty = {
        [1] = {time = 0.4, sound = "CW_FAS2_M16A2_MAGOUT_EMPTY"},
        [2] = {time = 0.6, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 0.99, sound = "CW_FAS2_M16A2_MAGIN"},
        [4] = {time = 2.13, sound = "CW_FAS2_M16A2_BOLTCATCH"}
    }
}

SWEP.SpeedDec = 30

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"3burst", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/rifles/M16A2.mdl"
SWEP.WorldModel   = "models/weapons/b_m16a2.mdl"
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 60
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
SWEP.Damage = 32
SWEP.DeployTime = 0.41

-- holy shit the regular speed is fast
SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 1.76
SWEP.ReloadTime_Empty = 1.4
SWEP.ReloadHalt = 2.65
SWEP.ReloadHalt_Empty = 1.8
