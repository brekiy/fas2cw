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
    SWEP.PrintName = "M3 Super 90"

    SWEP.IronsightPos = Vector(-2.26, -4, 1.7)
    SWEP.IronsightAng = Vector()

    SWEP.CompM4Pos = Vector(-2.26, -2, 1.09)
    SWEP.CompM4Ang = Vector()

    SWEP.AlternativePos = Vector(-0.75, 0, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-1.5, -1, -1)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -10)

    SWEP.MuzzleEffect = "muzzleflash_6"
    SWEP.Shell = "fas2_12g_buck"
    SWEP.ShellPosOffset = {x = 4, y = 0, z = 0}
    SWEP.SightWithRail = false

    SWEP.AttachmentModelsVM = {
        ["md_fas2_suppressor"] = {model = "models/cw2/attachments/556suppressor.mdl", pos = Vector(6.5, -0.5, -2.25), angle = Angle(0, 90, 0), size = Vector(0.75, 0.75, 0.75), bone = "Dummy01"},
    }
end

SWEP.MuzzleVelocity = 390 -- in meter/s

SWEP.SightBGs = {main = 1, fas2_compm4 = 1, regular = 0}
-- SWEP.RailBGs = {main = 2, on = 2, off = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {400, -200},  atts = {"bg_fas2_compm4",}},
    [2] = {header = "Muzzle", offset = {-200, -200}, atts = {"md_fas2_suppressor"}},
    ["+use"] = {header = "Perk", offset = {1000, 100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {500, 300}, atts = {"am_slugrounds", "am_flechetterounds"}}
}

SWEP.Animations = {
    fire = {"fire1", "fire2", "fire3"},
    fire_saddle_5 = "last5_fire1",
    fire_saddle_4 = "last4_fire1",
    fire_saddle_3 = "last3_fire1",
    fire_saddle_2 = "last2_fire1",
    fire_saddle_1 = "last1_fire1",
    fire_saddle_0 = "last0_fire1",
    fire_last = "fire_last",
    fire_aim = "fire1_scoped",
    fire_aim_last = "fire_last_iron",
    reload_start = "reload_start",
    reload_start_empty = "reload_start_empty",
    reload_start_saddle_6 = "last6_reload_start",
    reload_start_saddle_5 = "last5_reload_start",
    reload_start_saddle_4 = "last4_reload_start",
    reload_start_saddle_3 = "last3_reload_start",
    reload_start_saddle_2 = "last2_reload_start",
    reload_start_saddle_1 = "last1_reload_start",
    reload_start_saddle_6_empty = "last6_reload_start_empty",
    reload_start_saddle_5_empty = "last5_reload_start_empty",
    reload_start_saddle_4_empty = "last4_reload_start_empty",
    reload_start_saddle_3_empty = "last3_reload_start_empty",
    reload_start_saddle_2_empty = "last2_reload_start_empty",
    reload_start_saddle_1_empty = "last1_reload_start_empty",
    insert = "reload_load1",
    insert_2 = "reload_load2",
    insert_3 = "reload_load3",
    insert_4 = "reload_load4",
    insert_saddle_6 = "last6_reload_insert",
    insert_saddle_5 = "last5_reload_insert",
    insert_saddle_4 = "last4_reload_insert",
    insert_saddle_3 = "last3_reload_insert",
    insert_saddle_2 = "last2_reload_insert",
    insert_saddle_1 = "last1_reload_end",
    reload_end = "reload_abort",
    reload_end_saddle_6 = "last6_reload_end",
    reload_end_saddle_5 = "last5_reload_end",
    reload_end_saddle_4 = "last4_reload_end",
    reload_end_saddle_3 = "last3_reload_end",
    reload_end_saddle_2 = "last2_reload_end",
    reload_end_saddle_1 = "last1_reload_end",
    idle = "idle",
    idle_saddle_5 = "idle",
    idle_saddle_4 = "idle",
    idle_saddle_3 = "idle",
    idle_saddle_2 = "idle",
    idle_saddle_1 = "idle",
    idle_saddle_0 = "idle",
    draw = "deploy",
    draw_saddle_5 = "last5_deploy",
    draw_saddle_4 = "last4_deploy",
    draw_saddle_3 = "last3_deploy",
    draw_saddle_2 = "last2_deploy",
    draw_saddle_1 = "last1_deploy",
    draw_saddle_0 = "last0_deploy",
    restock_saddle_5 = "last5_restock",
    restock_saddle_4 = "last4_restock",
    restock_saddle_3 = "last3_restock",
    restock_saddle_2 = "last2_restock",
    restock_saddle_1 = "last1_restock",
    restock_saddle_0 = "last0_restock",
    restock_saddle_5_empty = "last5_restock_empty",
    restock_saddle_4_empty = "last4_restock_empty",
    restock_saddle_3_empty = "last3_restock_empty",
    restock_saddle_2_empty = "last2_restock_empty",
    restock_saddle_1_empty = "last1_restock_empty",
    restock_saddle_0_empty = "last0_restock_empty",
    holster = "holster"
}

