local att = {}
att.name = "pk_fas2_fast_reload"
att.displayName = "Fast Reload"
att.displayNameShort = "Fast Rel."
att.statModifiers = {
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/fastreload")
    att.description = {
        [1] = {t = "Increased reload speed.", c = CustomizableWeaponry.textColors.POSITIVE},
        [2] = {t = "Very tactical. (Most of the time)", c = CustomizableWeaponry.textColors.VPOSITIVE},
    }
end

function att:attachFunc()
    self.FastReload = true
end

function att:detachFunc()
    self.FastReload = false
end

CustomizableWeaponry:registerAttachment(att)