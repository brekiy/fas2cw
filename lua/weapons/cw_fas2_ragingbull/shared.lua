AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

-- TODO
if CLIENT then
    SWEP.Category = "CW 2.0 FA:S 2 Weapons"
    SWEP.Author			= "brekiy"
    SWEP.Contact		= ""
    SWEP.Purpose		= ""
    SWEP.Instructions	= ""

    SWEP.DrawCrosshair = false
    SWEP.PrintName = "Taurus Raging Bull"

    SWEP.IronsightPos = Vector(-1.862, -1.555, 1.034)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-1.55, 0, 0)
    SWEP.AlternativeAng = Vector(0, 0, -10)

    SWEP.AlternativeCrouchPos = Vector(-2.5, -2, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -30)

    SWEP.MuzzleEffect = "muzzleflash_pistol"
    SWEP.Shell = "45acp"
    SWEP.PosBasedMuz = false
    SWEP.ShellScale = 1
    SWEP.ShellOffsetMul = 1
    SWEP.ShellPosOffset = {x = 0, y = 0, z = 0}
    SWEP.SightWithRail = false

    SWEP.CustomizationMenuScale = 0.008

    SWEP.AttachmentModelsVM = {
    }
end

SWEP.MuzzleVelocity = 280 -- in meter/s

SWEP.BarrelBGs = {main = 2, sd = 1, regular = 0}

SWEP.Attachments = {
    -- [1] = {header = "Sight", offset = {0, -400},  atts = {"bg_fas2_tritiumsights"}},
    -- [2] = {header = "Barrel", offset = {-400, -300}, atts = {"bg_fas2_suppressor"}},
    -- [3] = {header = "Caliber", offset = {0, 100}, atts = {"am_fas2_50glock"}},
    [5] = {header = "Perk", offset = {500, 100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {-500, 100}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"Fire1", "Fire2", "Fire3"},
    fire_aim = "Fire_Iron",
    fire_last = "Fire_Last",
    fire_aim_last = "Fire_Last_Iron",
    reload = "Reload",
    reload_empty = "Reload_Empty",
    -- dont actually exist
    -- reload_fast = "Reload_Nomen",
    -- reload_fast_empty = "Reload_Nomen_Empty",
    idle = "idle",
    draw = "Draw",
    draw_empty = "Draw_Empty",
    holster = "holster"
}
SWEP.UseHands = true
SWEP.Sounds = {
    Draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    Reload = {
        [1] = {time = 0.4, sound = "CW_FAS2_1911_MAGOUT"},
        [2] = {time = 0.6, sound = "CW_FOLEY_MEDIUM"},
        [3] = {time = 1, sound = "CW_FAS2_1911_MAGIN_PARTIAL"},
        [4] = {time = 1.15, sound = "CW_FAS2_1911_MAGIN"}
    },
    Reload_Empty = {
        [1] = {time = 0.4, sound = "CW_FAS2_1911_MAGOUT"},
        [2] = {time = 0.6, sound = "CW_FOLEY_MEDIUM"},
        [3] = {time = 1, sound = "CW_FAS2_1911_MAGIN_PARTIAL"},
        [4] = {time = 1.15, sound = "CW_FAS2_1911_MAGIN"},
        [5] = {time = 1.45, sound = "CW_FAS2_1911_SLIDESTOP"}
    }
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
SWEP.ViewModel = "models/weapons/c_357.mdl"
SWEP.WorldModel   = "models/weapons/w_1911.mdl"
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 7
SWEP.Primary.DefaultClip	= 14
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= ".45 ACP"

SWEP.FireDelay = 0.12
SWEP.FireSound = "CW_FAS2_1911_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_1911_FIRE_SUPP"
SWEP.Recoil = 0.9

SWEP.HipSpread = 0.034
SWEP.AimSpread = 0.015
SWEP.VelocitySensitivity = 1.4
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.0075
SWEP.SpreadCooldown = 0.165
SWEP.Shots = 1
SWEP.Damage = 27
SWEP.DeployTime = 0.45

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 1.35
SWEP.ReloadTime_Empty = 1.7
SWEP.ReloadHalt = 1.45
SWEP.ReloadHalt_Empty = 1.8

SWEP.FastReloadVanilla = true
-- SWEP.ReloadFastTime = 1.215
-- SWEP.ReloadFastTime_Empty = 1.53
-- SWEP.ReloadFastHalt = 1.305
-- SWEP.ReloadFastHalt_Empty = 1.62

