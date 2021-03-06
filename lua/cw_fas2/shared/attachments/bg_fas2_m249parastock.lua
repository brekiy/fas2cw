local att = {}
att.name = "bg_fas2_m249parastock"
att.displayName = "Para Stock"
att.displayNameShort = "Para"
att.isBG = true
att.SpeedDec = -5

att.statModifiers = {
    RecoilMult = 0.15,
    RecoilSideMult = 0.05,
    DrawSpeedMult = 0.1,
    VelocitySensitivityMult = -0.2,
    ReloadSpeedMult = 0.1,
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/m249parastock")
end

function att:attachFunc()
    self:setBodygroup(self.StockBGs.main, self.StockBGs.para)
end

function att:detachFunc()
    self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)