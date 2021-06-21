local att = {}
att.name = "md_fas2_suppressor"
att.displayName = "Suppressor"
att.displayNameShort = "Suppressor"
att.isSuppressor = true

-- I made this because i hate the idea of stuff affecting my sensitivity. It feels like shit
att.statModifiers = {
    RecoilMult = -0.15,
    DamageMult = -0.1,
    MuzzleVelocityMult = -0.2
}

if CLIENT then
    att.displayIcon = surface.GetTextureID("vgui/fas2atts/suppressor")
    att.description = {[1] = {t = "Decreases firing noise.", c = CustomizableWeaponry.textColors.POSITIVE}}
end

function att:attachFunc()
    self.dt.Suppressed = true
end

function att:detachFunc()
    self:resetSuppressorStatus()
end

CustomizableWeaponry:registerAttachment(att)