SWEP.SpeedDec = 20

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_fas2_base"

SWEP.UseHands = true

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/shotguns/c_m3s90.mdl"
SWEP.WorldModel   = "models/weapons/w_shot_m3super90.mdl" --"models/weapons/w_m3.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 8
SWEP.Primary.DefaultClip	= 8
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "12 Gauge"

SWEP.FireDelay = 0.12
SWEP.FireSound = "CW_FAS2_M3S90_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_G3_FIRE_SUPP"
SWEP.Recoil = 1.7
SWEP.RecoilSide = 0.9

SWEP.HipSpread = 0.048
SWEP.AimSpread = 0.006
SWEP.ClumpSpread = 0.0185
SWEP.VelocitySensitivity = 1.6
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.0075
SWEP.SpreadCooldown = 0.145
SWEP.Shots = 8
SWEP.Damage = 17
SWEP.DeployTime = 0.6

SWEP.ReloadStartTime = 0.67
SWEP.ReloadStartTime_Empty = 2
SWEP.ReloadStartTime_Saddle_6 = 1.33
SWEP.ReloadStartTime_Saddle_5 = 1.33
SWEP.ReloadStartTime_Saddle_4 = 1.33
SWEP.ReloadStartTime_Saddle_3 = 1.33
SWEP.ReloadStartTime_Saddle_2 = 1.33
SWEP.ReloadStartTime_Saddle_1 = 1.33
SWEP.ReloadStartTime_Saddle_6_Empty = 2
SWEP.ReloadStartTime_Saddle_5_Empty = 2
SWEP.ReloadStartTime_Saddle_4_Empty = 2
SWEP.ReloadStartTime_Saddle_3_Empty = 2
SWEP.ReloadStartTime_Saddle_2_Empty = 2
SWEP.ReloadStartTime_Saddle_1_Empty = 2
SWEP.InsertShellTime = 0.83
SWEP.InsertShellTime_2 = 1.33
SWEP.InsertShellTime_3 = 1.67
SWEP.InsertShellTime_4 = 1.67
SWEP.InsertShellTime_Saddle = 0.83
SWEP.ReloadFinishWait = 3
SWEP.PumpMidReloadWait = 3
SWEP.ShotgunReload = true
SWEP.Chamberable = true
SWEP.ShotgunReloadEmptyInsert = true
-- SWEP.FastReloadVanilla = true -- makes things simpler in a lazy way
SWEP.AmmoStash = 6 -- special shell carrier
SWEP.AmmoStashMax = 6
SWEP.AmmoStashRestock_1 = 1.25
SWEP.AmmoStashRestock_2 = 1.25
SWEP.AmmoStashRestock_3 = 1.25
SWEP.AmmoStashRestock_4 = 2
SWEP.AmmoStashRestock_5 = 2.5

function SWEP:IndividualThink()
    -- self:ManualAction()
    self:FAS2ShotgunReload()
    -- if self.dt.State == CW_IDLE and self.AmmoStash < self.AmmoStashMax then
    --     self:sendWeaponAnim("idle_saddle_" .. self.AmmoStash, 1)
    -- end
end

--TODO: expand to do a draw_empty and draw_first for the whole base?
function SWEP:drawAnimFunc()
    local animString = "draw"
    if self.AmmoStash < self.AmmoStashMax then
        animString = animString .. "_saddle_" .. self.AmmoStash
    end
    self:sendWeaponAnim(animString, self.DeployAnimSpeed)
end

