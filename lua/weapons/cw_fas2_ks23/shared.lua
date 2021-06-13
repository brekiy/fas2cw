-- TODO
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
    SWEP.PrintName = "KS-23"
    -- SWEP.CSMuzzleFlashes = true

    SWEP.MuzzleEffect = "muzzleflash_m3"
    SWEP.PosBasedMuz = false
    SWEP.SnapToGrip = false
    SWEP.Shell = "fas2_23x75"
    -- a workaround for the shell delay stuff with manual action
    -- SWEP.NoShells = true
    SWEP.ManualShellDelay = 0.3
    SWEP.ManualShellDelayAim = 0.45
    SWEP.ShellPosOffset = {x = 2, y = 0, z = 2}

    SWEP.IronsightPos = Vector(-1.902, -4.151, 1.235)
    SWEP.IronsightAng = Vector(1.093, 0, 0)

    SWEP.AlternativePos = Vector(0, -2, 0)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.AlternativeCrouchPos = Vector(0, -2, 0.5)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -5)

    -- SWEP.ReticleInactivityPostFire = 0.9

    SWEP.AttachmentModelsVM = {
    }

    SWEP.LuaVMRecoilAxisMod = {vert = 1.5, hor = 2, roll = 1, forward = 1, pitch = 1}

end

SWEP.MuzzleVelocity = 400 -- in meter/s

SWEP.SightBGs = {main = 2, tritium = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {800, -300}, atts = {"bg_fas2_tritiumsights"}},
    ["+use"] = {header = "Perk", offset = {500, 100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {-200, 300}, atts = {"am_slugrounds", "am_flechetterounds"}}
}

SWEP.Animations = {
    fire = {"fire01", "fire02", "fire03"},
    fire_aim = "fire_iron",
    cycle_gun = "pump",
    cycle_gun_aim = "pump_iron",
    cycle_gun_fast = "pump_nomen",
    cycle_gun_fast_aim = "pump_nomen_iron",
    reload_start = "start",
    reload_start_empty = "start_empty",
    reload_start_fast = "start_nomen",
    reload_start_fast_empty = "start_empty_nomen",
    insert = "insert",
    insert_fast = "insert_nomen",
    reload_end = "end_nopump",
    reload_end_fast = "end_nopump_nomen",
    idle = "end_nopump",
    draw = "draw",
    holster = "holster"
}

SWEP.Sounds = {
    start = {{time = 0.2, sound = "CW_FOLEY_LIGHT"}},
    start_nomen = {{time = 0.2, sound = "CW_FOLEY_LIGHT"}},
    start_empty = {
        {time = 0.1, sound = "CW_FAS2_KS23_PUMPBACK"},
        [2] = {time = 0.5, sound = "CW_FOLEY_LIGHT"},
        [3] = {time = 0.7, sound = "CW_FAS2_KS23_INSERTPORT"},
        [4] = {time = 1.4, sound = "CW_FAS2_KS23_PUMPFORWARD"},
        [5] = {time = 1.9, sound = "CW_FOLEY_LIGHT"}
    },
    start_empty_nomen = {
        {time = 0.1, sound = "CW_FAS2_KS23_PUMPBACK"},
        [2] = {time = 0.5, sound = "CW_FOLEY_LIGHT"},
        [3] = {time = 0.65, sound = "CW_FAS2_KS23_INSERTPORT"},
        [4] = {time = 1.4, sound = "CW_FAS2_KS23_PUMPFORWARD"}
    },
    insert = {
        {time = 0.25, sound = "CW_FAS2_KS23_INSERT"},
        {time = 0.5, sound = "CW_FOLEY_LIGHT"}
    },
    insert_nomen = {
        {time = 0.15, sound = "CW_FAS2_KS23_INSERT"},
        {time = 0.35, sound = "CW_FOLEY_LIGHT"}
    },
    pump = {
        {time = 0.15, sound = "CW_FAS2_KS23_PUMPBACK"},
        {time = 0.35, sound = "CW_FAS2_KS23_PUMPFORWARD"}
    },
    pump_nomen = {
        {time = 0.1, sound = "CW_FAS2_KS23_PUMPBACK"},
        {time = 0.25, sound = "CW_FAS2_KS23_PUMPFORWARD"}
    },
    pump_iron = {
        {time = 0.1, sound = "CW_FAS2_KS23_PUMPBACK"},
        {time = 0.5, sound = "CW_FAS2_KS23_PUMPFORWARD"}
    },
    pump_nomen_iron = {
        {time = 0.1, sound = "CW_FAS2_KS23_PUMPBACK"},
        {time = 0.35, sound = "CW_FAS2_KS23_PUMPFORWARD"}
    }
}

SWEP.SpeedDec = 20

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "shotgun"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"pump"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 60
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/view/shotguns/ks23.mdl"
SWEP.WorldModel		= "models/weapons/world/shotguns/ks23.mdl"
SWEP.ManualCycling = true
-- haha very funny
SWEP.CycleDelay = 0.5
SWEP.CycleDelayAim = 0.6
SWEP.CycleDelayFast = 0.35
SWEP.CycleDelayFastAim = 0.45
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 3
SWEP.Primary.DefaultClip	= 21
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "23x75MMR"

SWEP.FireDelay = 0.5
SWEP.FireSound = "CW_FAS2_KS23_FIRE"
SWEP.Recoil = 4
-- SWEP.FireAnimSpeed = 1.2

SWEP.HipSpread = 0.04
SWEP.AimSpread = 0.01
SWEP.VelocitySensitivity = 1.5
SWEP.MaxSpreadInc = 0.02
SWEP.ClumpSpread = 0.02
SWEP.SpreadPerShot = 0.017
SWEP.SpreadCooldown = 0.15
SWEP.Shots = 9
SWEP.Damage = 14
SWEP.DeployTime = 1
SWEP.NearWallDistance = 40

SWEP.ReloadStartTime = 0.4
SWEP.ReloadStartFastTime = 0.3
SWEP.ReloadStartTime_Empty = 2.1
SWEP.ReloadStartFastTime_Empty = 2.1
SWEP.InsertShellTime = 1
SWEP.InsertShellFastTime = 0.75
SWEP.ReloadFinishWait = 1.5
SWEP.ReloadFinishFastWait = 1
SWEP.PumpMidReloadWait = 0.7
SWEP.ShotgunReload = true
SWEP.DeployTimeNotFirst = 0.3
SWEP.Chamberable = true
SWEP.ShotgunReloadEmptyInsert = true
