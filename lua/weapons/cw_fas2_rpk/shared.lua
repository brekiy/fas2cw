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
    SWEP.PrintName = "RPK"

    SWEP.IronsightPos = Vector(-2.808, -4.874, 0.8805)
    SWEP.IronsightAng = Vector(0.048, 0, 0)

    SWEP.BipodAimOffsetPos = Vector(0.948, 0, 0.3995)
    SWEP.BipodAimOffsetAng = Vector()

    SWEP.CompM4Pos = Vector(-3.2715, -3.75, -0.28)
    SWEP.CompM4Ang = Vector()

    SWEP.EoTechPos = Vector(-3.3, -7.5, -0.15)
    SWEP.EoTechAng = Vector(0, 0, 0)

    SWEP.KobraPos = Vector(-3.35, -4.836, 0.28)
    SWEP.KobraAng = Vector(0.717, -0.638, 0)

    SWEP.PSOPos = Vector(-2.6475, -2.217, 0.246)
    SWEP.PSOAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-2, -5, -1)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-5, -6, -0.5)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -30)

    SWEP.MuzzleEffect = "muzzleflash_ak47"
    SWEP.Shell = "fas2_7.62x39"
    SWEP.SightWithRail = false
    SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.PSO1AxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.SchmidtShortDotAxisAlign = {right = 0, up = 0, forward = 0}

    SWEP.BackupSights = {
        ["bg_fas2_pso1"] = {
            [1] = Vector(-4.5, -2, 0.5),
            [2] = Vector(0, 0, -30),
        },
    }

    SWEP.AttachmentModelsVM = {
        ["md_rail"] = {model = "models/wystan/attachments/akrailmount.mdl", bone = "ak_frame", pos = Vector(-0.077, -0.245, 1.041), angle = Angle(0, -90, 0), size = Vector(1, 1, 1)},
        ["md_kobra"] = {model = "models/cw2/attachments/kobra.mdl", pos = Vector(0.59, 2, -0.9), angle = Angle(0, 180, 0), size = Vector(0.65, 0.65, 0.65), bone = "ak_frame"},
        ["md_pso1"] = {model = "models/cw2/attachments/pso.mdl", bone = "ak_frame", pos = Vector(0.25, -1, 0), angle = Angle(0, 180, 0), size = Vector(0.7, 0.7, 0.7)},
    }

end

SWEP.MuzzleVelocity = 738 -- in meter/s

SWEP.MuzzleBGs = {main = 1, sd = 1, regular = 0}
SWEP.SightBGs = {main = 2, fas2_pso1 = 1, regular = 0}
SWEP.RailBGs = {main = 2, on = 2, off = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {500, -200},  atts = {"bg_fas2_pso1",}},
    [2] = {header = "Muzzle", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    ["+use"] = {header = "Perk", offset = {1100, 500}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {500, 500}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"fire1", "fire2", "fire3"},
    fire_aim = {"fire1_scoped", "fire2_scoped", "fire3_scoped"},
    fire_bipod = {"fire1_bipod", "fire2_bipod", "fire3_bipod"},
    fire_bipod_aim = {"fire1_bipod_scoped", "fire2_bipod_scoped"},
    reload = "reload",
    reload_bipod = "reload_bipod",
    reload_empty = "reload_empty",
    reload_fast = "reload_nomen",
    reload_fast_bipod = "reload_nomen_bipod",
    reload_fast_empty = "reload_empty_nomen",
    reload_fast_bipod_empty = "reload_empty_nomen_bipod",
    idle = "idle",
    draw = "deploy",
    holster = "holster",
    bipod_down = "bipod_down",
    bipod_up = "bipod_up",
}

SWEP.SpeedDec = 20

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.UseHands = true

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/support/c_rpk.mdl"
SWEP.WorldModel   = "models/weapons/w_rif_ak47.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 40
SWEP.Primary.DefaultClip	= 160
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "7.62x39MM"

SWEP.FireDelay = 0.1
SWEP.FireSound = "CW_FAS2_AK47_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_AK47_FIRE_SUPP"
SWEP.Recoil = 0.95
SWEP.RecoilSide = 0.53

SWEP.HipSpread = 0.05
SWEP.AimSpread = 0.0042
SWEP.VelocitySensitivity = 2
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.0075
SWEP.SpreadCooldown = 0.145
SWEP.Shots = 1
SWEP.Damage = 36
SWEP.DeployTime = 0.6

SWEP.ReloadTime = 3.33
SWEP.ReloadTime_Empty = 5.5
SWEP.ReloadHalt = 3.33
SWEP.ReloadHalt_Empty = 5.5

SWEP.ReloadFastTime = 2.5
SWEP.ReloadFastTime_Empty = 3.17
SWEP.ReloadFastHalt = 2.5
SWEP.ReloadFastHalt_Empty = 3.17

SWEP.BipodInstalled = true
SWEP.BipodFireAnim = false
SWEP.BipodDeployTime = 0.9