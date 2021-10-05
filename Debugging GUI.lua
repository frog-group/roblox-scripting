--GUI for:      Everywhere
--Link:         N/A

--Load Material GUI library
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

--define useful vars
local LocalChar = game.Players.LocalPlayer.Character

--Define funcs
--round number func
local function RoundNumber(Number, Divisor)
Divisor = Divisor or 1
return (math.floor((Number/Divisor)+0.5)*Divisor)
end

--Create GUI
local Ui = Material.Load({
    Title = "Debugging GUI",
    Style = 3,
    SizeX = 400,
    SizeY = 460,
    Theme = "Dark"
})

--add page for main btns
local MainPage = Ui.New({
    Title = "Main"
})

--add buttons to main page
local MakeTeleButton = MainPage.Button({
    Text = "Make TP script for current location.",
    Callback = function()
        print("TelePos(" .. tostring(Vector3.new(RoundNumber(LocalChar.Head.Position.X,1),RoundNumber(LocalChar.Head.Position.Y-1.5,1),RoundNumber(LocalChar.Head.Position.Z,1))) .. ")")
        syn.write_clipboard("TelePos(" .. tostring(Vector3.new(RoundNumber(LocalChar.Head.Position.X,1),RoundNumber(LocalChar.Head.Position.Y-1.5,1),RoundNumber(LocalChar.Head.Position.Z,1))) .. ")")
    end
})

local GetPosButton = MainPage.Button({
    Text = "Get coords for current location.",
    Callback = function()
        print(tostring(Vector3.new(RoundNumber(LocalChar.Head.Position.X,1),RoundNumber(LocalChar.Head.Position.Y-1.5,1),RoundNumber(LocalChar.Head.Position.Z,1))))
        syn.write_clipboard(tostring(Vector3.new(RoundNumber(LocalChar.Head.Position.X,1),RoundNumber(LocalChar.Head.Position.Y-1.5,1),RoundNumber(LocalChar.Head.Position.Z,1))))
    end
})