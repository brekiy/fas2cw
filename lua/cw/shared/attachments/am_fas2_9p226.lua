local att = {}
att.name = "am_fas2_9p226"
att.displayName = "9x19 Conversion"
att.displayNameShort = "9x19"
att.statModifiers = {
    DamageMult = -0.15,
    RecoilMult = -0.1
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("atts/magnumrounds")
    att.description = {
        [1] = {t = "Caliber conversion to 9x19 Parabellum.", c = CustomizableWeaponry.textColors.NEUTRAL},
        [2] = {t = "Increases mag size to 15 rounds.", c = CustomizableWeaponry.textColors.POSITIVE}
    }
end

function att:attachFunc()
    self:unloadWeapon()
    -- self:updateSoundTo("CW_FAS2_GLOCK20_50_FIRE", CustomizableWeaponry.sounds.UNSUPPRESSED)
    -- self:updateSoundTo("CW_FAS2_GLOCK20_50_FIRE_SUPP", CustomizableWeaponry.sounds.SUPPRESSED)
    self.Primary.Ammo = "9x19MM"
    self.Primary.ClipSize = 15
    self.Primary.ClipSize_Orig = 15
end

function att:detachFunc()
    self:unloadWeapon()
    -- self:restoreSound()
    self.Primary.Ammo = ".357 SIG"
    self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
    self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)