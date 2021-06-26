local att = {}
att.name = "bg_fas2_suppressor"
att.displayName = "Suppressor"
att.displayNameShort = "Supp."
att.isSuppressor = true
att.isBG = true
att.NearWallDistance = 3

att.statModifiers = {
    RecoilMult = -0.15,
    RecoilSideMult = -0.05,
    SpreadPerShotMult = -0.15,
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("vgui/fas2atts/suppressor")
    att.description = {{t = "Decreases firing noise.", c = CustomizableWeaponry.textColors.POSITIVE}}
end
local shortBGs = {"SG552Active", "M249ParaActive"}
local longBGs = {"SG5501Active"}
function att:attachFunc()
    self.dt.Suppressed = true
    for _, v in pairs(shortBGs) do
        if self[v] then self:setBodygroup(self.MuzzleBGs.main, self.MuzzleBGs.sd_short) return end
    end
    for _, v in pairs(longBGs) do
        if self[v] then self:setBodygroup(self.MuzzleBGs.main, self.MuzzleBGs.sd_long) return end
    end
    self:setBodygroup(self.MuzzleBGs.main, self.MuzzleBGs.sd)
end

function att:detachFunc()
    self:resetSuppressorStatus()
    self:setBodygroup(self.MuzzleBGs.main, self.MuzzleBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)