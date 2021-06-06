-- TODO
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
    SWEP.PrintName = "SKS"

    SWEP.MuzzleEffect = "muzzleflash_6"
    -- SWEP.PosBasedMuz = false
    -- SWEP.SnapToGrip = false
    SWEP.ShellOffsetMul = 1
    SWEP.Shell = "fas2_762x39"
    -- SWEP.ShellPosOffset = {x = 2, y = 0, z = 2}

    SWEP.IronsightPos = Vector(-3.165, -4.652, 2.25)
    SWEP.IronsightAng = Vector(0, 0, 0)

    SWEP.CompM4Pos = Vector(-3.18, -3, 1.17)
    SWEP.CompM4Ang = Vector(0, 0, 0)

    SWEP.EoTechPos = Vector(-3.18, -4, 0.72)
    SWEP.EoTechAng = Vector(0, 0, 0)

    SWEP.PSO1Pos = Vector(-2.847, -3.65, 1.2105)
    SWEP.PSO1Ang = Vector(0, 0, 0)

    SWEP.AlternativePos = Vector(0, -2, 0)
    SWEP.AlternativeAng = Vector(0, 0, 0)

    SWEP.AlternativeCrouchPos = Vector(0, -2, 0.5)
    SWEP.AlternativeCrouchAng = Vector(0, 0, -5)
    SWEP.PSOAxisAlign = {right = 0, up = 0, forward = 0}

    SWEP.AttachmentModelsVM = {
    }

    SWEP.CustomizationMenuScale = 0.02
end

SWEP.MuzzleVelocity = 738 -- in meter/s

SWEP.BarrelBGs = {main = 2, sd = 2, regular = 0}
SWEP.SightBGs = {main = 1, fas2_pso1 = 3, fas2_eotech = 2, fas2_aimpoint = 1, regular = 0}
SWEP.MagBGs = {main = 3, rnd30 = 2, rnd20 = 1, regular = 0}

