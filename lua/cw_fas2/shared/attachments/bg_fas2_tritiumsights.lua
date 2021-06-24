local att = {}
att.name = "bg_fas2_tritiumsights"
att.displayName = "Tritium Night Sights"
att.displayNameShort = "Tritium"
att.aimPos = {"CompM4Pos", "CompM4Ang"}
att.isBG = true
-- att.isSight = true

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/tritiumsights")
    att.description = {
        {t = "Provides illuminating sights in the dark.", c = CustomizableWeaponry.textColors.POSITIVE}
    }

    function att:attachFunc()
        self:setBodygroup(self.SightBGs.main, self.SightBGs.tritium)
    end

    function att:detachFunc()
        self:setBodygroup(self.SightBGs.main, self.SightBGs.regular)
    end
end

CustomizableWeaponry:registerAttachment(att)