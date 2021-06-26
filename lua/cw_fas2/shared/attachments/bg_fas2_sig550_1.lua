local att = {}
att.name = "bg_fas2_sig550_1"
att.displayName = "550-1 Variant"
att.displayNameShort = "550-1"
att.isBG = true
att.SpeedDec = 3
att.NearWallDistance = 3
att.statModifiers = {
    RecoilMult = -0.15,
    RecoilSideMult = -0.15,
    DrawSpeedMult = -0.15,
    AimSpreadMult = -0.15,
    SpreadPerShotMult = -0.1,
    MuzzleVelocityMult = 0.05
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/sg550-1")
    att.description = {
        {t = "550-1 sniper conversion.", c = CustomizableWeaponry.textColors.NEUTRAL}
    }
end

function att:attachFunc()
    self:setBodygroup(self.HandguardBGs.main, self.HandguardBGs.sg5501)
    if self:getCWBodygroup(self.MuzzleBGs.main) != 0 then
        self:setBodygroup(self.MuzzleBGs.main, self.MuzzleBGs.sd_long)
    end
    self.SG5501Active = true
end

function att:detachFunc()
    self:setBodygroup(self.HandguardBGs.main, self.HandguardBGs.regular)
    if self:getCWBodygroup(self.MuzzleBGs.main) != 0 then
        self:setBodygroup(self.MuzzleBGs.main, self.MuzzleBGs.sd)
    end
    self.SG5501Active = false
end

CustomizableWeaponry:registerAttachment(att)