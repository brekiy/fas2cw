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
    SWEP.PrintName = "M24"

    SWEP.MuzzleEffect = "muzzleflash_ak47"
    SWEP.Shell = "fas2_7.62x51"
    -- a workaround for the shell delay stuff with manual action
    SWEP.NoShells = true
    SWEP.ManualShellDelay = 0.3
    SWEP.ManualShellDelayAim = 0.45
    SWEP.ShellPosOffset = {x = 2, y = 0, z = 2}
    SWEP.SightWithRail = true

    SWEP.IronsightPos = Vector(-4.135, -4.151, 3)
    SWEP.IronsightAng = Vector(0.1, 0, 0)

    SWEP.BipodAimOffsetPos = Vector(0.155, 0, -0.76)
    SWEP.BipodAimOffsetAng = Vector()
    -- SWEP.IronsightPos = Vector(-3.98, -4.151, 2.24)
    -- SWEP.IronsightAng = Vector(0.1, 0, 0)

    SWEP.MicroT1Pos = Vector(-4.17, -1.5, 1.65)
    SWEP.MicroT1Ang = Vector()

    SWEP.ACOGPos = Vector(-4.14, -7, 1.41)
    SWEP.ACOGAng = Vector()

    SWEP.LeupoldPos = Vector(-4.135, -5.731, 2.16)
    SWEP.LeupoldAng = Vector()

    SWEP.AlternativePos = Vector(-1, -1, 0)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.AlternativeCrouchPos = Vector(-2, -2, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -5)

    SWEP.LeupoldAxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.CustomizationMenuScale = 0.02
    SWEP.AttachmentModelsVM = {
        ["md_rail"] = {model = "models/wystan/attachments/rail.mdl", pos = Vector(-4, -0.5, 0.35), angle = Angle(0, 0, -90), size = Vector(1.1, 1.5, 1), bone = "Dummy04"},
        ["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", pos = Vector(0, -2.1, 0), angle = Angle(90, -90, 0), size = Vector(0.65, 0.65, 0.65), bone = "Dummy04"},
        ["md_acog"] = {model = "models/wystan/attachments/2cog.mdl", pos = Vector(-10, 3.5, 0.373), angle = Angle(-90, 90, 0), size = Vector(1, 1, 1), bone = "Dummy04"},
    }

    SWEP.BackupSights = {
        ["md_acog"] = {
            [1] = Vector(-4.15, -1.5, 0.3),
            [2] = Vector(),
        },
    }

end

SWEP.MuzzleVelocity = 790 -- in meter/s

SWEP.SightBGs = {main = 1, fas2_leupold = 1, regular = 0}
SWEP.MuzzleBGs = {main = 2, sd = 1, regular = 0}
SWEP.MagBGs = {main = 3, fas2_300wm = 1, regular = 0}
SWEP.BipodBGs = {main = 4, on = 1, off = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {800, -300}, atts = {"md_microt1", "md_acog", "bg_fas2_leupold"}},
    [2] = {header = "Muzzle", offset = {-200, -300}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Caliber", offset = {400, 600}, atts = {"am_fas2_300boltx"}},
    [4] = {header = "Underbarrel", offset = {-400, 100}, atts = {"bg_fas2_bipod"}},
    ["+use"] = {header = "Perk", offset = {1200, 600}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {-200, 600}, atts = {"am_magnum", "am_matchgrade"}}
}

