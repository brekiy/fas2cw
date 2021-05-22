-- Special functions for FAS2 behavior and to expand functionality
function SWEP:fireAnimFunc()
    local remainingAmmo = self:Clip1() - self.AmmoPerShot

    -- Play special animations if we don't just use the regular hipfire animation for these special states
    if self.dt.State == CW_AIMING then
        if !self.ADSFireAnim then
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
        if !self.BipodFireAnim then
            self:sendWeaponAnim("fire_bipod", self.FireAnimSpeed)
        else
            return
        end
    end

    if self.dt.State ~= CW_AIMING and (!self.LuaViewmodelRecoilOverride and self.LuaViewmodelRecoil) then
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

-- Prefixed with an underscore because its meant to be internal only
function SWEP:_manualActionHelp()
    if self.dt.State == CW_AIMING then
        self:sendWeaponAnim("cock_gun_aim")
    else
        self:sendWeaponAnim("cock_gun")
    end
    self.Cocked = true
end

-- TODO: make this a canReload callback
function SWEP:manualAction()
    if !self.NeedsManualAction or self.Cocked then return true end
    if self.AutoCockingDelay then return false end
    -- If the user enables manual pumping/bolting, play the anim immediately
    if GetConVar("cw_fas2_manual_action"):GetBool() then
        self:_manualActionHelp()
    elseif !self.AutoCockingDelay then
        -- Have an extra thing here to keep from duplicating the timer
        self.AutoCockingDelay = true
        timer.Simple(0.3, function()
            self:_manualActionHelp()
            self.AutoCockingDelay = false
        end)
    end
    return false
end

-- TODO: make a postFire callback to set the weapon to not cocked
function SWEP:uncock()
    if self.NeedsManualAction then self.Cocked = false end
end

if SERVER then
    CustomizableWeaponry.callbacks:addNew("canReload", "FAS2_manualAction", function(self)
        self:manualAction()
    end)
    CustomizableWeaponry.callbacks:addNew("postFire", "FAS2_uncock", function(self)
        self:uncock()
    end)
end