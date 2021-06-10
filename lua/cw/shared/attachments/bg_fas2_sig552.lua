local att = {}
att.name = "bg_fas2_sig552"
att.displayName = "552 Variant"
att.displayNameShort = "552"
att.isBG = true
att.SpeedDec = -5
att.statModifiers = {
    RecoilMult = 0.15,
    DrawSpeedMult = 0.15,
    MaxSpreadIncMult = 0.05,
    AimSpreadMult = 0.1,
    FireDelayMult = -0.15
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/sg55xmag")
    att.description = {
        {t = "552 carbine conversion.", c = CustomizableWeaponry.textColors.NEUTRAL}
    }
end

function att:attachFunc()
    self:setBodygroup(self.HandguardBGs.main, self.HandguardBGs.sg552)
    self:updateSoundTo("CW_FAS2_SG552_FIRE", CustomizableWeaponry.sounds.UNSUPPRESSED)
    self:updateSoundTo("CW_FAS2_SG552_FIRE_SUPP", CustomizableWeaponry.sounds.SUPPRESSED)
    if self:getCWBodygroup(self.BarrelBGs.main) != 0 then
        self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.sd_short)
    end
    self.SG552Active = true
end

function att:detachFunc()
    self:setBodygroup(self.HandguardBGs.main, self.HandguardBGs.regular)
    self:restoreSound()
    if self:getCWBodygroup(self.BarrelBGs.main) != 0 then
        self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.sd)
    end
    self.SG552Active = false
end

CustomizableWeaponry:registerAttachment(att)