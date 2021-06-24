local att = {}
att.name = "am_fas2_429deagle"
att.displayName = ".429 DE Conversion"
att.displayNameShort = ".429"
att.statModifiers = {
    DamageMult = -0.1,
    RecoilMult = -0.25,
    AimSpreadMult = -0.1,
    SpreadPerShotMult = -0.1,
    MuzzleVelocityMult = -0.1
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("atts/magnumrounds")
    att.description = {{t = "Caliber conversion to .429 DE.", c = CustomizableWeaponry.textColors.NEUTRAL}}
end

function att:attachFunc()
    self:unloadWeapon()
    self:updateSoundTo("CW_FAS2_DEAGLE_FIRE_429", CustomizableWeaponry.sounds.UNSUPPRESSED)
    self.Primary.Ammo = ".429 DE"
end

function att:detachFunc()
    self:unloadWeapon()
    self:restoreSound()
    self.Primary.Ammo = ".50 AE"
end

CustomizableWeaponry:registerAttachment(att)
