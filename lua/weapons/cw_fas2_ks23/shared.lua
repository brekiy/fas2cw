-- TODO
AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

CustomizableWeaponry:registerAmmo("23x75MMR", "23x75MMR Shells", 23, 75)

if CLIENT then
    SWEP.Category = "CW 2.0 FA:S 2 Weapons"
    SWEP.Author			= "brekiy"
    SWEP.Contact		= ""
    SWEP.Purpose		= ""
    SWEP.Instructions	= ""

    SWEP.DrawCrosshair = false
    SWEP.PrintName = "KS-23"
    SWEP.CSMuzzleFlashes = true

    SWEP.MuzzleEffect = "muzzleflash_m3"
    SWEP.PosBasedMuz = false
    SWEP.SnapToGrip = true
    -- SWEP.ShellScale = 0.7
    SWEP.ShellOffsetMul = 1
    SWEP.Shell = "23x75"
    SWEP.ShellDelay = 0.45

    SWEP.ShellPosOffset = {x = 2, y = 0, z = 2}

    -- SWEP.SightWithRail = true

    SWEP.IronsightPos = Vector(-1.902, -4.151, 1.235)
    SWEP.IronsightAng = Vector(1.093, 0, 0)

    SWEP.AlternativePos = Vector(2.039, 0, 0.479)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    -- SWEP.CustomizationMenuScale = 0.01
    SWEP.ReticleInactivityPostFire = 0.9

    SWEP.AttachmentModelsVM = {
    }

    SWEP.LuaVMRecoilAxisMod = {vert = 1.5, hor = 2, roll = 1, forward = 1, pitch = 1}

    SWEP.LaserPosAdjust = Vector(0.8, 0, 0.3)
    SWEP.LaserAngAdjust = Angle(0, 180, 0)
end

SWEP.MuzzleVelocity = 400 -- in meter/s

SWEP.SightBGs = {main = 2, tritium = 2, regular = 1}
SWEP.ADSFireAnim = true

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {800, -300}, atts = {"bg_fas2_tritiumsights"}},
    ["+reload"] = {header = "Ammo", offset = {-200, 300}, atts = {"am_slugrounds", "am_flechetterounds"}}
}

SWEP.Animations = {
    fire = "fire02",
    fire_aim = "fire_iron",
    cock = "pump",
    cock_aim = "pump_iron",
    reload_start = "start",
    insert = "insert",
    reload_end = "pump",
    idle = "idle",
    draw = "draw"
}

SWEP.Sounds = {
    start = {{time = 0.2, sound = "CW_FOLEY_LIGHT"}},
    insert = {
        {time = 0.25, sound = "CW_FAS2_KS23_INSERT"},
        {time = 0.5, sound = "CW_FOLEY_LIGHT"}
    },
    cock = {
        {time = 0.15, sound = "CW_FAS2_KS23_PUMPBACK"},
        {time = 0.35, sound = "CW_FAS2_KS23_PUMPFORWARD"}
    },
    cock_aim = {
        {time = 0.1, sound = "CW_FAS2_KS23_PUMPBACK"},
        {time = 0.5, sound = "CW_FAS2_KS23_PUMPFORWARD"}
    }
}

SWEP.SpeedDec = 10

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "shotgun"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"pump"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/view/shotguns/ks23.mdl"
SWEP.WorldModel		= "models/weapons/world/shotguns/ks23.mdl"
-- SWEP.WorldModel   = "models/weapons/w_shot_m3super90.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 4
SWEP.Primary.DefaultClip	= 8
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "23x75MMR"

SWEP.FireDelay = 0.8
SWEP.FireSound = "CW_FAS2_KS23_FIRE"
SWEP.Recoil = 4
-- SWEP.FireAnimSpeed = 1.2

SWEP.HipSpread = 0.04
SWEP.AimSpread = 0.01
SWEP.VelocitySensitivity = 1.5
SWEP.MaxSpreadInc = 0.02
SWEP.ClumpSpread = 0.02
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.85
SWEP.Shots = 20
SWEP.Damage = 10
SWEP.DeployTime = 1
SWEP.NearWallDistance = 30

SWEP.ReloadStartTime = 0.5
SWEP.InsertShellTime = 1
SWEP.ReloadFinishWait = 0.5
SWEP.PumpMidReloadWait = 0.7
SWEP.ShotgunReload = true
SWEP.DeployTimeNotFirst = 0.3

SWEP.Chamberable = true
