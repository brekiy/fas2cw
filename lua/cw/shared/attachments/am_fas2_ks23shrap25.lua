local att = {}
att.name = "am_fas2_ks23shrap25"
att.displayName = "Shrapnel-25"
att.displayNameShort = "Shrap-25"

att.statModifiers = {
    ClumpSpreadMult = -0.3,
    DamageMult = -0.125
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("atts/flechetterounds")
    att.description = {{t = "Increases amount of rounds per shot to 10.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
    self.Shots = 10
    self:unloadWeapon()
end

function att:detachFunc()
    self.Shots = self.Shots_Orig
    self:unloadWeapon()
end

CustomizableWeaponry:registerAttachment(att)