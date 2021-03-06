local att = {}
att.name = "bg_fas2_pso1"
att.displayName = "PSO-1"
att.displayNameShort = "PSO-1"
att.aimPos = {"PSOPos", "PSOAng"}
att.FOVModifier = 10
att.isBG = true
att.isSight = true
att.withoutRail = true

if CLIENT then
    att.displayIcon = surface.GetTextureID("VGUI/fas2atts/pso1")
    att.description = {
        {t = "Provides 4x magnification.", c = CustomizableWeaponry.textColors.POSITIVE},
        {t = "Is disorienting when engaging targets at close range.", c = CustomizableWeaponry.textColors.NEGATIVE},
        {t = "Narrow scope greatly reduces awareness.", c = CustomizableWeaponry.textColors.NEGATIVE}
    }
    local old, x, y, ang
    local sightPSO = surface.GetTextureID("sprites/scope_pso_illum")
    local sightPSO2 = surface.GetTextureID("sprites/scope_pso")
    att.zoomTextures = {[1] = {tex = sightPSO2, offset = {0, 1}},
        [2] = {tex = sightPSO, offset = {0, 0}}}
    att.newTelescopicsFOV = true
    -- default shadow mask config
    att.shadowMaskConfig = {
        w = 768, -- base width of the texture, should match the texture size
        h = 768, -- same, but height
        wOff = 352, -- width offset for the mask texture
        hOff = 352, -- height offset for the mask texture
        maxOffset = 130, -- maximum pixel offset for the 'shadow' effect
        maskMaxStrength = 1, -- at what point will the shadow mask reach peak strength?
        maxZoom = 416, -- how many pixels can we zoom in at most based on the difference between our base viewmodel position and aim position?
        posX = 1, -- shadow offset position multiplier, X
        posY = 1, -- shadow offset position multiplier, Y
        flipAngles = false -- whether we should swap pitch with yaw when calculating the shadow mask offset
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
    cd.fov = 10
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

        ang = self:getTelescopeAnglesNew()

        if not self.TelescopeSkipRotate then
            if self.ViewModelFlip then
                ang.r = -self.BlendAng.z
            else
                ang.r = self.BlendAng.z
            end
        end

        if self.PSO1AxisAlignNew then
            ang:RotateAroundAxis(ang:Right(), self.PSO1AxisAlignNew.right)
            ang:RotateAroundAxis(ang:Up(), self.PSO1AxisAlignNew.up)
            ang:RotateAroundAxis(ang:Forward(), self.PSO1AxisAlignNew.forward)
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
                surface.SetTexture(sightPSO2)
                surface.DrawTexturedRectRotated(size * 0.5, size * 0.5, size * 0.8, size * 0.8, 0)

                surface.SetDrawColor(255, 255, 255, 255)
                surface.SetTexture(sightPSO)
                surface.DrawTexturedRectRotated(size * 0.5, size * 0.5, size * 0.8, size * 0.8, 0)

                if alpha < 1 then
                    self:drawLensShadow(size, size, att.shadowMaskConfig)
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
    self:setBodygroup(self.SightBGs.main, self.SightBGs.fas2_pso1)
    self.OverrideAimMouseSens = 0.818933
    self.SimpleTelescopicsFOV = 12
    self.ZoomTextures = att.zoomTextures
    self.AimViewModelFOV = 50
end

function att:detachFunc()
    self:setBodygroup(self.SightBGs.main, self.SightBGs.regular)
    self.SimpleTelescopicsFOV = nil
    self.AimViewModelFOV = self.AimViewModelFOV_Orig
    self.OverrideAimMouseSens = nil
end

CustomizableWeaponry:registerAttachment(att)