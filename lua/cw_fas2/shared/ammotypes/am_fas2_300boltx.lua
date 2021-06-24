local att = {}
att.name = "am_fas2_300boltx"
att.displayName = ".300 Conversion"
att.displayNameShort = ".300"
att.statModifiers = {
    DamageMult = 0.1,
    RecoilMult = 0.25,
    MuzzleVelocityMult = 0.2
}
att.isBG = true

if CLIENT then
    att.displayIcon = surface.GetTextureID("atts/matchgradeammo")
    att.description = {
        {t = "Caliber conversion to .300 Winchester Magnum.", c = CustomizableWeaponry.textColors.NEUTRAL},
    }
end

function att:attachFunc()
    self:unloadWeapon()
    self:updateSoundTo("CW_FAS2_M24_FIRE_300", CustomizableWeaponry.sounds.UNSUPPRESSED)
    self:updateSoundTo("CW_FAS2_M24_FIRE_300_SUPP", CustomizableWeaponry.sounds.SUPPRESSED)
    self.Primary.Ammo_Orig = self.Primary.Ammo
    self.Primary.Ammo = ".300 Win Mag"
    self._shellTable_Orig = self._shellTable
    self._shellTable = CustomizableWeaponry.shells:getShell("fas2_300wm")
    if self.MagBGs and self.MagBGs.fas2_300wm then
        self:setBodygroup(self.MagBGs.main, self.MagBGs.fas2_300wm)
    end
end

function att:detachFunc()
    self:unloadWeapon()
    -- self:restoreSound()
    self.Primary.Ammo = self.Primary.Ammo_Orig
    self._shellTable = self._shellTable_Orig
    if self.MagBGs and self.MagBGs.fas2_300wm then
        self:setBodygroup(self.MagBGs.main, self.MagBGs.regular)
    end
end

CustomizableWeaponry:registerAttachment(att)