function SWEP:fireAnimFunc()
    local remainingAmmo = self:Clip1() - self.AmmoPerShot
    local animString = "fire"
    if self.AmmoStash < self.AmmoStashMax then
        animString = animString .. "_saddle_" .. self.AmmoStash
    end
    if remainingAmmo <= 0 and self.fire_dry then
        animString = animString .. "_dry"
    else
        -- Play special animations if we don't just use the regular hipfire animation for these special states
        if self.dt.State == CW_AIMING and !self.ADSFireAnim then
            animString = animString .. "_aim"
        end

        if self.dt.State != CW_AIMING and (!self.LuaViewmodelRecoilOverride and self.LuaViewmodelRecoil) then
            return
        end

        if remainingAmmo <= 0 then
            animString = animString .. "_last"
        end
    end
    self:sendWeaponAnim(animString, self.FireAnimSpeed)
end

function SWEP:insertAnimFunc(mag, reloadSpeed)
    local animString = "insert"
    local insertCount = 1
    local insertTimeStr = "InsertShellTime"
    local reserve = self:Ammo1()
    -- load the minimum between what's in our reserve and how much we can fit in our hand
    local toLoad = math.min(self:_getToLoad(mag), reserve)
    if reserve == 0 and self.AmmoStash > 0 then
        if mag == !self.WasEmpty and mag == self.Primary.ClipSize + 1 or mag == self.Primary.ClipSize then
            animString = "reload_end_saddle_" .. self.AmmoStash
        else
            animString = animString .. "_saddle_" .. self.AmmoStash
        end
        insertTimeStr = insertTimeStr .. "_Saddle"
    elseif self.FastReload then
        if toLoad >= 4 then
            -- tiny baby hands can only fit 4 shells at once. sad!
            animString = animString .. "_4"
            insertCount = 4
            insertTimeStr = insertTimeStr .. "_4"
        elseif toLoad > 1 then
            animString = animString .. "_" .. toLoad
            insertCount = toLoad
            insertTimeStr = insertTimeStr .. "_" .. toLoad
        end
    end
    self:sendWeaponAnim(animString, reloadSpeed)
    return insertCount, self[insertTimeStr]
end

function SWEP:FAS2ShotgunReload()
    local CT = CurTime()
    local reloadSpeed = self:CalcReloadSpeed()
    local maxReloadAmount = self.Primary.ClipSize
    local mag, ammo = self:Clip1(), self:GetOwner():GetAmmoCount(self.Primary.Ammo)

    if self.Chamberable and !self.WasEmpty then  -- if the weapon is chamberable + we've cocked it - we can add another shell in there
        maxReloadAmount = self.Primary.ClipSize + 1
    end
    if self.ShotgunReloadState == 1 then
        -- continuing to reload
        if self:GetOwner():KeyPressed(IN_ATTACK) and self:Clip1() != 0 then
            self.ShotgunReloadState = 2
            self.ForcedReloadStop = true
        elseif mag == maxReloadAmount then
            self.ShotgunReloadState = 2
        end

        if CT > self.ReloadDelay then

            -- if SP isn't defined or whatever it bugs out and plays the hl2 shotgun cock sound every insert. happens even if i override the whole think()
            if SERVER and !SP then
                self:GetOwner():SetAnimation(PLAYER_RELOAD)
            end

            local insertAmount, insertTime = self:insertAnimFunc(mag, reloadSpeed)

            if SERVER then
                self:SetClip1(mag + insertAmount)
                if ammo == 0 then
                    self.AmmoStash = self.AmmoStash - insertAmount
                else
                    self:GetOwner():SetAmmo(ammo - insertAmount, self.Primary.Ammo)
                end
            end

            self.ReloadDelay = CT + insertTime / reloadSpeed

            -- if we've filled up the weapon (or we have no ammo left), we go to the "end reload" state
            if mag + insertAmount == maxReloadAmount or (ammo - insertAmount <= 0 and self.AmmoStash <= 0) then
                self.ShotgunReloadState = 2
            end
        end
    elseif self.ShotgunReloadState == 2 then
        -- ending reload
        if self:GetOwner():KeyPressed(IN_ATTACK) then
            self.ShotgunReloadState = 2
            self.ForcedReloadStop = true
        end

        if CT > self.ReloadDelay then
            self.ShotgunReloadState = 0

            if self.AmmoStash == self.AmmoStashMax then
                self:sendWeaponAnim("reload_end", reloadSpeed)
            end

            if !self.WasEmpty then
                local time = 0.25 / reloadSpeed
                self:SetNextPrimaryFire(time)
                self:SetNextSecondaryFire(time)
                self.ReloadWait = time
                self.ReloadDelay = nil
            else
                local canInsertMore = false
                local waitTime = self.ReloadFinishWait

                if !self.ForcedReloadStop and self.Chamberable and self:Clip1() < self.Primary.ClipSize + 1 and (self:GetOwner():GetAmmoCount(self.Primary.Ammo) > 0 or self.AmmoStash > 0) then
                    waitTime = self.PumpMidReloadWait or waitTime
                    canInsertMore = true
                end

                local time = CT + waitTime / reloadSpeed
                self:SetNextPrimaryFire(time)
                self:SetNextSecondaryFire(time)
                self.ReloadWait = time

                if !canInsertMore then
                    self.ReloadDelay = nil
                else
                    self.ReloadDelay = time
                end

                if canInsertMore then -- if we can chamber and we haven't chambered up fully + we have some ammo to spare
                    self.ShotgunReloadState = 1 -- we add another shell in there
                    self.WasEmpty = false
                end
            end
        end
    end
