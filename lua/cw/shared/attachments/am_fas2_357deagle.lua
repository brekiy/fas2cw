local att = {}
att.name = "am_fas2_357deagle"
att.displayName = ".357 Mag Conversion"
att.displayNameShort = ".357"
att.statModifiers = {
    DamageMult = -0.225,
    RecoilMult = -0.3,
    SpreadPerShotMult = -0.15
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("atts/magnumrounds")
    att.description = {
        {t = "Caliber conversion to .357 Magnum.", c = CustomizableWeaponry.textColors.NEUTRAL},
        {t = "Increases mag size to 9 rounds.", c = CustomizableWeaponry.textColors.POSITIVE}
    }
end

function att:attachFunc()
    self:unloadWeapon()
    self:updateSoundTo("CW_FAS2_DEAGLE_FIRE_357", CustomizableWeaponry.sounds.UNSUPPRESSED)
    self.Primary.Ammo_Orig = self.Primary.Ammo
    self.Primary.Ammo = ".357 Magnum"
    self._shellTable_Orig = self._shellTable
    self._shellTable = CustomizableWeaponry.shells:getShell("fas2_357mag")
    self.Primary.ClipSize = 9
    self.Primary.ClipSize_Orig = 9
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