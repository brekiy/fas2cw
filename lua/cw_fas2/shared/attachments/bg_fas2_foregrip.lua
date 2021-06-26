local att = {}
att.name = "bg_fas2_foregrip"
att.displayName = "Foregrip"
att.displayNameShort = "Grip"
att.statModifiers = {
    RecoilMult = -0.2,
    RecoilSideMult = -0.05,
    VelocitySensitivityMult = -0.3,
    DrawSpeedMult = -0.1,
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/foregrip")
end

function att:attachFunc()
    self:setBodygroup(self.GripBGs.main, self.GripBGs.grip)
end

function att:detachFunc()
    self:setBodygroup(self.GripBGs.main, self.GripBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)