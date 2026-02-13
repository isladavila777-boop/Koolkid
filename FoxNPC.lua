-- FoxNPC.lua
-- Interactive Fox NPC Script

-- Define the FoxNPC class
local FoxNPC = {}
FoxNPC.__index = FoxNPC

function FoxNPC:new(name)
    local instance = setmetatable({}, FoxNPC)
    instance.name = name
    instance.isFollowing = false
    instance.emotes = {
        petting = false,
        playing = false,
        feeding = false,
        sitting = false,
        jumping = false,
        makingSounds = false,
        happiness = 0
    }
    return instance
end

function FoxNPC:followPlayer(player)
    self.isFollowing = true
    -- Code to make the NPC follow the player
end

function FoxNPC:stopFollowing()
    self.isFollowing = false
    -- Code to make the NPC stop following
end

function FoxNPC:playEmote(emote)
    if self.emotes[emote] ~= nil then
        self.emotes[emote] = true
        -- Code for the NPC to perform the emote
    end
end

function FoxNPC:updateHappiness(delta)
    self.emotes.happiness = math.max(0, math.min(100, self.emotes.happiness + delta))
end

return FoxNPC

-- Example usage:
local fox = FoxNPC:new("Foxy")
-- fox:followPlayer(player)
-- fox:playEmote("sitting")
