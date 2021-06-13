AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")
-- TODO: fix vertex lighting on the 5501 handguard
if CLIENT then
    SWEP.Category = "CW 2.0 FA:S 2 Weapons"
    SWEP.Author			= "brekiy"
    SWEP.Contact		= ""
    SWEP.Purpose		= ""
    SWEP.Instructions	= ""

    SWEP.DrawCrosshair = false
    SWEP.PrintName = "SG550"

    SWEP.IronsightPos = Vector(-2.4735, -3.757, 0.6945)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.EoTechPos = Vector(-2.475, -3.727, -0.201)
    SWEP.EoTechAng = Vector(0, 0, 0)

    SWEP.ACOGPos = Vector(-2.4705, -3.79, -0.1095)
    SWEP.ACOGAng = Vector(0, 0, 0)

    SWEP.LeupoldPos = Vector(-2.4705, -4, -0.1)
    SWEP.LeupoldAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-0.24, 0, -0.18)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.AlternativeCrouchPos = Vector(-0.7, 0, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -5)

    SWEP.MuzzleEffect = "muzzleflash_6"
    SWEP.Shell = "fas2_5.56x45"
    SWEP.PosBasedMuz = false
    SWEP.ShellPosOffset = {x = 0, y = 0, z = 5}
    SWEP.SightWithRail = false
    SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.LeupoldAxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.ForeGripOffsetCycle_Draw = 0
    SWEP.ForeGripOffsetCycle_Reload = 0.65
    SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
    SWEP.CustomizationMenuScale = 0.0135
    SWEP.AttachmentModelsVM = {
        -- ["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "ak_frame", pos = Vector(-0.3, -2.5, -2.46), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8}
    }

end

SWEP.MuzzleVelocity = 880 -- in meter/s

SWEP.MuzzleBGs = {main = 2, sd_long = 3, sd_short = 2, sd = 1, regular = 0}
SWEP.HandguardBGs = {main = 1, sg5501 = 2, sg552 = 1, regular = 0}
SWEP.SightBGs = {main = 3, fas2_leupold = 3, fas2_acog = 2, fas2_eotech = 1, regular = 0}
SWEP.MagBGs = {main = 4, rnd30 = 1, regular = 0}
SWEP.RailBGs = {main = 5, on = 0, off = 1}
SWEP.StockBGs = {main = 6, nostock = 2, sniper = 1, regular = 0}
SWEP.PGripBGs = {main = 7, sniper = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -400},  atts = {"bg_fas2_eotech", "bg_fas2_acog", "bg_fas2_leupold"}},
    [2] = {header = "Muzzle", offset = {-200, -400}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Magazine", offset = {400, 600}, atts = {"bg_fas2_sig55xmag"}},
    [4] = {header = "Variants", offset = {0, 0}, atts = {"bg_fas2_sig552", "bg_fas2_sig550_1"}},
    ["+use"] = {header = "Perk", offset = {1200, -200}, atts = {"pk_fas2_fast_reload"}},
    [6] = {header = "Pistol Grip", offset = {1000, 200}, atts = {"bg_fas2_sig55xgrip_sniper"}},
    [7] = {header = "Stock", offset = {1000, 550}, atts = {"bg_fas2_sig55xstock_sniper"}},
    ["+reload"] = {header = "Ammo", offset = {-100, 600}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"fire", "fire2", "fire3"},
    fire_aim = {"fire_scoped", "fire_scoped2", "fire_scoped3"},
    fire_last = "fire_last",
    fire_aim_last = "fire_scoped_last",
    reload = "reload",
    reload_empty = "reload_empty",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload_empty_nomen",
    idle = "idle",
    draw = "deploy",
    draw_empty = "deploy_empty",
    holster = "holster"
}


SWEP.SpeedDec = 25

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "3burst", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/rifles/c_sg550.mdl"
SWEP.WorldModel   = "models/weapons/w_m4.mdl"
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

-- Special stuff
SWEP.SG552Active = false
SWEP.SG5501Active = false

SWEP.Primary.ClipSize		= 20
SWEP.Primary.DefaultClip	= 80
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 0.0857
SWEP.FireSound = "CW_FAS2_SG550_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_SG550_FIRE_SUPP"
SWEP.Recoil = 0.58

SWEP.HipSpread = 0.052
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 1.85
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.14
SWEP.Shots = 1
SWEP.Damage = 27
SWEP.DeployTime = 0.6

SWEP.ReloadTime = 2.6
SWEP.ReloadTime_Empty = 2.7
SWEP.ReloadHalt = 2.7
SWEP.ReloadHalt_Empty = 2.8

SWEP.ReloadFastTime = 1.9
SWEP.ReloadFastTime_Empty = 1.9
SWEP.ReloadFastHalt = 2.05
SWEP.ReloadFastHalt_Empty = 2.15
