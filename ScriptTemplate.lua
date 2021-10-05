--GUI for:      Roblox Place
--Link:         https://www.roblox.com/games/xx/xx

--Load Material GUI library
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

--define useful vars
local LocalChar = game.Players.LocalPlayer.Character

--Create GUI
local Ui = Material.Load({
    Title = "Roblox Place",
    Style = 3,
    SizeX = 400,
    SizeY = 460,
    Theme = "Dark"
})

--add page for main btns
local MainPage = Ui.New({
    Title = "Main"
})