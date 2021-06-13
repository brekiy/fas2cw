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
-- This is strictly for shell ejection from firing
function SWEP:CreateShell(sh)
    if self:GetOwner():ShouldDrawLocalPlayer() or self.NoShells then
        return
    end

    -- doesnt actually seem to be used in the original fxn...
    -- local ejectsh = self.Shell or sh
    local ejectAtt = self.CW_VM:LookupAttachment(self.EjectorAttachmentName)
    if ejectAtt <= 0 then
        error("Invalid ejector port attachment " .. self.EjectorAttachmentName)
        return
    end
    local att = self.CW_VM:GetAttachment(ejectAtt)

    if self.ShellDelay then
        CustomizableWeaponry.actionSequence.new(self, self.ShellDelay, nil, function()
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

--[[
    Spawns a number of shells
    shell: shell name in cw shells arr e.g. 9x19, 10x25
    everything else is self-explanatory
]]--
function SWEP:FAS2_MakeFakeShell(shell, num, pos, ang, vel, removetime, shellscale)
    if !shell or !pos then
        return
    end

    ang = ang or AngleRand()
    vel = vel or Vector(0, 0, -100)
    vel = vel + VectorRand() * 5
    num = num or 1
    removetime = removetime or 5
    shellscale = shellscale or 1
    local shellTable = CustomizableWeaponry.shells:getShell(shell)

    for i = 1, num do
        local shellEnt = ClientsideModel(shellTable.m, RENDERGROUP_BOTH)
        shellEnt:SetPos(pos)
        shellEnt:PhysicsInitBox(self.shellBoundBox[1], self.shellBoundBox[2])
        shellEnt:SetAngles(ang)
        shellEnt:SetModelScale(shellscale, 0)
        shellEnt:SetMoveType(MOVETYPE_VPHYSICS)
        shellEnt:SetSolid(SOLID_VPHYSICS)
        shellEnt:SetCollisionGroup(COLLISION_GROUP_DEBRIS)

        local phys = shellEnt:GetPhysicsObject()
        phys:SetMaterial("gmod_silent")
        phys:SetMass(10)
        phys:SetVelocity(vel)
        if shellTable.s then
            shellEnt:EmitSound(shellTable.s, 35, 100)
        end

        SafeRemoveEntityDelayed(shellEnt, removetime)
    end
end

-- TODO: update to support bipod aiming
function SWEP:getDifferenceToAimPos(targetPos, targetAng, vertDependance, horDependance, dependMod)
    dependMod = dependMod or 1
    vertDependance = vertDependance or 1
    horDependance = horDependance or 1

    local sway = (self.AngleDelta.p * 0.65 * vertDependance + self.AngleDelta.y * 0.75 * horDependance) * 0.05 * dependMod
    if self.dt.State == CW_AIMING and self.dt.BipodDeployed then
        targetPos, targetAng = self:_CalcBipodAimOffsets(targetPos, targetAng)
    end
    local pos = self.BlendPos - targetPos
    local ang = self.BlendAng - targetAng
    ang.z = 0

    pos = pos:Length()
    ang = ang:Length() - sway

    local dependance = pos + ang

    return 1 - dependance
end

function SWEP:_CalcBipodAimOffsets(targetPos, targetAng)
    if self.BipodAimOffsetPos then
        targetPos = (self.AimPos + self.BipodAimOffsetPos) * 1
        targetAng = (self.AimAng + self.BipodAimOffsetAng) * 1
    end
    return targetPos, targetAng
end

-- Adds an offset to bipod ADS position for weapons that need it
CustomizableWeaponry.callbacks:addNew("adjustViewmodelPosition", "FAS2_BIPOD_AIM_OFFSET", function(self, targetPos, targetAng)
    local newTargetPos, newTargetAng = targetPos, targetAng
    if self.dt.State == CW_AIMING and self.dt.BipodDeployed then
        newTargetPos, newTargetAng = self:_CalcBipodAimOffsets(newTargetPos, newTargetAng)
    end
    return newTargetPos, newTargetAng
end)

CustomizableWeaponry.callbacks:addNew("initialize", "CW_C_HANDS", function(self)
    -- PrintTable(self:GetAttachments())
    if self and self.UseHands and self.elementRender then
        self.CW_GREN:SetModel("models/weapons/cstrike/c_eq_fraggrenade.mdl")
        self.elementRender.C_HANDS = function(self)
            local hands = self:GetOwner():GetHands()
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
