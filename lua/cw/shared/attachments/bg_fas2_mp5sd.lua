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
    att.description = {[1] = {t = "Integral barrel suppressor.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
    self:setBodygroup(self.GripBGs.main, self.GripBGs.sd)
    self:setBodygroup(self.FrontSightBGs.main, self.FrontSightBGs.sd)
    self:unloadWeapon()
    self.Primary.ClipSize = 30
    self.Primary.ClipSize_Orig = 30
end

function att:detachFunc()
    self:setBodygroup(self.GripBGs.main, self.GripBGs.regular)
    self:setBodygroup(self.FrontSightBGs.main, self.FrontSightBGs.regular)
    self:unloadWeapon()
    self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
    self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)