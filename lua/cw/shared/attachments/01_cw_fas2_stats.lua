AddCSLuaFile()
-- i have no idea why shit here gets loaded first but it does, so we stick the file in here to get these formatted
CustomizableWeaponry.originalValue:add("NearWallDistance", false)
CustomizableWeaponry.originalValue:add("MuzzleVelocity", true)
-- kinda broken originally
CustomizableWeaponry.originalValue:add("ClumpSpread", true)

CustomizableWeaponry:registerRecognizedVariable(
    "NearWallDistance",
    "Decreases weapon length by ",
    "Increases weapon length by ",
    CustomizableWeaponry.textColors.POSITIVE,
    CustomizableWeaponry.textColors.NEGATIVE,

    function(weapon, attachmentData)
        weapon.NearWallDistance = (weapon.NearWallDistance or 0) + attachmentData.NearWallDistance
    end,

    function(weapon, attachmentData)
        weapon.NearWallDistance = (weapon.NearWallDistance or 0) - attachmentData.NearWallDistance
    end,

    function(attachmentData, value, varData)
        if value > 0 then
            return varData.greater .. math.abs(math.Round(value * 0.0254, 2)) .. "M", varData.greaterColor
        end

        return varData.lesser .. math.abs(math.Round(value * 0.0254, 2)) .. "M", varData.lesserColor
    end
)

CustomizableWeaponry:registerRecognizedStat(
    "MuzzleVelocityMult",
    "Decreases muzzle velocity",
    "Increases muzzle velocity",
    CustomizableWeaponry.textColors.NEGATIVE,
    CustomizableWeaponry.textColors.POSITIVE
)