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
    SWEP.PrintName = "SKS"

    SWEP.MuzzleEffect = "muzzleflash_6"
    -- SWEP.PosBasedMuz = false
    -- SWEP.SnapToGrip = false
    SWEP.ShellOffsetMul = 1
    SWEP.Shell = "fas2_7.62x39"
    -- SWEP.ShellPosOffset = {x = 2, y = 0, z = 2}

    SWEP.IronsightPos = Vector(-3.175, -4.652, 2.25)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.CompM4Pos = Vector(-3.18, -3, 1.17)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.EoTechPos = Vector(-3.18, -4, 0.72)
    SWEP.EoTechAng = Vector(0, 0, 0)

    SWEP.PSO1Pos = Vector(-2.847, -3.65, 1.2105)
    SWEP.PSO1Ang = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-1, 0, 0)
    SWEP.AlternativeAng = Vector(0, 0, -8)

    SWEP.AlternativeCrouchPos = Vector(-4, -2, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -25)
    SWEP.PSOAxisAlign = {right = 0, up = 0, forward = 0}

    SWEP.AttachmentModelsVM = {
    }

    SWEP.BackupSights = {
        ["bg_fas2_pso1"] = {
            [1] = Vector(-3.165, -4.652, 2.25),
            [2] = Vector() --Vector(0, 0, -30),
        },
    }

end

SWEP.MuzzleVelocity = 700 -- in meter/s

SWEP.MuzzleBGs = {main = 2, sd = 2, regular = 0}
SWEP.SightBGs = {main = 1, fas2_pso1 = 3, fas2_eotech = 2, fas2_aimpoint = 1, regular = 0}
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
    reload_1_fast = "Reload1_nmc",
    reload_2 = "Reload2",
    reload_2_fast = "Reload2_nmc",
    reload = "Reload3",
    reload_fast = "Reload3_nmc",
    reload_empty = "Reload_empty",
    reload_fast_empty = "Reload_empty_nmc",
    reload_20 = "Reload_20_add",
    reload_20_fast = "Reload_20_add_nmc",
    reload_20_empty = "Reload_20_empty",
    reload_20_fast_empty = "Reload_20_empty_nmc",
    reload_30 = "Reload_30",
    reload_30_fast = "Reload_30_nmc",
    reload_30_empty = "Reload_30_empty",
    reload_30_fast_empty = "Reload_30_empty_nmc",
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
SWEP.WorldModel		= "models/weapons/world/rifles/sks.mdl"
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
SWEP.Recoil = 0.78

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

function SWEP:reloadAnimFunc(mag, reloadSpeed)
    local animString = "reload"
    if self:GetMaxClip1() >= 30 then
        animString = animString .. "_30"
    elseif self:GetMaxClip1() >= 20 then
        animString = animString .. "_20"
    else
        if CLIENT then
            timer.Simple(1, function()
                local magEject = self:GetAttachment(self:LookupAttachment("ejector2"))
                self:FAS2_MakeFakeShell("fas2_7.62x39_live", math.max(self:Clip1() - 1, 0), magEject.Pos, magEject.Ang)
            end)
            timer.Simple(5, function()
                local clip = self:GetAttachment(self:LookupAttachment("ejector3"))
                self:FAS2_MakeFakeShell("fas2_stripper", 1, clip.Pos, clip.Ang)
            end)
        end
        if mag == 2 or mag == 1 then
            animString = animString .. "_" .. self:Clip1()
        end
    end
    if self.FastReload then
        animString = animString .. "_fast"
    end
    if mag == 0 then
        animString = animString .. "_empty"
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
        if self.Chamberable then
            self.Primary.ClipSize = self.Primary.ClipSize_Orig
        end
        if self:isNonVanillaFastReload() then
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
        if self:isNonVanillaFastReload() then
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
