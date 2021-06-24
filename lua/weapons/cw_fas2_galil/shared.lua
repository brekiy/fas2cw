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
    SWEP.PrintName = "Galil"

    SWEP.IronsightPos = Vector(-4.485, -5.053, 0.705)
    SWEP.IronsightAng = Vector(-0.1, 0.01, 1)

    SWEP.CompM4Pos = Vector(-4.365, -4, -0.63)
    SWEP.CompM4Ang = Vector(-0.084, 0, 0)

    SWEP.EoTechPos = Vector(-4.4025, -4, -0.84)
    SWEP.EoTechAng = Vector(0, 0, 0)

    SWEP.PSOPos = Vector(-4.18875, -2.5, 0)
    SWEP.PSOAng = Vector(0, 0, 0)

    SWEP.ELCANPos = Vector(-4.4025, -3, -0.855)
    SWEP.ELCANAng = Vector(-0.631, 0, 0)

    SWEP.AlternativePos = Vector(-1.5, 0, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-6, -1, -0.5)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -30)

    SWEP.MuzzleEffect = "muzzleflash_6"
    SWEP.Shell = "fas2_5.56x45"
    SWEP.SightWithRail = false
    SWEP.ELCANAxisAlign = {right = 0.5, up = 0, forward = 0}
    SWEP.PSO1AxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.ForeGripOffsetCycle_Draw = 0
    SWEP.ForeGripOffsetCycle_Reload = 0.85
    SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9

    SWEP.BackupSights = {
        ["bg_fas2_pso1"] = {
            [1] = Vector(-6, -5.053, -0.705),
            [2] = Vector(0, 0, -30),
        },
    }

    SWEP.AttachmentModelsVM = {
        -- ["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "ak_frame", pos = Vector(-0.46, -3.5, -1.9), angle = Angle(0, -90, 0), size = Vector(0.75, 0.75, 0.75},
    }

end

SWEP.MuzzleVelocity = 880 -- in meter/s

SWEP.MuzzleBGs = {main = 1, sd = 1, regular = 0}
SWEP.SightBGs = {main = 2, fas2_pso1 = 4, fas2_eotech = 3, fas2_elcan = 2, fas2_aimpoint = 1, regular = 0}
SWEP.RailBGs = {main = 3, on = 1, off = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {500, -200},  atts = {"bg_fas2_eotech", "bg_fas2_compm4", "bg_fas2_elcan", "bg_fas2_pso1"}},
    [2] = {header = "Muzzle", offset = {-100, -200}, atts = {"bg_fas2_suppressor"}},
    -- [3] = {header = "Handguard", offset = {-100, 100}, atts = {"md_foregrip"}},
    ["+use"] = {header = "Perk", offset = {1200, 600}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {500, 600}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = "fire",
    fire_aim = "fire_scoped",
    fire_last = "fire_last",
    fire_aim_last = "fire_Last_scoped",
    reload = "reload",
    reload_empty = "reload_empty",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload_empty_nomen",
    idle = "idle",
    draw = "deploy",
    draw_empty = "deploy_empty",
    holster = "holster"
}

SWEP.SpeedDec = 20

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/rifles/c_galil.mdl"
SWEP.WorldModel   = "models/weapons/w_rif_galil.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 35
SWEP.Primary.DefaultClip	= 150
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 0.092307692307692
SWEP.FireSound = "CW_FAS2_AK12_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_AK74_FIRE_SUPP"
SWEP.Recoil = 0.795
SWEP.RecoilSide = 0.43

SWEP.HipSpread = 0.05
SWEP.AimSpread = 0.004
SWEP.VelocitySensitivity = 1.7
SWEP.MaxSpreadInc = 0.032
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.152
SWEP.Shots = 1
SWEP.Damage = 28
SWEP.DeployTime = 0.7

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.6
SWEP.ReloadTime_Empty = 3.7
SWEP.ReloadHalt = 2.75
SWEP.ReloadHalt_Empty = 3.85

SWEP.ReloadFastTime = 2.2
SWEP.ReloadFastTime_Empty = 2.8
SWEP.ReloadFastHalt = 2.35
SWEP.ReloadFastHalt_Empty = 2.95
