
function SWEP:getBaseViewModelPos()
    if GetConVar("cw_alternative_vm_pos"):GetBool() and !self:GetOwner():IsSprinting() and self.AlternativePos then
        if self:GetOwner():Crouching() and self.AlternativeCrouchPos then
            return self.AlternativeCrouchPos, self.AlternativeCrouchAng
        end
        return self.AlternativePos, self.AlternativeAng
    end

    return Vector(0, 0, 0), Vector(0, 0, 0)
end

-- Override to fix a bug where it assumes that the second attachment is the ejector port
function SWEP:CreateShell(sh)
    if self:GetOwner():ShouldDrawLocalPlayer() or self.NoShells then
        return
    end

    -- TODO: doesnt actually seem to be used in the original fxn...
    -- local ejectsh = self.Shell or sh
    local ejectAtt = self.CW_VM:LookupAttachment(self.EjectorAttachmentName)
    if ejectAtt <= 0 then
        error("Invalid ejector port attachment " .. self.EjectorAttachmentName)
        return
    end
    local att = self.CW_VM:GetAttachment(ejectAtt)

    if self.ShellDelay then
        CustomizableWeaponry.actionSequence.new(self, self.ShellDelay, nil, function()
            att = vm:GetAttachment(2)

            if self.InvertShellEjectAngle then
                dir = -att.Ang:Forward()
            else
                dir = att.Ang:Forward()
            end

            if self.ShellPosOffset then
                att.Pos = att.Pos + self.ShellPosOffset.x * att.Ang:Right()
                att.Pos = att.Pos + self.ShellPosOffset.y * att.Ang:Forward()
                att.Pos = att.Pos + self.ShellPosOffset.z * att.Ang:Up()
            end

            CustomizableWeaponry.shells.make(self, att.Pos + dir * self.ShellOffsetMul, EyeAngles(), dir * 200, 0.6, 10)
        end)
    else
        if self.InvertShellEjectAngle then
            dir = -att.Ang:Forward()
        else
            dir = att.Ang:Forward()
        end

        if self.ShellPosOffset then
            att.Pos = att.Pos + self.ShellPosOffset.x * att.Ang:Right()
            att.Pos = att.Pos + self.ShellPosOffset.y * att.Ang:Forward()
            att.Pos = att.Pos + self.ShellPosOffset.z * att.Ang:Up()
        end

        CustomizableWeaponry.shells.make(self, att.Pos + dir * self.ShellOffsetMul, EyeAngles(), dir * 200, 0.6, 10)
    end
end

-- Override to fix the ugly muzzle effect attachment point and lingering light
function SWEP:CreateMuzzle()
    if self:GetOwner():ShouldDrawLocalPlayer() then
        return
    end

    local vm = self.CW_VM

    if !IsValid(vm) then
        return
    end
    vm:StopParticles()

    local muzId = vm:LookupAttachment(self.MuzzleAttachmentName)
    if muzId <= 0 then
        error("Invalid muzzle attachment " .. self.MuzzleAttachmentName)
        return
    end

    local muz = vm:GetAttachment(muzId)
    local EA = EyeAngles()
    local pos = muz.Pos

    if self.MuzzlePosMod then
        pos = muz.Pos + EA:Right() * self.MuzzlePosMod.x + EA:Forward() * self.MuzzlePosMod.y + EA:Up() * self.MuzzlePosMod.z
    end

    if self.dt.Suppressed and self.MuzzleEffectSupp and !self.NoSilMuz then
        if (self.dt.State == CW_AIMING and self.SimulateCenterMuzzle) or (self.dt.State == CW_AIMING and self:canUseSimpleTelescopics()) then
            ParticleEffect(self.MuzzleEffectSupp, pos + self:GetOwner():GetVelocity() * 0.03, EA, vm)
        else
            if self.PosBasedMuz then
                ParticleEffect(self.MuzzleEffectSupp, pos + self:GetOwner():GetVelocity() * 0.03, EA, vm) -- using velocity to add to the position 'simulates' attaching it to a control point
            else
                ParticleEffectAttach(self.MuzzleEffectSupp, PATTACH_POINT_FOLLOW, vm, muzId)
            end
        end
    else
        if self.MuzzleEffect then
            if (self.dt.State == CW_AIMING and self.SimulateCenterMuzzle) or (self.dt.State == CW_AIMING and self:canUseSimpleTelescopics()) then
                ParticleEffect(self.MuzzleEffect, pos + self:GetOwner():GetVelocity() * 0.03, EA, vm)
            else
                if self.PosBasedMuz then
                    ParticleEffect(self.MuzzleEffect, pos + self:GetOwner():GetVelocity() * 0.03, EA, vm)
                else
                    ParticleEffectAttach(self.MuzzleEffect, PATTACH_POINT_FOLLOW, vm, muzId)
                end
            end
        end

        dlight = DynamicLight(self:EntIndex())

        dlight.r = 255
        dlight.g = 218
        dlight.b = 74
        dlight.Brightness = 3
        dlight.Pos = pos
        dlight.Size = 96
        dlight.Decay = 2280
        dlight.DieTime = CurTime() + FrameTime()
    end
