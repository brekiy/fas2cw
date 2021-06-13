AddCSLuaFile()

local stat = {}
stat.varName = "MuzzleVelocity"
stat.display = "MUZZLE VELOCITY"
stat.statFont = "CW_HUD36"
stat.reverse = false
stat.desc = "Velocity at the muzzle."

function stat:textFunc(wep)
    return wep.MuzzleVelocity .. "M/S"
end

function stat:origTextFunc(wep)
    return wep.MuzzleVelocity_Orig .. "M/S"
end

CustomizableWeaponry.statDisplay:addStat(stat)

stat = {}
stat.varName = "NearWallDistance"
stat.display = "WEAPON LENGTH"
stat.statFont = "CW_HUD36"
stat.reverse = false
stat.desc = "Weapon Length."

function stat:textFunc(wep)
    return math.abs(math.Round(wep.NearWallDistance * 0.0254, 2)) .. "M"
end

function stat:origTextFunc(wep)
    return math.abs(math.Round(wep.NearWallDistance_Orig * 0.0254, 2)) .. "M"
end

CustomizableWeaponry.statDisplay:addStat(stat)