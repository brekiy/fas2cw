local att = {}
att.name = "bg_fas2_sks20mag"
att.displayName = "20 Round Magazine"
att.displayNameShort = "20RND"
att.isBG = true


if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/sks20mag")
    att.description = {
        [1] = {t = "Increases magazine size to 20 rounds.", c = CustomizableWeaponry.textColors.POSITIVE},
        [2] = {t = "Greatly increases certain reload durations.", c = CustomizableWeaponry.textColors.NEGATIVE},
        [3] = {t = "Can only reload every 10 rounds if not empty.", c = CustomizableWeaponry.textColors.NEGATIVE}
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