local att = {}
att.name = "bg_fas2_suppressor"
att.displayName = "Suppressor"
att.displayNameShort = "Supp."
att.isSuppressor = true
att.isBG = true
att.NearWallDistance = 3

att.statModifiers = {
    RecoilMult = -0.1,
    RecoilSideMult = -0.05,
    SpreadPerShotMult = -0.1,
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