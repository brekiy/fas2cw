local att = {}
att.name = "bg_fas2_m249parabarrel"
att.displayName = "Para Barrel"
att.displayNameShort = "Para"
att.isBG = true

att.statModifiers = {
    RecoilMult = 0.2,
    VelocitySensitivityMult = -0.1,
    AimSpreadMult = 0.1,
    FireDelayMult = -0.1
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/uzi_woodenstock")
end

function att:attachFunc()
    self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.para)
end

function att:detachFunc()
    self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)