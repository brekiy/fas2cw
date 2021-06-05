local att = {}
att.name = "bg_fas2_compm4"
att.displayName = "Aimpoint CompM4"
att.displayNameShort = "CompM4"
att.aimPos = {"CompM4Pos", "CompM4Ang"}
att.FOVModifier = 20
att.isBG = true
att.isSight = true
att.withoutRail = false
att.colorType = CustomizableWeaponry.colorableParts.COLOR_TYPE_SIGHT

if CLIENT then
    -- TODO: replace this dim ass reticle
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/compm4")
    att.description = {
        [1] = {t = "Provides a bright reticle to ease aiming.", c = CustomizableWeaponry.textColors.POSITIVE},
        [2] = {t = "Slightly increases aim zoom.", c = CustomizableWeaponry.textColors.POSITIVE},
        [3] = {t = "Narrow scope may decrease awareness.", c = CustomizableWeaponry.textColors.NEGATIVE}
    }

    att.reticle = "cw2/reticles/aim_reticule"
    att._reticleSize = 0.4

    function att:drawReticle()
        if not self:isAiming() or not self:isReticleActive() then
            return
        end

        diff = self:getDifferenceToAimPos(self.CompM4Pos, self.CompM4Ang, 1)

        -- draw the reticle only when it's close to center of the aiming position
        if diff > 0.9 and diff < 1.1 then
            cam.IgnoreZ(true)
                render.SetMaterial(att._reticle)
                dist = math.Clamp(math.Distance(1, 1, diff, diff), 0, 0.13)

                local EA = self:getReticleAngles()

                local renderColor = self:getSightColor(att.name)
                renderColor.a = (0.13 - dist) / 0.13 * 255

                local pos = EyePos() + EA:Forward() * 100

                for i = 1, 2 do
                    render.DrawSprite(pos, att._reticleSize, att._reticleSize, renderColor)
                end
            cam.IgnoreZ(false)
        end
    end

end

function att:attachFunc()
    self:setBodygroup(self.SightBGs.main, self.SightBGs.fas2_aimpoint)
end

function att:detachFunc()
    self:setBodygroup(self.SightBGs.main, self.SightBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)