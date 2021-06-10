local att = {}
att.name = "bg_fas2_lmgx200mag"
att.displayName = "200 Round Magazine"
att.displayNameShort = "200RND"
att.isBG = true
att.statModifiers = {
    ReloadSpeedMult = -0.1,
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/lmgx200mag")
    att.description = {
        {t = "Increases magazine size to 200 rounds.", c = CustomizableWeaponry.textColors.POSITIVE}
    }
end

function att:attachFunc()
    self:setBodygroup(self.MagBGs.main, self.MagBGs.rnd200)
    self:unloadWeapon()
    self.Primary.ClipSize = 200
    self.Primary.ClipSize_Orig = 200
end

function att:detachFunc()
    self:setBodygroup(self.MagBGs.main, self.MagBGs.regular)
    self:unloadWeapon()
    self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
    self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)
