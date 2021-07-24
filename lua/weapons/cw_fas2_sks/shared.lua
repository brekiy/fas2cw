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
    SWEP.PrintName = "SKS"

    SWEP.MuzzleEffect = "muzzleflash_6"
    SWEP.Shell = "fas2_7.62x39"

    SWEP.IronsightPos = Vector(-3.175, -4.652, 2.25)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.CompM4Pos = Vector(-3.18, -3, 1.17)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.EoTechPos = Vector(-3.18, -4, 0.72)
    SWEP.EoTechAng = Vector(0, 0, 0)

    SWEP.PSOPos = Vector(-2.847, -3.65, 1.2105)
    SWEP.PSOAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-1, 0, 0)
    SWEP.AlternativeAng = Vector(0, 0, -8)

    SWEP.AlternativeCrouchPos = Vector(-4, -2, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -25)
    SWEP.PSO1AxisAlignNew = {right = 0, up = 0, forward = 0}

    SWEP.AttachmentModelsVM = {}

    SWEP.BackupSights = {
        ["bg_fas2_pso1"] = {
            [1] = Vector(-3.165, -4.652, 2.25),
            [2] = Vector() --Vector(0, 0, -30),
        },
    }

    -- positions lifted from fas2
    local function SKS_Ejector3Offsetter(wep)
        if SERVER then return end
        local att = wep:GetAttachment(wep:LookupAttachment("ejector3"))
        local dir = att.Ang:Forward()
        att.Pos = att.Pos - dir * 6
        att.Ang:RotateAroundAxis(att.Ang:Forward(), 90)
        local vel = dir * 150
        return att.Pos, att.Ang, vel
    end

    -- positions lifted from fas2
    local function SKS_Ejector2Offsetter(wep)
        if SERVER then return end
        local att = wep:GetAttachment(wep:LookupAttachment("ejector2"))
        local dir = att.Ang:Forward()
        att.Pos = att.Pos - dir * 2
        local vel = dir * 100
        return att.Pos, EyeAngles(), vel
    end

    SWEP.FakeShellOffsetCalcs = {
        ejector3 = SKS_Ejector3Offsetter,
        ejector2 = SKS_Ejector2Offsetter
    }
end

SWEP.MuzzleVelocity = 700 -- in meter/s

