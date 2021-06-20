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
    SWEP.PrintName = "OTs-33"

    SWEP.IronsightPos = Vector(-2.495, 2, 0.945)
    SWEP.IronsightAng = Vector()

    SWEP.AlternativePos = Vector(-1, -1, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-3, -2, -1)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -20)

    SWEP.MuzzleEffect = "muzzleflash_pistol"
    SWEP.Shell = "fas2_9x18"
    SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}

    SWEP.AttachmentModelsVM = {
        ["md_insight_x2"] = {model = "models/cw2/attachments/pistollaser.mdl", bone = "Base", pos = Vector(-3.01, 10.85, -1.385), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5)},
        ["md_tundra9mm"] = {model = "models/cw2/attachments/9mmsuppressor.mdl", pos = Vector(-0.038, -6.8, -0.33), angle = Angle(), size = Vector(0.7, 0.7, 0.7), bone = "Barrel"},
    }
end

SWEP.MuzzleVelocity = 330 -- in meter/s

SWEP.Attachments = {
    [1] = {header = "Muzzle", offset = {-400, -300}, atts = {"md_tundra9mm"}},
    -- [4] = {header = "Rail", offset = {-100, 200}, atts = {"md_insight_x2"}},
    ["+use"] = {header = "Perk", offset = {500, 200}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {-500, 200}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"Fire1", "Fire2", "Fire3"},
    fire_aim = "Fire_Iron",
    fire_last = "Fire_Last",
    fire_aim_last = "Fire_Last_Iron",
    reload = "Reload_Wet",
    reload_empty = "Reload_Dry",
    reload_fast = "Fast_Reload_Wet",
    reload_fast_empty = "Fast_Reload_Dry",
    idle = "idle",
    draw = "Draw",
    draw_empty = "Draw_Empty",
    holster = "Holster"
}


SWEP.SpeedDec = 10

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "revolver"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 60
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/pistols/c_ots33.mdl"
SWEP.WorldModel = "models/weapons/world/pistols/ots33.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 18
SWEP.Primary.DefaultClip	= 72
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x18MM"

SWEP.FireDelay = 0.06667
SWEP.FireSound = "CW_FAS2_OTS33_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_PP19_FIRE_SUPP"
SWEP.Recoil = 0.82

SWEP.HipSpread = 0.032
SWEP.AimSpread = 0.018
SWEP.VelocitySensitivity = 1.2
SWEP.MaxSpreadInc = 0.04
SWEP.SpreadPerShot = 0.006
SWEP.SpreadCooldown = 0.195
SWEP.Shots = 1
SWEP.Damage = 17
SWEP.DeployTime = 0.45

SWEP.ReloadTime = 2.33
SWEP.ReloadTime_Empty = 2.33
SWEP.ReloadHalt = 2.33
SWEP.ReloadHalt_Empty = 2.33
SWEP.ReloadFastTime = 1.67
SWEP.ReloadFastTime_Empty = 2
SWEP.ReloadFastHalt = 1.67
SWEP.ReloadFastHalt_Empty = 2
