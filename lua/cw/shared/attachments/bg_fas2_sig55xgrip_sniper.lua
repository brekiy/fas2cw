local att = {}
att.name = "bg_fas2_sig55xgrip_sniper"
att.displayName = "SG550-1 Grip"
att.displayNameShort = "Sniper"
att.isBG = true
att.statModifiers = {
    RecoilMult = -0.05,
    DrawSpeedMult = -0.05,
    SpreadPerShotMult = -0.05
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/sg55xmag")
    att.description = {}
end

function att:attachFunc()
    self:setBodygroup(self.PGripBGs.main, self.PGripBGs.sniper)
end

function att:detachFunc()
    self:setBodygroup(self.PGripBGs.main, self.PGripBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)