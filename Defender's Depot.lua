--Game for:     Defender's Depot
--Link:         https://www.roblox.com/games/4806026225/UPDATE-Defenders-Depot

--Load Material GUI library
--local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

--define useful vars
local LocalChar = Game:GetService("Players").LocalPlayer.Character
local LocalWorkspace = Game:GetService("Workspace")
local LocalGamepasses = Game:GetService("Players").LocalPlayer.Info.Gamepasses:GetChildren()
--func that gets basic crate
local function GetBasicCrate()
    local BasicCrate = LocalWorkspace:FindFirstChild("Basic")
    local OldFrame = LocalChar.HumanoidRootPart.CFrame
    LocalChar.HumanoidRootPart.CFrame = BasicCrate.CFrame
    wait()
    LocalChar.HumanoidRootPart.CFrame = OldFrame
end
--func that enables all gamepasses
local function EnableGamepasses()
    for i=1, #LocalGamepasses do
        LocalGamepasses[i].Value = true
    end
end
--main func that repeatedly checks for/collects crates
local function CollectCrates()
    while true do
        if LocalWorkspace:FindFirstChild("Basic") ~= nil then
            GetBasicCrate()
        end
        wait(8)
    end
end

--exec
EnableGamepasses()
CollectCrates()