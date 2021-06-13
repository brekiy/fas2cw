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
    SWEP.PrintName = "MAC-11"

    SWEP.IronsightPos = Vector(-5, 3, 0)
    SWEP.IronsightAng = Vector(0, 0, -60)

    SWEP.UnfoldPos = Vector(-3.0465, -5.177, 1)
    SWEP.UnfoldAng = Vector(0, 0, 0)

    SWEP.CompM4Pos = Vector(-3.474, -2, 0.42)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-0.8, -1, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-5.4, -1, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -40)

    SWEP.MuzzleEffect = "muzzleflash_smg"
    SWEP.Shell = "fas2_380acp"
    SWEP.ShellPosOffset = {x = 0, y = 0, z = -1.5}
    SWEP.SightWithRail = false
    -- SWEP.ForeGripOffsetCycle_Draw = 0.5
    -- SWEP.ForeGripOffsetCycle_Reload = 0.8
    -- SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
    SWEP.AttachmentModelsVM = {    }

    -- SWEP.ForegripOverridePos = {
    --     ["bg_fas2_macstock"] = {
    --         ["Left Hand"] = {pos = Vector(14.433, -10.3093, 12.3711), angle = Angle(-20, -40, -90)},
    --         ["Left Lower Arm 2"] = {pos = Vector(), angle = Angle(0, 44.5361, 0)},
    --     },
    -- }

end

SWEP.MuzzleVelocity = 320 -- in meter/s

SWEP.MuzzleBGs = {main = 1, sd = 1, regular = 0}
SWEP.StockBGs = {main = 2, unfold = 1, regular = 0}

SWEP.Attachments = {
    -- [1] = {header = "Sight", offset = {400, -200},  atts = {"bg_fas2_compm4"}},
    [2] = {header = "Muzzle", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    -- [3] = {header = "Caliber", offset = {100, 200}, atts = {"am_fas2_9bizon"}},
    [4] = {header = "Stock", offset = {100, 200}, atts = {"bg_fas2_macstock"}},
    ["+use"] = {header = "Perk", offset = {500, 100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {800, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"fire", "fire2"},
    fire_aim = "fire_iron",
    fire_last = "fire_last",
    fire_aim_last = "fire_iron_last",
    reload = "reload",
    reload_empty = "reload_empty",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload_empty_nomen",
    idle = "idle",
    draw = "draw",
    draw_empty = "draw_empty",
    holster = "holster"
}

SWEP.SpeedDec = 10

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 55
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/smgs/c_mac11.mdl"
SWEP.WorldModel   = "models/weapons/w_smg_mac10.mdl" -- TODO
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 32
SWEP.Primary.DefaultClip	= 128
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= ".380 ACP"

SWEP.FireDelay = 0.0375
SWEP.FireSound = "CW_FAS2_MAC11_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_MAC11_FIRE_SUPP"
SWEP.Recoil = 0.5

SWEP.HipSpread = 0.032
SWEP.AimSpread = 0.017
SWEP.VelocitySensitivity = 1.35
SWEP.MaxSpreadInc = 0.05
SWEP.SpreadPerShot = 0.005
SWEP.SpreadCooldown = 0.14
SWEP.Shots = 1
SWEP.Damage = 16
SWEP.DeployTime = 0.45
SWEP.Chamberable = false

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 3.3
SWEP.ReloadTime_Empty = 4.7
SWEP.ReloadHalt = 3.3
SWEP.ReloadHalt_Empty = 4.7

SWEP.ReloadFastTime = 2.3
SWEP.ReloadFastTime_Empty = 3.2
SWEP.ReloadFastHalt = 2.3
SWEP.ReloadFastHalt_Empty = 3.2
