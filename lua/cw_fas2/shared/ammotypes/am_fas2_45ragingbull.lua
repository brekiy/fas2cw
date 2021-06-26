local att = {}
att.name = "am_fas2_45ragingbull"
att.displayName = ".45 LC Conversion"
att.displayNameShort = ".45"
att.statModifiers = {
    DamageMult = -0.425,
    RecoilMult = -0.55,
    RecoilSideMult = -0.25,
    MuzzleVelocityMult = -0.3,
    ReloadSpeedMult = 0.1,
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("atts/magnumrounds")
    att.description = {
        {t = "Caliber conversion to the .45 Colt.", c = CustomizableWeaponry.textColors.NEUTRAL},
    }
end

function att:attachFunc()
    self:unloadWeapon()
    self:updateSoundTo("CW_FAS2_RBULL_45_FIRE", CustomizableWeaponry.sounds.UNSUPPRESSED)
    self.Primary.Ammo_Orig = self.Primary.Ammo
    self.Primary.Ammo = ".45 Colt"
end

function att:detachFunc()
    self:unloadWeapon()
    self:restoreSound()
    self.Primary.Ammo = self.Primary.Ammo_Orig
    self._shellTable = self._shellTable_Orig
end

CustomizableWeaponry:registerAttachment(att)