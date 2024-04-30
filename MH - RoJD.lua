repeat task.wait() until game:IsLoaded()

local webhookcheck = is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
secure_load and "Sentinel" or
KRNL_LOADED and "Krnl" or
SONA_LOADED and "Sona" or
"Kid with shit exploit"
request = http_request or request or HttpPost or syn.request

function stringtocolor(str)
    return Color3.fromRGB(table.unpack(str:gsub(" ",""):split(",")))
end

settingsNameT = "Ironic Hub/Miners Haven/Theme.Ironic"

DefaultSettingsT = {
    ThisIs = "JSON",
	Background = "24, 24, 24", 
	Glow = "255, 255, 254", 
	Accent = "10, 10, 10", 
	LightContrast = "20, 20, 20", 
	DarkContrast = "14, 14, 14",  
	TextColor = "254, 255, 255",
}

SettingsT = nil

--[[
        All Basic Client Locals
--]]

local Players = game:GetService("Players")
local Client = Players.LocalPlayer
local Character = Client.Character
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RS = game:GetService("ReplicatedStorage")
local RunS = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local Mouse = Client:GetMouse()
local match = string.match
local HttpService = game:GetService("HttpService")

local sethidden = sethiddenproperty or set_hidden_property or set_hidden_prop
local gethidden = gethiddenproperty or get_hidden_property or get_hidden_prop
local queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
local PlaceId, JobId = game.PlaceId, game.JobId
local everyClipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)

local hasfilefunctions = isfolder and makefolder and writefile and readfile
if hasfilefunctions then
    if not isfolder("Ironic Hub//Miners Haven") then 
        makefolder("Ironic Hub//Miners Haven")
        makefolder("Ironic Hub//Miners Haven//Schematics") 
    end
    if not pcall(function() readfile(settingsNameT) end) then writefile(settingsNameT, game:service'HttpService':JSONEncode(DefaultSettingsT)) end
end

SettingsT = game:service'HttpService':JSONDecode(readfile(settingsNameT))

function SaveT()
	writefile(settingsNameT,game:service'HttpService':JSONEncode(SettingsT))
end

Krampus = true
if identifyexecutor():match('Krampus') == nil then
    Krampus = false
end
local GC = getconnections or get_signal_cons
if GC then
	for i,v in pairs(GC(Players.LocalPlayer.Idled)) do
		if v["Disable"] then
			v["Disable"](v)
		elseif v["Disconnect"] then
			v["Disconnect"](v)
		end
	end
else
	Players.LocalPlayer.Idled:Connect(function()
		VirtualUser:CaptureController()
		VirtualUser:ClickButton2(Vector2.new())
	end)
end

--[[
    --======{{ MAIN SCRIPT }}======--
]]

_G.numpages = 1

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/VeronicVR/UI-Libraries/master/Veynx%20Edit.lua"))()
--local Library = loadstring(readfile('VenyxUITest.lua'))()

local MainWindow = Library.new("Ironic - RoJD", game.CoreGui)

MainWindow:Notify("Info!","This script it auto enabled, just sit back and watch!")	

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(128, 112, 11)
task.defer(function()
	while true and task.wait(0.1) do
		local SwordHandle 
		if game.Players.LocalPlayer.Character:FindFirstChild("LinkedSword") == nil then
            repeat task.wait() until game.Players.LocalPlayer.Backpack:FindFirstChild("LinkedSword")
			game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.One, false, game)
            task.wait(0.5)
			SwordHandle = game.Players.LocalPlayer.Character.LinkedSword.Handle
		end
    
		for i,v in next, workspace.SpawnedZombies:GetChildren() do
			SwordHandle = game.Players.LocalPlayer.Character.LinkedSword.Handle	
            if v.HumanoidRootPart ~= nil then
			    mouse1press()
			    firetouchinterest(SwordHandle, v.HumanoidRootPart, 0)
		        firetouchinterest(SwordHandle, v.HumanoidRootPart, 1)
            end
		end
	end
end)
