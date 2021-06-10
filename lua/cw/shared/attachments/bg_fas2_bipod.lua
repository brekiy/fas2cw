local att = {}
att.name = "bg_fas2_bipod"
att.displayName = "Harris Bipod"
att.displayNameShort = "Bipod"
att.isBG = true

att.statModifiers = {
    DrawSpeedMult = -0.15
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("atts/bipod")
    att.description = {
        {t = "When deployed:", c = CustomizableWeaponry.textColors.REGULAR},
        {t = "Decreases recoil by 70%", c = CustomizableWeaponry.textColors.POSITIVE},
        {t = "Greatly increases hip fire accuracy", c = CustomizableWeaponry.textColors.POSITIVE}
    }
end

function att:attachFunc()
    self:setBodygroup(self.BipodBGs.main, self.BipodBGs.on)
    self.BipodInstalled = true
end

function att:detachFunc()
    self:setBodygroup(self.BipodBGs.main, self.BipodBGs.off)
    self.BipodInstalled = false
end

CustomizableWeaponry:registerAttachment(att)