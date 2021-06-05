local att = {}
att.name = "bg_fas2_sig550_1"
att.displayName = "550-1 Variant"
att.displayNameShort = "550-1"
att.isBG = true
att.SpeedDec = 3
att.statModifiers = {
    RecoilMult = -0.1,
    DrawSpeedMult = -0.15,
    AimSpreadMult = -0.15,
    SpreadPerShotMult = -0.1
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/sg55xmag")
    att.description = {
        [1] = {t = "550-1 sniper conversion.", c = CustomizableWeaponry.textColors.NEUTRAL}
    }
end

function att:attachFunc()
    self:setBodygroup(self.HandguardBGs.main, self.HandguardBGs.sg5501)
    if self:getCWBodygroup(self.BarrelBGs.main) != 0 then
        self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.sd_long)
    end
    self.SG5501Active = true
end

function att:detachFunc()
    self:setBodygroup(self.HandguardBGs.main, self.HandguardBGs.regular)
    if self:getCWBodygroup(self.BarrelBGs.main) != 0 then
        self:setBodygroup(self.BarrelBGs.main, self.BarrelBGs.sd)
    end
    self.SG5501Active = false
end

CustomizableWeaponry:registerAttachment(att)