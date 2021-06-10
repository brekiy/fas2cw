local att = {}
att.name = "am_fas2_50ar"
att.displayName = ".50 Beowulf Conversion"
att.displayNameShort = ".50"
att.statModifiers = {
    DamageMult = 1.5,
    RecoilMult = 2,
    FireDelayMult = 0.25,
    SpreadPerShotMult = 0.15,
    MaxSpreadIncMult = 0.15,
    HipSpreadMult = 0.1,
    AimSpreadMult = 0.15,
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("atts/magnumrounds")
    att.description = {
        {t = "Caliber conversion to .50 Beowulf.", c = CustomizableWeaponry.textColors.NEUTRAL},
        {t = "Decreases mag size to 10 rounds.", c = CustomizableWeaponry.textColors.NEGATIVE}
    }
end

function att:attachFunc()
    self:unloadWeapon()
    self:updateSoundTo("CW_FAS2_AR_50_FIRE", CustomizableWeaponry.sounds.UNSUPPRESSED)
    self:updateSoundTo("CW_FAS2_AR_50_FIRE_SUPP", CustomizableWeaponry.sounds.SUPPRESSED)
    self.Primary.Ammo = ".50 Beowulf"
    self.Primary.ClipSize = 10
    self.Primary.ClipSize_Orig = 10
end

function att:detachFunc()
    self:unloadWeapon()
    self:restoreSound()
    self.Primary.Ammo = "5.56x45MM"
    self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
    self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)