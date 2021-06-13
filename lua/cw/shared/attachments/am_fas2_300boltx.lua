local att = {}
att.name = "am_fas2_300boltx"
att.displayName = ".300 Conversion"
att.displayNameShort = ".300"
att.statModifiers = {
    DamageMult = 0.10,
    RecoilMult = 0.15,
    SpreadPerShotMult = 0.1,
}
att.isBG = true

if CLIENT then
    att.displayIcon = surface.GetTextureID("atts/matchrounds")
    att.description = {
        {t = "Caliber conversion to .300 Winchester Magnum.", c = CustomizableWeaponry.textColors.NEUTRAL},
    }
end

function att:attachFunc()
    self:unloadWeapon()
    -- self:updateSoundTo("CW_FAS2_DEAGLE_FIRE_429", CustomizableWeaponry.sounds.UNSUPPRESSED)
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
