AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
    SWEP.Category = "CW 2.0 FA:S 2 Weapons"
    SWEP.Author			= "brekiy"
    SWEP.Contact		= ""
    SWEP.Purpose		= ""
    SWEP.Instructions	= ""

    SWEP.DrawCrosshair = false
    SWEP.PrintName = "M21"
    -- SWEP.CSMuzzleFlashes = true

    SWEP.IronsightPos = Vector(-2.56, -5.354, 1.363)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.CompM4Pos = Vector(-2.04, -2, 0.6)
    SWEP.CompM4Ang = Vector(-0.631, 0, 0)

    SWEP.ELCANPos = Vector(-2.04, -2, 0.43)
    SWEP.ELCANAng = Vector(-0.631, 0, 0)

    SWEP.EoTechPos = Vector(-2.04, -4.848, 0.537)
    SWEP.EoTechAng = Vector(-0.631, 0, 0)

    SWEP.AlternativePos = Vector(-1, 0, 0)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.AlternativeCrouchPos = Vector(-1.3, -1, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -2)

    SWEP.ViewModelMovementScale = 1.15

    SWEP.MuzzleEffect = "muzzleflash_ak47"
    SWEP.Shell = "762x51"
    SWEP.PosBasedMuz = false
    -- SWEP.ShellScale = 0.55
    -- SWEP.ShellOffsetMul = 1
    -- SWEP.ShellPosOffset = {x = -1.5, y = 0, z = -3}
    SWEP.SightWithRail = false
    SWEP.LeupoldAxisAlign = {right = 0, up = 0, forward = 0}
    SWEP.CustomizationMenuScale = 0.01

    SWEP.AttachmentModelsVM = {
        -- ["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "ak_frame", pos = Vector(-0.46, -3.5, -1.9), angle = Angle(0, -90, 0), size = Vector(0.75, 0.75, 0.75},
        -- ["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", bone = "ak_frame", pos = Vector(-0.3, -2.5, -2.46), angle = Angle(0, -90, 0), size = Vector(0.8, 0.8, 0.8}
    }

end

SWEP.MuzzleVelocity = 880 -- in meter/s

SWEP.BarrelBGs = {main = 3, sd = 1, regular = 0}
SWEP.SightBGs = {main = 2, fas2_elcan = 3, fas2_eotech = 2, fas2_aimpoint = 1, regular = 0}
SWEP.MagBGs = {main = 4, rnd20 = 1, regular = 0}
SWEP.Attachments = {
    -- [1] = {header = "Sight", offset = {400, -200},  atts = {"bg_fas2_eotech", "bg_fas2_compm4", "bg_fas2_elcan"}},
    [1] = {header = "Barrel", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    [2] = {header = "Magazine", offset = {300, 0}, atts = {"bg_fas2_m2120mag"}},
    ["+reload"] = {header = "Ammo", offset = {800, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"shoot", "shoot2", "shoot3"},
    fire_aim = {"shoot1_scoped", "shoot2_scoped"},
    fire_last = "shoot_last",
    fire_aim_last = "shoot_last_scoped",
    reload = "reload",
    reload_empty = "reload_empty",
    idle = "idle",
    draw = "deploy",
    draw_empty = "deploy_empty",
    holster = "holster"
}

SWEP.Sounds = {
    draw = {{time = 0, sound = "CW_FOLEY_MEDIUM"}},
    reload = {
        [1] = {time = 0.6, sound = "CW_FAS2_M21_MAGOUT"},
        [2] = {time = 1.3, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.9, sound = "CW_FAS2_M21_MAGIN"}
    },
    reload_empty = {
        [1] = {time = 0.6, sound = "CW_FAS2_M21_MAGOUT_EMPTY"},
        [2] = {time = 1.3, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.95, sound = "CW_FAS2_M21_MAGIN"},
        [4] = {time = 3.15, sound = "CW_FAS2_M21_BOLTRELEASE"}
    }
}

SWEP.SpeedDec = 30

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/support/m21.mdl"
SWEP.WorldModel   = "models/weapons/w_m14.mdl"
SWEP.MuzzleAttachment = 1
SWEP.DeployAnimSpeed = 0.5
SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 20
SWEP.Primary.DefaultClip	= 40
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "7.62x51MM"

SWEP.FireDelay = 0.09
SWEP.FireSound = "CW_FAS2_M21_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_M21_FIRE_SUPP"
SWEP.Recoil = 1.05

SWEP.HipSpread = 0.05
SWEP.AimSpread = 0.001
SWEP.VelocitySensitivity = 2
SWEP.MaxSpreadInc = 0.045
SWEP.SpreadPerShot = 0.015
SWEP.SpreadCooldown = 0.155
SWEP.Shots = 1
SWEP.Damage = 55
SWEP.DeployTime = 0.45

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.3
SWEP.ReloadTime_Empty = 1.9
SWEP.ReloadHalt = 3.7
SWEP.ReloadHalt_Empty = 2.65

-- maybe i'll rip the scope off this in the future... but then whats the point of having both this and the m14???
if CLIENT then

    function SWEP:IndividualInitialize()
        -- TODO: i have no idea what im doing
        self:setTelescopicsFOVRange({8}, {10})
    end

    local old, x, y, ang
    local reticle = surface.GetTextureID("models/weapons/view/accessories/leupold_reticle")
    -- att.zoomTextures = {[1] = {tex = reticle, offset = {0, 1}}}

    local lens = surface.GetTextureID("VGUI/fas2/lense")
    local lensring = surface.GetTextureID("VGUI/fas2/lensring")
    local cd, alpha = {}, 0.5
    local Ini = true

    -- render target var setup
    cd.x = 0
    cd.y = 0
    cd.w = 512
    cd.h = 512
    cd.fov = 4
    cd.drawviewmodel = false
    cd.drawhud = false
    cd.dopostprocess = false

    function SWEP:RenderTargetFunc()
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

        ang = self:getTelescopeAngles()

        if not self.freeAimOn then
            ang.r = self.BlendAng.z
            ang:RotateAroundAxis(ang:Right(), self.LeupoldAxisAlign.right)
            ang:RotateAroundAxis(ang:Up(), self.LeupoldAxisAlign.up)
            ang:RotateAroundAxis(ang:Forward(), self.LeupoldAxisAlign.forward)
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