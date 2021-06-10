AddCSLuaFile()
AddCSLuaFile("sh_fas2_firing.lua")
AddCSLuaFile("cl_fas2_model.lua")
AddCSLuaFile("cl_fas2_calcview.lua")
AddCSLuaFile("cl_fas2_cvars.lua")

SWEP.Base = "cw_base"
include("cl_fas2_cvars.lua")
include("sh_fas2_firing.lua")

if CLIENT then
    include("cl_fas2_model.lua")
    include("cl_fas2_calcview.lua")
    -- Override a bunch of shit for these SWEPS
    -- Boring, just reduce clutter in child sweps
    SWEP.Author			= "brekiy"
    SWEP.Contact		= ""
    SWEP.Purpose		= ""
    SWEP.Instructions	= ""
    SWEP.Category = "CW 2.0 FA:S 2 Weapons"
    SWEP.HipFireFOVIncrease = false
    SWEP.ViewModelFlip	= false
    SWEP.HUD_3D2DScale = 0.01
    SWEP.ReloadViewBobEnabled = false
    SWEP.PosBasedMuz = false
end

-- render target shit
SWEP.PSO1Glass = Material("models/weapons/view/accessories/Lens_EnvSolid")

-- Important props
SWEP.ManualCycling = false
SWEP.Cocked = true
SWEP.UseHands = true
-- Whether the empty reload start inserts a shell or not
SWEP.ShotgunReloadEmptyInsert = false

SWEP.MuzzleAttachmentName = "muzzle"
SWEP.EjectorAttachmentName = "ejector"

-- Anim speed
-- SWEP.ReloadSpeed = 1
-- Time of wet reload sequence
-- SWEP.ReloadTime = 2
-- Time of dry reload sequence
-- SWEP.ReloadTime_Empty = 2
-- Blocking time of wet reload (no shooting, make it about 0.1-0.15s longer than ReloadTime)
-- SWEP.ReloadHalt = 2.1
-- Blocking time of dry reload
-- SWEP.ReloadHalt_Empty = 2.1

-- Same deal but for the fast reload perk (think sleight of hand from COD)
-- SWEP.ReloadFastTime = 1
-- SWEP.ReloadFastTime_Empty = 1
-- SWEP.ReloadFastHalt = 1.1
-- SWEP.ReloadFastHalt_Empty = 1.1

--[[
    Helper fxn to check if a weapon has special animations/setup for fast reloading.
    If this returns true the reload functions will look for additional '_fast_empty' and '_fast'
    type reload animations in the SWEP animation table.
    It does do a few safety checks, but still.
]]--
function SWEP:isNonVanillaFastReload()
    return self.FastReload and !self.FastReloadVanilla and self.ReloadFastTime and self.ReloadFastTime_Empty
end

--[[
    Override to allow:
    1. Starting a special empty reload for shotties
    2. Fast reload perk to play different set of animations
    3. Update reload time calc according to (2)
    TODO: maybe refactor the fastreload checks... idk
]]--
function SWEP:beginReload()
    mag = self:Clip1()
    local CT = CurTime()
    local reloadSpeed = self.ReloadSpeed
    if self.FastReload then
        -- A modest buff
        reloadSpeed = reloadSpeed * 1.125
        if self.FastReloadVanilla then
            -- Another modest buff
            reloadSpeed = reloadSpeed * 1.2
        end
    end
    if self.ShotgunReload then
        local time
        self.WasEmpty = mag == 0

        if self.WasEmpty and self.ReloadStartTime_Empty then
            -- Use special dry start time if it exists
            if self:isNonVanillaFastReload() then
                time = CT + self.ReloadStartFastTime_Empty / reloadSpeed
            else
                time = CT + self.ReloadStartTime_Empty / reloadSpeed
            end
        else
            if self:isNonVanillaFastReload() then
                time = CT + self.ReloadStartFastTime / reloadSpeed
            else
                time = CT + self.ReloadStartTime / reloadSpeed
            end

        end

        self.ReloadDelay = time
        self:SetNextPrimaryFire(time)
        self:SetNextSecondaryFire(time)
        self.GlobalDelay = time
        self.ShotgunReloadState = 1
        self.ForcedReloadStop = false

        if self.WasEmpty and self.Animations.reload_start_empty then
            if self.ShotgunReloadEmptyInsert then
                self:SetClip1(1)
                self.WasEmpty = false
            end
            if self:isNonVanillaFastReload() and self.Animations.reload_start_fast_empty then
                self:sendWeaponAnim("reload_start_fast_empty", reloadSpeed)
            else
                self:sendWeaponAnim("reload_start_empty", reloadSpeed)
            end
        else
            if self:isNonVanillaFastReload() and self.Animations.reload_start_fast then
                self:sendWeaponAnim("reload_start_fast", reloadSpeed)
            else
                self:sendWeaponAnim("reload_start", reloadSpeed)
            end
        end
    else
        local reloadTime = nil
        local reloadHalt = nil

        if mag == 0 then
            if self.Chamberable then
                self.Primary.ClipSize = self.Primary.ClipSize_Orig
            end
            if self:isNonVanillaFastReload() then
                reloadTime = self.ReloadFastTime_Empty
                reloadHalt = self.ReloadFastHalt_Empty
            else
                reloadTime = self.ReloadTime_Empty
                reloadHalt = self.ReloadHalt_Empty
            end
        else
            if self:isNonVanillaFastReload() then
                reloadTime = self.ReloadFastTime
                reloadHalt = self.ReloadFastHalt
            else
                reloadTime = self.ReloadTime
                reloadHalt = self.ReloadHalt
            end

            if self.Chamberable then
                self.Primary.ClipSize = self.Primary.ClipSize_Orig + 1
            end
        end

        reloadTime = reloadTime / reloadSpeed
        reloadHalt = reloadHalt / reloadSpeed

        self.ReloadDelay = CT + reloadTime
        self:SetNextPrimaryFire(CT + reloadHalt)
        self:SetNextSecondaryFire(CT + reloadHalt)
        self.GlobalDelay = CT + reloadHalt

        if self.reloadAnimFunc then
            self:reloadAnimFunc(mag, reloadSpeed)
        else
            if self.FastReload then
                if mag == 0 then
                    if self.Animations.reload_fast_empty then
                        self:sendWeaponAnim("reload_fast_empty", reloadSpeed)
                    else
                        self:sendWeaponAnim("reload_empty", reloadSpeed)
                    end
                else
                    if self.Animations.reload_fast then
                        self:sendWeaponAnim("reload_fast", reloadSpeed)
                    else
                        self:sendWeaponAnim("reload", reloadSpeed)
                    end
                end
            else
                if self.Animations.reload_empty and mag == 0 then
                    self:sendWeaponAnim("reload_empty", reloadSpeed)
                else
                    self:sendWeaponAnim("reload", reloadSpeed)
                end
            end
        end
    end

    CustomizableWeaponry.callbacks.processCategory(self, "beginReload", mag == 0)

    self:GetOwner():SetAnimation(PLAYER_RELOAD)
end

-- Special CW_VM has its separate bodygroup...
function SWEP:getCWBodygroup(main)
    if SERVER then
        return
    end

    if self.CW_VM then
        return self.CW_VM:GetBodygroup(main)
    end
end
