local att = {}
att.name = "am_fas2_50glock"
att.displayName = ".50 GI Conversion"
att.displayNameShort = ".50"
att.statModifiers = {
    DamageMult = 0.25,
    RecoilMult = 0.1
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("atts/magnumrounds")
    att.description = {
        {t = "Caliber conversion to .50 GI.", c = CustomizableWeaponry.textColors.NEUTRAL},
        {t = "Decreases mag size to 9 rounds.", c = CustomizableWeaponry.textColors.NEGATIVE}
    }
end

function att:attachFunc()
    self:unloadWeapon()
    self:updateSoundTo("CW_FAS2_GLOCK20_50_FIRE", CustomizableWeaponry.sounds.UNSUPPRESSED)
    self:updateSoundTo("CW_FAS2_GLOCK20_50_FIRE_SUPP", CustomizableWeaponry.sounds.SUPPRESSED)
    self.Primary.Ammo = ".50 GI"
    self.Primary.ClipSize = 9
    self.Primary.ClipSize_Orig = 9
end

function att:detachFunc()
    self:unloadWeapon()
    self:restoreSound()
    self.Primary.Ammo = "10mm Auto"
    self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
    self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)