-- AustralianShepherdServiceDog.lua

local Dog = {}
Dog.name = "Luna"

function Dog:init()
    print("Introducing " .. self.name)
end

function Dog:displayName()
    return "My service dog is named " .. self.name
end

function Dog:dialogue()
    return self.name .. " says: I'm here to help!"
end

function Dog:help()
    return self.name .. " is always ready to assist you!"
end

return Dog