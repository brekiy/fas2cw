AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

-- Guesstimating case length until i find a spec sheet
-- also cant register in the actual attachment because of loading order or something... zzz
CustomizableWeaponry:registerAmmo("10mm Auto", "10mm Auto Rounds", 10, 25.2)
CustomizableWeaponry:registerAmmo(".50 GI", ".50 GI Rounds", 12.7, 22.8)

if CLIENT then
    SWEP.Category = "CW 2.0 FA:S 2 Weapons"
    SWEP.Author			= "brekiy"
    SWEP.Contact		= ""
    SWEP.Purpose		= ""
    SWEP.Instructions	= ""

    SWEP.DrawCrosshair = false
    SWEP.PrintName = "Glock 20"
    SWEP.CSMuzzleFlashes = true

    SWEP.IronsightPos = Vector(-1.43, -0.755, 0.54)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-1.3, 0, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-2, -1, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -30)

    SWEP.MuzzleEffect = "muzzleflash_pistol"
    SWEP.Shell = "10x25"
    SWEP.PosBasedMuz = false
    -- SWEP.ShellScale = 0.55
    -- SWEP.ShellOffsetMul = 1
    SWEP.ShellPosOffset = {x = 1, y = 3, z = -3}
    SWEP.SightWithRail = false

    SWEP.CustomizationMenuScale = 0.01
    -- SWEP.BoltBone = "glock_slide"
    -- SWEP.BoltShootOffset = Vector(0, 0.2, 0)
    -- SWEP.HoldBoltWhileEmpty = true
    -- SWEP.DontHoldWhenReloading = true

    SWEP.AttachmentModelsVM = {
    }
end

SWEP.MuzzleVelocity = 355 -- in meter/s

SWEP.BarrelBGs = {main = 2, sd = 1, regular = 0}
SWEP.SightBGs = {main = 3, tritium = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {300, -300},  atts = {"bg_fas2_tritiumsights"}},
    [2] = {header = "Barrel", offset = {-200, -300}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Caliber", offset = {300, 100}, atts = {"am_fas2_50glock"}},
    ["+reload"] = {header = "Ammo", offset = {-300, 100}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"fire_1", "fire_2"},
    fire_aim = "iron_fire",
    fire_last = "fire_last",
    fire_aim_last = "iron_fire_last",
    reload = "reload",
    reload_empty = "reload_empty",
    idle = "idle",
    draw = "draw",
    draw_empty = "draw_Empty",
    holster = "holster"
}

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        [1] = {time = 0.4, sound = "CW_FAS2_GLOCK20_MAGOUT"},
        [2] = {time = 0.9, sound = "CW_FOLEY_MEDIUM"},
        [3] = {time = 1.7, sound = "CW_FAS2_GLOCK20_MAGIN"}
    },
    reload_empty = {
        [1] = {time = 0.4, sound = "CW_FAS2_GLOCK20_MAGOUT_EMPTY"},
        [2] = {time = 0.9, sound = "CW_FOLEY_MEDIUM"},
        [3] = {time = 1.55, sound = "CW_FAS2_GLOCK20_MAGIN"},
        [4] = {time = 1.85, sound = "CW_FAS2_GLOCK20_SLIDESTOP"}
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
SWEP.ViewModel = "models/weapons/view/pistols/glock20.mdl"
SWEP.WorldModel   = "models/weapons/w_pist_glock18.mdl"
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 15
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "10mm Auto"

SWEP.FireDelay = 0.12
SWEP.FireSound = "CW_FAS2_GLOCK20_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_GLOCK20_FIRE_SUPP"
SWEP.Recoil = 0.9

SWEP.HipSpread = 0.034
SWEP.AimSpread = 0.016
SWEP.VelocitySensitivity = 1.4
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.008
SWEP.SpreadCooldown = 0.2
SWEP.Shots = 1
SWEP.Damage = 28
SWEP.DeployTime = 0.45

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.3
SWEP.ReloadTime_Empty = 1.9
SWEP.ReloadHalt = 2.6
SWEP.ReloadHalt_Empty = 2.2
