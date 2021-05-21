local att = {}
att.name = "bg_fas2_suppressor"
att.displayName = "Suppressor"
att.displayNameShort = "Suppressor"
att.isSuppressor = true
att.isBG = true
att.statModifiers = {
    RecoilMult = -0.15,
    DamageMult = -0.1
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("vgui/fas2atts/suppressor")
    att.description = {[1] = {t = "Decreases firing noise.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
    self.dt.Suppressed = true
    self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.sd)
end

function att:detachFunc()
    self:resetSuppressorStatus()
    self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)