AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

-- TODO
if CLIENT then
    SWEP.Category = "CW 2.0 FA:S 2 Weapons"
    SWEP.Author			= "brekiy"
    SWEP.Contact		= ""
    SWEP.Purpose		= ""
    SWEP.Instructions	= ""

    SWEP.DrawCrosshair = false
    SWEP.PrintName = "Taurus Raging Bull"

    SWEP.IronsightPos = Vector(-2.44, 3, 1.55)
    SWEP.IronsightAng = Vector()

    SWEP.CompM4Pos = Vector(-2.44, 3, 0.285)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.LeupoldPos = Vector(-2.44, -3, 0.57)
    SWEP.LeupoldAng = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-1.3, -1, -0.5)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-2.2, -1.6, -1.5)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -10)

    SWEP.LeupoldAxisAlign = {right = 0, up = 0, forward = 0}

    SWEP.MuzzleEffect = "muzzleflash_pistol"
    SWEP.Shell = "fas2_454casull"
    SWEP.NoShells = true
    SWEP.SightWithRail = false

    SWEP.AttachmentModelsVM = {
    }
end

SWEP.MuzzleVelocity = 500 -- in meter/s

SWEP.SightBGs = {main = 1, fas2_leupold = 2, fas2_aimpoint = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {0, -400},  atts = {"bg_fas2_compm4", "bg_fas2_leupold"}},
    -- [3] = {header = "Caliber", offset = {0, 100}, atts = {"am_fas2_50glock"}},
    ["+use"] = {header = "Perk", offset = {500, 100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {-500, 100}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"Fire01", "Fire02", "Fire03"},
    fire_aim = "Fire_Scoped01",
    fire_last = {"Fire01", "Fire02", "Fire03"},
    fire_aim_last = "Fire_Scoped01",
    reload_1 = "Reload1",
    reload_2 = "Reload2",
    reload_3 = "Reload3",
    reload_4 = "Reload4",
    reload_5 = "Reload5",
    reload_1_fast = "Reload1_nomen",
    reload_2_fast = "Reload2_nomen",
    reload_3_fast = "Reload3_nomen",
    reload_4_fast = "Reload4_nomen",
    reload_5_fast = "Reload5_nomen",
    reload_empty = "reload_empty",
    reload_fast_empty = "reload_empty_nomen",
    idle = "idle",
    draw = "Draw",
    draw_empty = "Draw_Empty",
    holster = "holster"
}
SWEP.UseHands = true

SWEP.SpeedDec = 10

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "revolver"
SWEP.RunHoldType = "normal"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 60
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/pistols/c_ragingbull.mdl"
SWEP.WorldModel   = "models/weapons/w_357.mdl"
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 5
SWEP.Primary.DefaultClip	= 25
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= ".454 Casull"

SWEP.FireDelay = 0.15
SWEP.FireSound = "CW_FAS2_RBULL_FIRE"
SWEP.Recoil = 3

SWEP.HipSpread = 0.034
SWEP.AimSpread = 0.01
SWEP.VelocitySensitivity = 1.4
SWEP.MaxSpreadInc = 0.04
SWEP.SpreadPerShot = 0.015
SWEP.SpreadCooldown = 0.18
SWEP.Shots = 1
SWEP.Damage = 47
SWEP.DeployTime = 0.45
SWEP.Chamberable = false
SWEP.FireAnimSpeed = 1.5
SWEP.NearWallDistance = 12

SWEP.ReloadTime = 1.7
SWEP.ReloadHalt = 1.8
SWEP.ReloadFastTime = 3
SWEP.ReloadFastHalt = 3

SWEP.ReloadTime_2 = 1.7
SWEP.ReloadHalt_2 = 1.8
SWEP.ReloadFastTime_2 = 3
SWEP.ReloadFastHalt_2 = 3

SWEP.ReloadTime_3 = 1.7
SWEP.ReloadHalt_3 = 1.8
SWEP.ReloadFastTime_3 = 3
SWEP.ReloadFastHalt_3 = 3

SWEP.ReloadTime_4 = 1.7
SWEP.ReloadHalt_4 = 1.8
SWEP.ReloadFastTime_4 = 3
SWEP.ReloadFastHalt_4 = 3

SWEP.ReloadTime_Empty = 1.7
SWEP.ReloadHalt_Empty = 1.8
SWEP.ReloadFastTime_Empty = 3
SWEP.ReloadFastHalt_Empty = 3

function SWEP:reloadAnimFunc(mag, reloadSpeed)
    local animString = "reload" .. "_" .. self:GetMaxClip1() - mag
    if CLIENT then
        timer.Simple(1, function()
            local magEject = self:GetAttachment(self:LookupAttachment("ejector2"))
            self:FAS2_MakeFakeShell("fas2_454_casull", 5, magEject.Pos, magEject.Ang)
        end)
    end
    if self.FastReload then
        animString = animString .. "_fast"
    end

    self:sendWeaponAnim(animString, reloadSpeed)
end

--[[
    Override for custom SKS reload timing stuff
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

    local reloadTime = nil
    local reloadHalt = nil

    if mag == 0 then
        if self:isNonVanillaFastReload() then
            reloadTime = self.ReloadFastTime_Empty
            reloadHalt = self.ReloadFastHalt_Empty
        else
            reloadTime = self.ReloadTime_Empty
            reloadHalt = self.ReloadHalt_Empty
        end
    else
        if self:isNonVanillaFastReload() then
            if mag == 1 then
                reloadTime = self.ReloadFastTime
                reloadHalt = self.ReloadFastHalt
            else
                reloadTime = self["ReloadFastTime_" .. mag]
                reloadHalt = self["ReloadFastHalt_" .. mag]
            end
        else
            if mag == 1 then
                reloadTime = self.ReloadTime
                reloadHalt = self.ReloadHalt
            else
                reloadTime = self["ReloadTime_" .. mag]
                reloadHalt = self["ReloadHalt_" .. mag]
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

    CustomizableWeaponry.callbacks.processCategory(self, "beginReload", mag == 0)

    self:GetOwner():SetAnimation(PLAYER_RELOAD)
end
