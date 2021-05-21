local att = {}
att.name = "am_fas2_300ar"
att.displayName = ".300 Blackout Conversion"
att.displayNameShort = ".300"
att.statModifiers = {
    DamageMult = 0.25,
    RecoilMult = 0.3,
    MaxSpreadIncMult = 0.05,
    AimSpreadMult = 0.1,
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("atts/magnumrounds")
    att.description = {
        [1] = {t = "Caliber conversion to .300 Blackout.", c = CustomizableWeaponry.textColors.NEUTRAL},
    }
end

function att:attachFunc()
    self:unloadWeapon()
    self:updateSoundTo("CW_FAS2_AR_300_FIRE", CustomizableWeaponry.sounds.UNSUPPRESSED)
    self:updateSoundTo("CW_FAS2_AR_300_FIRE_SUPP", CustomizableWeaponry.sounds.SUPPRESSED)
    self.Primary.Ammo = ".300 Blackout"
    self.Primary.ClipSize = 30
    self.Primary.ClipSize_Orig = 30
end

function att:detachFunc()
    self:unloadWeapon()
    self:restoreSound()
    self.Primary.Ammo = "5.56x45MM"
    self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
    self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)