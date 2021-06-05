local att = {}
att.name = "bg_fas2_sig55xgrip_sniper"
att.displayName = "Sniper Grip"
att.displayNameShort = "SNP. Grip"
att.isBG = true
att.statModifiers = {
    RecoilMult = -0.1,
    DrawSpeedMult = -0.1,
    SpreadPerShotMult = -0.1
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