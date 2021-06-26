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
    SWEP.PrintName = "KAC PDW"

    SWEP.IronsightPos = Vector(-2.992, -2.5, 0.13)
    SWEP.IronsightAng = Vector()

    -- SWEP.RMRPos = Vector(-2.992, -2, 1)
    -- SWEP.RMRAng = Vector()

    SWEP.MicroT1Pos = Vector(-2.992, -2.5, 0.5)
    SWEP.MicroT1Ang = Vector()

    SWEP.EoTechPos = Vector(-2.992, -2.5, 0.5)
    SWEP.EoTechAng = Vector(0, 0, 0)

    SWEP.ShortDotPos = Vector(-2.992, -4, 0.29)
    SWEP.ShortDotAng = Vector(0, 0, 0)

    SWEP.CustomizePos = Vector(4.5977, 2.2989, -1.821)
    SWEP.CustomizeAng = Vector(17.009, 29.971, 16.669)

    SWEP.AlternativePos = Vector(-2, 0, -0.5)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.AlternativeCrouchPos = Vector(-4, -1, -0.5)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -30)

    SWEP.MuzzleEffect = "muzzleflash_6"
    SWEP.Shell = "fas2_6.8x43"
    SWEP.ShellScale = 0.88
    SWEP.SightWithRail = false
    SWEP.ACOGAxisAlignNew = {right = 0, up = 0, forward = 0}
    SWEP.SchmidtShortDotAxisAlignNew = {right = 0, up = 0, forward = 0}
    -- SWEP.ForeGripOffsetCycle_Draw = 0
    -- SWEP.ForeGripOffsetCycle_Reload = 0.75
    -- SWEP.ForeGripOffsetCycle_Reload_Empty = 0.9
    SWEP.CustomizationMenuScale = 0.0125

    SWEP.AttachmentModelsVM = {
        -- ["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", pos = Vector(-0.46, -0.2, -1.2), angle = Angle(), size = Vector(0.75, 0.75, 0.5), bone = "ak_frame"},
        ["md_schmidt_shortdot"] = {model = "models/cw2/attachments/schmidt.mdl", pos = Vector(0.42, 6, -2), angle = Angle(0, 90, 0), size = Vector(1, 1, 1), bone = "turbo_rec"},
        ["md_microt1"] = {model = "models/cw2/attachments/microt1.mdl", pos = Vector(0.03, -2, 3.8), angle = Angle(), size = Vector(0.4, 0.4, 0.4), bone = "turbo_rec"},
        ["md_eotech"] = {model = "models/wystan/attachments/2otech557sight.mdl", pos = Vector(-0.18, 9, -5.5), angle = Angle(0, 90, 0), size = Vector(0.85, 0.85, 0.85), bone = "turbo_rec"},
        ["md_fas2_suppressor"] = {model = "models/cw2/attachments/556suppressor.mdl", pos = Vector(0.05, 0.25, 4.5), angle = Angle(0, 0, 180), size = Vector(0.75, 0.75, 0.75), bone = "turbo_rec"},
    }

end

SWEP.MuzzleVelocity = 739 -- in meter/s
SWEP.SightBGs = {main = 1, none = 1, regular = 0}
SWEP.Attachments = {
    [1] = {header = "Sight", offset = {300, -400},  atts = {"md_eotech", "md_microt1", "md_schmidt_shortdot",}},
    -- [2] = {header = "Muzzle", offset = {-200, -200}, atts = {"md_fas2_suppressor", "md_fas2_muzzlebrake", "md_fas2_compensator"}},
    [2] = {header = "Muzzle", offset = {-200, -200}, atts = {"md_fas2_suppressor"}},
    [3] = {header = "Caliber", offset = {-300, 300}, atts = {"am_fas2_300ar"}},
    -- [3] = {header = "Handguard", offset = {-100, 300}, atts = {"md_foregrip"}},
    ["+use"] = {header = "Perk", offset = {1000, 0}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {400, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = {"shoot1","shoot2","shoot3",},
    -- fire_aim = "shoot_iron",
    fire_last = "shoot_last",
    -- fire_aim_last = "shoot_iron_last",
    reload = "reload",
    reload_empty = "reload_empty",
    idle = "idle",
    draw = "draw",
    holster = "holster"
}

SWEP.SpeedDec = 15

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.UseHands = true

SWEP.ViewModelFOV	= 50
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/rifles/c_kac_pdw.mdl"
SWEP.WorldModel   = "models/weapons/w_rif_m4a1.mdl" --"models/weapons/world/rifles/ak12.mdl"
SWEP.MuzzleAttachment = 1
SWEP.EjectorAttachmentName = 2

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 120
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "6x35MM"

SWEP.FireDelay = 0.0857
SWEP.FireSound = "CW_FAS2_KACPDW_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_KACPDW_FIRE_SUPP"
SWEP.Recoil = 0.69
SWEP.RecoilSide = 0.34

SWEP.HipSpread = 0.043
SWEP.AimSpread = 0.005
SWEP.VelocitySensitivity = 1.45
SWEP.MaxSpreadInc = 0.031
SWEP.SpreadPerShot = 0.0067
SWEP.SpreadCooldown = 0.15
SWEP.Shots = 1
SWEP.Damage = 26
SWEP.DeployTime = 0.7
SWEP.NearWallDistance = 25

SWEP.ReloadTime = 2.82
SWEP.ReloadTime_Empty = 3.3
SWEP.ReloadHalt = 2.82
SWEP.ReloadHalt_Empty = 3.3
SWEP.FastReloadVanilla = true
