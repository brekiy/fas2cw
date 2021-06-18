AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

-- TODO: weird issue with deploying taking super long
if CLIENT then
    SWEP.Category = "CW 2.0 FA:S 2 Weapons"
    SWEP.Author			= "brekiy"
    SWEP.Contact		= ""
    SWEP.Purpose		= ""
    SWEP.Instructions	= ""

    SWEP.DrawCrosshair = false
    SWEP.PrintName = "M9"

    SWEP.IronsightPos = Vector(-4.2, -0.78, 1.55)
    SWEP.IronsightAng = Vector()

    SWEP.AlternativePos = Vector(-3, -1, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-5.5, -1.5, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -30)

    SWEP.MuzzleEffect = "muzzleflash_pistol"
    SWEP.Shell = "fas2_9x19"
    SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
    SWEP.SightWithRail = false

    SWEP.AttachmentModelsVM = {
        -- ["md_insight_x2"] = {model = "models/cw2/attachments/pistollaser.mdl", bone = "Frame", pos = Vector(-3.01, 10.85, -1.385), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5)},
    }
end

SWEP.MuzzleVelocity = 350 -- in meter/s

SWEP.MuzzleBGs = {main = 1, sd = 1, regular = 0}

SWEP.Attachments = {
    -- [1] = {header = "Sight", offset = {0, -400},  atts = {"bg_fas2_tritiumsights"}},
    [2] = {header = "Muzzle", offset = {-400, -300}, atts = {"bg_fas2_suppressor"}},
    -- [4] = {header = "Rail", offset = {400, -20}, atts = {"md_insight_x2"}}, -- TODO: fix
    ["+use"] = {header = "Perk", offset = {500, 100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {-500, 100}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"fire1", "fire2", "fire3"},
    fire_aim = "fire2",
    fire_last = "fire_last",
    fire_aim_last = "fire_last",
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

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "revolver"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_fas2_base"
SWEP.FireAnimSpeed = 1.75
SWEP.ViewModelFOV	= 60
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/pistols/c_m9.mdl"
SWEP.WorldModel   = "models/weapons/w_pist_p228.mdl"
SWEP.MuzzleAttachment = 1
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.MuzzleAttachmentName = "1"
SWEP.EjectorAttachmentName = "2"

SWEP.Primary.ClipSize		= 15
SWEP.Primary.DefaultClip	= 60
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "9x19MM"

SWEP.FireDelay = 0.12
SWEP.FireSound = "CW_FAS2_M9_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_M9_FIRE_SUPP"
SWEP.Recoil = 0.875

SWEP.HipSpread = 0.033
SWEP.AimSpread = 0.014
SWEP.VelocitySensitivity = 1.2
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.006
SWEP.SpreadCooldown = 0.19
SWEP.Shots = 1
SWEP.Damage = 22
SWEP.DeployTime = 0.45

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2
SWEP.ReloadTime_Empty = 2.2
SWEP.ReloadHalt = 2.15
SWEP.ReloadHalt_Empty = 2.35
SWEP.ReloadFastTime = 1.5
SWEP.ReloadFastTime_Empty = 1.7
SWEP.ReloadFastHalt = 1.65
SWEP.ReloadFastHalt_Empty = 1.85
