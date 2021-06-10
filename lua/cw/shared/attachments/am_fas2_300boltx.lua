local att = {}
att.name = "am_fas2_300boltx"
att.displayName = ".300 Conversion"
att.displayNameShort = ".300"
att.statModifiers = {
    DamageMult = 0.15,
    RecoilMult = 0.2,
    SpreadPerShotMult = 0.15,
}
att.isBG = true

if CLIENT then
    att.displayIcon = surface.GetTextureID("atts/magnumrounds")
    att.description = {
        {t = "Caliber conversion to .300 Win Mag.", c = CustomizableWeaponry.textColors.NEUTRAL},
    }
end

function att:attachFunc()
    self:unloadWeapon()
    -- self:updateSoundTo("CW_FAS2_DEAGLE_FIRE_429", CustomizableWeaponry.sounds.UNSUPPRESSED)
    self.Primary.Ammo = ".300 Winchester Magnum"
    self:setBodygroup(self.MagBGs.main, self.MagBGs.fas2_300wm)
end

function att:detachFunc()
    self:unloadWeapon()
    -- self:restoreSound()
    self.Primary.Ammo = "7.62x51MM"
    self:setBodygroup(self.MagBGs.main, self.MagBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)
