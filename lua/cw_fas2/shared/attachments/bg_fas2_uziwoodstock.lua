local att = {}
att.name = "bg_fas2_uziwoodstock"
att.displayName = "Wooden"
att.displayNameShort = "Wood"
att.isBG = true

att.statModifiers = {
    RecoilMult = -0.15,
    DrawSpeedMult = -0.1,
    VelocitySensitivityMult = 0.2,
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