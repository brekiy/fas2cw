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
    SWEP.PrintName = "MP5A5"

    SWEP.IronsightPos = Vector(-2.9535, -5, 1.437)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.CompM4Pos = Vector(-2.9535, -5, 0.42)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-1, -3, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-3, -3, -2)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -20)

    SWEP.MuzzleEffect = "muzzleflash_smg"
    SWEP.Shell = "fas2_9x19"
    SWEP.ShellPosOffset = {x = 1, y = 0, z = 4}
    SWEP.SightWithRail = false
    SWEP.ELCANAxisAlign = {right = 0, up = 0, forward = 0}

    SWEP.AttachmentModelsVM = {
    }

end

SWEP.MuzzleVelocity = 400 -- in meter/s

SWEP.MuzzleBGs = {main = 2, sd = 1, regular = 0}
SWEP.SightBGs = {main = 1, fas2_aimpoint = 1, regular = 0}
SWEP.GripBGs = {main = 3, sd = 3, grip = 1, regular = 0}
SWEP.FrontSightBGs = {main = 5, sd = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -400},  atts = {"bg_fas2_compm4"}},
    [2] = {header = "Muzzle", offset = {-200, -250}, atts = {"bg_fas2_suppressor"}, exclusions = {bg_fas2_mp5sd = true}},
    [3] = {header = "Caliber", offset = {300, 300}, atts = {"am_fas2_40mp5"}},
    [4] = {header = "Underbarrel", offset = {-300, 200}, atts = {"bg_fas2_foregrip", "bg_fas2_mp5sd"}},
    ["+use"] = {header = "Perk", offset = {1200, 100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {900, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = "shoot",
    fire_aim = "shoot_scoped",
    fire_last = "shoot_last",
    fire_aim_last = "shoot_last_scoped",
    reload = "reload",
    reload_empty = "reload_empty",
    reload_grip = "reload_grip",
    reload_empty_grip = "reload_empty_grip",
    reload_fast_grip = "reload_nomen_grip",
    reload_fast_empty_grip = "reload_empty_nomen_grip",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload_empty_nomen",
    -- idle = "idle1",
    -- idle_grip = "idle1_grip",
    draw = "draw",
    draw_empty = "draw_empty",
    holster = "holster"
}

SWEP.SpeedDec = 10

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "3burst", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/smgs/c_mp5a5.mdl"
SWEP.WorldModel   = "models/weapons/w_smg_mp5.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x19MM"

SWEP.FireDelay = 0.075
SWEP.FireSound = "CW_FAS2_MP5_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_MP5_FIRE_SUPP"
SWEP.Recoil = 0.5
SWEP.RecoilSide = 0.3

SWEP.HipSpread = 0.036
SWEP.AimSpread = 0.01
SWEP.VelocitySensitivity = 1.4
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.005
SWEP.SpreadCooldown = 0.145
SWEP.Shots = 1
SWEP.Damage = 23
SWEP.DeployTime = 0.45

SWEP.ReloadTime = 3
SWEP.ReloadTime_Empty = 3.5
SWEP.ReloadHalt = 3
SWEP.ReloadHalt_Empty = 3.5

SWEP.ReloadFastTime = 2.23
SWEP.ReloadFastTime_Empty = 2.63
SWEP.ReloadFastHalt = 2.23
SWEP.ReloadFastHalt_Empty = 2.63
