local att = {}
att.name = "am_fas2_68ar"
att.displayName = "6.8x43MM SPC Conversion"
att.displayNameShort = "6.8 SPC"
att.statModifiers = {
    DamageMult = 0.2,
    RecoilMult = 0.275,
    RecoilSideMult = 0.1,
    MaxSpreadIncMult = 0.05,
    MuzzleVelocityMult = -0.1
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("atts/matchgradeammo")
    att.description = {
        {t = "Caliber conversion to 6.8x43MM SPC.", c = CustomizableWeaponry.textColors.NEUTRAL},
        {t = "Decreases mag size to 25 rounds.", c = CustomizableWeaponry.textColors.NEGATIVE}
    }
end

function att:attachFunc()
    self:unloadWeapon()
    self:updateSoundTo("CW_FAS2_AR_300_FIRE", CustomizableWeaponry.sounds.UNSUPPRESSED)
    -- self:updateSoundTo("CW_FAS2_AR_300_FIRE_SUPP", CustomizableWeaponry.sounds.SUPPRESSED)
    self.Primary.Ammo_Orig = self.Primary.Ammo
    self.Primary.Ammo = "6.8x43MM"
    self._shellTable_Orig = self._shellTable
    self._shellTable = CustomizableWeaponry.shells:getShell("fas2_6.8x43")
    self.Primary.ClipSize = 25
    self.Primary.ClipSize_Orig = 25
end

function att:detachFunc()
    self:unloadWeapon()
    self:restoreSound()
    self.Primary.Ammo = self.Primary.Ammo_Orig
    self._shellTable = self._shellTable_Orig
    self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
    self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)