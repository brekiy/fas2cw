function SWEP:recalculateMuzzleVelocity()
    self.MuzzleVelocity = self.MuzzleVelocity_Orig * self.MuzzleVelocityMult
    self.MuzzleVelocityConverted = self.MuzzleVelocity * 39.37
end

-- fix bug where this was based off of damagemult lmao
function SWEP:recalculateClumpSpread()
    if not self.ClumpSpread then
        return
    end

    self.ClumpSpread = self.ClumpSpread_Orig * self.ClumpSpreadMult
end

-- Override to factor in muzzle velocity
function SWEP:CalculateEffectiveRange()
    self.EffectiveRange = self.CaseLength * 10 - self.BulletDiameter * 5 -- setup realistic base effective range
    -- print(self.EffectiveRange)
    -- some arbitrary factor lol
    -- for shotguns we divide by number of pellets?
    local muzzleMult = GetConVar("cw_fas2_muzzle_effrange"):GetBool() and math.Clamp(
        self.MuzzleVelocity / self.EffectiveRange / 2 / math.max(math.floor(self.Shots / 4), 1),
        0.5,
        1.5
    ) or 1
    self.EffectiveRange = self.EffectiveRange * muzzleMult * 39.37 -- convert meters to units
    -- print("precalc", self.DamageFallOff, muzzleMult, -1 * (muzzleMult - 1), (1 + (-1 * (muzzleMult - 1))))
    self.DamageFallOff = (100 - (self.CaseLength - self.BulletDiameter)) * (1 + (-1 * (muzzleMult - 1))) / 200
    -- print("postcalc", self.DamageFallOff)
    self.PenStr = (self.BulletDiameter * 0.5 + self.CaseLength * 0.35) * (self.PenAdd and self.PenAdd or 1) * muzzleMult
    self.PenetrativeRange = self.EffectiveRange * 0.5

    -- we need to save it once
    if not self.EffectiveRange_Orig then
        self.EffectiveRange_Orig = self.EffectiveRange
        self.DamageFallOff_Orig = self.DamageFallOff
        self.PenetrativeRange_Orig = self.PenetrativeRange
    end
end

-- Override to force a recalc of effective range and muzzle velocity
function SWEP:recalculateStats()
    -- recalculates all stats
    self:recalculateDamage()
    self:recalculateRecoil()
    self:recalculateFirerate()
    self:recalculateVelocitySensitivity()
    self:recalculateAimSpread()
    self:recalculateHipSpread()
    self:recalculateDeployTime()
    self:recalculateReloadSpeed()
    self:recalculateClumpSpread()

    if CLIENT then
        self:recalculateMouseSens()
    end
    self:setupBallisticsInformation()
    self:recalculateMaxSpreadInc()
    self:recalculateMuzzleVelocity()
    self:CalculateEffectiveRange()
end