local att = {}
att.name = "am_fas2_93svd"
att.displayName = "9.3x64MM Conversion"
att.displayNameShort = "9.3"
att.statModifiers = {
    DamageMult = 0.3,
    RecoilMult = 0.4,
    RecoilSideMult = 0.15,
    SpreadPerShotMult = 0.15,
    MuzzleVelocityMult = 0.05
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("atts/matchgradeammo")
    att.description = {
        {t = "Caliber conversion to 9.3x64MM Brenneke.", c = CustomizableWeaponry.textColors.NEUTRAL},
    }
end

function att:attachFunc()
    self:unloadWeapon()
    self:updateSoundTo("CW_FAS2_SVD_93_FIRE", CustomizableWeaponry.sounds.UNSUPPRESSED)
    self:updateSoundTo("CW_FAS2_SVD_93_FIRE_SUPP", CustomizableWeaponry.sounds.SUPPRESSED)
    self.Primary.Ammo_Orig = self.Primary.Ammo
    self.Primary.Ammo = "9.3x64MM"
    self._shellTable_Orig = self._shellTable
    self._shellTable = CustomizableWeaponry.shells:getShell("fas2_9.3x64")
    self:setBodygroup(self.MagBGs.main, self.MagBGs.fas2_93)
end

function att:detachFunc()
    self:unloadWeapon()
    self:restoreSound()
    self.Primary.Ammo = self.Primary.Ammo_Orig
    self._shellTable = self._shellTable_Orig
    self:setBodygroup(self.MagBGs.main, self.MagBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)