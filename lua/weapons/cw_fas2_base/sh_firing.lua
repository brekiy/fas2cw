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
    local cockDelay
    self.Cocking = true
    if self.dt.State == CW_AIMING then
        self:sendWeaponAnim("cock_gun_aim")
        cockDelay = self.CockDelayAim
    else
        self:sendWeaponAnim("cock_gun")
        cockDelay = self.CockDelay
    end
    timer.Simple(cockDelay, function()
        self.Cocked = true
        self.Cocking = false
    end)
end

-- TODO: make this a canReload callback
function SWEP:manualAction()
    -- print("entered manual action", self.NeedsManualAction, self.Cocked, self.Cocking)
    if !self.NeedsManualAction or self.Cocked or self.WasEmpty then
        return false
    end
    if self.Cocking then
        return true
    end
    -- If the user enables manual pumping/bolting, play the anim immediately
    -- why are all these callbacks the opposite? wtf
    self:_manualActionHelp()
    return true
end

-- TODO: make a postFire callback to set the weapon to not cocked
function SWEP:uncock()
    if self.NeedsManualAction then
        self.Cocked = false
        if !GetConVar("cw_fas2_manual_action"):GetBool() and !self.Cocking then
            -- Have an extra thing here to keep from duplicating the timer
            timer.Simple(0.5, function()
                self:_manualActionHelp()
            end)
        end
    end
end

function SWEP:checkNeedsManualAction()
    -- idk the callback condition checks that the callback returns FALSE before it lets you shoot
    -- print("can we even shoot?", self.NeedsManualAction, self.Cocked)
    if self.NeedsManualAction then return !self.Cocked end
end

if SERVER then
    CustomizableWeaponry.callbacks:addNew("canReload", "FAS2_manualAction", function(self)
        if self.manualAction then return self:manualAction() else return false end
    end)
    CustomizableWeaponry.callbacks:addNew("postFire", "FAS2_uncock", function(self)
        self:uncock()
    end)
    CustomizableWeaponry.callbacks:addNew("preFire", "FAS2_checkNeedsManualAction", function(self)
        if self.checkNeedsManualAction then return self:checkNeedsManualAction() else return false end
    end)
end