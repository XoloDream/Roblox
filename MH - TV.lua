repeat task.wait() until game:IsLoaded()

function stringtocolor(str)
    return Color3.fromRGB(table.unpack(str:gsub(" ",""):split(",")))
end

settingsNameT = "Ako Hub/Miners Haven/Theme.Ako"
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

SettingsT = game:service'HttpService':JSONDecode(readfile(settingsNameT))

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

local MainWindow = Library.new("Ako - RoJD", game.CoreGui)

MainWindow:Notify("Info!","This script is auto enabled, just sit back and watch!")	

local Place = game.PlaceId

function StepCompleter()
	task.wait(2)
	Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-817, 43, 1350))
	task.wait(19)
	Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-464, 43, 966))
	task.wait(10)
	Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-505, 43, 495))
	task.wait(13)
	Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-952, 54, -71))
	task.wait(10)
	Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1329, 43, 1106))
	task.wait(13)
	Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1280, 43, 865))
	task.wait(20)
	Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1683, 512, 2687))
	task.wait(5)
	Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1684, 512, 2713))
	task.wait(30)
	Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1684, 513, 2743))
end

StepCompleter()

queue_on_teleport([[local Theme = "Ako Hub/Miners Haven/Theme.Ako"; local SettingsT = game:service"HttpService":JSONDecode(readfile(Theme)); script_key=SettingsT.Key; loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/96f7a598d9f82ed6e28d28c1f716b506.lua"))()]])