end

CustomizableWeaponry.callbacks:addNew("initialize", "CW_C_HANDS", function(self)
    PrintTable(self:GetAttachments())
    if self and self.UseHands and self.elementRender then
        self.CW_GREN:SetModel("models/weapons/cstrike/c_eq_fraggrenade.mdl")
        self.elementRender.C_HANDS = function(self)
            local hands = self:GetOwner():GetHands()
            -- self.Hands = self:createManagedCModel(hands:GetModel(), RENDERGROUP_BOTH)
            hands:SetupBones()
            if CurTime() > self.grenadeTime then
                hands:SetParent(self.CW_VM)
                hands:AddEffects(EF_BONEMERGE)
            else
                hands:SetParent(self.CW_GREN)
                hands:AddEffects(EF_BONEMERGE_FASTCULL)
            end
            hands:DrawModel()
        end
    end
end)

-- CustomizableWeaponry.callbacks:addNew("initialize", "KK_GM_HANDS", function(wep)
--     if wep and wep.UseHands and wep.elementRender then
--         wep.CW_GREN:SetModel("models/weapons/cstrike/c_eq_fraggrenade.mdl")

--         wep.elementRender.KK_GM_HANDS = function(self)
--             hands = self:GetOwner():GetHands()

--             if CurTime() > self.grenadeTime then
--                 hands:SetParent(self.CW_VM)
--                 hands:AddEffects(EF_BONEMERGE)
--                 if self.ViewModelFlip then
--                     render.CullMode(MATERIAL_CULLMODE_CW)
--                         hands:DrawModel()
--                     render.CullMode(MATERIAL_CULLMODE_CCW)
--                 else
--                     hands:DrawModel()
--                 end
--             else
--                 hands:SetParent(self.CW_GREN)
--                 hands:AddEffects(EF_BONEMERGE_FASTCULL)
--             end
--         end

--         wep.drawGrenade = function(self)
--             if CurTime() > self.grenadeTime then
--                 return
--             end

--             if self.CW_GREN:GetCycle() >= 0.98 then
--                 return
--             end

--             pos, ang = EyePos(), EyeAngles()

--             self.GrenadePos.z = Lerp(FrameTime() * 10, self.GrenadePos.z, 0)

--             pos = pos + ang:Up() * self.GrenadePos.z
--             pos = pos + ang:Forward() * 2

--             self.CW_GREN:SetPos(pos)
--             self.CW_GREN:SetAngles(ang)
--             self.CW_GREN:FrameAdvance(FrameTime())
--             self.CW_GREN:FrameAdvance(FrameTime())

--             cam.IgnoreZ(true)
--                 self.CW_GREN:DrawModel()
--                 self:GetOwner():GetHands():DrawModel()
--             cam.IgnoreZ(false)
--         end
--     end
-- end)
