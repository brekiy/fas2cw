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
    SWEP.PrintName = "SVD"

    SWEP.IronsightPos = Vector(-3.6, -4.191, 2.23)
    SWEP.IronsightAng = Vector()

    SWEP.CompM4Pos = Vector(-3.2715, -3.75, -0.28)
    SWEP.CompM4Ang = Vector()

    SWEP.EoTechPos = Vector(-3.3, -7.5, -0.15)
    SWEP.EoTechAng = Vector(0, 0, 0)

    SWEP.KobraPos = Vector(-3.7, -4.836, 0.78)
    SWEP.KobraAng = Vector(0.717, -0.638, 0)

    SWEP.ShortDotPos = Vector(-3.312, -4, -0.05)
    SWEP.ShortDotAng = Vector(0, 0, 0)

    SWEP.PSOPos = Vector(-3.427, -5, 1.22)
    SWEP.PSOAng = Vector(-0.045, -0.05, 0)

    SWEP.AlternativePos = Vector(-0.75, 0, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-5, -1, -1)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -30)

    SWEP.MuzzleEffect = "muzzleflash_SR25"
    SWEP.Shell = "fas2_7.62x54"
    SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
    SWEP.SightWithRail = true
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
        ["md_kobra"] = {model = "models/cw2/attachments/kobra.mdl", pos = Vector(-8, 1.5, -0.55), angle = Angle(90, -90, 0), size = Vector(0.65, 0.65, 0.65), bone = "SVD Receiver"},
    }

end

SWEP.MuzzleVelocity = 825 -- in meter/s

SWEP.MuzzleBGs = {main = 1, sd = 1, regular = 0}
SWEP.SightBGs = {main = 2, fas2_pso1 = 1, regular = 0}
SWEP.RailBGs = {main = 3, on = 1, off = 0}
SWEP.MagBGs = {main = 4, fas2_93 = 2, rnd20 = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -200},  atts = {"md_kobra", "bg_fas2_pso1",}},
    [2] = {header = "Muzzle", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Caliber", offset = {-200, 400}, atts = {"am_fas2_93svd"}},
    ["+use"] = {header = "Perk", offset = {1200, 400}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {500, 400}, atts = {"am_magnum", "am_matchgrade"}}
}
-- TODO: make fireanim
SWEP.Animations = {
    fire = {"fire", "fire2", "fire3"},
    -- fire_aim = "fire2",
    fire_last = {"fire", "fire2", "fire3"},
    -- fire_aim_last = "fire2",
    reload = "reload",
    reload_empty = "reload_empty",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload_empty_nomen",
    idle = "idle",
    draw = "deploy",
    holster = "holster"
}

SWEP.SpeedDec = 20

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_fas2_base"

SWEP.UseHands = true

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/support/c_svd.mdl"
SWEP.WorldModel   = "models/weapons/w_rif_ak47.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 40
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "7.62x54MMR"

SWEP.FireAnimSpeed = 1.2
SWEP.FireDelay = 0.12
SWEP.FireSound = "CW_FAS2_SVD_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_SVD_FIRE_SUPP"
SWEP.Recoil = 1.4
SWEP.RecoilSide = 0.73

SWEP.HipSpread = 0.048
SWEP.AimSpread = 0.0006
SWEP.VelocitySensitivity = 2.2
SWEP.MaxSpreadInc = 0.04
SWEP.SpreadPerShot = 0.0075
SWEP.SpreadCooldown = 0.16
SWEP.Shots = 1
SWEP.Damage = 53
SWEP.DeployTime = 0.6

SWEP.ReloadTime = 3.33
SWEP.ReloadTime_Empty = 5.3
SWEP.ReloadHalt = 3.33
SWEP.ReloadHalt_Empty = 5.3

SWEP.ReloadFastTime = 2.67
SWEP.ReloadFastTime_Empty = 4.56
SWEP.ReloadFastHalt = 2.67
SWEP.ReloadFastHalt_Empty = 4.56