SWEP.MuzzleBGs = {main = 2, sd = 2, regular = 0}
SWEP.SightBGs = {main = 1, fas2_pso1 = 3, fas2_eotech = 2, fas2_compm4 = 1, regular = 0}
SWEP.MagBGs = {main = 3, rnd30 = 2, rnd20 = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {800, -300}, atts = {"bg_fas2_eotech", "bg_fas2_compm4", "bg_fas2_pso1"}},
    [2] = {header = "Muzzle", offset = {-200, 0}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Magazine", offset = {200, 500}, atts = {"bg_fas2_sks20mag", "bg_fas2_sks30mag"}},
    ["+use"] = {header = "Perk", offset = {400, 0}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {900, 500}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = "Fire1",
    fire_aim = "fire_scoped",
    fire_last = "Fire_last",
    fire_aim_last = "Fire_last_scoped",
    reload_1 = "Reload1",
    reload_fast_1 = "Reload1_nmc",
    reload_2 = "Reload2",
    reload_fast_2 = "Reload2_nmc",
    reload = "Reload3",
    reload_fast = "Reload3_nmc",
    reload_empty = "Reload_empty",
    reload_fast_empty = "Reload_empty_nmc",
    reload_20 = "Reload_20_add",
    reload_fast_20 = "Reload_20_add_nmc",
    reload_empty_20 = "Reload_20_empty",
    reload_fast_empty_20 = "Reload_20_empty_nmc",
    reload_30 = "Reload_30",
    reload_fast_30 = "Reload_30_nmc",
    reload_empty_30 = "Reload_30_empty",
    reload_fast_empty_30 = "Reload_30_empty_nmc",
    idle = "idle",
    draw = "draw",
    holster = "holster"
}

SWEP.SpeedDec = 15

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/view/rifles/c_sks.mdl"
SWEP.WorldModel		= "models/weapons/w_snip_scout.mdl" --"models/weapons/world/rifles/sks.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 40
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "7.62x39MM"

SWEP.FireDelay = 0.12
SWEP.FireSound = "CW_FAS2_SKS_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_SKS_FIRE_SUPP"
SWEP.Recoil = 0.92
SWEP.RecoilSide = 0.63

SWEP.HipSpread = 0.054
SWEP.AimSpread = 0.0048
SWEP.VelocitySensitivity = 1.35
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.15
SWEP.Shots = 1
SWEP.Damage = 31
SWEP.DeployTime = 1
SWEP.NearWallDistance = 30
SWEP.Chamberable = false

SWEP.ReloadTime = 6
SWEP.ReloadTime_Empty = 3.5
SWEP.ReloadHalt = 6.2
SWEP.ReloadHalt_Empty = 3.7

SWEP.ReloadFastTime = 4.8
SWEP.ReloadFastTime_Empty = 3
SWEP.ReloadFastHalt = 4.9
SWEP.ReloadFastHalt_Empty = 3

SWEP.ReloadTime_1 = 4.5
SWEP.ReloadHalt_1 = 4.5
SWEP.ReloadFastTime_1 = 3.4
SWEP.ReloadFastHalt_1 = 3.4

SWEP.ReloadTime_2 = 5
SWEP.ReloadHalt_2 = 5
SWEP.ReloadFastTime_2 = 3.8
SWEP.ReloadFastHalt_2 = 3.8

SWEP.ReloadTime_20 = 3.8
SWEP.ReloadTime_20_Empty = 6.9
SWEP.ReloadHalt_20 = 4
SWEP.ReloadHalt_20_Empty = 7

SWEP.ReloadFastTime_20 = 2.8
SWEP.ReloadFastTime_20_Empty = 5
SWEP.ReloadFastHalt_20 = 3
SWEP.ReloadFastHalt_20_Empty = 5.2

SWEP.ReloadTime_30 = 3.8
SWEP.ReloadTime_30_Empty = 3.8
SWEP.ReloadHalt_30 = 4
SWEP.ReloadHalt_30_Empty = 4

SWEP.ReloadFastTime_30 = 2.8
SWEP.ReloadFastTime_30_Empty = 2.8
SWEP.ReloadFastHalt_30 = 3
SWEP.ReloadFastHalt_30_Empty = 3


function SWEP:_SKSEject20Mag(empty, ejectChamber, ejectClip1, ejectClip2)
    if empty then
        if CLIENT then
            timer.Simple(ejectChamber, function()
                self:FAS2_MakeFakeShell("fas2_7.62x39_live", 1, "ejector3")
            end)
            timer.Simple(ejectClip1, function()
                self:FAS2_MakeFakeShell("fas2_stripper", 1, "ejector3")
            end)
            timer.Simple(ejectClip2, function()
                self:FAS2_MakeFakeShell("fas2_stripper", 1, "ejector3")
            end)
        elseif SERVER and game.SinglePlayer() then
            self:SendFakeShellToClient(self:GetOwner(), "fas2_7.62x39_live", math.max(self:Clip1() - 1, 0), ejectChamber, "ejector2", Vector())
            self:SendFakeShellToClient(self:GetOwner(), "fas2_stripper", 1, ejectClip1, "ejector3", Vector(0, 0, 200))
            self:SendFakeShellToClient(self:GetOwner(), "fas2_stripper", 1, ejectClip2, "ejector3", Vector(0, 0, 200))
        end
    else
        if CLIENT then
            timer.Simple(ejectClip1, function()
                self:FAS2_MakeFakeShell("fas2_stripper", 1, "ejector3")
            end)
        elseif SERVER and game.SinglePlayer() then
            self:SendFakeShellToClient(self:GetOwner(), "fas2_stripper", 1, ejectClip1, "ejector3", Vector(0, 0, 200))
        end
    end
end


function SWEP:_SKSEject10Mag(mag, ejectLive, ejectChamber, ejectChamber2, ejectClip)
    if mag == 0 then
        if CLIENT then
            timer.Simple(ejectClip, function()
                self:FAS2_MakeFakeShell("fas2_stripper", 1, "ejector3")
            end)
        elseif SERVER and game.SinglePlayer() then
            self:SendFakeShellToClient(self:GetOwner(), "fas2_stripper", 1, ejectClip, "ejector3", Vector(0, 0, 200))
        end
    else
        if mag == 1 then
            if CLIENT then
                timer.Simple(ejectChamber, function()
                    self:FAS2_MakeFakeShell("fas2_7.62x39_live", 1, "ejector3", Vector(0, 0, 250))
                end)
                timer.Simple(ejectClip, function()
                    self:FAS2_MakeFakeShell("fas2_stripper", 1, "ejector3", Vector(0, 0, 200))
                end)
            elseif SERVER and game.SinglePlayer() then
                self:SendFakeShellToClient(self:GetOwner(), "fas2_7.62x39_live", 1, ejectChamber, "ejector3", Vector(0, 0, 250))
                self:SendFakeShellToClient(self:GetOwner(), "fas2_stripper", 1, ejectClip, "ejector3", Vector(0, 0, 200))
            end
        elseif mag == 2 then
            if CLIENT then
                timer.Simple(ejectChamber, function()
                    self:FAS2_MakeFakeShell("fas2_7.62x39_live", 1, "ejector3", Vector(0, 0, 250))
                end)
                timer.Simple(ejectChamber2, function()
                    self:FAS2_MakeFakeShell("fas2_7.62x39_live", 1, "ejector3", Vector(0, 0, 250))
                end)
                timer.Simple(ejectClip, function()
                    self:FAS2_MakeFakeShell("fas2_stripper", 1, "ejector3", Vector(0, 0, 200))
                end)
            elseif SERVER and game.SinglePlayer() then
                self:SendFakeShellToClient(self:GetOwner(), "fas2_7.62x39_live", 1, ejectChamber, "ejector3", Vector(0, 0, 250))
                self:SendFakeShellToClient(self:GetOwner(), "fas2_7.62x39_live", 1, ejectChamber2, "ejector3", Vector(0, 0, 250))
                self:SendFakeShellToClient(self:GetOwner(), "fas2_stripper", 1, ejectClip, "ejector3", Vector(0, 0, 200))
            end
        else
            if CLIENT then
                timer.Simple(ejectLive, function()
                    self:FAS2_MakeFakeShell("fas2_7.62x39_live", math.max(self:Clip1() - 1, 0), "ejector2", Vector())
                end)
                timer.Simple(ejectChamber, function()
                    self:FAS2_MakeFakeShell("fas2_7.62x39_live", 1, "ejector3", Vector(0, 0, 250))
                end)
                timer.Simple(ejectClip, function()
                    self:FAS2_MakeFakeShell("fas2_stripper", 1, "ejector3", Vector(0, 0, 200))
                end)
            elseif SERVER and game.SinglePlayer() then
                self:SendFakeShellToClient(self:GetOwner(), "fas2_7.62x39_live", math.max(self:Clip1() - 1, 0), ejectLive, "ejector2", Vector())
                self:SendFakeShellToClient(self:GetOwner(), "fas2_7.62x39_live", 1, ejectChamber, "ejector3", Vector(0, 0, 250))
                self:SendFakeShellToClient(self:GetOwner(), "fas2_stripper", 1, ejectClip, "ejector3", Vector(0, 0, 200))
            end
        end
    end
end

-- TODO REFACTOR THIS WHEN IM NOT LAZY
function SWEP:reloadAnimFunc(mag, reloadSpeed)
    local animString = "reload"
    local empty = mag == 0
    if self.FastReload then
        animString = animString .. "_fast"
    end
    if empty then
        animString = animString .. "_empty"
    end
    if self:GetMaxClip1() >= 30 then
        animString = animString .. "_30"
    elseif self:GetMaxClip1() >= 20 then
        animString = animString .. "_20"
        local ejectChamberTime, ejectClip1, ejectClip2
        if empty then
            if self.FastReload then
                ejectChamberTime = 1
                ejectClip1 = 2.1
                ejectClip2 = 4.25
            else
                ejectChamberTime = 1
                ejectClip1 = 2.8
                ejectClip2 = 5.8
            end
        else
            if self.FastReload then
                ejectClip1 = 2.4
            else
                ejectClip1 = 2.95
            end
        end
        self:_SKSEject20Mag(empty, ejectChamberTime, ejectClip1, ejectClip2)
    else
        -- 10 round mag
        local ejectLive, ejectChamberTime, ejectChamber2, ejectClip
        if empty then
            if self.FastReload then
                ejectClip = 2
            else
                ejectClip = 2.8
            end
        else
            if self.FastReload then
                if mag == 1 then
                    ejectChamberTime = 0.35
                    ejectClip = 2
                elseif mag == 2 then
                    ejectChamberTime = 0.35
                    ejectChamber2 = 0.85
                    ejectClip = 2.55
                else
                    ejectLive = 0.5
                    ejectChamberTime = 2.05
                    ejectClip = 3.5
                end
            else
                if mag == 1 then
                    ejectChamberTime = 0.35
                    ejectClip = 3.3
                elseif mag == 2 then
                    ejectChamberTime = 0.35
                    ejectChamber2 = 0.85
                    ejectClip = 3.5
                else
                    ejectLive = 0.55
                    ejectChamberTime = 2.5
                    ejectClip = 5.15
                end
            end
        end
        self:_SKSEject10Mag(mag, ejectLive, ejectChamberTime, ejectChamber2, ejectClip)
        if mag == 2 or mag == 1 then
            animString = animString .. "_" .. self:Clip1()
        end
    end

    self:sendWeaponAnim(animString, reloadSpeed)
end

--[[
    Override for custom SKS reload timing stuff
]]--
function SWEP:beginReload()
    local mag = self:Clip1()
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

    local reloadTime = nil
    local reloadHalt = nil

    if mag == 0 then
        if self.Chamberable then
            self.Primary.ClipSize = self.Primary.ClipSize_Orig
        end
        if self:IsNonVanillaFastReload() then
            if self:GetMaxClip1() >= 30 then
                reloadTime = self.ReloadFastTime_30_Empty
                reloadHalt = self.ReloadFastHalt_30_Empty
            elseif self:GetMaxClip1() >= 20 then
                reloadTime = self.ReloadFastTime_20_Empty
                reloadHalt = self.ReloadFastHalt_20_Empty
            else
                reloadTime = self.ReloadFastTime_Empty
                reloadHalt = self.ReloadFastHalt_Empty
            end
        else
            if self:GetMaxClip1() >= 30 then
                reloadTime = self.ReloadTime_30_Empty
                reloadHalt = self.ReloadHalt_30_Empty
            elseif self:GetMaxClip1() >= 20 then
                reloadTime = self.ReloadTime_20_Empty
                reloadHalt = self.ReloadHalt_20_Empty
            else
                reloadTime = self.ReloadTime_Empty
                reloadHalt = self.ReloadHalt_Empty
            end
        end
    else
        if self:IsNonVanillaFastReload() then
            if self:GetMaxClip1() >= 30 then
                reloadTime = self.ReloadFastTime_30
                reloadHalt = self.ReloadFastHalt_30
            elseif self:GetMaxClip1() >= 20 then
                reloadTime = self.ReloadFastTime_20
                reloadHalt = self.ReloadFastHalt_20
            else
                if mag == 1 then
                    reloadTime = self.ReloadFastTime_1
                    reloadHalt = self.ReloadFastHalt_1
                elseif mag == 2 then
                    reloadTime = self.ReloadFastTime_2
                    reloadHalt = self.ReloadFastHalt_2
                else
                    reloadTime = self.ReloadFastTime
                    reloadHalt = self.ReloadFastHalt
                end
            end
        else
            if self:GetMaxClip1() >= 30 then
                reloadTime = self.ReloadTime_30
                reloadHalt = self.ReloadHalt_30
            elseif self:GetMaxClip1() >= 20 then
                reloadTime = self.ReloadTime_20
                reloadHalt = self.ReloadHalt_20
            else
                if mag == 1 then
                    reloadTime = self.ReloadTime_1
                    reloadHalt = self.ReloadHalt_1
                elseif mag == 2 then
                    reloadTime = self.ReloadTime_2
                    reloadHalt = self.ReloadHalt_2
                else
                    reloadTime = self.ReloadTime
                    reloadHalt = self.ReloadHalt
                end
            end
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

    self:reloadAnimFunc(mag, reloadSpeed)

    CustomizableWeaponry.callbacks.processCategory(self, "beginReload", mag == 0)

    self:GetOwner():SetAnimation(PLAYER_RELOAD)
end

-- override to only add 10 rounds to a partial
function SWEP:finishReload()
    local mag, ammo = self:Clip1(), self:GetOwner():GetAmmoCount(self.Primary.Ammo)

    if mag > 0 and self.SnapToIdlePostReload then
        self:sendWeaponAnim("idle", 1, 1)
    end

    local suppressReloadLogic = CustomizableWeaponry.callbacks.processCategory(self, "defaultReloadLogic", mag == 0)

    if not suppressReloadLogic then
        if self.ReloadAmount then
            if SERVER then
                self:SetClip1(math.Clamp(mag + self.ReloadAmount, 0, self.Primary.ClipSize))
                self:GetOwner():RemoveAmmo(self.ReloadAmount, self.Primary.Ammo)
            end
        else
            local reloadAmount
            local removeAmount
            if mag > 0 then
                if self:getCWBodygroup(self.MagBGs.main) == 1 and SERVER then
                    print("20 rounder only 10 rounds bitch")
                    reloadAmount = 10
                    removeAmount = 10
                else
                    if ammo >= self.Primary.ClipSize - mag then
                        reloadAmount = self.Primary.ClipSize
                        removeAmount = self.Primary.ClipSize - mag
                    else
                        reloadAmount = mag + ammo
                        removeAmount = ammo
                    end
                end
            else
                if ammo >= self.Primary.ClipSize then
                    removeAmount = self.Primary.ClipSize
                    reloadAmount = self.Primary.ClipSize
                else
                    reloadAmount = ammo
                    removeAmount = ammo
                end
            end
            if SERVER then
                self:SetClip1(math.Clamp(reloadAmount, 0, self.Primary.ClipSize))
                self:GetOwner():RemoveAmmo(removeAmount, self.Primary.Ammo)
            end
        end
    end

    CustomizableWeaponry.callbacks.processCategory(self, "finishReload")

    self.ReloadDelay = nil
end

if SERVER then
    CustomizableWeaponry.callbacks:addNew("canReload", "FAS2_SKS_20_CAN_LOAD", function(self, magEmpty)
        if self:GetClass() == "cw_fas2_sks" and self:GetMaxClip1() == 20 then
            if self:Clip1() <= 10 then return false else return true end
        else return false end
    end)
end