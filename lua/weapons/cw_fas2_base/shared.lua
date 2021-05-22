AddCSLuaFile()
AddCSLuaFile("sh_firing.lua")
AddCSLuaFile("cl_model.lua")
AddCSLuaFile("cl_calcview.lua")
AddCSLuaFile("cl_cvars.lua")

SWEP.Base = "cw_base"
include("cl_cvars.lua")
include("sh_firing.lua")

if CLIENT then
    include("cl_model.lua")
    include("cl_calcview.lua")
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
end

-- render target shit
SWEP.PSO1Glass = Material("models/weapons/view/accessories/Lens_EnvSolid")

-- Important props
SWEP.NeedsManualAction = false
SWEP.Cocked = true

-- Idk i dont really like this
-- SWEP.LuaViewmodelRecoil = true
-- SWEP.LuaViewmodelRecoilOverride = true

--[[
    Override to allow:
    1. Starting a special empty reload for shotties
    2. Fast reload perk to play different set of animations
    3. Update reload time calc according to (2)
]]--
function SWEP:beginReload()
    mag = self:Clip1()
    local CT = CurTime()
    if self.ShotgunReload then
        local time
        self.WasEmpty = mag == 0
        if self.WasEmpty and self.ReloadStartEmptyTime then
            time = CT + self.ReloadStartEmptyTime / self.ReloadSpeed
        else
            time = CT + self.ReloadStartTime / self.ReloadSpeed
        end

        self.ReloadDelay = time
        self:SetNextPrimaryFire(time)
        self:SetNextSecondaryFire(time)
        self.GlobalDelay = time
        self.ShotgunReloadState = 1
        self.ForcedReloadStop = false

        if self.WasEmpty and self.Animations.reload_start_empty then
            self:sendWeaponAnim("reload_start_empty", self.ReloadSpeed)
        else
            self:sendWeaponAnim("reload_start", self.ReloadSpeed)
        end
    else
        local reloadTime = nil
        local reloadHalt = nil
        local reloadSpeed = self.ReloadSpeed

        if mag == 0 then
            if self.Chamberable then
                self.Primary.ClipSize = self.Primary.ClipSize_Orig
            end
            if self.FastReload and not self.FastReloadVanilla then
                reloadTime = self.ReloadFastTime_Empty
                reloadHalt = self.ReloadFastHalt_Empty
            else
                reloadTime = self.ReloadTime_Empty
                reloadHalt = self.ReloadHalt_Empty
            end
        else
            if self.FastReload and not self.FastReloadVanilla then
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

        if self.FastReload then
            -- A modest buff
            reloadSpeed = reloadSpeed * 1.15
            if self.FastReloadVanilla then
                -- Another modest buff
                reloadSpeed = reloadSpeed * 1.1
            end
        end

        reloadTime = reloadTime / reloadSpeed
        reloadHalt = reloadHalt / reloadSpeed

        self.ReloadDelay = CT + reloadTime
        self:SetNextPrimaryFire(CT + reloadHalt)
        self:SetNextSecondaryFire(CT + reloadHalt)
        self.GlobalDelay = CT + reloadHalt

        if self.reloadAnimFunc then
            self:reloadAnimFunc(mag)
        else
            if self.FastReload then
                if mag == 0 then
                    if self.Animations.reload_empty_fast then
                        self:sendWeaponAnim("reload_empty_fast", reloadSpeed)
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
