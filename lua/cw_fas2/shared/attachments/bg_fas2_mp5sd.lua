local att = {}
att.name = "bg_fas2_mp5sd"
att.displayName = "SD Conversion"
att.displayNameShort = "SD"
att.isSuppressor = true
att.isBG = true
att.statModifiers = {
    RecoilMult = -0.35,
    RecoilSideMult = -0.2,
    MuzzleVelocityMult = -0.3,
    AimSpreadMult = 0.3
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/mp5k30rnd")
    att.description = {
        {t = "Integral barrel suppressor.", c = CustomizableWeaponry.textColors.POSITIVE},
        {t = "Much quieter than standard suppressor.", c = CustomizableWeaponry.textColors.POSITIVE}
    }
end

function att:attachFunc()
    self.dt.Suppressed = true
    self:updateSoundTo("CW_FAS2_MP5SD_FIRE", CustomizableWeaponry.sounds.SUPPRESSED)
    self:setBodygroup(self.GripBGs.main, self.GripBGs.sd)
    self:setBodygroup(self.FrontSightBGs.main, self.FrontSightBGs.sd)
    self.MP5SDActive = true
end

function att:detachFunc()
    self:resetSuppressorStatus()
    if self.Primary.Ammo == ".40 S&W" then
        self:updateSoundTo("CW_FAS2_MP5_40_FIRE_SUPP", CustomizableWeaponry.sounds.SUPPRESSED)
    else
        self:restoreSound()
    end
    self:setBodygroup(self.GripBGs.main, self.GripBGs.regular)
    self:setBodygroup(self.FrontSightBGs.main, self.FrontSightBGs.regular)
    self.MP5SDActive = false
end

CustomizableWeaponry:registerAttachment(att)