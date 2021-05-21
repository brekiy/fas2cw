local att = {}
att.name = "bg_fas2_uziwoodstock"
att.displayName = "Wooden Stock"
att.displayNameShort = "W. Stock"
att.isBG = true

att.statModifiers = {
    RecoilMult = -0.1,
    DrawSpeedMult = -0.1
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/uzi_woodenstock")
end

function att:attachFunc()
    self:setBodygroup(self.StockBGs.main, self.StockBGs.wood)
end

function att:detachFunc()
    self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)