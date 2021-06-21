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
    SWEP.PrintName = "P226"

    SWEP.IronsightPos = Vector(-2.8485, 2, 1.3725)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-1.6, -1, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-4, -1.5, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -25)

    SWEP.MuzzleEffect = "muzzleflash_pistol"
    SWEP.Shell = "fas2_357sig"
    SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
    SWEP.SightWithRail = false

    SWEP.AttachmentModelsVM = {
        -- ["md_insight_x2"] = {model = "models/cw2/attachments/pistollaser.mdl", bone = "Frame", pos = Vector(-3.01, 10.85, -1.385), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5)},
        ["md_insight_x2"] = {model = "models/cw2/attachments/pistollaser.mdl", bone = "Frame", pos = Vector(0.034, 0.37, 0.767), angle = Angle(0, -90, 0), size = Vector(0.14, 0.14, 0.14)}
    }

    SWEP.LaserPosAdjust = Vector(0.5, 0, -2)
    SWEP.LaserAngAdjust = Angle(0, 180 + -1.7, 0)
    SWEP.LaserAngAdjustAim = Angle(0, 180 - 0.5, 0)
end

SWEP.MuzzleVelocity = 412 -- in meter/s

SWEP.MuzzleBGs = {main = 1, sd = 1, regular = 0}

-- something I noticed: for some reason in setupReticleColors() using ipairs will freak out if there isn't a [1] key for this array
SWEP.Attachments = {
    [1] = {header = "Muzzle", offset = {-400, -300}, atts = {"bg_fas2_suppressor"}},
    [2] = {header = "Caliber", offset = {0, 100}, atts = {"am_fas2_9p226"}},
    [3] = {header = "Rail", offset = {400, -100}, atts = {"md_insight_x2"}},
    ["+use"] = {header = "Perk", offset = {600, 300}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {-500, 100}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"fire1", "fire2"},
    fire_aim = "fire_scoped2",
    fire_last = "fire_last",
    fire_aim_last = "fire_last_iron",
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

SWEP.ViewModelFOV	= 60
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/pistols/c_p226.mdl"
SWEP.WorldModel   = "models/weapons/w_pist_p228.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 13
SWEP.Primary.DefaultClip	= 52
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= ".357 SIG"

SWEP.FireDelay = 0.12
SWEP.FireSound = "CW_FAS2_P226_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_P226_FIRE_SUPP"
SWEP.Recoil = 1

SWEP.HipSpread = 0.033
SWEP.AimSpread = 0.017
SWEP.VelocitySensitivity = 1.2
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.006
SWEP.SpreadCooldown = 0.16
SWEP.Shots = 1
SWEP.Damage = 27
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
