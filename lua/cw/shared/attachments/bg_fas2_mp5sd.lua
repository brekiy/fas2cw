local att = {}
att.name = "bg_fas2_mp5sd"
att.displayName = "SD Conversion"
att.displayNameShort = "SD"
att.isSuppressor = true
att.isBG = true
att.statModifiers = {
    RecoilMult = -0.25,
    DamageMult = -0.15,
    FireDelayMult = 0.05
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/mp5k30rnd")
    att.description = {{t = "Integral barrel suppressor.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
    self.dt.Suppressed = true
    self:updateSoundTo("CW_FAS2_MP5SD_FIRE", CustomizableWeaponry.sounds.SUPPRESSED)
    self:setBodygroup(self.GripBGs.main, self.GripBGs.sd)
    self:setBodygroup(self.FrontSightBGs.main, self.FrontSightBGs.sd)
end

function att:detachFunc()
    self:resetSuppressorStatus()
    self:restoreSound()
    self:setBodygroup(self.GripBGs.main, self.GripBGs.regular)
    self:setBodygroup(self.FrontSightBGs.main, self.FrontSightBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)