local att = {}
att.name = "am_fas2_ks23barrikada"
att.displayName = "Barricade Slug"
att.displayNameShort = "Barricade"

att.statModifiers = {
    DamageMult = 9,
    AimSpreadMult = 0.5
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("atts/flechetterounds")
    att.description = {{t = "Solid steel slug for killing engine blocks.", c = CustomizableWeaponry.textColors.NEUTRAL}}
end

function att:attachFunc()
    self.Shots = 1
    self:unloadWeapon()
end

function att:detachFunc()
    self.Shots = self.Shots_Orig
    self:unloadWeapon()
end

CustomizableWeaponry:registerAttachment(att)