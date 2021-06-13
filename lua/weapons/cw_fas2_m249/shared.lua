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

    SWEP.IronsightPos = Vector(-5.31, -3, 3.3)
    SWEP.IronsightAng = Vector(0.018, 0, 0)

    SWEP.BipodAimOffsetPos = Vector(1.395, 0, -1.2)
    SWEP.BipodAimOffsetAng = Vector()

    SWEP.CompM4Pos = Vector(-5.31, -5, 2.3475)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.ELCANPos = Vector(-5.31, -4.64, 1.575)
    SWEP.ELCANAng = Vector(-0.6, 0, 0)

    SWEP.EoTechPos = Vector(-5.31, -6, 1.743)
    SWEP.EoTechAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-0.4, -1, 1.2)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.AlternativeCrouchPos = Vector(-0.9, -1.1, 1.4)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -5)

    SWEP.MuzzleEffect = "muzzleflash_6"
    SWEP.Shell = "fas2_5.56x45"
    SWEP.ShellPosOffset = {x = 3, y = -2, z = 5}
    SWEP.SightWithRail = false
    SWEP.ELCANAxisAlign = {right = 0, up = 0, forward = 0}
    -- SWEP.ForeGripOffsetCycle_Draw = 0
    -- SWEP.ForeGripOffsetCycle_Reload = 0.65
    -- SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
    SWEP.CustomizationMenuScale = 0.016
    SWEP.AttachmentModelsVM = {
        -- ["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "ak_frame", pos = Vector(-0.3, -2.5, -2.46), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8}
    }

end

SWEP.MuzzleVelocity = 880 -- in meter/s

SWEP.MuzzleBGs = {main = 3, sd = 1, regular = 0}
SWEP.SightBGs = {main = 1, fas2_elcan = 3, fas2_eotech = 2, fas2_aimpoint = 1, regular = 0}
SWEP.MagBGs = {main = 4, rnd200 = 1, regular = 0}
SWEP.BarrelBGs = {main = 2, para = 1, regular = 0}
SWEP.StockBGs = {main = 5, para = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -200},  atts = {"bg_fas2_eotech", "bg_fas2_compm4", "bg_fas2_elcan"}},
    [2] = {header = "Muzzle", offset = {-400, -200}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Barrel", offset = {-400, 200}, atts = {"bg_fas2_m249parabarrel"}},
    [4] = {header = "Magazine", offset = {200, 600}, atts = {"bg_fas2_lmgx200mag"}},
    [5] = {header = "Stock", offset = {1400, 600}, atts = {"bg_fas2_m249parastock"}},
    ["+use"] = {header = "Perk", offset = {500, 100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {800, 600}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = "fire1",
    fire_aim = "fire1_scoped",
    fire_last = "Fire_empty",
    fire_aim_last = "fire_empty_scoped",
    fire_bipod = "bipod_fire1",
    fire_bipod_last = "bipod_fire_empty",
    fire_bipod_aim = "bipod_fire1_scoped",
    fire_bipod_aim_last = "bipod_fire_empty_scoped",
    reload = "reload",
    reload_empty = "reload_empty",
    idle = "idle_unfired",
    draw = "deploy",
    draw_empty = "deploy_empty",
    holster = "holster",
    bipod_down = "bipod_down",
    bipod_up = "bipod_up",
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
SWEP.ViewModel = "models/weapons/view/support/c_m249.mdl"
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
SWEP.AimSpread = 0 --0.00425
SWEP.VelocitySensitivity = 2.4
SWEP.MaxSpreadInc = 0.035
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.135
SWEP.Shots = 1
SWEP.Damage = 29
SWEP.DeployAnimSpeed = 0.8
SWEP.DeployTime = 0.65

SWEP.ReloadSpeed = 1
-- dude what the hell do these do?
SWEP.ReloadTime = 6.4
SWEP.ReloadTime_Empty = 7.2
SWEP.ReloadHalt = 6.6
SWEP.ReloadHalt_Empty = 7.4

SWEP.ReloadFastTime = 4.8
SWEP.ReloadFastTime_Empty = 5.35
SWEP.ReloadFastHalt = 5
SWEP.ReloadFastHalt_Empty = 5.5

SWEP.Chamberable = false
SWEP.BipodInstalled = true
SWEP.BipodFireAnim = false
SWEP.BipodDeployTime = 0.9
