local UserInputService = cloneref(game:GetService("UserInputService"))
local IsOnMobile = table.find({Enum.Platform.IOS, Enum.Platform.Android}, UserInputService:GetPlatform())

if not IsOnMobile then 
    if game.PlaceId == 258258996 then -- Miner's Haven
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XoloDream/Roblox/main/MH%20-%20Secret.lua"))()
    elseif game.PlaceId == 4780479031 then -- Revenge of John Doe
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XoloDream/Roblox/main/MH%20-%20RoJD.lua"))()
    elseif game.PlaceId == 4464946645 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XoloDream/Roblox/main/MH%20-%20TV.lua"))()
    end
else 
    if game.PlaceId == 258258996 then -- Miner's Haven
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XoloDream/Roblox/main/MH%20-%20Secret%20Mob.lua"))()
    elseif game.PlaceId == 4780479031 then -- Revenge of John Doe
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XoloDream/Roblox/main/MH%20-%20RoJD.lua"))()
    elseif game.PlaceId == 4464946645 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XoloDream/Roblox/main/MH%20-%20TV.lua"))()
    end
end
