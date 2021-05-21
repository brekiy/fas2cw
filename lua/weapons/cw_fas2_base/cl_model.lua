
function SWEP:getBaseViewModelPos()
    if GetConVar("cw_alternative_vm_pos"):GetBool() and !self:isReloading() and !self:GetOwner():IsSprinting() and self.AlternativePos then
        if self:GetOwner():Crouching() and self.AlternativeCrouchPos then
            return self.AlternativeCrouchPos, self.AlternativeCrouchAng
        end
        return self.AlternativePos, self.AlternativeAng
    end

    return Vector(0, 0, 0), Vector(0, 0, 0)
end