
function SWEP:getBaseViewModelPos()
    if GetConVar("cw_alternative_vm_pos"):GetBool() and !self:GetOwner():IsSprinting() and self.AlternativePos then
        if self:GetOwner():Crouching() and self.AlternativeCrouchPos then
            return self.AlternativeCrouchPos, self.AlternativeCrouchAng
        end
        return self.AlternativePos, self.AlternativeAng
    end

    return Vector(0, 0, 0), Vector(0, 0, 0)
end

-- Overriden to draw c-hands
function SWEP:createCustomVM(mdl)
    self.CW_VM = self:createManagedCModel(mdl, RENDERGROUP_BOTH)
    self.CW_VM:SetNoDraw(true)
    self.CW_VM:SetupBones()

    self.Hands = self:createManagedCModel("models/weapons/c_arms_citizen.mdl", RENDERGROUP_BOTH)
    self.Hands:SetNoDraw(true)
    self.Hands:SetupBones()
    self.Hands:SetParent(self.CW_VM)
    self.Hands:AddEffects(EF_BONEMERGE)
    self.Hands:AddEffects(EF_BONEMERGE_FASTCULL)

    if self.ViewModelFlip then
        local mtr = Matrix()
        mtr:Scale(Vector(1, -1, 1))

        self.CW_VM:EnableMatrix("RenderMultiply", mtr)
    end
end