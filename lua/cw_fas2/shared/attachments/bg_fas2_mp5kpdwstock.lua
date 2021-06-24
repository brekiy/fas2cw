local att = {}
att.name = "bg_fas2_mp5kpdwstock"
att.displayName = "PDW Stock"
att.displayNameShort = "PDW"
att.isBG = true

att.statModifiers = {
    RecoilMult = -0.15,
    DrawSpeedMult = -0.1,
    VelocitySensitivityMult = 0.1,
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/uzi_woodenstock")
end

function att:attachFunc()
    self:setBodygroup(self.StockBGs.main, self.StockBGs.pdw)
end

function att:detachFunc()
    self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)