local att = {}
att.name = "bg_fas2_sig55xstock_sniper"
att.displayName = "Sniper Stock"
att.displayNameShort = "SNP. Stock"
att.isBG = true
att.statModifiers = {
    RecoilMult = -0.1,
    DrawSpeedMult = -0.1,
    SpreadPerShotMult = -0.05,
    AimSpreadMult = -0.1
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/sg55xmag")
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