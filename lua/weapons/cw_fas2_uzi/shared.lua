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
    SWEP.PrintName = "Uzi"

    SWEP.IronsightPos = Vector(-3.474, -6, 1.465)
    SWEP.IronsightAng = Vector(1, 0.1, 0)

    SWEP.CompM4Pos = Vector(-3.474, -5, 0.42)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(-2, -2, 0)
    SWEP.AlternativeAng = Vector(0, 0, -5)

    SWEP.AlternativeCrouchPos = Vector(-5.4, -2.5, 0)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -40)

    SWEP.MuzzleEffect = "muzzleflash_smg"
    SWEP.Shell = "fas2_9x19"
    SWEP.ShellPosOffset = {x = -1.5, y = 0, z = -3}
    SWEP.SightWithRail = false

    SWEP.AttachmentModelsVM = {
        -- ["md_foregrip"] = {model = "models/wystan/attachments/foregrip1.mdl", bone = "ak_frame", pos = Vector(-0.46, -3.5, -1.9), angle = Angle(0, -90, 0), size = Vector(0.75, 0.75, 0.75},
    }

end

SWEP.MuzzleVelocity = 400 -- in meter/s

SWEP.MuzzleBGs = {main = 1, sd = 1, regular = 0}
SWEP.SightBGs = {main = 2, fas2_aimpoint = 1, regular = 0}
SWEP.StockBGs = {main = 3, wood = 1, regular = 0}

-- Missing texture for uzi rail
SWEP.Attachments = {
    -- [1] = {header = "Sight", offset = {400, -200},  atts = {"bg_fas2_compm4"}},
    [2] = {header = "Muzzle", offset = {-200, -200}, atts = {"bg_fas2_suppressor"}},
    -- [3] = {header = "Caliber", offset = {100, 200}, atts = {"am_fas2_9bizon"}},
    [3] = {header = "Stock", offset = {100, 200}, atts = {"bg_fas2_uziwoodstock"}},
    ["+use"] = {header = "Perk", offset = {500, 100}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {800, 300}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = "shoot1",
    fire_aim = "shoot_iron",
    reload = "reload",
    reload_empty = "reload_empty",
    reload_fast = "reload_nomen",
    reload_fast_empty = "reload_empty_nomen",
    idle = "idle",
    draw = "draw",
    draw_empty = "draw_empty",
    holster = "holster"
}

SWEP.SpeedDec = 10

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 55
SWEP.ViewModelFlip	= false
SWEP.ViewModel = "models/weapons/view/smgs/c_uzi.mdl"
SWEP.WorldModel   = "models/weapons/w_smg_mp5.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 32
SWEP.Primary.DefaultClip	= 128
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x19MM"

SWEP.FireDelay = 0.1
SWEP.FireSound = "CW_FAS2_UZI_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_UZI_FIRE_SUPP"
SWEP.Recoil = 0.6875
SWEP.RecoilSide = 0.45

SWEP.HipSpread = 0.0365
SWEP.AimSpread = 0.0115
SWEP.VelocitySensitivity = 1.4
SWEP.MaxSpreadInc = 0.034
SWEP.SpreadPerShot = 0.005
SWEP.SpreadCooldown = 0.14
SWEP.Shots = 1
SWEP.Damage = 21
SWEP.DeployTime = 0.45

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 3.3
SWEP.ReloadTime_Empty = 3.8
SWEP.ReloadHalt = 3.5
SWEP.ReloadHalt_Empty = 4

SWEP.ReloadFastTime = 1.9
SWEP.ReloadFastTime_Empty = 2.25
SWEP.ReloadFastHalt = 2.1
SWEP.ReloadFastHalt_Empty = 2.45
