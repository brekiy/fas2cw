local att = {}
att.name = "bg_fas2_m249parabarrel"
att.displayName = "Para Barrel"
att.displayNameShort = "Para"
att.isBG = true
att.NearWallDistance = -3

att.statModifiers = {
    RecoilMult = 0.2,
    RecoilSideMult = 0.05,
    VelocitySensitivityMult = -0.1,
    MaxSpreadIncMult = 0.05,
    AimSpreadMult = 0.1,
    FireDelayMult = -0.1,
    MuzzleVelocityMult = -0.1
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/m249parabarrel")
end

function att:attachFunc()
    self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.para)
    if self:getCWBodygroup(self.MuzzleBGs.main) != 0 then
        self:setBodygroup(self.MuzzleBGs.main, self.MuzzleBGs.sd_short)
    end
    self.M249ParaActive = true
end

function att:detachFunc()
    self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
    if self:getCWBodygroup(self.MuzzleBGs.main) != 0 then
        self:setBodygroup(self.MuzzleBGs.main, self.MuzzleBGs.sd)
    end
    self.M249ParaActive = false
end

CustomizableWeaponry:registerAttachment(att)