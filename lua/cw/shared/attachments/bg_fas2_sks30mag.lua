local att = {}
att.name = "bg_fas2_sks30mag"
att.displayName = "30 Round Magazine"
att.displayNameShort = "30RND"
att.isBG = true

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/sks30mag")
    att.description = {
        [1] = {t = "Increases magazine size to 30 rounds.", c = CustomizableWeaponry.textColors.POSITIVE}
    }
end

function att:attachFunc()
    self:setBodygroup(self.MagBGs.main, self.MagBGs.rnd30)
    self:unloadWeapon()
    self.Primary.ClipSize = 30
    self.Primary.ClipSize_Orig = 30
end

function att:detachFunc()
    self:setBodygroup(self.MagBGs.main, self.MagBGs.regular)
    self:unloadWeapon()
    self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
    self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)