local att = {}
att.name = "bg_fas2_sig55xstock_sniper"
att.displayName = "SG550-1 Stock"
att.displayNameShort = "Sniper"
att.isBG = true
att.statModifiers = {
    RecoilMult = -0.1,
    RecoilSideMult = -0.05,
    DrawSpeedMult = -0.1,
    SpreadPerShotMult = -0.1,
    AimSpreadMult = -0.1
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/sg55xstock")
    att.description = {
    }
end

function att:attachFunc()
    self:setBodygroup(self.StockBGs.main, self.StockBGs.sniper)
end

function att:detachFunc()
    self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)