SWEP.Attachments = {
    [1] = {header = "Sight", offset = {800, -300}, atts = {"bg_fas2_eotech", "bg_fas2_compm4", "bg_fas2_pso1"}},
    [2] = {header = "Barrel", offset = {-200, 0}, atts = {"bg_fas2_suppressor"}},
    [3] = {header = "Magazine", offset = {200, 500}, atts = {"bg_fas2_sks20mag", "bg_fas2_sks30mag"}},
    [5] = {header = "Perk", offset = {400, 0}, atts = {"pk_fas2_fast_reload"}},
    ["+reload"] = {header = "Ammo", offset = {900, 500}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
    fire = "Fire1",
    fire_aim = "fire_scoped",
    fire_last = "Fire_last",
    fire_aim_last = "Fire_last_scoped",
    reload = "Reload5",
    reload_empty = "Reload_empty",
    reload_fast = "Reload5_nmc",
    reload_fast_empty = "Reload_empty_nmc",
    reload_20 = "Reload_20_add",
    reload_20_fast = "Reload_20_add_nmc",
    reload_20_empty = "Reload_20_empty",
    reload_20_fast_empty = "Reload_20_empty_nmc",
    reload_30 = "Reload_30",
    reload_30_fast = "Reload_30_nmc",
    reload_30_empty = "Reload_30_empty",
    reload_30_fast_empty = "Reload_30_empty_nmc",
    idle = "idle",
    draw = "draw",
    holster = "holster"
}

SWEP.Sounds = {
    Reload5 = {
        [1] = {time = 0.5, sound = "CW_FAS2_SKS_LATCHOPEN"},
        [2] = {time = 1.3, sound = "CW_FAS2_SKS_LATCHCLOSE"},
        [3] = {time = 2.2, sound = "CW_FAS2_SKS_BOLTBACK"},
        [4] = {time = 2.25, sound = "CW_FOLEY_HEAVY"},
        [5] = {time = 3.2, sound = "CW_FAS2_SKS_CLIPIN"},
        [6] = {time = 3.8, sound = "CW_FAS2_SKS_INSERT1"},
        [7] = {time = 4.2, sound = "CW_FAS2_SKS_INSERT2"},
        [8] = {time = 4.6, sound = "CW_FAS2_SKS_INSERT3"},
        [9] = {time = 5.15, sound = "CW_FAS2_SKS_REMOVECLIP"},
        [10] = {time = 5.55, sound = "CW_FAS2_SKS_BOLTBACK"},
        [11] = {time = 5.75, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    },
    Reload5_nmc = {
        [1] = {time = 0.5, sound = "CW_FAS2_SKS_LATCHOPEN"},
        [2] = {time = 1, sound = "CW_FAS2_SKS_LATCHCLOSE"},
        [3] = {time = 1.6, sound = "CW_FOLEY_HEAVY"},
        [4] = {time = 2.05, sound = "CW_FAS2_SKS_BOLTBACK"},
        [5] = {time = 2.5, sound = "CW_FAS2_SKS_CLIPIN"},
        [6] = {time = 3, sound = "CW_FAS2_SKS_INSERTNOMEN"},
        [7] = {time = 3.55, sound = "CW_FAS2_SKS_REMOVECLIP"},
        [8] = {time = 3.9, sound = "CW_FAS2_SKS_BOLTBACK"},
        [9] = {time = 4, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    },
    Reload_empty = {
        [1] = {time = 0.5, sound = "CW_FOLEY_HEAVY"},
        [2] = {time = 1, sound = "CW_FAS2_SKS_CLIPIN"},
        [3] = {time = 1.6, sound = "CW_FAS2_SKS_INSERT1"},
        [4] = {time = 2, sound = "CW_FAS2_SKS_INSERT2"},
        [5] = {time = 2.4, sound = "CW_FAS2_SKS_INSERT3"},
        [6] = {time = 2.8, sound = "CW_FAS2_SKS_REMOVECLIP"},
        [7] = {time = 3.2, sound = "CW_FAS2_SKS_LATCHCLOSE"},
        [8] = {time = 3.4, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    },
    Reload_empty_nmc = {
        [1] = {time = 0.4, sound = "CW_FOLEY_HEAVY"},
        [2] = {time = 0.85, sound = "CW_FAS2_SKS_CLIPIN"},
        [3] = {time = 1.4, sound = "CW_FAS2_SKS_INSERTNOMEN"},
        [4] = {time = 2, sound = "CW_FAS2_SKS_REMOVECLIP"},
        [5] = {time = 2.35, sound = "CW_FAS2_SKS_BOLTBACK"},
        [6] = {time = 2.45, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    },
    Reload_20_add = {
        [1] = {time = 0.5, sound = "CW_FAS2_SKS_BOLTBACK"},
        [2] = {time = 1, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.6, sound = "CW_FAS2_SKS_CLIPIN"},
        [4] = {time = 2.1, sound = "CW_FAS2_SKS_INSERT1"},
        [5] = {time = 2.5, sound = "CW_FAS2_SKS_INSERT3"},
        [6] = {time = 2.9, sound = "CW_FAS2_SKS_REMOVECLIP"},
        [7] = {time = 3.15, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    },
    Reload_20_add_nmc = {
        [1] = {time = 0.4, sound = "CW_FOLEY_HEAVY"},
        [2] = {time = 0.75, sound = "CW_FAS2_SKS_BOLTBACK"},
        [3] = {time = 1.1, sound = "CW_FAS2_SKS_CLIPIN"},
        [4] = {time = 1.6, sound = "CW_FAS2_SKS_INSERTNOMEN"},
        [5] = {time = 2.05, sound = "CW_FAS2_SKS_BOLTFORWARD"},
        [6] = {time = 2.35, sound = "CW_FAS2_SKS_REMOVECLIP"}
    },
    Reload_20_empty = {
        [1] = {time = 0.5, sound = "CW_FOLEY_HEAVY"},
        [2] = {time = 1, sound = "CW_FAS2_SKS_CLIPIN"},
        [3] = {time = 1.6, sound = "CW_FAS2_SKS_INSERT1"},
        [4] = {time = 2, sound = "CW_FAS2_SKS_INSERT2"},
        [5] = {time = 2.4, sound = "CW_FAS2_SKS_INSERT3"},
        [6] = {time = 2.8, sound = "CW_FAS2_SKS_REMOVECLIP"},
        [7] = {time = 3.3, sound = "CW_FOLEY_HEAVY"},
        [8] = {time = 4, sound = "CW_FAS2_SKS_CLIPIN"},
        [9] = {time = 4.5, sound = "CW_FAS2_SKS_INSERT1"},
        [10] = {time = 4.9, sound = "CW_FAS2_SKS_INSERT2"},
        [11] = {time = 5.3, sound = "CW_FAS2_SKS_INSERT3"},
        [12] = {time = 5.8, sound = "CW_FAS2_SKS_REMOVECLIP"},
        [13] = {time = 6.2, sound = "CW_FAS2_SKS_LATCHCLOSE"},
        [14] = {time = 6.4, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    },
    Reload_20_empty_nmc = {
        [1] = {time = 0.4, sound = "CW_FOLEY_HEAVY"},
        [2] = {time = 0.85, sound = "CW_FAS2_SKS_CLIPIN"},
        [3] = {time = 1.4, sound = "CW_FAS2_SKS_INSERTNOMEN"},
        [4] = {time = 2.05, sound = "CW_FAS2_SKS_REMOVECLIP"},
        [5] = {time = 3, sound = "CW_FAS2_SKS_CLIPIN"},
        [6] = {time = 3.6, sound = "CW_FAS2_SKS_INSERTNOMEN"},
        [7] = {time = 4.2, sound = "CW_FAS2_SKS_REMOVECLIP"},
        [8] = {time = 4.65, sound = "CW_FAS2_SKS_BOLTBACK"},
        [9] = {time = 4.75, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    },
    Reload_30 = {
        [1] = {time = 0.7, sound = "CW_FAS2_SKS_BOLTBACK"},
        [2] = {time = 1.15, sound = "CW_FAS2_SKS_MAGOUT"},
        [3] = {time = 1.7, sound = "CW_FOLEY_HEAVY"},
        [4] = {time = 2.5, sound = "CW_FAS2_SKS_MAGIN"},
        [5] = {time = 2.8, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    },
    Reload_30_nmc = {
        [1] = {time = 0.4, sound = "CW_FAS2_SKS_BOLTBACK"},
        [2] = {time = 0.9, sound = "CW_FAS2_SKS_MAGOUT"},
        [3] = {time = 1.4, sound = "CW_FOLEY_HEAVY"},
        [4] = {time = 2, sound = "CW_FAS2_SKS_MAGIN"},
        [5] = {time = 2.47, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    },
    Reload_30_empty = {
        [1] = {time = 0.9, sound = "CW_FAS2_SKS_MAGOUT_EMPTY"},
        [2] = {time = 1.7, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 2.35, sound = "CW_FAS2_SKS_MAGIN"},
        [4] = {time = 3.3, sound = "CW_FAS2_SKS_BOLTBACK"},
        [5] = {time = 3.5, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    },
    Reload_30_empty_nmc = {
        [1] = {time = 0.6, sound = "CW_FAS2_SKS_MAGOUT_EMPTY"},
        [2] = {time = 1.4, sound = "CW_FOLEY_HEAVY"},
        [3] = {time = 1.8, sound = "CW_FAS2_SKS_MAGIN"},
        [4] = {time = 2.4, sound = "CW_FAS2_SKS_BOLTBACK"},
        [5] = {time = 2.55, sound = "CW_FAS2_SKS_BOLTFORWARD"}
    }
}

SWEP.SpeedDec = 20

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"semi"}
SWEP.Base = "cw_fas2_base"

SWEP.ViewModelFOV	= 55
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/view/rifles/c_sks.mdl"
SWEP.WorldModel		= "models/weapons/world/rifles/sks.mdl"
SWEP.MuzzleAttachment = 1

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 10
SWEP.Primary.DefaultClip	= 40
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo			= "7.62x39MM"

SWEP.FireDelay = 0.12
SWEP.FireSound = "CW_FAS2_SKS_FIRE"
SWEP.FireSoundSuppressed = "CW_FAS2_SKS_FIRE_SUPP"
SWEP.Recoil = 0.78

SWEP.HipSpread = 0.054
SWEP.AimSpread = 0.0045
SWEP.VelocitySensitivity = 1.95
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.15
SWEP.Shots = 1
SWEP.Damage = 31
SWEP.DeployTime = 1
SWEP.NearWallDistance = 30

SWEP.ReloadTime = 6
SWEP.ReloadTime_Empty = 3.5
SWEP.ReloadHalt = 6.2
SWEP.ReloadHalt_Empty = 3.7

SWEP.ReloadFastTime = 4.2
SWEP.ReloadFastTime_Empty = 2.75
SWEP.ReloadFastHalt = 4.4
SWEP.ReloadFastHalt_Empty = 2.95

SWEP.ReloadTime_20 = 3.8
SWEP.ReloadTime_20_Empty = 6.7
SWEP.ReloadHalt_20 = 4
SWEP.ReloadHalt_20_Empty = 6.9

SWEP.ReloadFastTime_20 = 2.8
SWEP.ReloadFastTime_20_Empty = 5
SWEP.ReloadFastHalt_20 = 3
SWEP.ReloadFastHalt_20_Empty = 5.2

SWEP.ReloadTime_30 = 3.8
SWEP.ReloadTime_30_Empty = 3.8
SWEP.ReloadHalt_30 = 4
SWEP.ReloadHalt_30_Empty = 4

SWEP.ReloadFastTime_30 = 2.8
SWEP.ReloadFastTime_30_Empty = 2.8
SWEP.ReloadFastHalt_30 = 3
SWEP.ReloadFastHalt_30_Empty = 3

-- TODO: fix stuff with the reload times
function SWEP:reloadAnimFunc(mag, reloadSpeed)
    local animString = "reload"
    if self:GetMaxClip1() >= 30 then
        animString = animString .. "_30"
    elseif self:GetMaxClip1() >= 20 then
        animString = animString .. "_20"
    end
    if self.FastReload then
        animString = animString .. "_fast"
    end
    if mag == 0 then
        animString = animString .. "_empty"
    end
    self:sendWeaponAnim(animString, reloadSpeed)
end
