local att = {}
att.name = "bg_fas2_elcan"
att.displayName = "ELCAN C79"
att.displayNameShort = "C79"
att.aimPos = {"ELCANPos", "ELCANAng"}
att.FOVModifier = 10
att.isBG = true
att.isSight = true
att.withoutRail = true

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/c79")
    att.description = {
        [1] = {t = "Provides 3.4x magnification.", c = CustomizableWeaponry.textColors.POSITIVE},
        [2] = {t = "Is disorienting when engaging targets at close range.", c = CustomizableWeaponry.textColors.NEGATIVE},
        [3] = {t = "Narrow scope greatly reduces awareness.", c = CustomizableWeaponry.textColors.NEGATIVE}
    }
    local old, x, y, ang
    local reticle = surface.GetTextureID("models/weapons/view/accessories/elcan_reticle")
    att.zoomTextures = {[1] = {tex = reticle, offset = {0, 1}}}

    local lens = surface.GetTextureID("VGUI/fas2/lense")
    local lensring = surface.GetTextureID("VGUI/fas2/lensring")
    local cd, alpha = {}, 0.5
    local Ini = true

    -- render target var setup
    cd.x = 0
    cd.y = 0
    cd.w = 512
    cd.h = 512
    cd.fov = 6
    cd.drawviewmodel = false
    cd.drawhud = false
    cd.dopostprocess = false

    function att:drawRenderTarget()
        local complexTelescopics = self:canUseComplexTelescopics()

        -- if we don't have complex telescopics enabled, don't do anything complex, and just set the texture of the lens to a fallback 'lens' texture
        if not complexTelescopics then
            self.TSGlass:SetTexture("$basetexture", lensMat:GetTexture("$basetexture"))
            return
        end

        if self:canSeeThroughTelescopics(att.aimPos[1]) then
            alpha = math.Approach(alpha, 0, FrameTime() * 5)
        else
            alpha = math.Approach(alpha, 1, FrameTime() * 5)
        end

        x, y = ScrW(), ScrH()
        old = render.GetRenderTarget()

        ang = self:getTelescopeAngles()

        if not self.freeAimOn then
            ang.r = self.BlendAng.z
            ang:RotateAroundAxis(ang:Right(), self.ELCANAxisAlign.right)
            ang:RotateAroundAxis(ang:Up(), self.ELCANAxisAlign.up)
            ang:RotateAroundAxis(ang:Forward(), self.ELCANAxisAlign.forward)
        end

        local size = self:getRenderTargetSize()

        cd.w = size
        cd.h = size
        cd.angles = ang
        cd.origin = self:GetOwner():GetShootPos()
        render.SetRenderTarget(self.ScopeRT)
        render.SetViewPort(0, 0, size, size)
            if alpha < 1 or Ini then
                render.RenderView(cd)
                Ini = false
            end

            ang = self:GetOwner():EyeAngles()
            ang.p = ang.p + self.BlendAng.x
            ang.y = ang.y + self.BlendAng.y
            ang.r = ang.r + self.BlendAng.z
            ang = -ang:Forward()

            local light = render.ComputeLighting(self:GetOwner():GetShootPos(), ang)

            cam.Start2D()
                surface.SetDrawColor(255, 255, 255, 255)
                surface.SetTexture(lensring)
                surface.DrawTexturedRect(0, 0, 512, 512)
                surface.SetDrawColor(255, 255, 255, 255)
                surface.SetTexture(reticle)
                surface.DrawTexturedRect(0, 0, size, size)
                surface.SetDrawColor(150 * light[1], 150 * light[2], 150 * light[3], 255 * alpha)
                surface.SetTexture(lens)
                surface.DrawTexturedRectRotated(size * 0.5, size * 0.5, size, size, 90)
            cam.End2D()
        render.SetViewPort(0, 0, x, y)
        render.SetRenderTarget(old)

        if self.PSO1Glass then
            self.PSO1Glass:SetTexture("$basetexture", self.ScopeRT)
        end

        if self.TSGlass then
            self.TSGlass:SetTexture("$basetexture", self.ScopeRT)
        end
    end
end

function att:attachFunc()
    self:setBodygroup(self.SightBGs.main, self.SightBGs.fas2_elcan)
end

function att:detachFunc()
    self:setBodygroup(self.SightBGs.main, self.SightBGs.regular)
end

CustomizableWeaponry:registerAttachment(att)