end

function SWEP:beginReload()
    local mag = self:Clip1()
    local CT = CurTime()
    local reloadSpeed = self:CalcReloadSpeed()
    local time
    self.WasEmpty = mag == 0
    local animString = "reload_start"
    local reloadStartString = "ReloadStartTime"

    if self.WasEmpty then
        if self:Ammo1() <= 0 and self.AmmoStash and self.AmmoStash > 0 then
            reloadStartString = reloadStartString .. "_Saddle_" .. self.AmmoStash
            animString = animString .. "_saddle_" .. self.AmmoStash
            self.AmmoStash = math.Clamp(self.AmmoStash - self.ShotgunReloadEmptyInsertCount, 0, self.AmmoStash)
        else
            self:GetOwner():SetAmmo(math.max(self:Ammo1() - self.ShotgunReloadEmptyInsertCount, 0), self.Primary.Ammo)
        end
        reloadStartString = reloadStartString .. "_Empty"
        animString = animString .. "_empty"
        -- there's might be a gap in the logic here but right now... im so lazy
        if SERVER then
            self:SetClip1(mag + self.ShotgunReloadEmptyInsertCount)
        end
        self.WasEmpty = false
    else
        if self:Ammo1() <= 0 and self.AmmoStash and self.AmmoStash > 0 then
            reloadStartString = reloadStartString .. "_Saddle_" .. self.AmmoStash
            animString = animString .. "_saddle_" .. self.AmmoStash
            self.AmmoStash = math.Clamp(self.AmmoStash - 1, 0, self.AmmoStash)
            if SERVER then
                self:SetClip1(mag + 1)
            end
        end
    end

    time = CT + self[reloadStartString] / reloadSpeed

    self.ReloadDelay = time
    self:SetNextPrimaryFire(time)
    self:SetNextSecondaryFire(time)
    self.GlobalDelay = time
    self.ShotgunReloadState = 1
    self.ForcedReloadStop = false
    self:sendWeaponAnim(animString, reloadSpeed)

    CustomizableWeaponry.callbacks.processCategory(self, "beginReload", mag == 0)

    self:GetOwner():SetAnimation(PLAYER_RELOAD)
end

if SERVER then
    CustomizableWeaponry.callbacks:addNew("canReload", "FAS2_M3_CAN_LOAD", function(self, magEmpty)
        if self:GetClass() == "cw_fas2_m3" then
            local ammo = self:GetOwner():GetAmmoCount(self.Primary.Ammo)
            if self.AmmoStash == 0 and ammo >= 6 then
                local amt = math.Clamp(6, 0, ammo)
                local animString = "restock_saddle_" .. self.AmmoStash
                local CT = CurTime()
                if mag == 0 then
                    animString = animString .. "_empty"
                end

                self:GetOwner():RemoveAmmo(amt, self.Primary.Ammo)
                self.AmmoStash = amt
                self:SetNextPrimaryFire(CT + 3)
                self:SetNextSecondaryFire(CT + 3)
                self.ReloadWait = CT + 2
                self.dt.State = CW_IDLE
                self:sendWeaponAnim(animString, 1)
                return true, false, false
            end
            if (ammo > 0 or self.AmmoStash > 0) then
                return false, false, true
            end
        else
            return false, false, false
        end
    end)
end