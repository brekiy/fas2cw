local att = {}
att.name = "bg_fas2_macstock"
att.displayName = "Unfold Stock"
att.displayNameShort = "Unfold"
att.isBG = true
att.statModifiers = {
    RecoilMult = -0.1,
    DrawSpeedMult = -0.1,
    VelocitySensitivityMult = 0.1,
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/uzi_woodenstock")
    att.description = {{t = "Unobstructs the sights.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
    self:setBodygroup(self.StockBGs.main, self.StockBGs.unfold)
    self:setupCurrentIronsights(self.UnfoldPos, self.UnfoldAng)
    if not self:isAttachmentActive("sights") then
        self:updateIronsights("Unfold")
    end
    -- self.ForegripOverride = true
    -- self.ForegripParent = "bg_fas2_macstock"
end

function att:detachFunc()
    self:setBodygroup(self.StockBGs.main, self.StockBGs.regular)
    self:revertToOriginalIronsights()
    -- self.ForegripOverride = false
end

CustomizableWeaponry:registerAttachment(att)