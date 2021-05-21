AddCSLuaFile()
AddCSLuaFile("cl_model.lua")
AddCSLuaFile("cl_calcview.lua")

SWEP.Base = "cw_base"

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
end

-- render target shit
SWEP.PSO1Glass = Material("models/weapons/view/accessories/Lens_EnvSolid")

-- Important props
-- SWEP.ADSFireAnim = true

-- Idk i dont really like this
-- SWEP.LuaViewmodelRecoil = true
-- SWEP.LuaViewmodelRecoilOverride = true

function SWEP:fireAnimFunc()
    local remainingAmmo = self:Clip1() - self.AmmoPerShot

    -- Play special animations if we don't just use the regular hipfire animation for these special states
    if self.dt.State == CW_AIMING then
        if not self.ADSFireAnim then
            if remainingAmmo <= 0 then
                self:sendWeaponAnim("fire_aim_last", self.FireAnimSpeed)
            else
                self:sendWeaponAnim("fire_aim", self.FireAnimSpeed)
            end
            return
        else
            return
        end
    end

    if self.dt.BipodDeployed then
        if not self.BipodFireAnim then
            self:sendWeaponAnim("fire_bipod", self.FireAnimSpeed)
        else
            return
        end
    end

    if self.dt.State ~= CW_AIMING and (not self.LuaViewmodelRecoilOverride and self.LuaViewmodelRecoil) then
        return
    end

    if remainingAmmo < 0 and self.Animations.fire_dry then
        self:sendWeaponAnim("fire_dry")
    elseif remainingAmmo == 0 and self.Animations.fire_last then
        self:sendWeaponAnim("fire_last", self.FireAnimSpeed)
    else
        self:sendWeaponAnim("fire", self.FireAnimSpeed)
    end
end

