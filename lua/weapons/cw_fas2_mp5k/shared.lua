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
    SWEP.PrintName = "MP5K"

    SWEP.IronsightPos = Vector(-2.9535, -3.449, 1.437)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.CompM4Pos = Vector(-2.9535, -2, 0.42)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-0.5, -1, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-3, -1, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -20)

    SWEP.MuzzleEffect = "muzzleflash_smg"
    SWEP.Shell = "fas2_9x19"
    SWEP.ShellPosOffset = {x = 1, y = 0, z = 4}
    SWEP.SightWithRail = false
    SWEP.ELCANAxisAlignNew = {right = 0, up = 0, forward = 0}
    SWEP.CustomizationMenuScale = 0.013
    SWEP.AttachmentModelsVM = {}

end

SWEP.MuzzleVelocity = 320 -- in meter/s

SWEP.MuzzleBGs = {main = 2, sd = 1, regular = 0}
SWEP.MagBGs = {main = 3, rnd30 = 1, regular = 0}
SWEP.StockBGs = {main = 4, pdw = 1, regular = 0}

SWEP.Attachments = {
    -- [1] = {header = "Sight", offset = {400, -200},  atts = {"bg_fas2_compm4"}},
    [2] = {header = "Muzzle", offset = {-300, -300}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Magazine", offset = {-200, 200}, atts = {"bg_fas2_mp5k30mag"}},
    [4] = {header = "Stock", offset = {800, 100}, atts = {"bg_fas2_mp5kpdwstock"}},
    ["+use"] = {header = "Perk", offset = {500, -300}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {400, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"shoot", "shoot2", "shoot3"},
    fire_aim = "shoot_scoped",
    fire_last = "shoot_last",
    fire_aim_last = "shoot_last_scoped",
    reload = "reload",
    reload_empty = "reload_empty",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload_empty_nomen",
    idle = "idle_scoped",
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
SWEP.ViewModel = "models/weapons/view/smgs/c_mp5k.mdl"
SWEP.WorldModel   = "models/weapons/w_smg_mp5.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 15
SWEP.Primary.DefaultClip	= 60
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x19MM"

SWEP.FireDelay = 0.06667
SWEP.FireSound = "CW_FAS2_MP5K_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_MP5_FIRE_SUPP"
SWEP.Recoil = 0.65
SWEP.RecoilSide = 0.35

SWEP.HipSpread = 0.036
SWEP.AimSpread = 0.0132
SWEP.VelocitySensitivity = 1.25
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.005
SWEP.SpreadCooldown = 0.151
SWEP.Shots = 1
SWEP.Damage = 18
SWEP.DeployTime = 0.6

SWEP.ReloadTime = 3
SWEP.ReloadTime_Empty = 3.5
SWEP.ReloadHalt = 3
SWEP.ReloadHalt_Empty = 3.5

SWEP.ReloadFastTime = 2.23
SWEP.ReloadFastTime_Empty = 2.63
SWEP.ReloadFastHalt = 2.23
SWEP.ReloadFastHalt_Empty = 2.63
