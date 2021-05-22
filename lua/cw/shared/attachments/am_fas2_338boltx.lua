local att = {}
att.name = "am_fas2_338boltx"
att.displayName = ".338 Conversion"
att.displayNameShort = ".338"
att.statModifiers = {
    DamageMult = 0.2,
    RecoilMult = 0.25,
    -- FireDelayMult = 0.1,
    -- SpreadPerShotMult = 0.15,
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("atts/magnumrounds")
    att.description = {
        [1] = {t = "Caliber conversion to .338 Lapua.", c = CustomizableWeaponry.textColors.NEUTRAL},
    }
end

function att:attachFunc()
    self:unloadWeapon()
    -- self:updateSoundTo("CW_FAS2_DEAGLE_FIRE_429", CustomizableWeaponry.sounds.UNSUPPRESSED)
    self.Primary.Ammo = ".338 Lapua"
end

function att:detachFunc()
    self:unloadWeapon()
    -- self:restoreSound()
    self.Primary.Ammo = "7.62x51MM"
    -- self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
    -- self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)
