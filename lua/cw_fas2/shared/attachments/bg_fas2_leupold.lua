local att = {}
att.name = "bg_fas2_leupold"
att.displayName = "Leupold MK4"
att.displayNameShort = "Leupold"
att.aimPos = {"LeupoldPos", "LeupoldAng"}
att.FOVModifier = 10
att.isBG = true
att.isSight = true
att.withoutRail = true

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/mk4")
    att.description = {
        {t = "Provides 8x magnification.", c = CustomizableWeaponry.textColors.POSITIVE},
        {t = "Is very disorienting when engaging targets at close range.", c = CustomizableWeaponry.textColors.NEGATIVE},
        {t = "Narrow scope greatly reduces awareness.", c = CustomizableWeaponry.textColors.NEGATIVE}
    }
    local old, x, y, ang
    -- local reticle = surface.GetTextureID("models/weapons/view/accessories/leupold_reticle")
    local reticle = surface.GetTextureID("sprites/scope_leo")
    att.zoomTextures = {{tex = surface.GetTextureID("sprites/scope_leo"), offset = {0, 1}}}

    att.telescopicsFOVRange = {
        10,
        7.5,
        5
    }

    att.newTelescopicsFOV = true
    att.simpleTelescopicsFOVRange = {
        14,
        9,
        6.7
    }

    local lens = surface.GetTextureID("cw2/gui/lense")
    local lensMat = Material("cw2/gui/lense")
    local cd, alpha = {}, 0.5
    local Ini = true

    -- render target var setup
    cd.x = 0
    cd.y = 0
    cd.w = 512
    cd.h = 512
    cd.fov = 3
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

        if self.dt.State == CW_AIMING then
            alpha = math.Approach(alpha, 0, FrameTime() * 5)
        else
            alpha = math.Approach(alpha, 1, FrameTime() * 5)
        end

        x, y = ScrW(), ScrH()
        old = render.GetRenderTarget()

        ang = self:getTelescopeAnglesNew()

        if not self.TelescopeSkipRotate then
            if self.ViewModelFlip then
                ang.r = -self.BlendAng.z
            else
                ang.r = self.BlendAng.z
            end
        end

        if self.LeupoldAlignNew then
            local right, up, forward = ang:Right(), ang:Up(), ang:Forward()

            ang:RotateAroundAxis(right, self.LeupoldAlignNew.right)
            ang:RotateAroundAxis(up, self.LeupoldAlignNew.up)
            ang:RotateAroundAxis(forward, self.LeupoldAlignNew.forward)
        end

        local size = self:getRenderTargetSize()

        cd.w = size
        cd.h = size
        cd.angles = ang
        cd.origin = self:GetOwner():GetShootPos()

        self:adjustTelescopicsFOV(cd)

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
                surface.SetTexture(reticle)
                surface.DrawTexturedRect(0, 0, size, size)

                if alpha < 1 then
                    self:drawLensShadow(size, size)
                end

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
    self:setBodygroup(self.SightBGs.main, self.SightBGs.fas2_leupold)
    self.OverrideAimMouseSens = 0.818933
    self.AimViewModelFOV = 50
    self.SimpleTelescopicsFOV = 12
    self.ZoomTextures = att.zoomTextures
end

function att:detachFunc()
    self:setBodygroup(self.SightBGs.main, self.SightBGs.regular)
    self.OverrideAimMouseSens = nil
    self.AimViewModelFOV = self.AimViewModelFOV_Orig
    self.SimpleTelescopicsFOV = nil
end

CustomizableWeaponry:registerAttachment(att)