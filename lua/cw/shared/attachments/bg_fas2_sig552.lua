local att = {}
att.name = "bg_fas2_sig552"
att.displayName = "552 Variant"
att.displayNameShort = "552"
att.isBG = true
att.statModifiers = {
    RecoilMult = 0.1,
    DrawSpeedMult = 0.1,
    FireDelayMult = -0.1
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/sg55xmag")
    att.description = {
        [1] = {t = "552 carbine conversion.", c = CustomizableWeaponry.textColors.NEUTRAL}
    }
end

function att:attachFunc()
    self:setBodygroup(self.HandguardBGs.main, self.HandguardBGs.sg552)
    self:updateSoundTo("CW_FAS2_SG552_FIRE", CustomizableWeaponry.sounds.UNSUPPRESSED)
    self:updateSoundTo("CW_FAS2_SG552_FIRE_SUPP", CustomizableWeaponry.sounds.SUPPRESSED)
    self.SG552Active = true
end

function att:detachFunc()
    self:setBodygroup(self.HandguardBGs.main, self.HandguardBGs.regular)
    self:restoreSound()
    self.SG552Active = false
end

CustomizableWeaponry:registerAttachment(att)