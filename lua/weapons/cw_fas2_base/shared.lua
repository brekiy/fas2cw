AddCSLuaFile()
AddCSLuaFile("sh_firing.lua")
AddCSLuaFile("cl_model.lua")
AddCSLuaFile("cl_calcview.lua")

SWEP.Base = "cw_base"

include("sh_firing.lua")

if CLIENT then
    include("cl_model.lua")
    include("cl_calcview.lua")
    -- Override a bunch of shit for these SWEPS
    -- Boring, just reduce clutter in child sweps
    SWEP.Author			= "brekiy"
    SWEP.Contact		= ""
    SWEP.Purpose		= ""
    SWEP.Instructions	= ""
    SWEP.Category = "CW 2.0 FA:S 2 Weapons"
    SWEP.HipFireFOVIncrease = false
    SWEP.ViewModelFlip	= false
    SWEP.HUD_3D2DScale = 0.01
end

-- render target shit
SWEP.PSO1Glass = Material("models/weapons/view/accessories/Lens_EnvSolid")

-- Important props
SWEP.NeedsManualAction = false
SWEP.Cocked = false

-- Idk i dont really like this
-- SWEP.LuaViewmodelRecoil = true
-- SWEP.LuaViewmodelRecoilOverride = true
