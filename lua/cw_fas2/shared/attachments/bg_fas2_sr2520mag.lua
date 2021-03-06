local att = {}
att.name = "bg_fas2_sr2520mag"
att.displayName = "20 Round Magazine"
att.displayNameShort = "20RND"
att.isBG = true

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/m2120rndmag")
    att.description = {
        {t = "Increases magazine size to 20 rounds.", c = CustomizableWeaponry.textColors.POSITIVE}
    }
end

function att:attachFunc()
    self:setBodygroup(self.MagBGs.main, self.MagBGs.rnd20)
    self:unloadWeapon()
    self.Primary.ClipSize = 20
    self.Primary.ClipSize_Orig = 20
end

function att:detachFunc()
    self:setBodygroup(self.MagBGs.main, self.MagBGs.regular)
    self:unloadWeapon()
    self.Primary.ClipSize = self.Primary.ClipSize_ORIG_REAL
    self.Primary.ClipSize_Orig = self.Primary.ClipSize_ORIG_REAL
end

CustomizableWeaponry:registerAttachment(att)