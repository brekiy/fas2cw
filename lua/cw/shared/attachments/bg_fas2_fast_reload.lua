local att = {}
att.name = "pk_fas2_fast_reload"
att.displayName = "Fast Reload"
att.displayNameShort = "Fast Rel."
att.statModifiers = {
    VelocitySensitivityMult = -0.3,
    DrawSpeedMult = -0.1,
    RecoilMult = -0.2
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/foregrip")

    function att:attachFunc()
        self:setBodygroup(self.GripBGs.main, self.GripBGs.grip)
    end

    function att:detachFunc()
        self:setBodygroup(self.GripBGs.main, self.GripBGs.regular)
    end
end

CustomizableWeaponry:registerAttachment(att)