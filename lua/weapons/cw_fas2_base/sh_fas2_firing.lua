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
    local cycleDelay, shellDelay
    self.Cycling = true
    if self.dt.State == CW_AIMING then
        if self:isNonVanillaFastReload() and self.Animations.cycle_gun_fast_aim then
            self:sendWeaponAnim("cycle_gun_fast_aim")
            cycleDelay = self.CycleDelayFastAim
            shellDelay = self.ManualShellDelayAim
        else
            self:sendWeaponAnim("cycle_gun_aim")
            cycleDelay = self.CycleDelayAim
            shellDelay = self.ManualShellDelayAim
        end
    else
        if self:isNonVanillaFastReload() and self.Animations.cycle_gun_fast then
            self:sendWeaponAnim("cycle_gun_fast")
            cycleDelay = self.CycleDelayFast
            shellDelay = self.ManualShellDelay
        else
            self:sendWeaponAnim("cycle_gun")
            cycleDelay = self.CycleDelay
            shellDelay = self.ManualShellDelay
        end
    end
    timer.Simple(cycleDelay, function()
        self.Cocked = true
        self.Cycling = false
    end)
    if CLIENT then
        self.NoShells = false
        print("start shell timer")
        timer.Simple(shellDelay, function()
            print("shell timer done")
            self:CreateShell()
            print("should have created shell")
            self.NoShells = true
        end)
    end

end

function SWEP:manualAction()
    if !self.ManualCycling or self.Cocked or self.WasEmpty then
        return false
    end
    if self.Cycling then
        return true
    end
    -- If the user enables manual pumping/bolting, play the anim immediately
    -- why are all these callbacks the opposite? wtf
    self:_manualActionHelp()
    return true
end

function SWEP:uncycle()
    if self.ManualCycling then
        self.Cocked = false
        if !GetConVar("cw_fas2_manual_action"):GetBool() and !self.Cycling then
            -- Have an extra bool here to keep from duplicating the timer
            timer.Simple(0.5, function()
                self:_manualActionHelp()
            end)
        end
    end
end

function SWEP:checkManualCycling()
    -- idk the callback condition checks that the callback returns FALSE before it lets you shoot
    if self.ManualCycling then return !self.Cocked end
end

--[[
    postFire callback
    In a SWEP you can have an optional table:
    The numeric key assigns it to that shot in the burst or auto spray.
    The value is another table with 3 optional values:
    1. FireDelay => Set the next shot to occur with this delay.
    2. Recoil => Set the next shot to occur with this recoil.
    3. SpreadPerShot => Set the next shot to occur with this spread increase.
]]--
function SWEP:specialBurst()
    if self.SpecialBurstTable then
        local shots = self.dt.Shots
        local mods = self.SpecialBurstTable[shots]
        if !mods then
            self.FireDelay = self.NonBurstFireDelay
            self.Recoil = self.NonBurstRecoil
            self.SpreadPerShot = self.NonBurstSpreadPerShot
        else
            self.FireDelay = self.NonBurstFireDelay * (mods.fireDelayMult or 1)
            self.Recoil = self.NonBurstRecoil * (mods.recoilMult or 1)
            self.SpreadPerShot = self.NonBurstSpreadPerShot * (mods.spreadPerShotMult or 1)
        end
    end
end

function SWEP:saveNonBurstValues()
    self.NonBurstFireDelay = self.FireDelay
    self.NonBurstRecoil = self.Recoil
    self.NonBurstSpreadPerShot = self.SpreadPerShot
end

if SERVER then
    CustomizableWeaponry.callbacks:addNew("canReload", "FAS2_manualAction", function(self)
        if self.manualAction then return self:manualAction() else return false end
    end)
    CustomizableWeaponry.callbacks:addNew("postFire", "FAS2_uncycle", function(self)
        if self.uncycle then self:uncycle() end
    end)
    CustomizableWeaponry.callbacks:addNew("preFire", "FAS2_checkManualCycling", function(self)
        if self.checkManualCycling then return self:checkManualCycling() else return false end
    end)
    CustomizableWeaponry.callbacks:addNew("preFire", "FAS2_specialBurst", function(self)
        if self.specialBurst and self.BurstAmount and self.BurstAmount > 0 then self:specialBurst() end
        return false
    end)
    CustomizableWeaponry.callbacks:addNew("initialize", "FAS2_specialBurstInit", function(self)
        if self.SpecialBurstTable then self:saveNonBurstValues() end
    end)
    CustomizableWeaponry.callbacks:addNew("postAttachAttachment", "FAS2_resetNonBurstValues", function(self)
        if self.SpecialBurstTable then self:saveNonBurstValues() end
    end)
    CustomizableWeaponry.callbacks:addNew("postDetachAttachment", "FAS2_resetNonBurstValues", function(self)
        if self.SpecialBurstTable then self:saveNonBurstValues() end
    end)
end
