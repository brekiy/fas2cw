local att = {}
att.name = "bg_fas2_suppressor"
att.displayName = "Suppressor"
att.displayNameShort = "Suppressor"
att.isSuppressor = true
att.isBG = true
att.statModifiers = {
    RecoilMult = -0.15,
    DamageMult = -0.1,
    MuzzleVelocityMult = -0.2
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("vgui/fas2atts/suppressor")
    att.description = {{t = "Decreases firing noise.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
    self.dt.Suppressed = true
    if self.SG552Active then
        self:setBodygroup(self.MuzzleBGs.main, self.MuzzleBGs.sd_short)
    elseif self.SG5501Active then
        self:setBodygroup(self.MuzzleBGs.main, self.MuzzleBGs.sd_long)
    else
        self:setBodygroup(self.MuzzleBGs.main, self.MuzzleBGs.sd)
    end
end

function att:detachFunc()
    self:resetSuppressorStatus()
    self:setBodygroup(self.MuzzleBGs.main, self.MuzzleBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)