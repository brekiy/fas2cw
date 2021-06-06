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
    SWEP.PrintName = "M700"

    SWEP.MuzzleEffect = "muzzleflash_m3"
    SWEP.PosBasedMuz = false
    SWEP.SnapToGrip = true
    -- SWEP.ShellScale = 0.7
    SWEP.ShellOffsetMul = 1
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

    SWEP.ReticleInactivityPostFire = 0.9

    SWEP.AttachmentModelsVM = {
    }

    SWEP.LuaVMRecoilAxisMod = {vert = 1.5, hor = 2, roll = 1, forward = 1, pitch = 1}
end

SWEP.MuzzleVelocity = 790 -- in meter/s

SWEP.SightBGs = {main = 2, leupold = 1, regular = 0}
SWEP.MagBGs = {main = 4, fas2_300wm = 1, regular = 0}
-- SWEP.ADSFireAnim = true

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {800, -300}, atts = {"md_microt1", "bg_fas2_leupold"}},
    -- calibre conversion
    [2] = {header = "Caliber", offset = {100, 100}, atts = {"am_fas2_300boltx"}},
    ["+reload"] = {header = "Ammo", offset = {-200, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

-- Notably, this is NOT a round-by-round reload.
-- The FAS2 devs made different animations for inserting 1-5 rounds into the rifle.
SWEP.Animations = {
    fire = {"fire01", "fire02", "fire03"},
    fire_aim = "fire_iron",
    cycle_gun = "pump",
    cycle_gun_aim = "pump_iron",
    reload_empty = "reload_empty",
    reload_fast_empty = "reload_empty_nomen",
    reload_1 = "reload_1",
    reload_2 = "reload_2",
    reload_3 = "reload_3",
    reload_4 = "reload_4",
    reload_empty_1 = "reload_empty_1",
    reload_empty_2 = "reload_empty_2",
    reload_empty_3 = "reload_empty_3",
    reload_empty_4 = "reload_empty_4",
    reload_fast_1 = "Reload_1_Nomen",
    reload_fast_2 = "Reload_2_Nomen",
    reload_fast_3 = "Reload_3_Nomen",
    reload_fast_4 = "Reload_4_Nomen",
    reload_fast_empty_1 = "reload_empty_1_Nomen",
    reload_fast_empty_2 = "reload_empty_2_Nomen",
    reload_fast_empty_3 = "reload_empty_3_Nomen",
    reload_fast_empty_4 = "reload_empty_4_Nomen",
    idle = "idle",
    draw = "draw",
    holster = "holster"
}

SWEP.Sounds = {
    start = {{time = 0.2, sound = "CW_FOLEY_LIGHT"}},
    insert = {
        {time = 0.25, sound = "CW_FAS2_KS23_INSERT"},
        {time = 0.5, sound = "CW_FOLEY_LIGHT"}
    },
    pump = {
        {time = 0.15, sound = "CW_FAS2_KS23_PUMPBACK"},
        {time = 0.35, sound = "CW_FAS2_KS23_PUMPFORWARD"}
    },
    pump_iron = {
        {time = 0.1, sound = "CW_FAS2_KS23_PUMPBACK"},
        {time = 0.5, sound = "CW_FAS2_KS23_PUMPFORWARD"}
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
SWEP.ViewModel		= "models/weapons/view/support/m24.mdl"
SWEP.WorldModel		= "models/weapons/w_m24.mdl"
SWEP.ManualCycling = true
SWEP.CycleDelay = 0.5
SWEP.CycleDelayAim = 0.6
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 5
SWEP.Primary.DefaultClip	= 20
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "7.62x51MM"

SWEP.FireDelay = 0.5
SWEP.FireSound = "CW_FAS2_M24_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_M24_FIRE_SUPP"
SWEP.Recoil = 0.9

SWEP.HipSpread = 0.06
SWEP.AimSpread = 0.001
SWEP.VelocitySensitivity = 2.2
SWEP.MaxSpreadInc = 0.042
SWEP.SpreadPerShot = 0.04
SWEP.SpreadCooldown = 0.13
SWEP.Damage = 60
SWEP.DeployTime = 1
SWEP.NearWallDistance = 30

SWEP.ReloadStartTime = 0.4
SWEP.ReloadStartTime_Empty = 2.1
SWEP.InsertShellTime = 1
SWEP.ReloadFinishWait = 0.5
SWEP.PumpMidReloadWait = 0.7
SWEP.ShotgunReload = true
SWEP.DeployTimeNotFirst = 0.3
SWEP.Chamberable = false

function SWEP:reloadAnimFunc(mag, reloadSpeed)
    local animString = "reload"
    local diff = self:GetMaxClip1() - mag
    if self.FastReload then
        animString = animString .. "_fast"
    end
    if mag == 0 then
        animString = animString .. "_empty"
        local remainingAmmo = self:Ammo1()
        if remainingAmmo <= 4 then
            animString = animString .. "_" .. remainingAmmo
        end
    else
        animString = animString .. "_" .. diff
    end
    self:sendWeaponAnim(animString, reloadSpeed)
end