-- Notably, this is NOT a round-by-round reload.
-- The FAS2 devs made different animations for inserting 1-5 rounds into the rifle.
SWEP.Animations = {
    fire = "fire",
    fire_aim = "fire_scoped",
    fire_bipod = "bipod_fire",
    fire_bipod_aim = "bipod_fire_scoped",
    cycle_gun = {"cock01", "cock02", "cock03"},
    cycle_gun_aim = {"cock01_scoped", "cock02_scoped", "cock03_scoped"},
    cycle_gun_fast = {"cock_nmc_01", "cock_nmc_02", "cock_nmc_03"},
    cycle_gun_fast_aim = {"cock_nmc_01_scoped", "cock_nmc_02_scoped", "cock_nmc_03_scoped"},
    cycle_gun_bipod = {"bipod_cock01", "bipod_cock02", "bipod_cock03"},
    cycle_gun_bipod_aim = {"bipod_cock01_scoped", "bipod_cock02_scoped", "bipod_cock03_scoped"},
    cycle_gun_bipod_fast = {"bipod_cock_nmc_01", "bipod_cock_nmc_02", "bipod_cock_nmc_03"},
    cycle_gun_bipod_fast_aim = {"bipod_cock_nmc_01_scoped", "bipod_cock_nmc_02_scoped", "bipod_cock_nmc_03_scoped"},
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
    reload_fast_1 = "reload_1_nomen",
    reload_fast_2 = "reload_2_nomen",
    reload_fast_3 = "reload_3_nomen",
    reload_fast_4 = "reload_4_nomen",
    reload_fast_empty_1 = "reload_empty_1_nomen",
    reload_fast_empty_2 = "reload_empty_2_nomen",
    reload_fast_empty_3 = "reload_empty_3_nomen",
    reload_fast_empty_4 = "reload_empty_4_nomen",
    idle = "idle",
    draw = "draw",
    holster = "holster",
    bipod_down = "bipod_down",
    bipod_up = "bipod_up",
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
SWEP.ViewModel		= "models/weapons/view/support/c_m24.mdl"
SWEP.WorldModel		= "models/weapons/w_m24.mdl"
SWEP.ManualCycling = true
SWEP.CycleDelay = 1.33
SWEP.CycleDelayAim = 1.33
SWEP.CycleDelayFast = 0.83
SWEP.CycleDelayFastAim = 0.83
SWEP.CycleDelayBipod = 1
SWEP.CycleDelayBipodAim = 1
SWEP.CycleDelayBipodFast = 0.62
SWEP.CycleDelayBipodFastAim = 0.62
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 5
SWEP.Primary.DefaultClip	= 20
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "7.62x51MM"

SWEP.FireDelay = 0.2
SWEP.FireSound = "CW_FAS2_M24_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_M24_FIRE_SUPP"
SWEP.Recoil = 1.25
SWEP.RecoilSide = 0.55

SWEP.HipSpread = 0.06
SWEP.AimSpread = 0.001
SWEP.VelocitySensitivity = 2.2
SWEP.MaxSpreadInc = 0.02
SWEP.SpreadPerShot = 0.01
SWEP.SpreadCooldown = 0.16
SWEP.Damage = 55
SWEP.DeployTime = 1
SWEP.NearWallDistance = 35

-- load 1
SWEP.ReloadTime = 4.12
SWEP.ReloadHalt = 4.12
SWEP.ReloadFastTime = 3.3
SWEP.ReloadFastHalt = 3.3

SWEP.ReloadTime_2 = 4.5
SWEP.ReloadHalt_2 = 4.5
SWEP.ReloadFastTime_2 = 3.6
SWEP.ReloadFastHalt_2 = 3.6

SWEP.ReloadTime_3 = 4.87
SWEP.ReloadHalt_3 = 4.87
SWEP.ReloadFastTime_3 = 3.9
SWEP.ReloadFastHalt_3 = 3.9

SWEP.ReloadTime_4 = 5.25
SWEP.ReloadHalt_4 = 5.25
SWEP.ReloadFastTime_4 = 4.2
SWEP.ReloadFastHalt_4 = 4.2

SWEP.ReloadTime_Empty = 4.5
SWEP.ReloadHalt_Empty = 4.5
SWEP.ReloadFastTime_Empty = 3.6
SWEP.ReloadFastHalt_Empty = 3.6

-- loading an empty mag with only a few bullets
SWEP.ReloadTime_Empty_1 = 3
SWEP.ReloadHalt_Empty_1 = 3
SWEP.ReloadFastTime_Empty_1 = 2.4
SWEP.ReloadFastHalt_Empty_1 = 2.4

SWEP.ReloadTime_Empty_2 = 3.37
SWEP.ReloadHalt_Empty_2 = 3.37
SWEP.ReloadFastTime_Empty_2 = 2.7
SWEP.ReloadFastHalt_Empty_2 = 2.7

SWEP.ReloadTime_Empty_3 = 3.75
SWEP.ReloadHalt_Empty_3 = 3.75
SWEP.ReloadFastTime_Empty_3 = 3
SWEP.ReloadFastHalt_Empty_3 = 3

SWEP.ReloadTime_Empty_4 = 4.12
SWEP.ReloadHalt_Empty_4 = 4.12
SWEP.ReloadFastTime_Empty_4 = 3.3
SWEP.ReloadFastHalt_Empty_4 = 3.3

SWEP.Chamberable = false

function SWEP:reloadAnimFunc(mag, reloadSpeed)
    local toLoad = self:_getToLoad(mag)
    local animString = "reload"

    if self.FastReload then
        animString = animString .. "_fast"
    end
    if toLoad == self:GetMaxClip1() then
        animString = animString .. "_empty"
    else
        if mag == 0 then
            animString = animString .. "_empty"
        end
        animString = animString .. "_" .. toLoad
    end
    self:sendWeaponAnim(animString, reloadSpeed)
end

--[[
    Override for custom SKS reload timing stuff
]]--
function SWEP:beginReload()
    mag = self:Clip1()
    local toLoad = self:_getToLoad(mag)
    local CT = CurTime()
    local reloadSpeed = self.ReloadSpeed
    if self.Fastreload then
        -- A modest buff
        reloadSpeed = reloadSpeed * 1.125
    end

    local reloadTime = nil
    local reloadHalt = nil

    if mag == 0 then
        if self:IsNonVanillaFastReload() then
            if self:Ammo1() >= 5 then
                reloadTime = self.ReloadFastTime_Empty
                reloadHalt = self.ReloadFastHalt_Empty
            else
                if self:Ammo1() == 1 then
                    reloadTime = self.ReloadFastTime
                    reloadHalt = self.ReloadFastHalt
                else
                    reloadTime = self["ReloadFastTime_" .. toLoad]
                    reloadHalt = self["ReloadFastHalt_" .. toLoad]
                end
            end
        else
            if self:Ammo1() >= 5 then
                reloadTime = self.ReloadTime_Empty
                reloadHalt = self.ReloadHalt_Empty
            else
                if self:Ammo1() == 1 then
                    reloadTime = self.ReloadTime
                    reloadHalt = self.ReloadHalt
                else
                    reloadTime = self["ReloadTime_" .. toLoad]
                    reloadHalt = self["ReloadHalt_" .. toLoad]
                end
            end
        end
    else
        if self:IsNonVanillaFastReload() then
            if mag == 4 then
                reloadTime = self.ReloadFastTime
                reloadHalt = self.ReloadFastHalt
            else
                reloadTime = self["ReloadFastTime_" .. toLoad]
                reloadHalt = self["ReloadFastHalt_" .. toLoad]
            end
        else
            if mag == 4 then
                reloadTime = self.ReloadTime
                reloadHalt = self.ReloadHalt
            else
                reloadTime = self["ReloadTime_" .. toLoad]
                reloadHalt = self["ReloadHalt_" .. toLoad]
            end
        end
    end

    reloadTime = reloadTime / reloadSpeed
    reloadHalt = reloadHalt / reloadSpeed

    self.ReloadDelay = CT + reloadTime
    self:SetNextPrimaryFire(CT + reloadHalt)
    self:SetNextSecondaryFire(CT + reloadHalt)
    self.GlobalDelay = CT + reloadHalt

    self:reloadAnimFunc(mag, reloadSpeed)

    CustomizableWeaponry.callbacks.processCategory(self, "beginreload", mag == 0)
    self.Cocked = true
    self:GetOwner():SetAnimation(PLAYER_RELOAD)
end
