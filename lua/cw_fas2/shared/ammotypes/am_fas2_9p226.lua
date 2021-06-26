local att = {}
att.name = "am_fas2_9p226"
att.displayName = "9x19 Conversion"
att.displayNameShort = "9x19"
att.statModifiers = {
    DamageMult = -0.15,
    RecoilMult = -0.1,
    MuzzleVelocityMult = -0.15
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("atts/magnumrounds")
    att.description = {
        {t = "Caliber conversion to 9x19 Parabellum.", c = CustomizableWeaponry.textColors.NEUTRAL},
        {t = "Increases mag size to 15 rounds.", c = CustomizableWeaponry.textColors.POSITIVE}
    }
end

function att:attachFunc()
    self:unloadWeapon()
    self.Primary.Ammo_Orig = self.Primary.Ammo
    self.Primary.Ammo = "9x19MM"
    self._shellTable_Orig = self._shellTable
    self._shellTable = CustomizableWeaponry.shells:getShell("fas2_9x19")
    self.Primary.ClipSize = 15
    self.Primary.ClipSize_Orig = 15
end

function att:detachFunc()
    self:unloadWeapon()
    -- self:restoreSound()
    self.Primary.Ammo = self.Primary.Ammo_Orig
    self._shellTable = self._shellTable_Orig
    self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
    self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)