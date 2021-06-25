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
    SWEP.PrintName = "PP-19"

    SWEP.IronsightPos = Vector(-2.613, -2, 0.579)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.CompM4Pos = Vector(-2.613, 0, -0.495)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.EoTechPos = Vector(-2.04, -4.848, 0.537)
    SWEP.EoTechAng = Vector(-0.631, 0, 0)

    SWEP.AlternativePos = Vector(-0.8, -1, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-4.4, -1, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -40)

    SWEP.MuzzleEffect = "muzzleflash_smg"
    SWEP.Shell = "fas2_9x18"
    SWEP.ShellPosOffset = {x = 1, y = 0, z = 4}
    SWEP.SightWithRail = false
    SWEP.CustomizationMenuScale = 0.013
    SWEP.AttachmentModelsVM = {
        -- ["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "ak_frame", pos = Vector(-0.46, -3.5, -1.9), angle = Angle(0, -90, 0), size = Vector(0.75, 0.75, 0.75},
        -- ["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "ak_frame", pos = Vector(-0.3, -2.5, -2.46), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8}
    }

end

SWEP.MuzzleVelocity = 320 -- in meter/s

SWEP.MuzzleBGs = {main = 1, sd = 1, regular = 0}
SWEP.SightBGs = {main = 2, fas2_aimpoint = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {300, -400},  atts = {"bg_fas2_compm4"}},
    [2] = {header = "Muzzle", offset = {-400, -300}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Caliber", offset = {-400, 100}, atts = {"am_fas2_9bizon"}},
    ["+use"] = {header = "Perk", offset = {800, 300}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {300, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = "fire",
    fire_aim = "fire_ironsight",
    reload = "reload",
    reload_empty = "reload_empty",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload_empty_nomen",
    idle = "idle",
    draw = "deploy",
    draw_empty = "deploy_empty",
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
SWEP.ViewModel = "models/weapons/view/smgs/c_bizon.mdl"
SWEP.WorldModel   = "models/weapons/w_smg_p90.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 64
SWEP.Primary.DefaultClip	= 192
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x18MM"

SWEP.FireDelay = 0.0857
SWEP.FireSound = "CW_FAS2_PP19_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_PP19_FIRE_SUPP"
SWEP.Recoil = 0.62
SWEP.RecoilSide = 0.43

SWEP.HipSpread = 0.036
SWEP.AimSpread = 0.013
SWEP.VelocitySensitivity = 1.45
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.0065
SWEP.SpreadCooldown = 0.14
SWEP.Shots = 1
SWEP.Damage = 20
SWEP.DeployTime = 0.55

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.9
SWEP.ReloadTime_Empty = 4
SWEP.ReloadHalt = 3.1
SWEP.ReloadHalt_Empty = 4.2
SWEP.ReloadFastTime = 2.3
SWEP.ReloadFastTime_Empty = 3
SWEP.ReloadFastHalt = 2.5
SWEP.ReloadFastHalt_Empty = 3.2
