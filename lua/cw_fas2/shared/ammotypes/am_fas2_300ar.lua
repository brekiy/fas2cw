local att = {}
att.name = "am_fas2_300ar"
att.displayName = ".300 Blackout Conversion"
att.displayNameShort = ".300"
att.statModifiers = {
    DamageMult = 0.25,
    RecoilMult = -0.4,
    MaxSpreadIncMult = 0.1,
    AimSpreadMult = 0.1,
    MuzzleVelocityMult = -0.65
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("atts/matchgradeammo")
    att.description = {
        {t = "Caliber conversion to subsonic .300 Blackout.", c = CustomizableWeaponry.textColors.NEUTRAL},
    }
end

function att:attachFunc()
    self:unloadWeapon()
    if self:GetClass() == "cw_fas2_kacpdw" then
        self:updateSoundTo("CW_FAS2_KACPDW_300_FIRE", CustomizableWeaponry.sounds.UNSUPPRESSED)
        self:updateSoundTo("CW_FAS2_KACPDW_300_FIRE_SUPP", CustomizableWeaponry.sounds.SUPPRESSED)
    else
        self:updateSoundTo("CW_FAS2_AR_300_FIRE", CustomizableWeaponry.sounds.UNSUPPRESSED)
        self:updateSoundTo("CW_FAS2_AR_300_FIRE_SUPP", CustomizableWeaponry.sounds.SUPPRESSED)
    end
    self.Primary.Ammo_Orig = self.Primary.Ammo
    self.Primary.Ammo = ".300 Blackout"
    self.Primary.ClipSize = 30
    self.Primary.ClipSize_Orig = 30
end

function att:detachFunc()
    self:unloadWeapon()
    self:restoreSound()
    self.Primary.Ammo = self.Primary.Ammo_Orig
    -- self._shellTable = self._shellTable_Orig
    self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
    self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)