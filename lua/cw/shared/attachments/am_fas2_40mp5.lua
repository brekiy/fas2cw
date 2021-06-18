local att = {}
att.name = "am_fas2_40mp5"
att.displayName = ".40 S&W Conversion"
att.displayNameShort = ".40"
att.statModifiers = {
    DamageMult = 0.15,
    RecoilMult = 0.05,
    FireDelayMult = 0.1,
    MuzzleVelocityMult = -0.1
}
-- TODO
if CLIENT then
    att.displayIcon = surface.GetTextureID("atts/magnumrounds")
    att.description = {
        {t = "Caliber conversion to .40 S&W.", c = CustomizableWeaponry.textColors.NEUTRAL},
    }
end

function att:attachFunc()
    self:unloadWeapon()
    -- self:updateSoundTo("CW_FAS2_DEAGLE_FIRE_429", CustomizableWeaponry.sounds.UNSUPPRESSED)
    self.Primary.Ammo_Orig = self.Primary.Ammo
    self._shellTable_Orig = self._shellTable
    self._shellTable = CustomizableWeaponry.shells:getShell("fas2_40sw")
end

function att:detachFunc()
    self:unloadWeapon()
    -- self:restoreSound()
    self.Primary.Ammo = self.Primary.Ammo_Orig
    self._shellTable = self._shellTable_Orig
end

CustomizableWeaponry:registerAttachment(att)
