if getgenv().IronicMHScript then
	print("SCRIPT ALREADY LOADED | wHy YoU eXeCuTe AgAiN?!")
    return
end
getgenv().IronicMHScript = true
repeat task.wait() until game:IsLoaded()
repeat task.wait() until game:GetService("Players").LocalPlayer:FindFirstChild("BaseDataLoaded")
task.wait(2)

getgenv().IroDebug = {
	["Rewrite Settings"] = true,
	["Dropped Dubug"] = false,
	["Upgrade Dubug"] = false,
	["Reset Dubug"] = false,
    ["Ore Sell"] = false
}
getgenv().ResetterTable = {
	"Tesla Resetter",
	"Tesla Refuter",
	"Black Dwarf",
	"Void Star",
	"The Ultimate Sacrifice",
	"The Final Upgrader",
	"Daestrophe",
}
getgenv().Boost = 1
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
settingsNameS = "Ironic Hub/Miners Haven/Options.Ironic"

DefaultSettingsT = {
    ThisIs = "JSON",
	Background = "24, 24, 24", 
	Glow = "255, 255, 254", 
	Accent = "10, 10, 10", 
	LightContrast = "20, 20, 20", 
	DarkContrast = "14, 14, 14",  
	TextColor = "254, 255, 255",
	Key = ""
}
DefaultSettingsT.Key = getgenv().Key
DefaultSettingsS = {
    ["ScriptVersion"] = "1.1.1b",
    ["Dataslot"] = "1",
	["MenuHotkey"] = "LeftAlt",

	["Autofarm"] = {
		["Auto Rebirth"] = {
			["Layout 1"] = "Layout 1",
			["Withdrawl Between"] = false,
			["Minimum Split To Rebirth"] = 0,
			["Layout 2"] = "Not Splitting",
			["Minimum Time To Rebirth"] = 0,
			["Ore Boost"] = false,
			["Auto Rebirth"] = false,
			["Auto Superstitious"] = {
				["Enabled"] = false,
				["Item"] = "None",
			},
		},
		["Wait To Skip"] = {
			["SkipAmount"] = 0,
		},
		["Auto Pulsar"] = {
			["Sec After Layout"] = 1,
			["Enable"] = false,
		},
		["Auto Remote"] = {
			["Delay"] = 0,
			["Enable"] = false,
		},
		["Auto Excavate"] = {
			["Enable"] = false,
		},
		["Stop Rebirthing"] = {
			["Life"] = {
				["Stop At"] = 9000000,
				["Stop"] = false
			},
			["Splitstream"] = "The Great Parasite",
		},
		["Crates"] = {
			["Autofarm Crates"] = false,
			["Open Boxes"] = {
				["Use Clovers"] = false,
				["Boxes"] = {
					["Birthday"] = false,
					["Unreal"] = false,
					["Twitch"] = false,
					["Spectral"] = false,
					["Regular"] = false,
					["Red-Banded"] = false,
					["Pumpkin"] = false,
					["Magnificent"] = false,
					["Luxury"] = false,
					["Inferno"] = false,
					["Heavenly"] = false,
					["Festive"] = false,
					["Easter"] = false,
					["Cake Raffle"] = false,
				}
			}
		},
		["RP Farm"] = {
			["Farm Enabled"] = false,
			["Furnace Name"] = "Type Here",
		},
		["Auto Sacrifice"] = {
			["Enabled"] = false,
			["Ore Boost"] = false,
			["Excavate"] = true,
		},
		["Auto Setup"] = false
	},
	["Base Tweaks"] = {
		["Upgrader Size"] = {
			["Upgraders"] = {
				["All"] = false,
				["Upgrader 1"] = "Type Here",
				["Upgrader 2"] = "Type Here",
			},
			["Size"] = 1,
			["Change Size"] = false,
		},
		["LockOreRot"] = {
			["Lock Rotation"] = false,
			["X Pos"] = 1,
			["Y Pos"] = 0,
		},
		["Conveyor Speed"] = 1,
		["OreTracker"] = false,
		["Heart of Void"] = {
			["Upgrader Name"] = "Type Here",
			["Activate Teleport"] = false,
		},
	},
	["Webhooks"] = {
		["Links"] = {
			["Rebirth Link"] = "https://discord.com/",
			["Shiny Link"] = "https://discord.com/",
			["Decimal Link"] = "https://discord.com/",
		},
		["UIDs"] = {
			["Ping On Shiny UID"] = "38957239805792865",
			["Ping On Decimal UID"] = "38957239805792865",
		},
		["Enabled"] = {
			["Rebirth"] = false,
			["Shiny"] = false,
			["Decimal"] = false,
		},
		["Take Screenshots"] = false,
	},
	["Leaderboard"] = {	},
	["Venders"] = {	},
	["Layouts"] = {
		["Save External Layout Custom Name"] = "",
		["Select External Layout"] = {
			["All External Layouts"] = {},
			["Selected External Layout"] = "",
		},
		["Layout Stealer"] = {
			["Player To Copy"] = {
				["Players"] = {},
				["Selected"] = "",
			},
			["Layout To Copy"] = {
				["Layouts"] = {"Current Base", "Layout 1", "Layout 2", "Layout 3", "Layout 4"},
				["Selected"] = "",
			},
		},
		["Database Layouts"] = {
			["Unique ID"] = "Paste Here",
			["Show Preview"] = false,
		},
		["Missing"] = {
			["Selected Layout"] = "",
			["Unique ID"] = "",
		},
	},
	["Misc"] = {
		["Time Set"] = {
			["Options"] = {"Normal Cycle","Day","Night"},
			["Selected"] = "Normal Cycle",
		},
		["Explosions"] = false,
		["UpgradeChecker"] = false,
		["Ore ESP"] = false,
	},
	["Event"] = {
		["Easter"] = {
			["Easter Egg Farm"] = false,
			["Redeem Eggs"] = false,
		},
	},
	["Movement"] = {
		["WalkSpeed"] = 16,
		["JumpHeight"] = 50,
	},
	["Universe TP"] = {	},
	["Spoofer"] = {
		["Names"] = false
	},
	["Item Info"] = {

	},
	["Settings"] = {

	},

	["Player List"] = {},
	["Base Replicate Player"] = "",
	["Base Save Player"] = "",
}

SettingsT = nil
SettingsS = nil

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
local UIObject = Client.PlayerGui:WaitForChild("GUI")
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

local tweentime = 0.5
local checkPlayer
local MoneyLib = require(RS.MoneyLib)
local Tycoon = Client.PlayerTycoon.Value 
local PlaceRemote = game.ReplicatedStorage.PlaceItem 
local BuyItem = game.ReplicatedStorage.BuyItem
local PlrTycoon = workspace.Tycoons[tostring(Tycoon)]
local PlrTycoonChildren = PlrTycoon:GetChildren()
local PlrDroppedParts = workspace.DroppedParts[tostring(Tycoon)]
local BoxesLocation = workspace.Boxes
local FacBase 
local TycoonList = game.Workspace.Tycoons:GetChildren() 
for _,v in next, TycoonList do
	if v.Owner.Value == game.Players.LocalPlayer.Name then
		FacBase = v.Base
	end
end
local guiname = "Ironic's Miner's Haven Ghost Client - v"..DefaultSettingsS.ScriptVersion
local wikiguiname = "In-game Wiki"
local salvageguiname = "Auto Salvage"
local boxopenerguiname = "Ironic's Box Opener"

-- In-game messages
local SoundList = {'Slide', 'Click', 'Hover', 'Error', 'Enchant', 'Harp', 'Kill', 'Placement', 'Rebirth', 'Purchase', 'Move', 'Withdraw', 'Tick', 'UnlockGift', 'OpenedGift', 'Message', 'Favorite', 'Unboxxed', 'UnboxxedRare', 'UnboxxedExotic', 'Lock', 'Laugh', 'WolfHowl', 'TurnOn', 'TurnOff', 'Obtained', 'RebornBoom', 'Sacrifice', 'PulseOn', 'PulseOff', 'TickSoft', 'Swoosh', 'Money', 'SwooshFast', 'ShoutSend', 'Rooster', 'OpenMenu', 'TierUnlock', 'MaskedMan', 'Shimmer', 'NewItem', 'Badge', 'Sound', 'Ding', 'Sound', 'Digital', 'RareReborn', 'Objective'} 
function tween(Object, Properties, Value, Time, Style, Direction)
    local TweenServ = game:GetService("TweenService");
	local Info = nil;
	Style = Style or Enum.EasingStyle.Quad;
	Direction = Direction or Enum.EasingDirection.Out;
	Time = Time and 0.5;
	local Goal = {};
	local ValTable = type(Value) == "table";
	for i, v in pairs(Properties) do
		Goal[v] = ValTable and Value[i] or Value;
	end;
	Info = TweenInfo.new(Time, Style, Direction);
	local v7 = TweenServ:Create(Object, Info, Goal);
	v7:Play();
end;
function MessagePrompt(Message, Color, BGColor, Sound, TimeMulti, Volume)
	local NotificationLoc = game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.GUI.Notifications

	TimeMulti = TimeMulti and 1;
	Sound = Sound or "Message";
	Color = Color or Color3.fromRGB(255, 255, 255);
	BGColor = BGColor or Color3.fromRGB(0, 0, 0);

	local SoundCopy
	Sound = Sound or "Message"

	if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.GUI.Menu.Menu.Sounds:FindFirstChild(Sound) then
        SoundCopy = game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.GUI.Menu.Menu.Sounds:FindFirstChild(Sound)
        SoundCopy.Volume = Volume or 2
		SoundCopy:Play()
    else
        if game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.GUI.Menu.Menu.Sounds:FindFirstChild("SoundRep") then
            local Rep = game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.GUI.Menu.Menu.Sounds.SoundRep
            Rep.Volume = Volume or 2
            Rep.SoundId = "rbxassetid://"..Sound
            Rep.Playing = true
        else
            SoundCopy = game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.GUI.Menu.Menu.Sounds.Message:Clone()
            SoundCopy.Parent = game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.GUI.Menu.Menu.Sounds
            SoundCopy.Name = "SoundRep"
            SoundCopy.Volume = Volume or 2
            SoundCopy.SoundId = "rbxassetid://"..Sound
            SoundCopy.Playing = true
        end
	end		

	local NotifTemp = NotificationLoc.MessageTemplate:Clone();
	NotifTemp.Label.Text = Message;
	NotifTemp.BackgroundTransparency = 1;
	NotifTemp.Exclaim.ImageTransparency = 1;
	NotifTemp.Label.TextTransparency = 1;
	NotifTemp.Visible = true;
	NotifTemp.Parent = NotificationLoc;

	tween(NotifTemp, {"BackgroundTransparency"},0,0.5)
	tween(NotifTemp.Exclaim, {"ImageTransparency"},{0,0},0.5)	
	tween(NotifTemp.Label, {"TextTransparency","TextStrokeTransparency"},{0,0},0.5)	

	wait((3 + string.len(Message) / 25) * TimeMulti);

	tween(NotifTemp, {"BackgroundTransparency"},1,0.5)
	tween(NotifTemp.Exclaim, {"ImageTransparency"},1,0.5)	
	tween(NotifTemp.Label, {"TextTransparency","TextStrokeTransparency"},1,0.5)	
	wait(0.5)
	NotifTemp:Destroy();
end;
--[[ Example: 
    	MessagePrompt("Ironica's Miner's Haven All-In-One GUI Loaded",Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
	    MessagePrompt("Ironica's Miner's Haven All-In-One GUI Loaded",Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),"UnboxxedExotic",10,2)
]]

local hasfilefunctions = isfolder and makefolder and writefile and readfile
if hasfilefunctions then
    if not isfolder("Ironic Hub//Miners Haven") then 
        makefolder("Ironic Hub//Miners Haven")
        makefolder("Ironic Hub//Miners Haven//Schematics") 
    end
    if getgenv().IroDebug["Rewrite Settings"] or not pcall(function() readfile(settingsNameT) end) then writefile(settingsNameT, game:service'HttpService':JSONEncode(DefaultSettingsT)) end
	if getgenv().IroDebug["Rewrite Settings"] or not pcall(function() readfile(settingsNameS) end) then writefile(settingsNameS, game:service'HttpService':JSONEncode(DefaultSettingsS)) end
end

SettingsT = game:service'HttpService':JSONDecode(readfile(settingsNameT))
SettingsS = game:service'HttpService':JSONDecode(readfile(settingsNameS))

function SaveT()
	writefile(settingsNameT,game:service'HttpService':JSONEncode(SettingsT))
end
function SaveS()
	writefile(settingsNameS,game:service'HttpService':JSONEncode(SettingsS))
end

--[[
        All Basic Functions
--]]
function WaitForChild(Parent, ChildName)
	if Parent:FindFirstChild(ChildName) then
		return Parent[ChildName]
	else
		repeat
			wait()
		until Parent:FindFirstChild(ChildName) or not Parent.Parent
		return Parent:FindFirstChild(ChildName)
	end
end

function Tp(totouch)
    firetouchinterest(hrp, totouch, 0)
    wait(.1)
    firetouchinterest(hrp, totouch, 1)
end

local hookmetamethod = hookmetamethod or function(t, metamethod, hook)
    local mt = getrawMT(t)
    setreadonly(mt, false)

    local oldfunc = mt[metamethod]
    mt[metamethod] = hook

    setreadonly(mt, true)
    return oldfunc
end

function getCurrentTime()
	return os.time()
end

-- Main function to check if it's time to perform an action
function checkTime(lastRebirthTime)
    local currentTime = getCurrentTime()
    local timeDifference = currentTime - lastRebirthTime

	if SettingsS["Autofarm"]["Auto Rebirth"]["Minimum Time To Rebirth"] == nil then
		GoRebirth = true
	elseif timeDifference >= tonumber(SettingsS["Autofarm"]["Auto Rebirth"]["Minimum Time To Rebirth"]) then
		GoRebirth = true
    else
        --print("Not yet time to rebirth. Time remaining:", SettingsS["Autofarm"]["Auto Rebirth"]["Minimum Time To Rebirth"] - timeDifference, "seconds")
		GoRebirth = false
    end

    -- Return the updated last rebirth time
    return GoRebirth
end
local StartOSTime = getCurrentTime() -- Keep for info tab
local RebirthUpdateTimer = getCurrentTime()
local SplitTimer = 0

function WaitForDescendant(parent, descendant_name)
    local already = parent:FindFirstChild(descendant_name, true)
    if already then
        return already
    end

    local thread = coroutine.running()
    local con; con = parent.DescendantAdded:Connect(function(c)
        if c.Name == descendant_name then
            con:Disconnect()
            coroutine.resume(thread, c)
        end
    end)
    
    return coroutine.yield()
end

function WaitForChildWhichIsA(parent, child_class)
    local already = parent:FindFirstChildWhichIsA(child_class)
    if already then
        return already
    end

    local thread = coroutine.running()
    local con; con = parent.ChildAdded:Connect(function(c)
        if c:IsA(child_class) then
            con:Disconnect()
            coroutine.resume(thread, c)
        end
    end)
    
    return coroutine.yield()
end

--[[
        Game Specific Functions
]]
checkPlayer = function()
	if Client.Character == nil then	repeat wait() until Client.Character ~= nil and Client.Character.Parent end
	character = Client.Character
	HRP = WaitForChild(character, "HumanoidRootPart")
	MoneyMirror = WaitForChild(game:GetService("ReplicatedStorage").MoneyMirror, Client.Name)
	if HRP and MoneyMirror then
		return character, HRP, MoneyMirror
	else
		return checkPlayer(wait())
	end
end
function sqrtfac(RB)
	return math.floor(RB ^ 0.5714285714285714 * 38.48334897033503 / 1) * 0.00023999999999999998;
end;
function RebornPrice(RB)
	local n = RB;
	if not n then
		return;
	end;
	local RebirthValue = n;
	local eValue = 2.5E+19;
    if Client:FindFirstChild("ThirdSacrifice") then
        eValue = 2.5E+40
    elseif RebirthValue < 40 then
		return eValue * (RebirthValue + 1);
	end;
	local v6 = RebirthValue <= 5000 and RebirthValue or 5000;
	if n >= 50000 then
		v6 = v6 + math.floor(n / 10000) * 100 / 2;
	end;
	local v7 = 0;
	if RebirthValue > 5000 then
		v7 = sqrtfac(RebirthValue) - sqrtfac(5000);
	end;
	local v8 = (eValue * ((math.floor(RebirthValue / 5) * 2 + 1) * (1 + math.floor(RebirthValue / 25) * 100) * (1 + math.floor(RebirthValue / 500) * 1000))) ^ (1 + math.floor(v6 / 1) * 0.00023999999999999998 + v7);
	return v8 <= 1E+241 and v8 or 1E+241;
end;
function LifeSkips(RB, Money)
	for i = 20, 1, -1 do
		if RB * 10 ^ (3 * i) < Money then
			return i;
		end;
	end;
	return 0;
end;
function CalculateNeededForSkip(RBPrice,Value)
	local AmountNeeded = RBPrice * 10 ^ (3 * Value)
	return AmountNeeded;
end;
function convert(csv)
    local list = {}
    for value in (csv .. ","):gmatch("(%S+)%W*,") do table.insert(list,tonumber(value)) end
    return unpack(list)
end;
function getItemCost(itemID)
	for i,v in next, game.ReplicatedStorage.Items:GetChildren() do
		if v:FindFirstChild("ItemId") and v:FindFirstChild("Cost") and v.ItemId.Value == itemID then
			return v.Cost.Value
		end
	end
end
function validInInv()
	local items = {}
	for i,v in next, Client.PlayerGui.GUI.Inventory.Frame.Items:GetChildren() do
		if v:IsA("TextButton") and v.Visible == true then
			table.insert(items, v.ItemId.Value)
		end
	end
	return items
end
function itemhas(ID)
	local hasamount
	RS.FetchInventory:InvokeServer()
	for i,v in next, Client.PlayerGui.GUI.Inventory.Frame.Items:GetChildren() do
		if v:IsA("TextButton") and v.Visible == true then
			if v.ItemId.Value == ID then 
				-- string.sub(text, 2) -- removes the first digit
				hasamount = string.sub(v.Amount.Text, 2)
			end
		end
	end
	return hasamount
end
function getItemName(itemID)
	for i,v in next, game.ReplicatedStorage.Items:GetChildren() do
		if v:FindFirstChild("ItemId") and v.ItemId.Value == itemID then
			return v.Name
		end
	end
end
function validInInv_ID()
	local items = {}
	for i,v in next, Client.PlayerGui.GUI.Inventory.Frame.Items:GetChildren() do
		if v:IsA("TextButton") and v.Visible == true then
			local ID = v.ItemId.Value
			table.insert(items, ID)
		end
	end
	return items
end
function validInInv_Name()
	local items = {}
	for i,v in next, Client.PlayerGui.GUI.Inventory.Frame.Items:GetChildren() do
		if v:IsA("TextButton") and v.Visible == true then
			table.insert(items, v.Name)
		end
	end
	return items
end
function GrabNeededitems(layout)
	local NeededItems = {}
	local CheckLayouts = game.ReplicatedStorage.Layouts:InvokeServer("Check")
	local Name, Cost, Amount, Id
	for i,v in pairs(CheckLayouts) do --Get Layout Tables [Layout1,Layout2,Layout3]
		if i == layout then
			if type(v) == "table" then
				for a,b in next, v do -- Get All item tables
					for c,d in next, b do -- Get Item names, IDs, and Amounts
						if c == "ItemName" then
							Name = d
						end
						if c == "Id" then
							Id = d
							Cost = getItemCost(d)
						end
						if c == "Amount" then
							Amount = d
						end
					end
					local NeededTable = { -- Add items into one table
						CostPerUnit = Cost;
						Name = Name;
						Amount = Amount;
					}
					table.insert(NeededItems, NeededTable)
				end
				return NeededItems
			end
			return nil
		end
	end
end
function getItemCost(itemID)
	for i,v in next, game.ReplicatedStorage.Items:GetChildren() do
		if v:FindFirstChild("ItemId") and v:FindFirstChild("Cost") and v.ItemId.Value == itemID then
			return v.Cost.Value
		end
	end
end
function scale_value(value)
    local min_input = 1
    local max_input = 250

    local min_output = 0.004975124378109453
    local max_output = 1

    local scaled_value = ((value - min_input) / (max_input - min_input)) * (max_output - min_output) + min_output

    return scaled_value
end
local chromaColor
local rainbowTime = 2
spawn(function()
	while wait() do
		chromaColor = Color3.fromHSV(tick() % rainbowTime / rainbowTime, 1, 1)
	end
end)

--[[ 
	Ore Boost Functions 
]]--

local InateValue = 0
function Lock_Ore(Ore)
    local InvisPart_Drop
    if workspace.FakeBases[tostring(Tycoon)]:FindFirstChild(Ore.Name.." Anchor") == nil then
        InateValue = InateValue + 1
        InvisPart_Drop = Instance.new("Part")
        InvisPart_Drop.Name = Ore.Name.." Anchor_"..tostring(InateValue)
        InvisPart_Drop.Position = Ore.Position
        InvisPart_Drop.Size = Vector3.new(1, 1, 1)
        InvisPart_Drop.Transparency = 1
        InvisPart_Drop.CanCollide = false 
        InvisPart_Drop.Anchored = true
        InvisPart_Drop.Parent = workspace.FakeBases[tostring(Tycoon)]
    end

    local AlignPos
    local AlignOrient
    local UpgraderAttach

    local OreAttach
    
    AlignPos = Instance.new("AlignPosition")
    AlignPos.Parent = InvisPart_Drop
    AlignPos.ApplyAtCenterOfMass = true
    AlignPos.ReactionForceEnabled = true
    AlignPos.MaxForce = 1e99
    AlignPos.Responsiveness = 200

	AlignOrient = Instance.new("AlignOrientation")
	AlignOrient.Parent = InvisPart_Drop
	AlignOrient.MaxTorque = 1e99
	AlignOrient.Responsiveness = 200

	UpgraderAttach = Instance.new("Attachment")
	UpgraderAttach.Parent = InvisPart_Drop

	OreAttach = Instance.new("Attachment")
	OreAttach.Parent = Ore

	AlignPos.Attachment0 = OreAttach
	AlignOrient.Attachment0 = OreAttach

	AlignPos.Attachment1 = UpgraderAttach
	AlignOrient.Attachment1 = UpgraderAttach
    task.wait()
end

function Upgrade_Ore(Ore_to_Upgrade, Times)
	if Times == nil then
		for Int_1a,Upgrader_List_1a in next, PlrTycoon:GetChildren() do -- Upgrader_List gives Upgrader Model Name
    	    if table.find(getgenv().ResetterTable, Upgrader_List_1a.Name) then 
    	        if getgenv().IroDebug["Upgrade Dubug"] then
    	            print("This is a Resetter. Skipping as this is just an Upgrade Function")
    	        end
    	    else 
    	        if Upgrader_List_1a:IsA("Model") and Upgrader_List_1a.Model:FindFirstChild("Upgrade") then
    	            if getgenv().IroDebug["Upgrade Dubug"] then
    	                warn("Upgrading Ore through ".. Upgrader_List_1a.Name)
    	            end
				
    	            firetouchtransmitter(Ore_to_Upgrade, Upgrader_List_1a.Model.Upgrade, 0)
    	            firetouchtransmitter(Ore_to_Upgrade, Upgrader_List_1a.Model.Upgrade, 1)
				
    	        elseif Upgrader_List_1a:IsA("Model") and Upgrader_List_1a.Model:FindFirstChild("PortalPart") then
    	            if getgenv().IroDebug["Upgrade Dubug"] then
    	                warn("Upgrading Ore through Portal of ".. Upgrader_List_1a.Name)
    	            end

    	            firetouchtransmitter(Ore_to_Upgrade, Upgrader_List_1a.Model.PortalPart, 0)
    	            firetouchtransmitter(Ore_to_Upgrade, Upgrader_List_1a.Model.PortalPart, 1)
    	        end
    	    end
    	end
    	task.wait()
	else
		for i = 1, Times do task.wait(0.2)
			for Int_1a,Upgrader_List_1a in next, PlrTycoon:GetChildren() do -- Upgrader_List gives Upgrader Model Name
				if table.find(getgenv().ResetterTable, Upgrader_List_1a.Name) then 
					if getgenv().IroDebug["Upgrade Dubug"] then
						print("This is a Resetter. Skipping as this is just an Upgrade Function")
					end
				else 
					if Upgrader_List_1a:IsA("Model") and Upgrader_List_1a.Model:FindFirstChild("Upgrade") then
						if getgenv().IroDebug["Upgrade Dubug"] then
							warn("Upgrading Ore through ".. Upgrader_List_1a.Name)
						end
					
						firetouchtransmitter(Ore_to_Upgrade, Upgrader_List_1a.Model.Upgrade, 0)
						firetouchtransmitter(Ore_to_Upgrade, Upgrader_List_1a.Model.Upgrade, 1)
					
					elseif Upgrader_List_1a:IsA("Model") and Upgrader_List_1a.Model:FindFirstChild("PortalPart") then
						if getgenv().IroDebug["Upgrade Dubug"] then
							warn("Upgrading Ore through Portal of ".. Upgrader_List_1a.Name)
						end
	
						firetouchtransmitter(Ore_to_Upgrade, Upgrader_List_1a.Model.PortalPart, 0)
						firetouchtransmitter(Ore_to_Upgrade, Upgrader_List_1a.Model.PortalPart, 1)
					end
				end
			end
		end
	end
end

function Reset_Ore(Ore_To_Reset)
    for Int_1b,Upgrader_List_1b in next, PlrTycoon:GetChildren() do -- Upgrader_List_1b gives Upgrader Model Name
        if table.find(getgenv().ResetterTable, Upgrader_List_1b.Name) then 
            if getgenv().IroDebug["Reset Dubug"] then
                print("Found Resetter named "..Upgrader_List_1b.Name.." in both Tycoon and the Table, Proceeding to reset")
            end
            firetouchtransmitter(Ore_To_Reset, Upgrader_List_1b.Model.Upgrade, 0)
	    	firetouchtransmitter(Ore_To_Reset, Upgrader_List_1b.Model.Upgrade, 1)
            for Int_1c, ResetUses in next, Ore_To_Reset["Resetter Uses"]:GetChildren() do
                if ResetUses.Name == Upgrader_List_1b.Name then
                    Ore_To_Reset["Resetter Uses"][Upgrader_List_1b.Name].Value = Ore_To_Reset["Resetter Uses"][Upgrader_List_1b.Name].Value + 1
                end
            end
            task.wait()
            Upgrade_Ore(Ore_To_Reset)
        else
            if getgenv().IroDebug["Reset Dubug"] then
                print("This is a Upgrader. Skipping as this is just an Reset Function")
            end
        end
    end
end

function Sell_Ore(Ore_To_Sell)
    for Int_1c,Upgrader_List_1c in next, PlrTycoon:GetChildren() do -- Upgrader_List gives Upgrader Model Name
        if Upgrader_List_1c:IsA("Model") and Upgrader_List_1c.Model:FindFirstChild("Lava") then
            if not (Upgrader_List_1c.Name:find("Sender") or Upgrader_List_1c.Name:find("Receiver") or Upgrader_List_1c.Name:find("Skillet")) then
                --pcall(function()
					if Ore_To_Sell.Attachment == nil then
						warn("YOUR SETUP NO WORKY")
					else
                   		Ore_To_Sell.Attachment:Destroy()
					end
                --end)
                    Ore_To_Sell.Position = Upgrader_List_1c.Model.Lava.Position + Vector3.new(0,1,0)
                if getgenv().IroDebug["Ore Sell"] then
                    warn("[ " .. Ore_To_Sell.Name .. " ] has been sold at [ " .. Upgrader_List_1c.Name .. " ] furnace.")
                end	
                task.wait()
            end
        end    
    end
end

function isMovingSlow(part, thresholdVelocity)
    local velocity = part.Velocity
    local speed = velocity.magnitude -- Calculate the magnitude of the velocity vector
    
    return speed < thresholdVelocity
end

function teleportToTarget(PartToMoveTo)
	local targetPosition = PartToMoveTo.Position + Vector3.new(0, Client.Character.HumanoidRootPart.Size.Y / 2, 0)
    Client.Character.HumanoidRootPart.CFrame = CFrame.new(targetPosition) + Vector3.new(0,3,0)
end

function FarmCrates(Box)
	local Velocity_Variable = nil

	repeat task.wait() 
		if isMovingSlow(Box, 2) then
			Velocity_Variable = true
		else
			Velocity_Variable = false
		end
	until Velocity_Variable == true
	
	teleportToTarget(Box)
	task.wait(0.3)
	--Client.Character[PartToMove].CFrame = Box.CFrame + Vector3.new(0,5,0)
	firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, Box, 0)
	firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, Box, 1)
	task.wait(0.3)

	teleportToTarget(PlrTycoon.Base)
end

function transitionTo(from, onto, ontosize, glowthing) 
    from.Active = false
    onto.Active = true
    onto.AnchorPoint = Vector2.new(0,0)
    displacementThingy = 0
    screendisp = -38
    if onto.Name == "Upgraders" then
        print("here")
        displacementThingy = 0
        screendisp = 0
    end
    onto.Position = from.Position - UDim2.new(0,0,0,displacementThingy)
    --screenframe.Visible = true
    --screenframe.Position = from.Position - UDim2.new(0,0,0,screendisp)
    _G.followdragcrates = from:GetPropertyChangedSignal("Position"):Connect(function(value)
        onto.AnchorPoint = Vector2.new(0,0)
        onto.Position = from.Position - UDim2.new(0,0,0,displacementThingy)
        --screenframe.Position = from.Position - UDim2.new(0,0,0,screendisp)
    end)
    transparenciesSec = {}
    for i,v in pairs(onto:GetDescendants()) do
        if v:IsA("ImageLabel") then
            table.insert(transparenciesSec, v.ImageTransparency)
            v.ImageTransparency = 1
            table.insert(transparenciesSec, v.BackgroundTransparency)
            v.BackgroundTransparency = 1
        elseif v:IsA("TextLabel") then
            table.insert(transparenciesSec, v.TextTransparency)
            v.TextTransparency = 1
            table.insert(transparenciesSec, v.BackgroundTransparency)
            v.BackgroundTransparency = 1
        elseif v:IsA("ScrollingFrame") then
            table.insert(transparenciesSec, v.ScrollBarImageTransparency)
            v.ScrollBarImageTransparency = 1
            table.insert(transparenciesSec, v.BackgroundTransparency)
            v.BackgroundTransparency = 1
        elseif v:IsA("TextBox") then
            table.insert(transparenciesSec, v.TextTransparency)
            v.TextTransparency = 1
            table.insert(transparenciesSec, v.BackgroundTransparency)
            v.BackgroundTransparency = 1
        elseif v:IsA("ImageButton") then
            table.insert(transparenciesSec, v.ImageTransparency)
            v.ImageTransparency = 1
            table.insert(transparenciesSec, v.BackgroundTransparency)
            v.BackgroundTransparency = 1
        elseif v:IsA("TextButton") then
            table.insert(transparenciesSec, v.TextTransparency)
            v.TextTransparency = 1
            table.insert(transparenciesSec, v.BackgroundTransparency)
            v.BackgroundTransparency = 1
        elseif v:IsA("Frame") then
            table.insert(transparenciesSec, v.BackgroundTransparency)
            v.BackgroundTransparency = 1
        end
    end
    wait(tweentime)
    transparenciesmain = {}
    for i,v in pairs(from:GetDescendants()) do
    spawn(function()
        if v:IsA("ImageLabel") then
            table.insert(transparenciesmain, v.ImageTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = 1})
            tweenprop:Play()
            table.insert(transparenciesmain, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
            tweenprop:Play()
        elseif v:IsA("TextLabel") then
            table.insert(transparenciesmain, v.TextTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = 1})
            tweenprop:Play()
            table.insert(transparenciesmain, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
            tweenprop:Play()
        elseif v:IsA("ScrollingFrame") then
            table.insert(transparenciesmain, v.ScrollBarImageTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ScrollBarImageTransparency = 1})
            tweenprop:Play()
            table.insert(transparenciesmain, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
            tweenprop:Play()
        elseif v:IsA("TextBox") then
            table.insert(transparenciesmain, v.TextTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = 1})
            tweenprop:Play()
            table.insert(transparenciesmain, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
            tweenprop:Play()
        elseif v:IsA("ImageButton") then
            table.insert(transparenciesmain, v.ImageTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = 1})
            tweenprop:Play()
            table.insert(transparenciesmain, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
            tweenprop:Play()
        elseif v:IsA("TextButton") then
            table.insert(transparenciesmain, v.TextTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = 1})
            tweenprop:Play()
            table.insert(transparenciesmain, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
            tweenprop:Play()
        elseif v:IsA("Frame") then
            table.insert(transparenciesmain, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
            tweenprop:Play()
        end
    end)
    end
    local tweenprop = TweenService:Create(glowthing, TweenInfo.new(tweentime), {ImageTransparency = 0})
    tweenprop:Play()
    wait(tweentime)
    if from ~= game.CoreGui[guiname].Main then
    	transcount = 0
    	for i,v in pairs(from:GetDescendants()) do
    	    if v:IsA("ImageLabel") then
    	        transcount = transcount + 1
    	        v.ImageTransparency = transparenciesmain[transcount]
    	        transcount = transcount + 1
    	        v.BackgroundTransparency = transparenciesmain[transcount]
    	    elseif v:IsA("TextLabel") then
    	        transcount = transcount + 1
    	        v.TextTransparency = transparenciesmain[transcount]
    	        transcount = transcount + 1
    	        v.BackgroundTransparency = transparenciesmain[transcount]
    	    elseif v:IsA("ScrollingFrame") then
    	        transcount = transcount + 1
    	        v.ScrollBarImageTransparency = transparenciesmain[transcount]
    	        transcount = transcount + 1
    	        v.BackgroundTransparency = transparenciesmain[transcount]
    	    elseif v:IsA("TextBox") then
    	        transcount = transcount + 1
    	        v.TextTransparency = transparenciesmain[transcount]
    	        transcount = transcount + 1
    	        v.BackgroundTransparency = transparenciesmain[transcount]
    	    elseif v:IsA("ImageButton") then
    	        transcount = transcount + 1
    	        v.ImageTransparency = transparenciesmain[transcount]
    	        transcount = transcount + 1
    	        v.BackgroundTransparency = transparenciesmain[transcount]
    	    elseif v:IsA("TextButton") then
    	        transcount = transcount + 1
    	        v.TextTransparency = transparenciesmain[transcount]
    	        transcount = transcount + 1
    	        v.BackgroundTransparency = transparenciesmain[transcount]
    	    elseif v:IsA("Frame") then
    	        transcount = transcount + 1
    	        v.BackgroundTransparency = transparenciesmain[transcount]
    	    end
    	end
    end
    mainGuiLastPos = from.Position
    _G.followdragcrates:Disconnect()
    --screenframe.Visible = false
    if ontosize ~= nil then
        local tweensize = TweenService:Create(from, TweenInfo.new(tweentime), {Size = ontosize})
        tweensize:Play()
		local tweensize2 = TweenService:Create(onto, TweenInfo.new(tweentime), {Size = ontosize})
		tweensize2:Play()
        wait(tweentime)
    end
	from.Visible = false
	onto.Visible = true
    transcount = 0
    for i,v in pairs(onto:GetDescendants()) do
        spawn(function()
        if v:IsA("ImageLabel") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = transparenciesSec[transcount]}); tweenprop:Play()
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
        elseif v:IsA("TextLabel") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = transparenciesSec[transcount]}); tweenprop:Play()
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
        elseif v:IsA("ScrollingFrame") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ScrollBarImageTransparency = transparenciesSec[transcount]}); tweenprop:Play()
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
        elseif v:IsA("TextBox") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = transparenciesSec[transcount]}); tweenprop:Play()
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
        elseif v:IsA("ImageButton") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = transparenciesSec[transcount]}); tweenprop:Play()
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
        elseif v:IsA("TextButton") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = transparenciesSec[transcount]}); tweenprop:Play()
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
        elseif v:IsA("Frame") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
        end
    end)
    end
end
function transitionBack(from, backto, backtosize, glowthing)
    from.Active = false
    backto.Active = true
    backto.AnchorPoint = Vector2.new(0,0)
    backto.Position = from.Position - UDim2.new(0,0,0,0)
    --screenframe.Visible = true
    --screenframe.Position = from.Position - UDim2.new(0,0,0,-20)
    _G.followdragcrates = from:GetPropertyChangedSignal("Position"):Connect(function(value)
        backto.AnchorPoint = Vector2.new(0,0)
        backto.Position = from.Position - UDim2.new(0,0,0,0)
        --screenframe.Position = from.Position - UDim2.new(0,0,0,-20)
    end)
    wait(tweentime)
    local transparenciesTemp = {}
    for i,v in pairs(from:GetDescendants()) do
        spawn(function()
        if v:IsA("ImageLabel") then
            table.insert(transparenciesTemp, v.ImageTransparency)
            if v.Image ~= "rbxassetid://5028857084" then
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = 1}); tweenprop:Play()
            end
            table.insert(transparenciesTemp, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
        elseif v:IsA("TextLabel") then
            table.insert(transparenciesTemp, v.TextTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = 1}); tweenprop:Play()
            table.insert(transparenciesTemp, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
        elseif v:IsA("ScrollingFrame") then
            table.insert(transparenciesTemp, v.ScrollBarImageTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ScrollBarImageTransparency = 1}); tweenprop:Play()
            table.insert(transparenciesTemp, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
        elseif v:IsA("TextBox") then
            table.insert(transparenciesTemp, v.TextTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = 1}); tweenprop:Play()
            table.insert(transparenciesTemp, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
        elseif v:IsA("ImageButton") then
            table.insert(transparenciesTemp, v.ImageTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = 1}); tweenprop:Play()
            table.insert(transparenciesTemp, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
        elseif v:IsA("TextButton") then
            table.insert(transparenciesTemp, v.TextTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = 1}); tweenprop:Play()
            table.insert(transparenciesTemp, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
        elseif v:IsA("Frame") then
            table.insert(transparenciesTemp, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
        end
    end)
    end
    wait(tweentime)
    if backtosize ~= nil then
		local tweensize = TweenService:Create(from, TweenInfo.new(tweentime), {Size = backtosize})
		tweensize:Play()
		local tweensize2 = TweenService:Create(backto, TweenInfo.new(tweentime), {Size = backtosize})
		tweensize2:Play()
        wait(tweentime)
    end
	from.Visible = false

    backto.Visible = true

    transcount = 0
    for i,v in pairs(backto:GetDescendants()) do
        spawn(function()
        if v:IsA("ImageLabel") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = transparenciesmain[transcount]}); tweenprop:Play()
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesmain[transcount]}); tweenprop:Play()
        elseif v:IsA("TextLabel") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = transparenciesmain[transcount]}); tweenprop:Play()
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesmain[transcount]}); tweenprop:Play()
        elseif v:IsA("ScrollingFrame") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ScrollBarImageTransparency = transparenciesmain[transcount]}); tweenprop:Play()
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesmain[transcount]}); tweenprop:Play()
        elseif v:IsA("TextBox") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = transparenciesmain[transcount]}); tweenprop:Play()
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesmain[transcount]}); tweenprop:Play()
        elseif v:IsA("ImageButton") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = transparenciesmain[transcount]}); tweenprop:Play()
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesmain[transcount]}); tweenprop:Play()
        elseif v:IsA("TextButton") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = transparenciesmain[transcount]}); tweenprop:Play()
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesmain[transcount]}); tweenprop:Play()
        elseif v:IsA("Frame") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesmain[transcount]}); tweenprop:Play()
        end
        end)
    end
    local tweenprop = TweenService:Create(glowthing, TweenInfo.new(tweentime), {ImageTransparency = 1}); tweenprop:Play()
	
    wait(tweentime)

    repeat wait() until UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) == false
    transcount = 0
    for i,v in pairs(from:GetDescendants()) do
        if v:IsA("ImageLabel") then
            transcount = transcount + 1
            v.ImageTransparency = transparenciesTemp[transcount]
            transcount = transcount + 1
            v.BackgroundTransparency = transparenciesTemp[transcount]
        elseif v:IsA("TextLabel") then
            transcount = transcount + 1
            v.TextTransparency = transparenciesTemp[transcount]
            transcount = transcount + 1
            v.BackgroundTransparency = transparenciesTemp[transcount]
        elseif v:IsA("ScrollingFrame") then
            transcount = transcount + 1
            v.ScrollBarImageTransparency = transparenciesTemp[transcount]
            transcount = transcount + 1
            v.BackgroundTransparency = transparenciesTemp[transcount]
        elseif v:IsA("TextBox") then
            transcount = transcount + 1
            v.TextTransparency = transparenciesTemp[transcount]
            transcount = transcount + 1
            v.BackgroundTransparency = transparenciesTemp[transcount]
        elseif v:IsA("ImageButton") then
            transcount = transcount + 1
            v.ImageTransparency = transparenciesTemp[transcount]
            transcount = transcount + 1
            v.BackgroundTransparency = transparenciesTemp[transcount]
        elseif v:IsA("TextButton") then
            transcount = transcount + 1
            v.TextTransparency = transparenciesTemp[transcount]
            transcount = transcount + 1
            v.BackgroundTransparency = transparenciesTemp[transcount]
        elseif v:IsA("Frame") then
            transcount = transcount + 1
            v.BackgroundTransparency = transparenciesTemp[transcount]
        end
    end
    _G.followdragcrates:Disconnect()
    --screenframe.Visible = false
end
function transitionToWikiPg(from, onto, ontosize, glowthing) 
    from.Active = false
    onto.Active = true
    onto.AnchorPoint = Vector2.new(0,0)
    displacementThingy = 0
    screendisp = -20
    onto.Position = from.Position - UDim2.new(0,0,0,displacementThingy)
    --screenframe.Visible = true
    --screenframe.Position = from.Position - UDim2.new(0,0,0,screendisp)
    _G.followdragcrates = from:GetPropertyChangedSignal("Position"):Connect(function(value)
        onto.AnchorPoint = Vector2.new(0,0)
        onto.Position = from.Position - UDim2.new(0,0,0,displacementThingy)
        --screenframe.Position = from.Position - UDim2.new(0,0,0,screendisp)
    end)
    transparenciesSec = {}
    for i,v in pairs(onto:GetDescendants()) do
        if v:IsA("ImageLabel") then
            table.insert(transparenciesSec, v.ImageTransparency)
            v.ImageTransparency = 1
            table.insert(transparenciesSec, v.BackgroundTransparency)
            v.BackgroundTransparency = 1
        elseif v:IsA("TextLabel") then
            table.insert(transparenciesSec, v.TextTransparency)
            v.TextTransparency = 1
            table.insert(transparenciesSec, v.BackgroundTransparency)
            v.BackgroundTransparency = 1
        elseif v:IsA("ScrollingFrame") then
            table.insert(transparenciesSec, v.ScrollBarImageTransparency)
            v.ScrollBarImageTransparency = 1
            table.insert(transparenciesSec, v.BackgroundTransparency)
            v.BackgroundTransparency = 1
        elseif v:IsA("TextBox") then
            table.insert(transparenciesSec, v.TextTransparency)
            v.TextTransparency = 1
            table.insert(transparenciesSec, v.BackgroundTransparency)
            v.BackgroundTransparency = 1
        elseif v:IsA("ImageButton") then
            table.insert(transparenciesSec, v.ImageTransparency)
            v.ImageTransparency = 1
            table.insert(transparenciesSec, v.BackgroundTransparency)
            v.BackgroundTransparency = 1
        elseif v:IsA("TextButton") then
            table.insert(transparenciesSec, v.TextTransparency)
            v.TextTransparency = 1
            table.insert(transparenciesSec, v.BackgroundTransparency)
            v.BackgroundTransparency = 1
        elseif v:IsA("Frame") then
            table.insert(transparenciesSec, v.BackgroundTransparency)
            v.BackgroundTransparency = 1
        end
    end
    wait(tweentime)
    local transparenciesWS = {}
    for i,v in pairs(from:GetDescendants()) do
        if v:IsA("ImageLabel") then
            table.insert(transparenciesWS, v.ImageTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = 1})
            tweenprop:Play()
            table.insert(transparenciesWS, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
            tweenprop:Play()
        elseif v:IsA("TextLabel") then
            table.insert(transparenciesWS, v.TextTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = 1})
            tweenprop:Play()
            table.insert(transparenciesWS, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
            tweenprop:Play()
        elseif v:IsA("ScrollingFrame") then
            table.insert(transparenciesWS, v.ScrollBarImageTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ScrollBarImageTransparency = 1})
            tweenprop:Play()
            table.insert(transparenciesWS, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
            tweenprop:Play()
        elseif v:IsA("TextBox") then
            table.insert(transparenciesWS, v.TextTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = 1})
            tweenprop:Play()
            table.insert(transparenciesWS, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
            tweenprop:Play()
        elseif v:IsA("ImageButton") then
            table.insert(transparenciesWS, v.ImageTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = 1})
            tweenprop:Play()
            table.insert(transparenciesWS, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
            tweenprop:Play()
        elseif v:IsA("TextButton") then
            table.insert(transparenciesWS, v.TextTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = 1})
            tweenprop:Play()
            table.insert(transparenciesWS, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
            tweenprop:Play()
        elseif v:IsA("Frame") then
            table.insert(transparenciesWS, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1})
            tweenprop:Play()
        end
    end
    local tweenprop = TweenService:Create(glowthing, TweenInfo.new(tweentime), {ImageTransparency = 0})
    tweenprop:Play()
    wait(tweentime)
    from.Visible = false
	onto.Visible = true
    transcount = 0
    for i,v in pairs(from:GetDescendants()) do
        if v:IsA("ImageLabel") then
            transcount = transcount + 1
            v.ImageTransparency = transparenciesWS[transcount]
            transcount = transcount + 1
            v.BackgroundTransparency = transparenciesWS[transcount]
        elseif v:IsA("TextLabel") then
            transcount = transcount + 1
            v.TextTransparency = transparenciesWS[transcount]
            transcount = transcount + 1
            v.BackgroundTransparency = transparenciesWS[transcount]
        elseif v:IsA("ScrollingFrame") then
            transcount = transcount + 1
            v.ScrollBarImageTransparency = transparenciesWS[transcount]
            transcount = transcount + 1
            v.BackgroundTransparency = transparenciesWS[transcount]
        elseif v:IsA("TextBox") then
            transcount = transcount + 1
            v.TextTransparency = transparenciesWS[transcount]
            transcount = transcount + 1
            v.BackgroundTransparency = transparenciesWS[transcount]
        elseif v:IsA("ImageButton") then
            transcount = transcount + 1
            v.ImageTransparency = transparenciesWS[transcount]
            transcount = transcount + 1
            v.BackgroundTransparency = transparenciesWS[transcount]
        elseif v:IsA("TextButton") then
            transcount = transcount + 1
            v.TextTransparency = transparenciesWS[transcount]
            transcount = transcount + 1
            v.BackgroundTransparency = transparenciesWS[transcount]
        elseif v:IsA("Frame") then
            transcount = transcount + 1
            v.BackgroundTransparency = transparenciesWS[transcount]
        end
    end
    mainGuiLastPos = from.Position
    _G.followdragcrates:Disconnect()
    --screenframe.Visible = false
    if ontosize ~= nil then
        local tweensize = TweenService:Create(onto, TweenInfo.new(tweentime), {Size = ontosize})
        tweensize:Play()
        wait(tweentime)
    end

    transcount = 0
    for i,v in pairs(onto:GetDescendants()) do
        spawn(function()
        if v:IsA("ImageLabel") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = transparenciesSec[transcount]}); tweenprop:Play()
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
        elseif v:IsA("TextLabel") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = transparenciesSec[transcount]}); tweenprop:Play()
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
        elseif v:IsA("ScrollingFrame") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ScrollBarImageTransparency = transparenciesSec[transcount]}); tweenprop:Play()
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
        elseif v:IsA("TextBox") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = transparenciesSec[transcount]}); tweenprop:Play()
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
        elseif v:IsA("ImageButton") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = transparenciesSec[transcount]}); tweenprop:Play()
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
        elseif v:IsA("TextButton") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = transparenciesSec[transcount]}); tweenprop:Play()
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
        elseif v:IsA("Frame") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesSec[transcount]}); tweenprop:Play()
        end
    end)
    end
end
function transitionUnder(from, backto, backtosize, glowthing)
    from.Active = false
    backto.Active = true
    backto.AnchorPoint = Vector2.new(0,0)
    backto.Position = from.Position
    --screenframe.Visible = true
    --screenframe.Position = from.Position - UDim2.new(0,0,0,-20)
    _G.followdragcrates = from:GetPropertyChangedSignal("Position"):Connect(function(value)
        backto.AnchorPoint = Vector2.new(0,0)
        backto.Position = from.Position
        --screenframe.Position = from.Position - UDim2.new(0,0,0,-20)
    end)
    wait(tweentime)
    local transparenciesTemp = {}
    for i,v in pairs(from:GetDescendants()) do
        spawn(function()
        if v:IsA("ImageLabel") then
            table.insert(transparenciesTemp, v.ImageTransparency)
            if v.Image ~= "rbxassetid://5028857084" then
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = 1}); tweenprop:Play()
            end
            table.insert(transparenciesTemp, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
        elseif v:IsA("TextLabel") then
            table.insert(transparenciesTemp, v.TextTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = 1}); tweenprop:Play()
            table.insert(transparenciesTemp, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
        elseif v:IsA("ScrollingFrame") then
            table.insert(transparenciesTemp, v.ScrollBarImageTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ScrollBarImageTransparency = 1}); tweenprop:Play()
            table.insert(transparenciesTemp, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
        elseif v:IsA("TextBox") then
            table.insert(transparenciesTemp, v.TextTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = 1}); tweenprop:Play()
            table.insert(transparenciesTemp, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
        elseif v:IsA("ImageButton") then
            table.insert(transparenciesTemp, v.ImageTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = 1}); tweenprop:Play()
            table.insert(transparenciesTemp, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
        elseif v:IsA("TextButton") then
            table.insert(transparenciesTemp, v.TextTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = 1}); tweenprop:Play()
            table.insert(transparenciesTemp, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
        elseif v:IsA("Frame") then
            table.insert(transparenciesTemp, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
        elseif v:IsA("ViewportFrame") then
            table.insert(transparenciesTemp, v.ImageTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = 1}); tweenprop:Play()
            table.insert(transparenciesTemp, v.BackgroundTransparency)
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = 1}); tweenprop:Play()
        end
    end)
    end
    wait(tweentime)
    if backtosize ~= nil then
        local tweensize = TweenService:Create(from, TweenInfo.new(tweentime), {Size = backtosize})
        tweensize:Play()
        wait(tweentime)
    end
    local transparenciesUnder = {}
    for i,v in pairs(backto:GetDescendants()) do
        if v:IsA("ImageLabel") then
            table.insert(transparenciesUnder, v.ImageTransparency)
            v.ImageTransparency = 1
            table.insert(transparenciesUnder, v.BackgroundTransparency)
            v.BackgroundTransparency = 1
        elseif v:IsA("TextLabel") then
            table.insert(transparenciesUnder, v.TextTransparency)
            v.TextTransparency = 1
            table.insert(transparenciesUnder, v.BackgroundTransparency)
            v.BackgroundTransparency = 1
        elseif v:IsA("ScrollingFrame") then
            table.insert(transparenciesUnder, v.ScrollBarImageTransparency)
            v.ScrollBarImageTransparency = 1
            table.insert(transparenciesUnder, v.BackgroundTransparency)
            v.BackgroundTransparency = 1
        elseif v:IsA("TextBox") then
            table.insert(transparenciesUnder, v.TextTransparency)
            v.TextTransparency = 1
            table.insert(transparenciesUnder, v.BackgroundTransparency)
            v.BackgroundTransparency = 1
        elseif v:IsA("ImageButton") then
            table.insert(transparenciesUnder, v.ImageTransparency)
            v.ImageTransparency = 1
            table.insert(transparenciesUnder, v.BackgroundTransparency)
            v.BackgroundTransparency = 1
        elseif v:IsA("TextButton") then
            table.insert(transparenciesUnder, v.TextTransparency)
            v.TextTransparency = 1
            table.insert(transparenciesUnder, v.BackgroundTransparency)
            v.BackgroundTransparency = 1
        elseif v:IsA("Frame") then
            table.insert(transparenciesUnder, v.BackgroundTransparency)
            v.BackgroundTransparency = 1
        end
    end
    backto.Visible = true
    transcount = 0
    for i,v in pairs(backto:GetDescendants()) do
        spawn(function()
        if v:IsA("ImageLabel") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
        elseif v:IsA("TextLabel") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
        elseif v:IsA("ScrollingFrame") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ScrollBarImageTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
        elseif v:IsA("TextBox") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
        elseif v:IsA("ImageButton") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {ImageTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
        elseif v:IsA("TextButton") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {TextTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
        elseif v:IsA("Frame") then
            transcount = transcount + 1
            local tweenprop = TweenService:Create(v, TweenInfo.new(tweentime), {BackgroundTransparency = transparenciesUnder[transcount]}); tweenprop:Play()
        end
    end)
    end
    local tweenprop = TweenService:Create(glowthing, TweenInfo.new(tweentime), {ImageTransparency = 1}); tweenprop:Play()
    wait(tweentime)
    
    repeat wait() until UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) == false
    from.Visible = false
    transcount = 0
    for i,v in pairs(from:GetDescendants()) do
        if v:IsA("ImageLabel") then
            transcount = transcount + 1
            v.ImageTransparency = transparenciesTemp[transcount]
            transcount = transcount + 1
            v.BackgroundTransparency = transparenciesTemp[transcount]
        elseif v:IsA("TextLabel") then
            transcount = transcount + 1
            v.TextTransparency = transparenciesTemp[transcount]
            transcount = transcount + 1
            v.BackgroundTransparency = transparenciesTemp[transcount]
        elseif v:IsA("ScrollingFrame") then
            transcount = transcount + 1
            v.ScrollBarImageTransparency = transparenciesTemp[transcount]
            transcount = transcount + 1
            v.BackgroundTransparency = transparenciesTemp[transcount]
        elseif v:IsA("TextBox") then
            transcount = transcount + 1
            v.TextTransparency = transparenciesTemp[transcount]
            transcount = transcount + 1
            v.BackgroundTransparency = transparenciesTemp[transcount]
        elseif v:IsA("ImageButton") then
            transcount = transcount + 1
            v.ImageTransparency = transparenciesTemp[transcount]
            transcount = transcount + 1
            v.BackgroundTransparency = transparenciesTemp[transcount]
        elseif v:IsA("TextButton") then
            transcount = transcount + 1
            v.TextTransparency = transparenciesTemp[transcount]
            transcount = transcount + 1
            v.BackgroundTransparency = transparenciesTemp[transcount]
        elseif v:IsA("Frame") then
            transcount = transcount + 1
            v.BackgroundTransparency = transparenciesTemp[transcount]
        elseif v:IsA("ViewportFrame") then
            transcount = transcount + 1
            v.ImageTransparency = transparenciesTemp[transcount]
            transcount = transcount + 1
            v.BackgroundTransparency = transparenciesTemp[transcount]
        end
    end
    _G.followdragcrates:Disconnect()
    --screenframe.Visible = false
end

function findChildByPartialName(parent, partialName)
	for _, child in ipairs(parent:GetChildren()) do
		if string.find(child.Name:lower(), partialName:lower(), 1, true) then
			return child -- Return the first child whose name contains the partial name
		end
	end
	return nil -- Return nil if no matching child is found
end

function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end

function tweenFrameSize(frame, targetSize, LoadingLabel, LoadingText)
	setthreadcaps(8)
	LoadingLabel.Text = LoadingText
    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local sizeTween = TweenService:Create(frame, tweenInfo, {Size = UDim2.new(targetSize[1], targetSize[2], targetSize[3], targetSize[4])})
    sizeTween:Play()
end

function UpdateButtonNew(Section, Button, String)
	setthreadcaps(8)
	if Section ~= nil then 
		Section:updateButton(Button,String)
	end
end
function UpdateToggleNew(Section, Toggle, Text, Bool)
	setthreadcaps(8)
	if Section ~= nil then 
		Section:updateToggle(Toggle, Text, Bool)
	end
end

--[[
    Basic Extra Scripts
]]

Krampus = true
if identifyexecutor():match('Krampus') == nil then -- Heh Funny
    Krampus = false
    MessagePrompt("Skill Issue",Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),Laugh,10,2,2)
    --mh:Notify("Error!", "This Feature Only Works On Synapse X")
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
function remove_spaces(input_string)
    return (input_string:gsub("%s", ""))
end
--[[
    --======{{ MAIN SCRIPT }}======--
]]

local SaveSchematicName
local LoadSchematicName
--========================================================================--

function writeifnil(filename,data)
	local bool,error = pcall(function() readfile(filename) end)
	if bool == false then
		writefile(filename,data)
	end
end

spawn(function()
	--pcall(function()
        SettingsS["PlayerList"] = {}
        SettingsS["Player List"] = {}
        SettingsS["Base Replicate Player"] = ""
        SettingsS["Base Save Player"] = ""
		for i, v in pairs(Players:GetChildren()) do
			table.insert(SettingsS["PlayerList"],v.Name)
		end
		--[[BaseStealSection:updateDropdown(BaseCost_Dropdown,"Calculate Base Cost",SettingsT["PlayerList"])
		TeleportSection:updateDropdown(PBTeleport_Dropdown,"Player Base Teleport",SettingsT["PlayerList"])
		BaseStealSection:updateDropdown(ReplicateBase_Dropdown,"Replicate Players Base",SettingsT["PlayerList"])
		BaseStealSection:updateDropdown(SaveBase_Dropdown,"Save Players Base",SettingsT["PlayerList"])
		--]]
		SaveS()
	--end)
end)

local oldloc
local Crates = {"Shadow", "Research", "Golden", "Diamond", "Crystal", "Lucky", "Executive", "Giant", "Cursed", "Blazing", "Evil Pumpkin", "Mega Pumpkin", "Candy", "Golden Gift", "Egg"}
local Boxes = {"Regular","Unreal","Inferno","Magnificent","Spectral","Heavenly","Twitch","Red-Banded","Luxury","Pumpkin","Festive","Easter","Birthday"}
local Layouts = {"Layout 1","Layout 2","Layout 3"}
local Layouts2 = {"Not Splitting","Layout 1","Layout 2","Layout 3"}

_G.numpages = 13

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/VeronicVR/UI-Libraries/master/Veynx%20Edit.lua"))()
--local Library = loadstring(readfile('VenyxUITest.lua'))()

local MainWindow = Library.new("Ironic's Miner's Haven Ghost Client - v"..DefaultSettingsS.ScriptVersion, game.CoreGui)

--[[
	Show GUI Button
]]
local Hotkey = "Left Alt"
local GUIButton = game:GetService("Players").LocalPlayer.PlayerGui.GUI.HUDLeft.Buttons.RobuxShop:Clone()
GUIButton.Name = "GhostClient"
GUIButton.RobuxIcon.Name = "ClientIcon"
GUIButton.ClientIcon.Size = UDim2.new(0, 60, 60, 0)
GUIButton.ClientIcon.Image = "rbxassetid://17311335019" -- Old "rbxassetid://35967221"
GUIButton.PcKey.Hotkey.Text = "Ghost Clinet ("..Hotkey..")"
GUIButton.LayoutOrder = 13
GUIButton.Parent = game:GetService("Players").LocalPlayer.PlayerGui.GUI.HUDLeft.Buttons
GUIButton.MouseEnter:Connect(function()
    GUIButton.PcKey.Visible = true
end)
GUIButton.MouseLeave:Connect(function()
    GUIButton.PcKey.Visible = false
end)
GUIButton.MouseButton1Click:Connect(function() MainWindow:toggle() end)
GUIButton.MouseButton2Click:Connect(function() 
	GUIButton:Destroy()
	CoreGui[guiname]:Destroy()
	CoreGui[wikiguiname]:Destroy()
	CoreGui[salvageguiname]:Destroy()
	CoreGui[boxopenerguiname]:Destroy()
	--CoreGui["Ironic's Loader"]:Destroy()
end)

--[[
	Loadbar & Functions
]]

local IronicsLoader = Instance.new("ScreenGui")
local Main = Instance.new("ImageLabel")
local Glow = Instance.new("ImageLabel")
local TopBar = Instance.new("ImageLabel")
local Title = Instance.new("TextLabel")
local LoadingFrame = Instance.new("Frame")
local LoadBarOutside = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local LoadBarInside = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local LoadingTitle = Instance.new("TextLabel")

IronicsLoader.Name = "Ironic's Loader"
IronicsLoader.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = IronicsLoader
Main.Active = true
Main.BackgroundColor3 = Color3.fromRGB(163, 163, 163)
Main.BackgroundTransparency = 1.000
Main.BorderColor3 = Color3.fromRGB(27, 42, 53)
Main.Position = UDim2.new(0.353, 0,0.375, 0)
Main.Size = UDim2.new(0, 406, 0, 155)
Main.Image = "rbxassetid://4595286933"
Main.ImageColor3 = Color3.fromRGB(24, 24, 24)
Main.ScaleType = Enum.ScaleType.Slice
Main.SliceCenter = Rect.new(4, 4, 296, 296)

Glow.Name = "Glow"
Glow.Parent = Main
Glow.BackgroundTransparency = 1.000
Glow.BorderColor3 = Color3.fromRGB(0, 0, 0)
Glow.Position = UDim2.new(0, -15, 0, -15)
Glow.Size = UDim2.new(1, 30, 1, 30)
Glow.ZIndex = 0
Glow.Image = "rbxassetid://5028857084"
Glow.ScaleType = Enum.ScaleType.Slice
Glow.SliceCenter = Rect.new(24, 24, 276, 276)

TopBar.Name = "TopBar"
TopBar.Parent = Main
TopBar.BackgroundTransparency = 1.000
TopBar.BorderColor3 = Color3.fromRGB(27, 42, 53)
TopBar.Size = UDim2.new(1, 0, 0.0562724434, 38)
TopBar.ZIndex = 5
TopBar.Image = "rbxassetid://4595286933"
TopBar.ImageColor3 = Color3.fromRGB(24, 24, 24)
TopBar.ScaleType = Enum.ScaleType.Slice
TopBar.SliceCenter = Rect.new(4, 4, 296, 296)

Title.Name = "Title"
Title.Parent = TopBar
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.Position = UDim2.new(0, 0, 0, 17)
Title.Size = UDim2.new(1.11330044, -46, 0.289473712, 16)
Title.ZIndex = 5
Title.Font = Enum.Font.Jura
Title.Text = "Ironic's Miner's Haven Ghost Client"
Title.TextColor3 = Color3.fromRGB(254, 255, 255)
Title.TextSize = 23.000
Title.TextYAlignment = Enum.TextYAlignment.Top

LoadingFrame.Name = "LoadingFrame"
LoadingFrame.Parent = Main
LoadingFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
LoadingFrame.BackgroundTransparency = 1.000
LoadingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoadingFrame.BorderSizePixel = 0
LoadingFrame.Position = UDim2.new(0.013197124, 0, 0.275627285, 0)
LoadingFrame.Size = UDim2.new(0, 394, 0, 106)

LoadBarOutside.Name = "LoadBarOutside"
LoadBarOutside.Parent = LoadingFrame
LoadBarOutside.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LoadBarOutside.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoadBarOutside.BorderSizePixel = 0
LoadBarOutside.ClipsDescendants = true
LoadBarOutside.LayoutOrder = 2
LoadBarOutside.Position = UDim2.new(0.0973352715, 0, 0.344793946, 0)
LoadBarOutside.Size = UDim2.new(0, 317, 0, 16)
LoadBarOutside.ZIndex = 2

UICorner.CornerRadius = UDim.new(0, 100)
UICorner.Parent = LoadBarOutside

LoadBarInside.Name = "LoadBarInside"
LoadBarInside.Parent = LoadBarOutside
LoadBarInside.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadBarInside.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoadBarInside.BorderSizePixel = 0
LoadBarInside.ClipsDescendants = true
LoadBarInside.LayoutOrder = 2
LoadBarInside.Position = UDim2.new(-0.000456512149, 1, -0.0113372803, 0)
LoadBarInside.Size = UDim2.new(0, 0, 0, 16)
LoadBarInside.ZIndex = 2

UICorner_2.CornerRadius = UDim.new(0, 100)
UICorner_2.Parent = LoadBarInside

LoadingTitle.Name = "LoadingTitle"
LoadingTitle.Parent = LoadingFrame
LoadingTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadingTitle.BackgroundTransparency = 1.000
LoadingTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
LoadingTitle.Position = UDim2.new(0, -6, 0, 66)
LoadingTitle.Size = UDim2.new(1.14883745, -46, 0.285639435, 16)
LoadingTitle.ZIndex = 5
LoadingTitle.Font = Enum.Font.Jura
LoadingTitle.Text = "Loading "
LoadingTitle.TextColor3 = Color3.fromRGB(254, 255, 255)
LoadingTitle.TextSize = 22.000
LoadingTitle.TextYAlignment = Enum.TextYAlignment.Top

--[[
	Autofarm Page
]]


tweenFrameSize(LoadBarInside, {0, 24.3846 * 1, 0, 16}, LoadingTitle, "Loading Autofarm")

local AutofarmPage = MainWindow:addPage("Autofarm", 5506273356)
local AutoRebirth_Section = AutofarmPage:addSection("Auto Rebirth")
local WaitToSkip_Section = AutofarmPage:addSection("Wait to Skip")
local AutoPulsar_Section = AutofarmPage:addSection("Auto Pulsar")
local AutoRemote_Section = AutofarmPage:addSection("Auto Remote")
local AutoExcavate_Section = AutofarmPage:addSection("Auto Excavate")
local StopRebirthing_Section = AutofarmPage:addSection("Stop Rebirthing When")
local Crates_Section = AutofarmPage:addSection("Crates")
local AutoSacrifice_Section = AutofarmPage:addSection("Auto Sacrifice")
local PlacementRebirth_Section = AutofarmPage:addSection("Auto Setup [Old Version]")
local AutoRPFarm_Section = AutofarmPage:addSection("Auto RP Farm")
local AntiAFK_Section = AutofarmPage:addSection("Anti-AFK Always On")

 --===[[ Auto Rebirth Section ]]===--

 --[[ 
SettingsS = {
	["Autofarm"] = {
		["Auto Rebirth"] = {
			["Layout 1"] = "Layout 1",
			["Withdrawl Between"] = false,
			["Minimum Split To Rebirth"] = 0,
			["Layout 2"] = "Not Splitting",
			["Minimum Time To Rebirth"] = 0,
			["Ore Boost"] = false,
			["Auto Rebirth"] = false,
			["Auto Superstitious"] = {
				["Enabled"] = false,
				["Item"] = "None",
			},
		},
	},
}
]]--

SelectLayAR1_Dropdown = AutoRebirth_Section:addDropdown(
	"Select Layout",
	Layouts,
	function(Select)
		SettingsS["Autofarm"]["Auto Rebirth"]["Layout 1"] = Select
		SaveS()
	end,
	nil
)
WithdrawBetween_Toggle = AutoRebirth_Section:addToggle(
	"Withdrawl Between Layouts (If Splitting)",
	SettingsS["Autofarm"]["Auto Rebirth"]["Withdrawl Between"],
	function(state)
		SettingsS["Autofarm"]["Auto Rebirth"]["Withdrawl Between"] = state
		SaveS()
	end
)
MinimumSplitTime_TextBox = AutoRebirth_Section:addTextbox(
	"Minimum Time Between Layouts",
	SettingsS["Autofarm"]["Auto Rebirth"]["Minimum Split To Rebirth"],
	function(Value, focusLost)
		if focusLost then
			SettingsS["Autofarm"]["Auto Rebirth"]["Minimum Split To Rebirth"] = Value
			SaveS()
		end
	end
)
SelectLayAR2_Dropdown = AutoRebirth_Section:addDropdown(
	"Select Layout",
	Layouts2,
	function(Select)
		SettingsS["Autofarm"]["Auto Rebirth"]["Layout 2"] = Select
		SaveS()
	end,
	nil
)
MinimumRebirthTime_TextBox = AutoRebirth_Section:addTextbox(
	"Minimum Rebirth Time",
	SettingsS["Autofarm"]["Auto Rebirth"]["Minimum Time To Rebirth"],
	function(Value, focusLost)
		if focusLost then
			SettingsS["Autofarm"]["Auto Rebirth"]["Minimum Time To Rebirth"] = Value
			SaveS()
		end
	end
)
OreBoost_Toggle = AutoRebirth_Section:addToggle(
	"Ore Boost (Use with Auto Rebirth)",
	false,
	function(state)
		SettingsS["Autofarm"]["Auto Rebirth"]["Ore Boost"] = state
		SaveS()

		task.defer(function()
			if SettingsS["Autofarm"]["Auto Rebirth"]["Ore Boost"] then
				MainWindow:Notify("Warning!","Using Ore Booster has a high chance you getting you banned, you have been warned.\nOre Limit has been set to 5.")		
			end	
		end)
	end
) do
	AutoRebirth_Section:updateToggle(OreBoost_Toggle, nil, false)
	SettingsS["Autofarm"]["Auto Rebirth"]["Ore Boost"] = false
end
PlrDroppedParts.ChildAdded:Connect(function(Ore_Drop)
    task.defer(function()
		if SettingsS["Autofarm"]["Auto Rebirth"]["Ore Boost"] then
        	local Resetters_Present = {}
	    	for Int_1d, Resetters_1a in next, PlrTycoon:GetChildren() do
	    		if Resetters_1a:IsA("Model") and table.find(getgenv().ResetterTable, Resetters_1a.Name) then 
	    			table.insert(Resetters_Present, Resetters_1a.Name)
	    		end
	    	end

		
        	Lock_Ore(Ore_Drop)
        	if getgenv().IroDebug["Dropped Dubug"] then
        	    warn("Making Resetter's Folder")
        	end
	    	local Resetter_Folder = Instance.new("Folder")
	    		Resetter_Folder.Name = "Resetter Uses"
	    		Resetter_Folder.Parent = Ore_Drop
		
	    	for i,v in next, getgenv().ResetterTable do
	    	    local Tag = Instance.new("NumberValue")
	    	    Tag.Name = v
	    	    Tag.Parent = Resetter_Folder
	    	    Tag.Value = 0
        	    if getgenv().IroDebug["Dropped Dubug"] then
        	        warn("Making Resetter Tag for "..Ore_Drop.Name.."'s Ore")
        	    end
	    	end
        	task.wait(0.5)
        	Upgrade_Ore(Ore_Drop, getgenv().Boost)
        	task.wait(0.5)
        	for i=1,#Resetters_Present do
        	    Reset_Ore(Ore_Drop)
        	    task.wait(0.5)
        	end
        	task.wait(0.5)
        	Sell_Ore(Ore_Drop)
	    end
    end)
end)

AutoRebirth_Toggle = AutoRebirth_Section:addToggle(
	"Auto Rebirth",
	SettingsS["Autofarm"]["Auto Rebirth"]["Auto Rebirth"],
	function(state)
		SettingsS["Autofarm"]["Auto Rebirth"]["Auto Rebirth"] = state
		SaveS()

		game:GetService("ReplicatedStorage").DestroyAll:InvokeServer()
		task.wait(0.3)
		task.defer(function()
			repeat task.wait(1)
				if SettingsS["Autofarm"]["Auto Rebirth"]["Auto Rebirth"] then
					if SettingsS["Autofarm"]["Auto Pulsar"]["Enable"] then
						task.wait(SettingsS["Autofarm"]["Auto Pulsar"]["Sec After Layout"])
						game:GetService("ReplicatedStorage").Pulse:FireServer()
					end
				end
			until not SettingsS["Autofarm"]["Auto Rebirth"]["Auto Rebirth"]
		end)
		task.defer(function()
			repeat 
				if SettingsS["Autofarm"]["Auto Rebirth"]["Auto Rebirth"] then
					--["Minimum Split To Rebirth"] = 0,
					local FirstLayout = remove_spaces(SettingsS["Autofarm"]["Auto Rebirth"]["Layout 1"])
					local SecondLayout = remove_spaces(SettingsS["Autofarm"]["Auto Rebirth"]["Layout 2"])
					game:GetService("ReplicatedStorage").Layouts:InvokeServer("Load", FirstLayout)
					
					local SplitTime = SettingsS["Autofarm"]["Auto Rebirth"]["Minimum Split To Rebirth"]
					if SettingsS["Autofarm"]["Auto Rebirth"]["Layout 2"] ~= "Not Splitting" then
						task.wait(math.random(SplitTime, SplitTime + 5))
						if SettingsS["Autofarm"]["Auto Rebirth"]["Withdrawl Between"] then
							if not SettingsS["Autofarm"]["Auto Rebirth"]["Auto Rebirth"] then break end
							game:GetService("ReplicatedStorage").DestroyAll:InvokeServer()
							task.wait(0.5)
						end
						game:GetService("ReplicatedStorage").Layouts:InvokeServer("Load", SecondLayout)
					end

					if SettingsS["Autofarm"]["Auto Rebirth"]["Auto Superstitious"]["Enabled"] then
						local Rebirth = Client.Rebirths.Value
						repeat task.wait() 
							if not SettingsS["Autofarm"]["Auto Rebirth"]["Auto Rebirth"] then break end
						until Client.PlayerGui.GUI.Money.Value >= CalculateNeededForSkip(convert(MoneyLib.RebornPrice(game.Players.LocalPlayer)),SettingsS["Autofarm"]["Wait To Skip"]["SkipAmount"])

						repeat task.wait(1) 
							checkTime(RebirthUpdateTimer) 
							if not SettingsS["Autofarm"]["Auto Rebirth"]["Auto Rebirth"] then break end
						until checkTime(RebirthUpdateTimer) == true

						local ItemsNeededForAllSuperstitious_Table = {}
						-- SettingsS["Autofarm"]["Auto Rebirth"]["Auto Superstitious"]["Item"]

						print("Place items needed for Supersitiious, rebirth then craft the item if you got a Relic for the item")
						game.ReplicatedStorage.Rebirth:InvokeServer()
						RebirthUpdateTimer = getCurrentTime()
						task.wait(1)
					else
						local Rebirth = Client.Rebirths.Value
						repeat task.wait() 
							if not SettingsS["Autofarm"]["Auto Rebirth"]["Auto Rebirth"] then break end
						until Client.PlayerGui.GUI.Money.Value >= CalculateNeededForSkip(convert(MoneyLib.RebornPrice(game.Players.LocalPlayer)),SettingsS["Autofarm"]["Wait To Skip"]["SkipAmount"])

						
						repeat task.wait(1) 
							checkTime(RebirthUpdateTimer) 
							if not SettingsS["Autofarm"]["Auto Rebirth"]["Auto Rebirth"] then break end
						until checkTime(RebirthUpdateTimer) == true

						game.ReplicatedStorage.Rebirth:InvokeServer()
						RebirthUpdateTimer = getCurrentTime()
						task.wait(1)
					end
				end
			until not SettingsS["Autofarm"]["Auto Rebirth"]["Auto Rebirth"]
		end)
	end
)

--===[[ Wait to Skip Section ]]===--

--[[
SettingsS = {
	["Autofarm"] = {
		["Wait To Skip"] = {
			["SkipAmount"] = 0,
		},
	},
}
]]--

Wait_To_Skip_Silder = WaitToSkip_Section:addSlider(
	"Wait to Skip (Required lives to skip)",
	SettingsS["Autofarm"]["Wait To Skip"]["SkipAmount"],
	0, 		-- Minimum 
	20,  	-- Maximum
	function(Value)
		SettingsS["Autofarm"]["Wait To Skip"]["SkipAmount"] = Value
		SaveS()
	end
)

--===[[ Auto Pulsar Section ]]===--

--[[	
SettingsS = {
	["Autofarm"] = {
		["Auto Pulsar"] = {
			["Sec After Layout"] = 1
			["Enable"] = false
		};
	}
}
--]]

AutoPulsarSeconds_TextBox = AutoPulsar_Section:addTextbox(
	"Auto Pulsar (Seconds after Layouts)",
	SettingsS["Autofarm"]["Auto Pulsar"]["Sec After Layout"],
	function(Value, focusLost)
		if focusLost then
			SettingsS["Autofarm"]["Auto Pulsar"]["Sec After Layout"] = Value
			SaveS()
		end
	end
)
AutoPulsar_Toggle = AutoPulsar_Section:addToggle(
	"Auto Pulsar (Use with Auto Rebirth)",
	SettingsS["Autofarm"]["Auto Pulsar"]["Enable"],
	function(state)
		SettingsS["Autofarm"]["Auto Pulsar"]["Enable"] = state
		SaveS()
	end
)

 --===[[ Auto Remote Section ]]===--

--[[
SettingsS = {
	["Autofarm"] = {
		["Auto Remote"] = {
			["Delay"] = 0,
			["Enable"] = false,
		},
	}
}
--]]

AutoRemoteDelay_TextBox = AutoRemote_Section:addTextbox(
	"Remote Delay (Seconds)",
	SettingsS["Autofarm"]["Auto Remote"]["Delay"],
	function(Value, focusLost)
		if focusLost then
			SettingsS["Autofarm"]["Auto Remote"]["Delay"] = Value
			SaveS()
		end
	end
)
AutoRemote_Toggle = AutoRemote_Section:addToggle(
	"Auto Remote",
	SettingsS["Autofarm"]["Auto Remote"]["Enable"],
	function(state)
		SettingsS["Autofarm"]["Auto Remote"]["Enable"] = state
		SaveS()

		task.defer(function()
			while SettingsS["Autofarm"]["Auto Remote"]["Enable"] and task.wait() do 
				task.wait(SettingsS["Autofarm"]["Auto Remote"]["Delay"])
				game:GetService("ReplicatedStorage").RemoteDrop:FireServer()
			end
		end)
	end
)

 --===[[ Auto Excavate Section ]]===--

--[[
SettingsS = {
	["Autofarm"] = {
		["Auto Excavate"] = {
			["Enable"] = false,
		},
	}
}
--]]

AutoExcavate_Toggle = AutoExcavate_Section:addToggle(
	"Auto Excavate",
	SettingsS["Autofarm"]["Auto Excavate"]["Enable"],
	function(state)
		SettingsS["Autofarm"]["Auto Excavate"]["Enable"] = state
		SaveS()

		print(SettingsS["Autofarm"]["Auto Excavate"]["Enable"])
		task.defer(function()
			if SettingsS["Autofarm"]["Auto Excavate"]["Enable"] == true then
				repeat task.wait(0.2)
					print("On")
					for _, Item in next, PlrTycoon:GetChildren() do 
						if Item:FindFirstChild("Model") and Item.Model:FindFirstChild("Internal") then
							local Internal = Item.Model.Internal
		
							local partPosition = Internal.Position
							local partSize = Internal.Size
							local width = partSize.X
							local orientation = math.atan2(Internal.CFrame.LookVector.Z, Internal.CFrame.LookVector.X)
		
							local offsetX = width * math.cos(orientation + math.pi)
							local offsetZ = width * math.sin(orientation + math.pi)
							local offset = Vector3.new(offsetX, -3, offsetZ)
							local teleportPosition = partPosition - offset
		
							Client.Character:SetPrimaryPartCFrame(CFrame.new(teleportPosition))
							task.wait(0.1)
							fireproximityprompt(Internal.ProximityPrompt)
							task.wait(0.1)
						end
					end
				until SettingsS["Autofarm"]["Auto Excavate"]["Enable"] == false
				print("Off")
			end
		end)
	end
)

 --===[[ Stop Rebirthing Section ]]===--

--[[
SettingsS = {
	["Autofarm"] = {
		["Stop Rebirthing"] = {
			["Life"] = {
				["Stop At"] = 99999999999,
				["Stop"] = false
			["Splitstream"] = "The Great Parasite",
		},
	}
}
--]]

StopAtLifeNumber_TextBox = StopRebirthing_Section:addTextbox(
	"Stop at Life",
	9000000,
	function(Value, focusLost)
		if focusLost then
			SettingsS["Autofarm"]["Stop Rebirthing"]["Stop At"] = Value
			SaveS()
		end
	end
)
StopRebirthing_Toggle = StopRebirthing_Section:addToggle(
	"Stop Rebirthing at Life",
	SettingsS["Autofarm"]["Stop Rebirthing"]["Stop"],
	function(state)
		SettingsS["Autofarm"]["Stop Rebirthing"]["Stop"] = state
		SaveS()

		task.defer(function()
			while SettingsS["Autofarm"]["Stop Rebirthing"]["Stop"] and task.wait() do
				--SettingsS["Autofarm"]["Auto Rebirth"]["Auto Rebirth"] = false
				local Rebirth = Client.Rebirths.Value
				if Rebirth >= tonumber(SettingsS["Autofarm"]["Stop Rebirthing"]["Stop At"]) then
					SettingsS["Autofarm"]["Auto Rebirth"]["Auto Rebirth"] = false
					UpdateToggleNew(AutoRebirth_Section, AutoRebirth_Toggle, nil, false)
					SettingsS["Autofarm"]["Stop Rebirthing"]["Stop"] = false
					UpdateToggleNew(StopRebirthing_Section, StopRebirthing_Toggle, nil, false)
					SaveS()
				end
			end
		end)
	end
)
--===[[ Crate Section ]]===--

--[[
	SettingsS = {
		["Autofarm"] = {
			["Crates"] = {
				["Autofarm Crates"] = false,
				["Open Boxes"] = {
					["Use Clovers"] = false,
					["Boxes"] = {
						["Birthday"] = false,
						["Unreal"] = false,
						["Twitch"] = false,
						["Spectral"] = false,
						["Regular"] = false,
						["Red-Banded"] = false,
						["Pumpkin"] = false,
						["Magnificent"] = false,
						["Luxury"] = false,
						["Inferno"] = false,
						["Heavenly"] = false,
						["Festive"] = false,
						["Easter"] = false,
						["Cake Raffle"] = false,
					}
				}
			},
		}
	}
--]]

AutofarmCrates_Toggle = Crates_Section:addToggle(
	"Crate TP",
	false,
	function(state)
		SettingsS["Autofarm"]["Crates"]["Autofarm Crates"] = state
		SaveS()

		if SettingsS["Autofarm"]["Crates"]["Autofarm Crates"] then
			for i,v in next, workspace.Boxes:GetChildren() do

				local Velocity_Variable_2 = nil
				repeat task.wait() 
					if isMovingSlow(v, 2) then
						Velocity_Variable_2 = true
					else
						Velocity_Variable_2 = false
					end
				until Velocity_Variable_2 == true

				teleportToTarget(v)
				task.wait(0.3)
				firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
				firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1)			
				task.wait(0.3)
			end
			teleportToTarget(PlrTycoon.Base)
		end
	end
)
BoxesLocation.ChildAdded:Connect(function(Box_Drop)
    task.defer(function()
		if SettingsS["Autofarm"]["Crates"]["Autofarm Crates"] then
        	FarmCrates(Box_Drop)
	    end
    end)
end)

OpenBoxes_Button = Crates_Section:addButton(
	"Select Boxes to Auto-Open", 
	function()
		transitionTo(CoreGui[guiname].Main, CoreGui[boxopenerguiname].Main, UDim2.new(0, 671, 0, 221), CoreGui[guiname].Main.Glow)
	end
) do
	local tweentime = 0.5

	local IronicsBoxOpener = Instance.new("ScreenGui")
	local Main = Instance.new("ImageLabel")
	local Glow = Instance.new("ImageLabel")
	local TopBar = Instance.new("ImageLabel")
	local Title = Instance.new("TextLabel")
	local Boxes_ScrollFrame = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local CakeRaffle = Instance.new("ImageButton")
	local CakeRaffle_Box_Label = Instance.new("TextLabel")
	local Easter = Instance.new("ImageButton")
	local Easter_Box_Label = Instance.new("TextLabel")
	local Festive = Instance.new("ImageButton")
	local Festive_Box_Label = Instance.new("TextLabel")
	local Heavenly = Instance.new("ImageButton")
	local Heavenly_Box_Label = Instance.new("TextLabel")
	local Inferno = Instance.new("ImageButton")
	local Inferno_Box_Label = Instance.new("TextLabel")
	local Luxury = Instance.new("ImageButton")
	local Luxury_Box_Label = Instance.new("TextLabel")
	local Magnificent = Instance.new("ImageButton")
	local Magnificent_Box_Label = Instance.new("TextLabel")
	local Pumpkin = Instance.new("ImageButton")
	local Pumpkin_Box_Label = Instance.new("TextLabel")
	local RedBanded = Instance.new("ImageButton")
	local RedBanded_Box_Label = Instance.new("TextLabel")
	local Regular = Instance.new("ImageButton")
	local Regular_Box_Label = Instance.new("TextLabel")
	local Spectral = Instance.new("ImageButton")
	local Spectral_Box_Label = Instance.new("TextLabel")
	local Twitch = Instance.new("ImageButton")
	local Twitch_Box_Label = Instance.new("TextLabel")
	local Unreal = Instance.new("ImageButton")
	local Unreal_Box_Label = Instance.new("TextLabel")
	local Birthday = Instance.new("ImageButton")
	local Birthday_Box_Label = Instance.new("TextLabel")
	local BottomBar = Instance.new("ImageLabel")
	local LuckyClovers = Instance.new("ImageButton")
	local Clovers_Left_Label = Instance.new("TextLabel")
	local BoxesLeft_Bar = Instance.new("ImageLabel")
	local UICorner = Instance.new("UICorner")
	local BoxesLeft_Text = Instance.new("TextLabel")
	local Back_Button = Instance.new("TextButton")
	local UICorner_2 = Instance.new("UICorner")

	IronicsBoxOpener.Name = "Ironic's Box Opener"
	IronicsBoxOpener.Parent = game.CoreGui

	Main.Name = "Main"
	Main.Parent = IronicsBoxOpener
	Main.Active = true
	Main.BackgroundColor3 = Color3.fromRGB(163, 163, 163)
	Main.BackgroundTransparency = 1.000
	Main.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Main.Position = UDim2.new(0.217751935, 0, 0.332993299, 0)
	Main.Size = UDim2.new(0, 671, 0, 221)
	Main.Image = "rbxassetid://4595286933"
	Main.ImageColor3 = Color3.fromRGB(24, 24, 24)
	Main.ScaleType = Enum.ScaleType.Slice
	Main.SliceCenter = Rect.new(4, 4, 296, 296)
	Main.Draggable = true
	Main.Visible = false

	Glow.Name = "Glow"
	Glow.Parent = Main
	Glow.BackgroundTransparency = 1.000
	Glow.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Glow.Position = UDim2.new(0, -15, 0, -15)
	Glow.Size = UDim2.new(1, 30, 1, 30)
	Glow.ZIndex = 0
	Glow.Image = "rbxassetid://5028857084"
	Glow.ScaleType = Enum.ScaleType.Slice
	Glow.SliceCenter = Rect.new(24, 24, 276, 276)

	TopBar.Name = "TopBar"
	TopBar.Parent = Main
	TopBar.BackgroundTransparency = 1.000
	TopBar.BorderColor3 = Color3.fromRGB(27, 42, 53)
	TopBar.Size = UDim2.new(1, 0, 0, 38)
	TopBar.ZIndex = 5
	TopBar.Image = "rbxassetid://4595286933"
	TopBar.ImageColor3 = Color3.fromRGB(10, 10, 10)
	TopBar.ScaleType = Enum.ScaleType.Slice
	TopBar.SliceCenter = Rect.new(4, 4, 296, 296)

	Title.Name = "Title"
	Title.Parent = TopBar
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.Position = UDim2.new(0, 23, 0, 5)
	Title.Size = UDim2.new(1, -46, 0.289473683, 16)
	Title.ZIndex = 5
	Title.Font = Enum.Font.Jura
	Title.Text = "Select Boxes To Open"
	Title.TextYAlignment = "Bottom"
	Title.TextXAlignment = "Center"
	Title.TextColor3 = Color3.fromRGB(254, 255, 255)
	Title.TextSize = 22.000

	Boxes_ScrollFrame.Name = "Boxes_ScrollFrame"
	Boxes_ScrollFrame.Parent = Main
	Boxes_ScrollFrame.Active = true
	Boxes_ScrollFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Boxes_ScrollFrame.BackgroundTransparency = 1.000
	Boxes_ScrollFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Boxes_ScrollFrame.BorderSizePixel = 0
	Boxes_ScrollFrame.Position = UDim2.new(0.00899999961, 0, 0.199000001, 0)
	Boxes_ScrollFrame.Size = UDim2.new(0, 659, 0, 117)
	Boxes_ScrollFrame.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	Boxes_ScrollFrame.ScrollBarImageColor3 = Color3.fromRGB(13, 13, 13)
	Boxes_ScrollFrame.CanvasSize = UDim2.new(2.0999999, 0, 0, 0)
	Boxes_ScrollFrame.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar
	Boxes_ScrollFrame.ScrollBarThickness = 3
	Boxes_ScrollFrame.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	Boxes_ScrollFrame.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

	UIListLayout.Parent = Boxes_ScrollFrame
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

	local CakeRaffle_Debounce = false
	CakeRaffle.Name = "Cake Raffle"
	CakeRaffle.Parent = Boxes_ScrollFrame
	CakeRaffle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CakeRaffle.BackgroundTransparency = 1.000
	CakeRaffle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CakeRaffle.BorderSizePixel = 0
	CakeRaffle.LayoutOrder = 8
	CakeRaffle.Size = UDim2.new(0, 100, 0, 100)
	CakeRaffle.Image = "rbxassetid://6652258583"
	CakeRaffle.ImageTransparency = 0.500

	CakeRaffle.MouseButton1Click:Connect(function()
		CakeRaffle_Debounce = not CakeRaffle_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Cake Raffle"] = CakeRaffle_Debounce
		if CakeRaffle_Debounce then
			local tweentrans = TweenService:Create(CakeRaffle, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(CakeRaffle, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	CakeRaffle_Box_Label.Name = "CakeRaffle_Box_Label"
	CakeRaffle_Box_Label.Parent = CakeRaffle
	CakeRaffle_Box_Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CakeRaffle_Box_Label.BackgroundTransparency = 1.000
	CakeRaffle_Box_Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CakeRaffle_Box_Label.BorderSizePixel = 0
	CakeRaffle_Box_Label.Position = UDim2.new(0, 0, -0.100000001, 0)
	CakeRaffle_Box_Label.Size = UDim2.new(0, 100, 0, 20)
	CakeRaffle_Box_Label.Font = Enum.Font.Jura
	CakeRaffle_Box_Label.Text = "Cake Raffle Box"
	CakeRaffle_Box_Label.TextColor3 = Color3.fromRGB(255, 255, 255)
	CakeRaffle_Box_Label.TextSize = 14.000
	CakeRaffle_Box_Label.TextTransparency = 1

	CakeRaffle.MouseEnter:Connect(function()
		local tweentrans = TweenService:Create(CakeRaffle_Box_Label, TweenInfo.new(0.3), {TextTransparency = 0})
		tweentrans:Play()
	end)
	
	CakeRaffle.MouseLeave:Connect(function()
		local tweentrans = TweenService:Create(CakeRaffle_Box_Label, TweenInfo.new(0.3), {TextTransparency = 1})
		tweentrans:Play()
	end)

	local Easter_Debounce = false
	Easter.Name = "Easter"
	Easter.Parent = Boxes_ScrollFrame
	Easter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Easter.BackgroundTransparency = 1.000
	Easter.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Easter.BorderSizePixel = 0
	Easter.LayoutOrder = 7
	Easter.Size = UDim2.new(0, 100, 0, 100)
	Easter.Image = "rbxassetid://6652258288"
	Easter.ImageTransparency = 0.500

	Easter.MouseButton1Click:Connect(function()
		Easter_Debounce = not Easter_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Easter"] = Easter_Debounce
		if Easter_Debounce then
			local tweentrans = TweenService:Create(Easter, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(Easter, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	Easter_Box_Label.Name = "Easter_Box_Label"
	Easter_Box_Label.Parent = Easter
	Easter_Box_Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Easter_Box_Label.BackgroundTransparency = 1.000
	Easter_Box_Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Easter_Box_Label.BorderSizePixel = 0
	Easter_Box_Label.Position = UDim2.new(0, 0, -0.100000001, 0)
	Easter_Box_Label.Size = UDim2.new(0, 100, 0, 20)
	Easter_Box_Label.Font = Enum.Font.Jura
	Easter_Box_Label.Text = "Easter Box"
	Easter_Box_Label.TextColor3 = Color3.fromRGB(255, 255, 255)
	Easter_Box_Label.TextSize = 14.000
	Easter_Box_Label.TextTransparency = 1

	Easter.MouseEnter:Connect(function()
		local tweentrans = TweenService:Create(Easter_Box_Label, TweenInfo.new(0.3), {TextTransparency = 0})
		tweentrans:Play()
	end)
	
	Easter.MouseLeave:Connect(function()
		local tweentrans = TweenService:Create(Easter_Box_Label, TweenInfo.new(0.3), {TextTransparency = 1})
		tweentrans:Play()
	end)

	local Festive_Debounce = false
	Festive.Name = "Festive"
	Festive.Parent = Boxes_ScrollFrame
	Festive.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Festive.BackgroundTransparency = 1.000
	Festive.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Festive.BorderSizePixel = 0
	Festive.LayoutOrder = 7
	Festive.Size = UDim2.new(0, 100, 0, 100)
	Festive.Image = "rbxassetid://5140907136"
	Festive.ImageTransparency = 0.500

	Festive.MouseButton1Click:Connect(function()
		Festive_Debounce = not Festive_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Festive"] = Festive_Debounce
		if Festive_Debounce then
			local tweentrans = TweenService:Create(Festive, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(Festive, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)
	
	Festive_Box_Label.Name = "Festive_Box_Label"
	Festive_Box_Label.Parent = Festive
	Festive_Box_Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Festive_Box_Label.BackgroundTransparency = 1.000
	Festive_Box_Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Festive_Box_Label.BorderSizePixel = 0
	Festive_Box_Label.Position = UDim2.new(0, 0, -0.100000001, 0)
	Festive_Box_Label.Size = UDim2.new(0, 100, 0, 20)
	Festive_Box_Label.Font = Enum.Font.Jura
	Festive_Box_Label.Text = "Festive Box"
	Festive_Box_Label.TextColor3 = Color3.fromRGB(255, 255, 255)
	Festive_Box_Label.TextSize = 14.000
	Festive_Box_Label.TextTransparency = 1

	Festive.MouseEnter:Connect(function()
		local tweentrans = TweenService:Create(Festive_Box_Label, TweenInfo.new(0.3), {TextTransparency = 0})
		tweentrans:Play()
	end)
	
	Festive.MouseLeave:Connect(function()
		local tweentrans = TweenService:Create(Festive_Box_Label, TweenInfo.new(0.3), {TextTransparency = 1})
		tweentrans:Play()
	end)

	local Heavenly_Debounce = false
	Heavenly.Name = "Heavenly"
	Heavenly.Parent = Boxes_ScrollFrame
	Heavenly.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Heavenly.BackgroundTransparency = 1.000
	Heavenly.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Heavenly.BorderSizePixel = 0
	Heavenly.LayoutOrder = 5
	Heavenly.Size = UDim2.new(0, 100, 0, 100)
	Heavenly.Image = "rbxassetid://5140907242"
	Heavenly.ImageTransparency = 0.500

	Heavenly.MouseButton1Click:Connect(function()
		Heavenly_Debounce = not Heavenly_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Heavenly"] = Heavenly_Debounce
		if Heavenly_Debounce then
			local tweentrans = TweenService:Create(Heavenly, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(Heavenly, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	Heavenly_Box_Label.Name = "Heavenly_Box_Label"
	Heavenly_Box_Label.Parent = Heavenly
	Heavenly_Box_Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Heavenly_Box_Label.BackgroundTransparency = 1.000
	Heavenly_Box_Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Heavenly_Box_Label.BorderSizePixel = 0
	Heavenly_Box_Label.Position = UDim2.new(0, 0, -0.100000001, 0)
	Heavenly_Box_Label.Size = UDim2.new(0, 100, 0, 20)
	Heavenly_Box_Label.Font = Enum.Font.Jura
	Heavenly_Box_Label.Text = "Heavenly Box"
	Heavenly_Box_Label.TextColor3 = Color3.fromRGB(255, 255, 255)
	Heavenly_Box_Label.TextSize = 14.000
	Heavenly_Box_Label.TextTransparency = 1

	Heavenly.MouseEnter:Connect(function()
		local tweentrans = TweenService:Create(Heavenly_Box_Label, TweenInfo.new(0.3), {TextTransparency = 0})
		tweentrans:Play()
	end)
	
	Heavenly.MouseLeave:Connect(function()
		local tweentrans = TweenService:Create(Heavenly_Box_Label, TweenInfo.new(0.3), {TextTransparency = 1})
		tweentrans:Play()
	end)

	local Inferno_Debounce = false
	Inferno.Name = "Inferno"
	Inferno.Parent = Boxes_ScrollFrame
	Inferno.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Inferno.BackgroundTransparency = 1.000
	Inferno.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Inferno.BorderSizePixel = 0
	Inferno.LayoutOrder = 2
	Inferno.Size = UDim2.new(0, 100, 0, 100)
	Inferno.Image = "http://www.roblox.com/asset/?id=5140907368"
	Inferno.ImageTransparency = 0.500

	Inferno.MouseButton1Click:Connect(function()
		Inferno_Debounce = not Inferno_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Inferno"] = Inferno_Debounce
		if Inferno_Debounce then
			local tweentrans = TweenService:Create(Inferno, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(Inferno, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	Inferno_Box_Label.Name = "Inferno_Box_Label"
	Inferno_Box_Label.Parent = Inferno
	Inferno_Box_Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Inferno_Box_Label.BackgroundTransparency = 1.000
	Inferno_Box_Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Inferno_Box_Label.BorderSizePixel = 0
	Inferno_Box_Label.Position = UDim2.new(0, 0, -0.100000001, 0)
	Inferno_Box_Label.Size = UDim2.new(0, 100, 0, 20)
	Inferno_Box_Label.Font = Enum.Font.Jura
	Inferno_Box_Label.Text = "Inferno Box"
	Inferno_Box_Label.TextColor3 = Color3.fromRGB(255, 255, 255)
	Inferno_Box_Label.TextSize = 14.000
	Inferno_Box_Label.TextTransparency = 1

	Inferno.MouseEnter:Connect(function()
		local tweentrans = TweenService:Create(Inferno_Box_Label, TweenInfo.new(0.3), {TextTransparency = 0})
		tweentrans:Play()
	end)
	
	Inferno.MouseLeave:Connect(function()
		local tweentrans = TweenService:Create(Inferno_Box_Label, TweenInfo.new(0.3), {TextTransparency = 1})
		tweentrans:Play()
	end)

	local Luxury_Debounce = false
	Luxury.Name = "Luxury"
	Luxury.Parent = Boxes_ScrollFrame
	Luxury.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Luxury.BackgroundTransparency = 1.000
	Luxury.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Luxury.BorderSizePixel = 0
	Luxury.LayoutOrder = 5
	Luxury.Size = UDim2.new(0, 100, 0, 100)
	Luxury.Image = "rbxassetid://5140907462"
	Luxury.ImageTransparency = 0.500

	Luxury.MouseButton1Click:Connect(function()
		Luxury_Debounce = not Luxury_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Luxury"] = Luxury_Debounce
		if Luxury_Debounce then
			local tweentrans = TweenService:Create(Luxury, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(Luxury, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	Luxury_Box_Label.Name = "Luxury_Box_Label"
	Luxury_Box_Label.Parent = Luxury
	Luxury_Box_Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Luxury_Box_Label.BackgroundTransparency = 1.000
	Luxury_Box_Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Luxury_Box_Label.BorderSizePixel = 0
	Luxury_Box_Label.Position = UDim2.new(0, 0, -0.100000001, 0)
	Luxury_Box_Label.Size = UDim2.new(0, 100, 0, 20)
	Luxury_Box_Label.Font = Enum.Font.Jura
	Luxury_Box_Label.Text = "Luxury Box"
	Luxury_Box_Label.TextColor3 = Color3.fromRGB(255, 255, 255)
	Luxury_Box_Label.TextSize = 14.000
	Luxury_Box_Label.TextTransparency = 1

	Luxury.MouseEnter:Connect(function()
		local tweentrans = TweenService:Create(Luxury_Box_Label, TweenInfo.new(0.3), {TextTransparency = 0})
		tweentrans:Play()
	end)
	
	Luxury.MouseLeave:Connect(function()
		local tweentrans = TweenService:Create(Luxury_Box_Label, TweenInfo.new(0.3), {TextTransparency = 1})
		tweentrans:Play()
	end)

	local Magnificent_Debounce = false
	Magnificent.Name = "Magnificent"
	Magnificent.Parent = Boxes_ScrollFrame
	Magnificent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Magnificent.BackgroundTransparency = 1.000
	Magnificent.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Magnificent.BorderSizePixel = 0
	Magnificent.LayoutOrder = 5
	Magnificent.Size = UDim2.new(0, 100, 0, 100)
	Magnificent.Image = "rbxassetid://5140907561"
	Magnificent.ImageTransparency = 0.500

	Magnificent.MouseButton1Click:Connect(function()
		Magnificent_Debounce = not Magnificent_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Magnificent"] = Magnificent_Debounce
		if Magnificent_Debounce then
			local tweentrans = TweenService:Create(Magnificent, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(Magnificent, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	Magnificent_Box_Label.Name = "Magnificent_Box_Label"
	Magnificent_Box_Label.Parent = Magnificent
	Magnificent_Box_Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Magnificent_Box_Label.BackgroundTransparency = 1.000
	Magnificent_Box_Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Magnificent_Box_Label.BorderSizePixel = 0
	Magnificent_Box_Label.Position = UDim2.new(0, 0, -0.100000001, 0)
	Magnificent_Box_Label.Size = UDim2.new(0, 100, 0, 20)
	Magnificent_Box_Label.Font = Enum.Font.Jura
	Magnificent_Box_Label.Text = "Magnificent Box"
	Magnificent_Box_Label.TextColor3 = Color3.fromRGB(255, 255, 255)
	Magnificent_Box_Label.TextSize = 14.000
	Magnificent_Box_Label.TextTransparency = 1

	Magnificent.MouseEnter:Connect(function()
		local tweentrans = TweenService:Create(Magnificent_Box_Label, TweenInfo.new(0.3), {TextTransparency = 0})
		tweentrans:Play()
	end)
	
	Magnificent.MouseLeave:Connect(function()
		local tweentrans = TweenService:Create(Magnificent_Box_Label, TweenInfo.new(0.3), {TextTransparency = 1})
		tweentrans:Play()
	end)

	local Pumpkin_Debounce = false
	Pumpkin.Name = "Pumpkin"
	Pumpkin.Parent = Boxes_ScrollFrame
	Pumpkin.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Pumpkin.BackgroundTransparency = 1.000
	Pumpkin.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Pumpkin.BorderSizePixel = 0
	Pumpkin.LayoutOrder = 7
	Pumpkin.Size = UDim2.new(0, 100, 0, 100)
	Pumpkin.Image = "rbxassetid://5140907652"
	Pumpkin.ImageTransparency = 0.500

	Pumpkin.MouseButton1Click:Connect(function()
		Pumpkin_Debounce = not Pumpkin_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Pumpkin"] = Pumpkin_Debounce
		if Pumpkin_Debounce then
			local tweentrans = TweenService:Create(Pumpkin, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(Pumpkin, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	Pumpkin_Box_Label.Name = "Pumpkin_Box_Label"
	Pumpkin_Box_Label.Parent = Pumpkin
	Pumpkin_Box_Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Pumpkin_Box_Label.BackgroundTransparency = 1.000
	Pumpkin_Box_Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Pumpkin_Box_Label.BorderSizePixel = 0
	Pumpkin_Box_Label.Position = UDim2.new(0, 0, -0.100000001, 0)
	Pumpkin_Box_Label.Size = UDim2.new(0, 100, 0, 20)
	Pumpkin_Box_Label.Font = Enum.Font.Jura
	Pumpkin_Box_Label.Text = "Pumpkin Box"
	Pumpkin_Box_Label.TextColor3 = Color3.fromRGB(255, 255, 255)
	Pumpkin_Box_Label.TextSize = 14.000
	Pumpkin_Box_Label.TextTransparency = 1

	Pumpkin.MouseEnter:Connect(function()
		local tweentrans = TweenService:Create(Pumpkin_Box_Label, TweenInfo.new(0.3), {TextTransparency = 0})
		tweentrans:Play()
	end)
	
	Pumpkin.MouseLeave:Connect(function()
		local tweentrans = TweenService:Create(Pumpkin_Box_Label, TweenInfo.new(0.3), {TextTransparency = 1})
		tweentrans:Play()
	end)

	local RedBanded_Debounce = false
	RedBanded.Name = "Red-Banded"
	RedBanded.Parent = Boxes_ScrollFrame
	RedBanded.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RedBanded.BackgroundTransparency = 1.000
	RedBanded.BorderColor3 = Color3.fromRGB(0, 0, 0)
	RedBanded.BorderSizePixel = 0
	RedBanded.LayoutOrder = 3
	RedBanded.Size = UDim2.new(0, 100, 0, 100)
	RedBanded.Image = "rbxassetid://5140907725"
	RedBanded.ImageTransparency = 0.500

	RedBanded.MouseButton1Click:Connect(function()
		RedBanded_Debounce = not RedBanded_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Red-Banded"] = RedBanded_Debounce
		if RedBanded_Debounce then
			local tweentrans = TweenService:Create(RedBanded, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(RedBanded, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	RedBanded_Box_Label.Name = "RedBanded_Box_Label"
	RedBanded_Box_Label.Parent = RedBanded
	RedBanded_Box_Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RedBanded_Box_Label.BackgroundTransparency = 1.000
	RedBanded_Box_Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
	RedBanded_Box_Label.BorderSizePixel = 0
	RedBanded_Box_Label.Position = UDim2.new(0, 0, -0.100000001, 0)
	RedBanded_Box_Label.Size = UDim2.new(0, 100, 0, 20)
	RedBanded_Box_Label.Font = Enum.Font.Jura
	RedBanded_Box_Label.Text = "Red-Banded Box"
	RedBanded_Box_Label.TextColor3 = Color3.fromRGB(255, 255, 255)
	RedBanded_Box_Label.TextSize = 14.000
	RedBanded_Box_Label.TextTransparency = 1

	RedBanded.MouseEnter:Connect(function()
		local tweentrans = TweenService:Create(RedBanded_Box_Label, TweenInfo.new(0.3), {TextTransparency = 0})
		tweentrans:Play()
	end)
	
	RedBanded.MouseLeave:Connect(function()
		local tweentrans = TweenService:Create(RedBanded_Box_Label, TweenInfo.new(0.3), {TextTransparency = 1})
		tweentrans:Play()
	end)

	local Regular_Debounce = false
	Regular.Name = "Regular"
	Regular.Parent = Boxes_ScrollFrame
	Regular.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Regular.BackgroundTransparency = 1.000
	Regular.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Regular.BorderSizePixel = 0
	Regular.Size = UDim2.new(0, 100, 0, 100)
	Regular.Image = "http://www.roblox.com/asset/?id=5140907803"
	Regular.ImageTransparency = 0.500

	Regular.MouseButton1Click:Connect(function()
		Regular_Debounce = not Regular_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Regular"] = Regular_Debounce
		if Regular_Debounce then
			local tweentrans = TweenService:Create(Regular, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(Regular, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	Regular_Box_Label.Name = "Regular_Box_Label"
	Regular_Box_Label.Parent = Regular
	Regular_Box_Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Regular_Box_Label.BackgroundTransparency = 1.000
	Regular_Box_Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Regular_Box_Label.BorderSizePixel = 0
	Regular_Box_Label.Position = UDim2.new(0, 0, -0.100000001, 0)
	Regular_Box_Label.Size = UDim2.new(0, 100, 0, 20)
	Regular_Box_Label.Font = Enum.Font.Jura
	Regular_Box_Label.Text = "Regular Box"
	Regular_Box_Label.TextColor3 = Color3.fromRGB(255, 255, 255)
	Regular_Box_Label.TextSize = 14.000
	Regular_Box_Label.TextTransparency = 1

	Regular.MouseEnter:Connect(function()
		local tweentrans = TweenService:Create(Regular_Box_Label, TweenInfo.new(0.3), {TextTransparency = 0})
		tweentrans:Play()
	end)
	
	Regular.MouseLeave:Connect(function()
		local tweentrans = TweenService:Create(Regular_Box_Label, TweenInfo.new(0.3), {TextTransparency = 1})
		tweentrans:Play()
	end)

	local Spectral_Debounce = false
	Spectral.Name = "Spectral"
	Spectral.Parent = Boxes_ScrollFrame
	Spectral.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Spectral.BackgroundTransparency = 1.000
	Spectral.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Spectral.BorderSizePixel = 0
	Spectral.LayoutOrder = 4
	Spectral.Size = UDim2.new(0, 100, 0, 100)
	Spectral.Image = "rbxassetid://5140907887"
	Spectral.ImageTransparency = 0.500

	Spectral.MouseButton1Click:Connect(function()
		Spectral_Debounce = not Spectral_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Spectral"] = Spectral_Debounce
		if Spectral_Debounce then
			local tweentrans = TweenService:Create(Spectral, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(Spectral, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	Spectral_Box_Label.Name = "Spectral_Box_Label"
	Spectral_Box_Label.Parent = Spectral
	Spectral_Box_Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Spectral_Box_Label.BackgroundTransparency = 1.000
	Spectral_Box_Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Spectral_Box_Label.BorderSizePixel = 0
	Spectral_Box_Label.Position = UDim2.new(0, 0, -0.100000001, 0)
	Spectral_Box_Label.Size = UDim2.new(0, 100, 0, 20)
	Spectral_Box_Label.Font = Enum.Font.Jura
	Spectral_Box_Label.Text = "Spectral Box"
	Spectral_Box_Label.TextColor3 = Color3.fromRGB(255, 255, 255)
	Spectral_Box_Label.TextSize = 14.000
	Spectral_Box_Label.TextTransparency = 1

	Spectral.MouseEnter:Connect(function()
		local tweentrans = TweenService:Create(Spectral_Box_Label, TweenInfo.new(0.3), {TextTransparency = 0})
		tweentrans:Play()
	end)
	
	Spectral.MouseLeave:Connect(function()
		local tweentrans = TweenService:Create(Spectral_Box_Label, TweenInfo.new(0.3), {TextTransparency = 1})
		tweentrans:Play()
	end)

	local Twitch_Debounce = false
	Twitch.Name = "Twitch"
	Twitch.Parent = Boxes_ScrollFrame
	Twitch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Twitch.BackgroundTransparency = 1.000
	Twitch.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Twitch.BorderSizePixel = 0
	Twitch.LayoutOrder = 6
	Twitch.Size = UDim2.new(0, 100, 0, 100)
	Twitch.Image = "rbxassetid://5140907979"
	Twitch.ImageTransparency = 0.500

	Twitch.MouseButton1Click:Connect(function()
		Twitch_Debounce = not Twitch_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Twitch"] = Twitch_Debounce
		if Twitch_Debounce then
			local tweentrans = TweenService:Create(Twitch, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(Twitch, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	Twitch_Box_Label.Name = "Twitch_Box_Label"
	Twitch_Box_Label.Parent = Twitch
	Twitch_Box_Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Twitch_Box_Label.BackgroundTransparency = 1.000
	Twitch_Box_Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Twitch_Box_Label.BorderSizePixel = 0
	Twitch_Box_Label.Position = UDim2.new(0, 0, -0.100000001, 0)
	Twitch_Box_Label.Size = UDim2.new(0, 100, 0, 20)
	Twitch_Box_Label.Font = Enum.Font.Jura
	Twitch_Box_Label.Text = "Twitch Box"
	Twitch_Box_Label.TextColor3 = Color3.fromRGB(255, 255, 255)
	Twitch_Box_Label.TextSize = 14.000
	Twitch_Box_Label.TextTransparency = 1

	Twitch.MouseEnter:Connect(function()
		local tweentrans = TweenService:Create(Twitch_Box_Label, TweenInfo.new(0.3), {TextTransparency = 0})
		tweentrans:Play()
	end)
	
	Twitch.MouseLeave:Connect(function()
		local tweentrans = TweenService:Create(Twitch_Box_Label, TweenInfo.new(0.3), {TextTransparency = 1})
		tweentrans:Play()
	end)

	local Unreal_Debounce = false
	Unreal.Name = "Unreal"
	Unreal.Parent = Boxes_ScrollFrame
	Unreal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Unreal.BackgroundTransparency = 1.000
	Unreal.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Unreal.BorderSizePixel = 0
	Unreal.LayoutOrder = 1
	Unreal.Size = UDim2.new(0, 100, 0, 100)
	Unreal.Image = "http://www.roblox.com/asset/?id=5140908051"
	Unreal.ImageTransparency = 0.500

	Unreal.MouseButton1Click:Connect(function()
		Unreal_Debounce = not Unreal_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Unreal"] = Unreal_Debounce
		if Unreal_Debounce then
			local tweentrans = TweenService:Create(Unreal, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(Unreal, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	Unreal_Box_Label.Name = "Unreal_Box_Label"
	Unreal_Box_Label.Parent = Unreal
	Unreal_Box_Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Unreal_Box_Label.BackgroundTransparency = 1.000
	Unreal_Box_Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Unreal_Box_Label.BorderSizePixel = 0
	Unreal_Box_Label.Position = UDim2.new(0, 0, -0.100000001, 0)
	Unreal_Box_Label.Size = UDim2.new(0, 100, 0, 20)
	Unreal_Box_Label.Font = Enum.Font.Jura
	Unreal_Box_Label.Text = "Unreal Box"
	Unreal_Box_Label.TextColor3 = Color3.fromRGB(255, 255, 255)
	Unreal_Box_Label.TextSize = 14.000
	Unreal_Box_Label.TextTransparency = 1

	Unreal.MouseEnter:Connect(function()
		local tweentrans = TweenService:Create(Unreal_Box_Label, TweenInfo.new(0.3), {TextTransparency = 0})
		tweentrans:Play()
	end)
	
	Unreal.MouseLeave:Connect(function()
		local tweentrans = TweenService:Create(Unreal_Box_Label, TweenInfo.new(0.3), {TextTransparency = 1})
		tweentrans:Play()
	end)

	local Birthday_Debounce = false
	Birthday.Name = "Birthday"
	Birthday.Parent = Boxes_ScrollFrame
	Birthday.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Birthday.BackgroundTransparency = 1.000
	Birthday.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Birthday.BorderSizePixel = 0
	Birthday.LayoutOrder = 8
	Birthday.Size = UDim2.new(0, 100, 0, 100)
	Birthday.Image = "rbxassetid://5140907021"
	Birthday.ImageTransparency = 0.500

	Birthday.MouseButton1Click:Connect(function()
		Birthday_Debounce = not Birthday_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]["Birthday"] = Birthday_Debounce
		if Birthday_Debounce then
			local tweentrans = TweenService:Create(Birthday, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			local tweentrans = TweenService:Create(Birthday, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	Birthday_Box_Label.Name = "Birthday_Box_Label"
	Birthday_Box_Label.Parent = Birthday
	Birthday_Box_Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Birthday_Box_Label.BackgroundTransparency = 1.000
	Birthday_Box_Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Birthday_Box_Label.BorderSizePixel = 0
	Birthday_Box_Label.Position = UDim2.new(0, 0, -0.100000001, 0)
	Birthday_Box_Label.Size = UDim2.new(0, 100, 0, 20)
	Birthday_Box_Label.Font = Enum.Font.Jura
	Birthday_Box_Label.Text = "Birthday Box"
	Birthday_Box_Label.TextColor3 = Color3.fromRGB(255, 255, 255)
	Birthday_Box_Label.TextSize = 14.000
	Birthday_Box_Label.TextTransparency = 1
	
	Birthday.MouseEnter:Connect(function()
		local tweentrans = TweenService:Create(Birthday_Box_Label, TweenInfo.new(0.3), {TextTransparency = 0})
		tweentrans:Play()
	end)
	
	Birthday.MouseLeave:Connect(function()
		local tweentrans = TweenService:Create(Birthday_Box_Label, TweenInfo.new(0.3), {TextTransparency = 1})
		tweentrans:Play()
	end)

	BottomBar.Name = "BottomBar"
	BottomBar.Parent = Main
	BottomBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BottomBar.BackgroundTransparency = 1.000
	BottomBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BottomBar.BorderSizePixel = 0
	BottomBar.Position = UDim2.new(0, 0, 0.710407257, 0)
	BottomBar.Size = UDim2.new(1, 0, 0.117647059, 38)
	BottomBar.Image = "rbxassetid://4595286933"
	BottomBar.ImageColor3 = Color3.fromRGB(10, 10, 10)
	BottomBar.ImageTransparency = 1.000
	BottomBar.ScaleType = Enum.ScaleType.Slice
	BottomBar.SliceCenter = Rect.new(4, 4, 296, 296)

	local LuckyClovers_Debounce = false
	LuckyClovers.Name = "LuckyClovers"
	LuckyClovers.Parent = BottomBar
	LuckyClovers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LuckyClovers.BackgroundTransparency = 1.000
	LuckyClovers.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LuckyClovers.BorderSizePixel = 0
	LuckyClovers.Position = UDim2.new(0.915052176, 0, 0.125, 0)
	LuckyClovers.Size = UDim2.new(0, 50, 0, 50)
	LuckyClovers.Image = "rbxassetid://5506273657"
	LuckyClovers.ImageTransparency = 0.500

	local CloverUsage = Client.UseClover
	LuckyClovers.MouseButton1Click:Connect(function()
		LuckyClovers_Debounce = not LuckyClovers_Debounce
		SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Use Clovers"] = LuckyClovers_Debounce
		if LuckyClovers_Debounce then
			CloverUsage.Value = true
			local tweentrans = TweenService:Create(LuckyClovers, TweenInfo.new(0.5), {ImageTransparency = 0})
			tweentrans:Play()
		else
			CloverUsage.Value = false
			local tweentrans = TweenService:Create(LuckyClovers, TweenInfo.new(0.5), {ImageTransparency = 0.5})
			tweentrans:Play()
		end
	end)

	Clovers_Left_Label.Name = "Clovers_Left_Label"
	Clovers_Left_Label.Parent = LuckyClovers
	Clovers_Left_Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Clovers_Left_Label.BackgroundTransparency = 1.000
	Clovers_Left_Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Clovers_Left_Label.BorderSizePixel = 0
	Clovers_Left_Label.Position = UDim2.new(-0.4, 0, -0.3, 0)
	Clovers_Left_Label.Size = UDim2.new(0, 72, 0, 25)
	Clovers_Left_Label.Font = Enum.Font.Jura
	Clovers_Left_Label.Text = "Clovers Left: 69420"
	Clovers_Left_Label.TextColor3 = Color3.fromRGB(255, 255, 255)
	Clovers_Left_Label.TextSize = 16.000
	Clovers_Left_Label.TextXAlignment = Enum.TextXAlignment.Right
	Clovers_Left_Label.TextTransparency = 1
	Clovers_Left_Label.ZIndex = 3
	
	LuckyClovers.MouseEnter:Connect(function()
		local tweentrans = TweenService:Create(Clovers_Left_Label, TweenInfo.new(0.3), {TextTransparency = 0})
		tweentrans:Play()
	end)
	
	LuckyClovers.MouseLeave:Connect(function()
		local tweentrans = TweenService:Create(Clovers_Left_Label, TweenInfo.new(0.3), {TextTransparency = 1})
		tweentrans:Play()
	end)

	BoxesLeft_Bar.Name = "BoxesLeft_Bar"
	BoxesLeft_Bar.Parent = BottomBar
	BoxesLeft_Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BoxesLeft_Bar.BackgroundTransparency = 1.000
	BoxesLeft_Bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BoxesLeft_Bar.BorderSizePixel = 0
	BoxesLeft_Bar.Position = UDim2.new(0.308, 0, 0.289, 0)
	BoxesLeft_Bar.Size = UDim2.new(0.383010328, 0, -0.147977918, 38)
	BoxesLeft_Bar.Image = "rbxassetid://4595286933"
	BoxesLeft_Bar.ImageColor3 = Color3.fromRGB(10, 10, 10)
	BoxesLeft_Bar.SliceScale = 2.000

	BoxesLeft_Text.Name = "BoxesLeft_Text"
	BoxesLeft_Text.Parent = BoxesLeft_Bar
	BoxesLeft_Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BoxesLeft_Text.BackgroundTransparency = 1.000
	BoxesLeft_Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BoxesLeft_Text.Position = UDim2.new(0, 23, 0, 4)
	BoxesLeft_Text.Size = UDim2.new(1, -46, 0.289473683, 16)
	BoxesLeft_Text.ZIndex = 5
	BoxesLeft_Text.Font = Enum.Font.Jura
	BoxesLeft_Text.Text = "Total Boxes: 69420"
	BoxesLeft_Text.TextColor3 = Color3.fromRGB(254, 255, 255)
	BoxesLeft_Text.TextScaled = false
	BoxesLeft_Text.TextYAlignment = "Bottom"
	BoxesLeft_Text.TextXAlignment = "Center"
	BoxesLeft_Text.TextSize = 22.000
	BoxesLeft_Text.TextWrapped = true

	Back_Button.Name = "Back_Button"
	Back_Button.Parent = BottomBar
	Back_Button.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
	Back_Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Back_Button.BorderSizePixel = 0
	Back_Button.Position = UDim2.new(0.0193740688, 0, 0.5, 0)
	Back_Button.Size = UDim2.new(0, 70, 0, 20)
	Back_Button.Font = Enum.Font.Jura
	Back_Button.Text = "Back"
	Back_Button.TextColor3 = Color3.fromRGB(255, 255, 255)
	Back_Button.TextSize = 15.000
	Back_Button.TextYAlignment = "Bottom"
	Back_Button.TextXAlignment = "Center"
	Back_Button.TextWrapped = true

	UICorner.Parent = BoxesLeft_Bar
	UICorner_2.Parent = Back_Button

	Back_Button.MouseEnter:Connect(function()
		local tweentrans = TweenService:Create(Back_Button, TweenInfo.new(0.5), {BackgroundTransparency = 0.3, TextTransparency = 0.3})
		tweentrans:Play()
	end)

	Back_Button.MouseLeave:Connect(function()
		local tweentrans = TweenService:Create(Back_Button, TweenInfo.new(0.5), {BackgroundTransparency = 0, TextTransparency = 0})
		tweentrans:Play()
	end)

	Back_Button.MouseButton1Click:Connect(function()
		transitionBack(Main, game.CoreGui["Ironic's Miner's Haven Ghost Client - v"..SettingsS.ScriptVersion].Main, UDim2.new(0, 671, 0, 415), Glow)
	end)

	function OpenBoxes()
		local boxesToOpen = SettingsS["Autofarm"]["Crates"]["Open Boxes"]["Boxes"]
		
		for boxName, isOpen in pairs(boxesToOpen) do
			if isOpen then
				task.wait()
				RS.MysteryBox:InvokeServer(boxName)
				BoxesLeft_Text.Text = "Total Boxes: "..game.Players.LocalPlayer.Crates.Value
				Clovers_Left_Label.Text = "Clovers Left: "..game.Players.LocalPlayer.Clovers.Value
				task.wait(7)
			end
		end
	end

	getgenv().Open = true
	task.defer(function()
		while getgenv().Open and task.wait() do
			BoxesLeft_Text.Text = "Total Boxes: "..game.Players.LocalPlayer.Crates.Value
			Clovers_Left_Label.Text = "Clovers Left: "..game.Players.LocalPlayer.Clovers.Value
			OpenBoxes()
		end
	end)

	local DragFrames = {Main} -- Add all the frames you want to make draggable here
	local dragging = {}
	local dragInput = {}
	local dragStart = {}
	local startPos = {}
	local UserInputService = game:GetService("UserInputService")

	local function update(frame, input)
	    local delta = input.Position - dragStart[frame]
	    local dragTime = 0.04
	    local SmoothDrag = {}
	    SmoothDrag.Position = UDim2.new(startPos[frame].X.Scale, startPos[frame].X.Offset + delta.X, startPos[frame].Y.Scale, startPos[frame].Y.Offset + delta.Y)
	    local dragSmoothFunction = TweenService:Create(frame, TweenInfo.new(dragTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), SmoothDrag)
	    dragSmoothFunction:Play()
	end

	for _, frame in ipairs(DragFrames) do
	    dragging[frame] = false

	    frame.InputBegan:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
	            dragging[frame] = true
	            dragStart[frame] = input.Position
	            startPos[frame] = frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragging[frame] = false
	                end
	            end)
	        end
	    end)

	    frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput[frame] = input
	        end
	    end)
	end

	UserInputService.InputChanged:Connect(function(input)
	    for frame, draggingState in pairs(dragging) do
	        if draggingState and dragInput[frame] == input and frame.Size then
	            update(frame, input)
	        end
	    end
	end)
end

--===[[ RP Farm Section ]]===--

--[[
	SettingsS = {
		["Autofarm"] = {
			["RP Farm"] = {
				["Farm Enabled"] = false,
				["Furnace Name"] = "Type Here"
			},
		},
	}
--]]

FurnaceName_TextBox = AutoRPFarm_Section:addTextbox(
	"Enter Furnace Name",
	SettingsS["Autofarm"]["RP Farm"]["Furnace Name"],
	function(Value, focusLost)
		if focusLost then
			SettingsS["Autofarm"]["RP Farm"]["Furnace Name"] = Value
		end
	end
)
RPFarm_Toggle = AutoRPFarm_Section:addToggle(
	"Enabled/Disable RP Farming",
	SettingsS["Autofarm"]["RP Farm"]["Farm Enabled"],
	function(state)
		SettingsS["Autofarm"]["RP Farm"]["Farm Enabled"] = state
		SaveS()

		task.defer(function()
			-- Function to find a child of an instance using a partial name

			-- Example usage:
			local parentInstance = workspace -- Replace 'workspace' with the actual parent instance
			local partialName = "partialName" -- Replace 'partialName' with the partial name you're looking for

			local foundChild = findChildByPartialName(parentInstance, partialName)
			if foundChild then
			    print("Child found:", foundChild.Name)
			else
			    print("Child not found with partial name:", partialName)
			end

			while SettingsS["Autofarm"]["RP Farm"]["Farm Enabled"] do task.wait()
				function TeleportOre(ore)
					local Furnace = nil
					if ore:IsA("Part") and ore:FindFirstChild("Cash") then
						local foundFurance = findChildByPartialName(FacBase.Parent, SettingsS["Autofarm"]["RP Farm"]["Furnace Name"])
						if foundFurance then
							ore.CFrame = foundFurance.Model.Lava.CFrame + Vector3.new(0, 0.5, 0)
						else
							MainWindow:Notify("Failed","' "..SettingsS["Autofarm"]["RP Farm"]["Furnace Name"].." ' Not Found, Please place the Furnace or correct the name!")
							repeat 
								task.wait(0.1) 
								if SettingsS["Autofarm"]["RP Farm"]["Farm Enabled"] == false then break end 
								foundFurance = findChildByPartialName(FacBase.Parent, SettingsS["Autofarm"]["RP Farm"]["Furnace Name"])
							until foundFurance
							ore.CFrame = foundFurance.Model.Lava.CFrame + Vector3.new(0, 0.5, 0)
						end
					end
				end

				for i,v in next, PlrDroppedParts:GetChildren() do
					if SettingsS["Autofarm"]["RP Farm"]["Farm Enabled"] then
						TeleportOre(v)
					end
				end
			end
		end)
	end
)

--[[

	["Auto Sacrifice"] = {
			["Enabled"] = false,
			["Ore Boost"] = false,
			["Excavate"] = true
		}
]]


local AutoSacrifice_Status = AutoSacrifice_Section:addButton(
	"Status: Off", 
	function()
		print("Uhh.. Why'd you click me..? I do nothing.")
	end
)
function PlaceItem(Item,Position,Base)
	RS.PlaceItem:InvokeServer(Item, Position, {Base}) 
	task.wait(0.05)
end
function MultiPlaceItem(Table1,Table2)
	RS.PlaceMultiple:InvokeServer(Table1, Table2)
end
function BuyItem(Item,Amount)
	RS.BuyItem:InvokeServer(Item, Amount)
	task.wait(0.05)
end
function Withdrawl(Section, Button, String)
	setthreadcaps(8)
	if Section ~= nil then 
		Section:updateButton(Button,String)
	end
	game.ReplicatedStorage.DestroyAll:InvokeServer()
	task.wait(0.3)
end
function SetLimit(Amount)
	RS.UpdateLimit:FireServer("OreLimit", Amount)
	task.wait(0.05)
end

function Pulse()
	if not table.find(validInInv_Name(), "Ore Pulsar") then
		BuyItem:InvokeServer("Ore Pulsar", 1)
		wait(0.01) 
	end
	PlaceItem("Ore Pulsar", CFrame.new(75, 5.00000381, 73.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1) + Tycoon.Base.Position, {FacBase}) 
	wait(0.5)
	game.ReplicatedStorage.Pulse:FireServer()
	wait(0.1)
	game:GetService("ReplicatedStorage").DestroyItem:InvokeServer(PlrTycoon["Ore Pulsar"])
end
function DestroyItem(Name)
	RS.DestroyItem:InvokeServer(PlrTycoon[Name])
end
function GoToCrates()
	for i,v in next, workspace.Boxes:GetChildren() do

		local Velocity_Variable_2 = nil
		repeat task.wait() 
			if isMovingSlow(v, 2) then
				Velocity_Variable_2 = true
			else
				Velocity_Variable_2 = false
			end
		until Velocity_Variable_2 == true

		teleportToTarget(v)
		task.wait(0.3)
		firetouchinterest(Client.Character.HumanoidRootPart, v, 0)
		firetouchinterest(Client.Character.HumanoidRootPart, v, 1)			
		task.wait(0.3)
	end
end
function CalculateLocation(Position1, Position2, Position3, Position4, Position5, Position6)
	local Pos1
	local Pos2
	local Pos3
	local Pos4
	local Pos5
	local Pos6
	local Pos7
	local Pos8
	local Pos9
	local Pos10
	local Pos11
	local Pos12
	if game:GetService("MarketplaceService"):UserOwnsGamePassAsync(Client.UserId, 747406) then
		if PlrTycoon.Name == "Factory1" then
			Pos1 = Position1 - 259.881531
			Pos2 = Position2 + 62.0766449
			Pos3 = Position3 - 183.379639
		elseif PlrTycoon.Name == "Factory2"  then
			Pos1 = Position1 + 284.0075989
			Pos2 = Position2 + 87.3820801
			Pos3 = Position3 - 48.2033844
		elseif PlrTycoon.Name == "Factory3" then
			Pos1 = Position1 + 672.076538 
			Pos2 = Position2 + 72.7919998
			Pos3 = Position3 + 340.343933
		elseif PlrTycoon.Name == "Factory4" then
			Pos1 = Position1 + 418.114716
			Pos2 = Position2 + 36.8071632
			Pos3 = Position3 + 911.529541
		elseif PlrTycoon.Name == "Factory5" then
			Pos1 = Position1 - 111.149445
			Pos2 = Position2 + 78.7649536
			Pos3 = Position3 + 947.775818
		elseif PlrTycoon.Name == "Factory6" then
			Pos1 = Position1 - 476.019592
			Pos2 = Position2 + 102.726143
			Pos3 = Position3 + 522.690369
		end
		if Position4 == 1 and Position5 == 0 and Position6 == 0 then
			Pos4 = 1.19248806e-08
			Pos5 = 0
			Pos6 = -1
			Pos7 = 0
			Pos8 = 1
			Pos9 = 0
			Pos10 = 1
			Pos11 = 0
			Pos12 = 1.19248806e-08
		elseif Position4 == 0 and Position5 == 0 and Position6 == -1 then
			Pos4 = 1
			Pos5 = 0
			Pos6 = 1.74845553e-07
			Pos7 = 0
			Pos8 = 1
			Pos9 = 0
			Pos10 = -1.74845553e-07
			Pos11 = 0
			Pos12 = 1
		elseif Position4 == -1 and Position5 == 0 and Position6 == 0 then
			Pos4 = -4.37113883e-08
			Pos5 = 0
			Pos6 = 1
			Pos7 = 0
			Pos8 = 1
			Pos9 = 0
			Pos10 = -1
			Pos11 = 0
			Pos12 = -4.37113883e-08
		elseif Position4 == 0 and Position5 == 0 and Position6 == 1 then
			Pos4 = -1
			Pos5 = 0
			Pos6 = -8.74227766e-08
			Pos7 = 0
			Pos8 = 1
			Pos9 = 0
			Pos10 = 8.74227766e-08
			Pos11 = 0
			Pos12 = -1
		end

		local cframe = CFrame.new(Pos1, Pos2, Pos3, Pos4, Pos5, Pos6, Pos7, Pos8, Pos9, Pos10, Pos11, Pos12)
		return cframe
	else
		if PlrTycoon.Name == "Factory1" then
			Pos1 = Position1 - 286.881531
			Pos2 = Position2 + 62.0766449
			Pos3 = Position3 - 210.379639
		elseif PlrTycoon.Name == "Factory2"  then
			Pos1 = Position1 + 257.0075989
			Pos2 = Position2 + 87.3820801
			Pos3 = Position3 - 75.2033844
		elseif PlrTycoon.Name == "Factory3" then
			Pos1 = Position1 + 645.076538
			Pos2 = Position2 + 72.7919998
			Pos3 = Position3 + 313.343933
		elseif PlrTycoon.Name == "Factory4" then
			Pos1 = Position1 + 391.114716
			Pos2 = Position2 + 36.8071632
			Pos3 = Position3 + 884.529541
		elseif PlrTycoon.Name == "Factory5" then
			Pos1 = Position1 - 138.149445
			Pos2 = Position2 + 78.7649536
			Pos3 = Position3 + 914.275818
		elseif PlrTycoon.Name == "Factory6" then
			Pos1 = Position1 - 503.019592
			Pos2 = Position2 + 102.726143
			Pos3 = Position3 + 495.690369
		end
		if Position4 == 1 and Position5 == 0 and Position6 == 0 then
			Pos4 = 1.19248806e-08
			Pos5 = 0
			Pos6 = -1
			Pos7 = 0
			Pos8 = 1
			Pos9 = 0
			Pos10 = 1
			Pos11 = 0
			Pos12 = 1.19248806e-08
		elseif Position4 == 0 and Position5 == 0 and Position6 == -1 then
			Pos4 = 1
			Pos5 = 0
			Pos6 = 1.74845553e-07
			Pos7 = 0
			Pos8 = 1
			Pos9 = 0
			Pos10 = -1.74845553e-07
			Pos11 = 0
			Pos12 = 1
		elseif Position4 == -1 and Position5 == 0 and Position6 == 0 then
			Pos4 = -4.37113883e-08
			Pos5 = 0
			Pos6 = 1
			Pos7 = 0
			Pos8 = 1
			Pos9 = 0
			Pos10 = -1
			Pos11 = 0
			Pos12 = -4.37113883e-08
		elseif Position4 == 0 and Position5 == 0 and Position6 == 1 then
			Pos4 = -1
			Pos5 = 0
			Pos6 = -8.74227766e-08
			Pos7 = 0
			Pos8 = 1
			Pos9 = 0
			Pos10 = 8.74227766e-08
			Pos11 = 0
			Pos12 = -1
		end

		local cframe = CFrame.new(Pos1, Pos2, Pos3, Pos4, Pos5, Pos6, Pos7, Pos8, Pos9, Pos10, Pos11, Pos12)
		return cframe
	end
end
function TopCorners(part)
    -- Initialize a table to store the corner positions
    local corners = {}

    -- Get the size of the part
    local size = part.Size
    local halfSize = size / 2

    -- Get the CFrame of the part
    local partCFrame = part.CFrame

    -- Calculate the positions of the four top corners
    local cornersTable = {
        partCFrame * CFrame.new(-halfSize.X, halfSize.Y, -halfSize.Z),
        partCFrame * CFrame.new(halfSize.X, halfSize.Y, -halfSize.Z),
        partCFrame * CFrame.new(halfSize.X, halfSize.Y, halfSize.Z),
		partCFrame * CFrame.new(-halfSize.X, halfSize.Y, halfSize.Z)
    }

    -- Extract only the X and Z components of each corner's position
    for _, corner in ipairs(cornersTable) do
        local cornerPosition = corner.Position
        table.insert(corners, Vector2.new(cornerPosition.X, cornerPosition.Z))
    end

    -- Return the table of corner positions
    return corners
end


SettingsS["Autofarm"]["Auto Sacrifice"]["Enabled"] = false
local OreBoostTest = true
local SacExcavate = true
AutoSacrifice_Toggle = AutoSacrifice_Section:addToggle(
	"Auto Sacrifice (Fully Auto - For Beginners) [IN DEVELOPMENT]",
	false,
	function(State)
		SettingsS["Autofarm"]["Auto Sacrifice"]["Enabled"] = State
		SaveS()

		if SettingsS["Autofarm"]["Auto Sacrifice"]["Enabled"] == true then

			SacExcavate = true

			MainWindow:Notify("Warning","Do not use ANY other options while Auto Sacrifice is running, it CAN break the entire Auto System.")

			SetLimit(scale_value(250))

			task.defer(function() -- Remote Drop
				repeat task.wait(0.1)
					game:GetService("ReplicatedStorage").RemoteDrop:FireServer()
				until SettingsS["Autofarm"]["Auto Sacrifice"]["Enabled"] == false
			end)
			task.defer(function()
				repeat task.wait(0.2)
					for _, Item in next, PlrTycoon:GetChildren() do 
						if Item:FindFirstChild("Model") and Item.Model:FindFirstChild("Internal") then
							local Internal = Item.Model.Internal
						
							local partPosition = Internal.Position
							local partSize = Internal.Size
							local width = partSize.X
							local orientation = math.atan2(Internal.CFrame.LookVector.Z, Internal.CFrame.LookVector.X)
						
							local offsetX = width * math.cos(orientation + math.pi)
							local offsetZ = width * math.sin(orientation + math.pi)
							local offset = Vector3.new(offsetX, -3, offsetZ)
							local teleportPosition = partPosition - offset
						
							Client.Character:SetPrimaryPartCFrame(CFrame.new(teleportPosition))
							task.wait(0.1)
							fireproximityprompt(Internal.ProximityPrompt)
							task.wait(0.1)
						end
					end
				until SacExcavate == false
			end)
			task.defer(function()
				local Cash = Client.PlayerGui.GUI.Money
				local RP = Client.Points

				local MultiplaceTable2
				if Tycoon == "Factory1" then
					MultiplaceTable2 = {
						["height"] = FacBase.Position.Y,
						["parts"] = {
							[workspace.Tycoons.Factory1.Base] = 1
						},
						["corners"] = {TopCorners(FacBase)},
						["origin"] = {
							["Size"] = FacBase.Size.X, 0, FacBase.Size.Z,
							["Position"] = FacBase.Position
						}
					}
				elseif Tycoon == "Factory2" then
					MultiplaceTable2 = {
						["height"] = FacBase.Position.Y,
						["parts"] = {
							[workspace.Tycoons.Factory2.Base] = 1
						},
						["corners"] = {TopCorners(FacBase)},
						["origin"] = {
							["Size"] = FacBase.Size.X, 0, FacBase.Size.Z,
							["Position"] = FacBase.Position
						}
					}
				elseif Tycoon == "Factory3" then
					MultiplaceTable2 = {
						["height"] = FacBase.Position.Y,
						["parts"] = {
							[workspace.Tycoons.Factory3.Base] = 1
						},
						["corners"] = {TopCorners(FacBase)},
						["origin"] = {
							["Size"] = FacBase.Size.X, 0, FacBase.Size.Z,
							["Position"] = FacBase.Position
						}
					}
				elseif Tycoon == "Factory4" then
					MultiplaceTable2 = {
						["height"] = FacBase.Position.Y,
						["parts"] = {
							[workspace.Tycoons.Factory4.Base] = 1
						},
						["corners"] = {TopCorners(FacBase)},
						["origin"] = {
							["Size"] = FacBase.Size.X, 0, FacBase.Size.Z,
							["Position"] = FacBase.Position
						}
					}
				elseif Tycoon == "Factory5" then
					MultiplaceTable2 = {
						["height"] = FacBase.Position.Y,
						["parts"] = {
							[workspace.Tycoons.Factory5.Base] = 1
						},
						["corners"] = {TopCorners(FacBase)},
						["origin"] = {
							["Size"] = FacBase.Size.X, 0, FacBase.Size.Z,
							["Position"] = FacBase.Position
						}
					}
				elseif Tycoon == "Factory6" then
					MultiplaceTable2 = {
						["height"] = FacBase.Position.Y,
						["parts"] = {
							[workspace.Tycoons.Factory6.Base] = 1
						},
						["corners"] = {TopCorners(FacBase)},
						["origin"] = {
							["Size"] = FacBase.Size.X, 0, FacBase.Size.Z,
							["Position"] = FacBase.Position
						}
					}
				end
				while SettingsS["Autofarm"]["Auto Sacrifice"]["Enabled"] and task.wait() do
					Withdrawl(AutoSacrifice_Section, AutoSacrifice_Status, "Status: Withdrawling Base")

					UpdateButtonNew(AutoSacrifice_Section, AutoSacrifice_Status, "Status: Waiting for " .. MoneyLib.HandleMoney(12e4) .. " (for Remote Diamoind Mine)")

					task.wait()

					if table.find(validInInv_ID(), 87) then -- Cell Furance 
						PlaceItem(getItemName(87), CalculateLocation(-84,5.0,-84,0,0,1), FacBase)
					else
						PlaceItem(getItemName(2), CalculateLocation(-84,3.5,-84,0,0,1), FacBase)
					end
					for i = 1, 10 do 
						if SettingsS["Autofarm"]["Auto Sacrifice"]["Enabled"] == false then break end
						BuyItem(getItemName(20), 1)
						task.wait()
						if i == 1 then
							PlaceItem(getItemName(20), CalculateLocation(-165,5.0,-163.5,1,0,0), FacBase)
						elseif i == 2 then
							PlaceItem(getItemName(20), CalculateLocation(-159,5.0,-163.5,1,0,0), FacBase)
						elseif i == 3 then
							PlaceItem(getItemName(20), CalculateLocation(-153,5.0,-163.5,1,0,0), FacBase)
						elseif i == 4 then
							PlaceItem(getItemName(20), CalculateLocation(-147,5.0,-163.5,1,0,0), FacBase)
						elseif i == 5 then
							PlaceItem(getItemName(20), CalculateLocation(-141,5.0,-163.5,1,0,0), FacBase)
						elseif i == 6 then
							PlaceItem(getItemName(20), CalculateLocation(-135,5.0,-163.5,1,0,0), FacBase)
						elseif i == 7 then
							PlaceItem(getItemName(20), CalculateLocation(-129,5.0,-163.5,1,0,0), FacBase)
						elseif i == 8 then
							PlaceItem(getItemName(20), CalculateLocation(-123,5.0,-163.5,1,0,0), FacBase)
						elseif i == 9 then
							PlaceItem(getItemName(20), CalculateLocation(-117,5.0,-163.5,1,0,0), FacBase)
						elseif i == 10 then
							PlaceItem(getItemName(20), CalculateLocation(-111,5.0,-163.5,1,0,0), FacBase)
						end
						repeat task.wait() until Cash.Value >= 4e2
					end

					if SettingsS["Autofarm"]["Auto Sacrifice"]["Enabled"] == false then break end

					if PlrTycoon:FindFirstChild(getItemName(2)) then -- Check if basic furnace, if so, remove and replace
						DestroyItem(getItemName(2))
						task.wait()
						BuyItem(getItemName(87), 1)
						task.wait()
						PlaceItem(getItemName(87), CalculateLocation(-84,5.0,-84,0,0,1), FacBase)
					end
						

					repeat task.wait() until Cash.Value >= 25e3 --25k

					if SettingsS["Autofarm"]["Auto Sacrifice"]["Enabled"] == false then break end

					BuyItem(getItemName(184), 1)
					task.wait()
					PlaceItem(getItemName(184), CalculateLocation(-27,5.0,-148.5,1,0,0), FacBase)

					UpdateButtonNew(AutoSacrifice_Section, AutoSacrifice_Status, "Status: Waiting for " .. MoneyLib.HandleMoney(12e4) .. " (for Remote Diamoind Mine)")

					repeat task.wait() until Cash.Value >= 12e4 -- 120k

					if SettingsS["Autofarm"]["Auto Sacrifice"]["Enabled"] == false then break end

					BuyItem(getItemName(64), 1) -- Remote Diamoind Mine
					task.wait()
					PlaceItem(getItemName(64), CalculateLocation(-4.5,6.5,-6,-1,0,0), FacBase)

					UpdateButtonNew(AutoSacrifice_Section, AutoSacrifice_Status, "Status: Waiting for " .. MoneyLib.HandleMoney(95e4) .. " (for Cell Incinerator)")

					repeat task.wait() until Cash.Value >= 95e4 -- 950k

					if SettingsS["Autofarm"]["Auto Sacrifice"]["Enabled"] == false then break end

					BuyItem(getItemName(88), 1) -- Cell Incinerator
					task.wait()
					DestroyItem(getItemName(87))
					task.wait()
					PlaceItem(getItemName(88), CalculateLocation(-84,5.0,-81,0,0,1), FacBase)

					UpdateButtonNew(AutoSacrifice_Section, AutoSacrifice_Status, "Status: Waiting for " .. MoneyLib.HandleMoney(40e5) .. " (for the rest of the Remote Diamoind Mines)")

					repeat task.wait() until Cash.Value >= 40e5 -- 4m

					if SettingsS["Autofarm"]["Auto Sacrifice"]["Enabled"] == false then break end

					BuyItem(getItemName(64), 32)
					task.wait()
					PlaceItem(getItemName(64), CalculateLocation(-13.5,6.5,-6,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-22.5,6.5,-6,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-31.5,6.5,-6,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-40.5,6.5,-6,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-49.5,6.5,-6,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-58.5,6.5,-6,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-67.5,6.5,-6,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-76.5,6.5,-6,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-85.5,6.5,-6,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-94.5,6.5,-6,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-103.5,6.5,-6,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-112.5,6.5,-6,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-121.5,6.5,-6,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-130.5,6.5,-6,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-139.5,6.5,-6,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-148.5,6.5,-6,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-157.5,6.5,-6,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-4.5,6.5,-18,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-13.5,6.5,-18,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-22.5,6.5,-18,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-31.5,6.5,-18,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-40.5,6.5,-18,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-49.5,6.5,-18,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-58.5,6.5,-18,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-67.5,6.5,-18,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-76.5,6.5,-18,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-85.5,6.5,-18,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-94.5,6.5,-18,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-103.5,6.5,-18,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-112.5,6.5,-18,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-121.5,6.5,-18,-1,0,0), FacBase)
					PlaceItem(getItemName(64), CalculateLocation(-130.5,6.5,-18,-1,0,0), FacBase)

					UpdateButtonNew(AutoSacrifice_Section, AutoSacrifice_Status, "Status: Waiting for " .. MoneyLib.HandleMoney(120e6) .. " (For Trillions Setup)")

					repeat task.wait() until Cash.Value >= 120e6 -- 120m

					if SettingsS["Autofarm"]["Auto Sacrifice"]["Enabled"] == false then break end

					UpdateButtonNew(AutoSacrifice_Section, AutoSacrifice_Status, "Status: Waiting for 7000 RP (for Trillions Setup)")
					
					BuyItem(getItemName(113), 1) 	-- Proficient Research Center
					task.wait()
					DestroyItem(getItemName(88)) 	-- Cell Incinerator
					task.wait()
					PlaceItem(getItemName(113), CalculateLocation(-87,3.5,-87,0,0,1), FacBase)

					SacExcavate = false
					if RP.Value <= 7e3 then
						repeat task.wait(1) 
							Break(SettingsS["Autofarm"]["Auto Sacrifice"]["Enabled"]) 
							GoToCrates()
							teleportToTarget(PlrTycoon.Base)
						until RP.Value >= 7e3 -- 7k RP
						task.wait(6)
					end

					Withdrawl(AutoSacrifice_Section, AutoSacrifice_Status, "Status: Waiting for " .. MoneyLib.HandleMoney(40e5) .. " (For Quadrillions Setup)")

					if SettingsS["Autofarm"]["Auto Sacrifice"]["Enabled"] == false then break end

					task.wait()

					BuyItem(getItemName(94), 30) 	-- Portable Ore Advancer
					BuyItem(getItemName(45), 1)		-- Radioactive Refiner
					BuyItem(getItemName(24), 11) 	-- Plasma Iron Polisher
					BuyItem(getItemName(46), 6) 	-- Ore Cannon
					BuyItem(getItemName(404), 1) 	-- Elevated Furnace
					BuyItem(getItemName(25), 1) 	-- Ore Scanner

					task.wait()
					getgenv().Boost = 20
					local qdSetupTable = {
					-- Plasma Iron Polisher x11
						{ getItemName(24), CalculateLocation(-6.0,3.5,-165,0,0,-1), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(24), CalculateLocation(-6.0,3.5,-159,0,0,-1), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(24), CalculateLocation(-6.0,3.5,-153,0,0,-1), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(24), CalculateLocation(-6.0,3.5,-147,0,0,-1), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(24), CalculateLocation(-6.0,3.5,-141,0,0,-1), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(24), CalculateLocation(-6.0,3.5,-135,0,0,-1), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(24), CalculateLocation(-6.0,3.5,-129,0,0,-1), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(24), CalculateLocation(-6.0,3.5,-123,0,0,-1), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(24), CalculateLocation(-6.0,3.5,-117,0,0,-1), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(24), CalculateLocation(-6.0,3.5,-111,0,0,-1), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(24), CalculateLocation(-6.0,3.5,-105,0,0,-1), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
					-- Portable Ore Advancer x30
						{ getItemName(94), CalculateLocation(-16.5,3.5,-165,-1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-16.5,3.5,-159,1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-16.5,3.5,-153,-1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-16.5,3.5,-147,1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-16.5,3.5,-141,-1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-16.5,3.5,-135,1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-16.5,3.5,-129,-1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-16.5,3.5,-123,1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-16.5,3.5,-117,-1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-16.5,3.5,-111,1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-25.5,3.5,-165,-1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-25.5,3.5,-159,1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-25.5,3.5,-153,-1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-25.5,3.5,-147,1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-25.5,3.5,-141,-1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-25.5,3.5,-135,1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-25.5,3.5,-129,-1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-25.5,3.5,-123,1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-25.5,3.5,-117,-1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-25.5,3.5,-111,1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-34.5,3.5,-165,-1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-34.5,3.5,-159,1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-34.5,3.5,-153,-1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-34.5,3.5,-147,1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-34.5,3.5,-141,-1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-34.5,3.5,-135,1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-34.5,3.5,-129,-1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{ getItemName(94), CalculateLocation(-34.5,3.5,-123,1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{getItemName(94), CalculateLocation(-34.5,3.5,-117,-1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{getItemName(94), CalculateLocation(-34.5,3.5,-111,1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
					-- Ore Cannon x6
						{getItemName(46), CalculateLocation(-45.0,3.5,-133.5,0,0,-1), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{getItemName(46), CalculateLocation(-45.0,3.5,-124.5,0,0,-1), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{getItemName(46), CalculateLocation(-45.0,3.5,-115.5,0,0,-1), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{getItemName(46), CalculateLocation(-45.0,3.5,-106.5,0,0,-1), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{getItemName(46), CalculateLocation(-45.0,3.5,-97.5,0,0,-1), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
						{getItemName(46), CalculateLocation(-45.0,3.5,-88.5,0,0,-1), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
					-- Radioactive Refiner x1
						{getItemName(45), CalculateLocation(-45.0,5.0,-159,0,0,-1), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
					-- Elevated Furnace x1
						{getItemName(404), CalculateLocation(-55.5,3.5,-163.5,1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
					-- Ore Scanner x1
						{getItemName(25), CalculateLocation(-45.0,3.5,-144,0,0,-1), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
					-- Remote Diamoind Mine x1
						{getItemName(64), CalculateLocation(-64.5,6.5,-162,1,0,0), { ["isMulti"] = false, ["baseValue"] = {FacBase} } },
					}

					MultiPlaceItem(qdSetupTable, MultiplaceTable2)

					UpdateButtonNew(AutoSacrifice_Section, AutoSacrifice_Status, "Status: Done: As far as developed so far")

					repeat task.wait() until Cash.Value >= 215e120 -- 215t

					if SettingsS["Autofarm"]["Auto Sacrifice"]["Enabled"] == false then break end

					getgenv().Boost = 1

					--PlaceItemsFromJSON(qdSetupDecoded)
				end
			end)
		else
			getgenv().Boost = 1
			SettingsS["Autofarm"]["Auto Sacrifice"]["Ore Boost"] = false
		end
	end
)
PlrDroppedParts.ChildAdded:Connect(function(Ore_Drop)
    task.defer(function()
		if SettingsS["Autofarm"]["Auto Sacrifice"]["Enabled"] == true then
        	local Resetters_Present = {}
	    	for Int_1d, Resetters_1a in next, PlrTycoon:GetChildren() do
	    		if Resetters_1a:IsA("Model") and table.find(getgenv().ResetterTable, Resetters_1a.Name) then 
	    			table.insert(Resetters_Present, Resetters_1a.Name)
	    		end
	    	end
		
        	Lock_Ore(Ore_Drop)
        	if getgenv().IroDebug["Dropped Dubug"] then
        	    warn("Making Resetter's Folder")
        	end
	    	local Resetter_Folder = Instance.new("Folder")
	    		Resetter_Folder.Name = "Resetter Uses"
	    		Resetter_Folder.Parent = Ore_Drop
		
	    	for i,v in next, getgenv().ResetterTable do
	    	    local Tag = Instance.new("NumberValue")
	    	    Tag.Name = v
	    	    Tag.Parent = Resetter_Folder
	    	    Tag.Value = 0
        	    if getgenv().IroDebug["Dropped Dubug"] then
        	        warn("Making Resetter Tag for "..Ore_Drop.Name.."'s Ore")
        	    end
	    	end
        	task.wait(0.2)
        	Upgrade_Ore(Ore_Drop, getgenv().Boost)
        	task.wait(0.2)
        	for i=1,#Resetters_Present do
        	    Reset_Ore(Ore_Drop)
        	    task.wait(0.2)
        	end
        	Sell_Ore(Ore_Drop)
		end
    end)
end)

local AutoRebirthSetup_Crates = false
AutoRebirthSetup_Toggle = PlacementRebirth_Section:addToggle(
	"Auto Rebrith [OLD Ver. | Half Broken] (Fully Auto)",
	false,
	function(State)
		SettingsS["Autofarm"]["Auto Setup"] = State
        SaveS()
	
		function PlaceItem(Item,Position,Base)
			game.ReplicatedStorage.PlaceItem:InvokeServer(Item, Position, Base) 
			wait(0.05)
		end
		function getMoney()
			local Money = Client.PlayerGui.GUI.Money.Value
			return Money
		end
		function RebornPrice(RB)
			local n = RB;
			if not n then
				return;
			end;
			local RebirthValue = n;
			local eValue = 2.5E+19;
		    if game.Players.LocalPlayer:FindFirstChild("ThirdSacrifice") then
		        eValue = 2.5E+40
		    elseif RebirthValue < 40 then
				return eValue * (RebirthValue + 1);
			end;
			local v6 = RebirthValue <= 5000 and RebirthValue or 5000;
			if n >= 50000 then
				v6 = v6 + math.floor(n / 10000) * 100 / 2;
			end;
			local v7 = 0;
			if RebirthValue > 5000 then
				v7 = sqrtfac(RebirthValue) - sqrtfac(5000);
			end;
			local v8 = (eValue * ((math.floor(RebirthValue / 5) * 2 + 1) * (1 + math.floor(RebirthValue / 25) * 100) * (1 + math.floor(RebirthValue / 500) * 1000))) ^ (1 + math.floor(v6 / 1) * 0.00023999999999999998 + v7);
			return v8 <= 1E+241 and v8 or 1E+241;
		end;
		function getResearchPoints()
			local RP = Client.Points.Value
			return RP
		end
		function Withdrawl()
			game.ReplicatedStorage.DestroyAll:InvokeServer()
			wait(0.3)
		end
		function getItemName(itemID)
			for i,v in next, game.ReplicatedStorage.Items:GetChildren() do
				if v:FindFirstChild("ItemId") and v.ItemId.Value == itemID then
					return v.Name
				end
			end
		end
		function validInInv_Name()
			local items = {}
			for i,v in next, Client.PlayerGui.GUI.Inventory.Frame.Items:GetChildren() do
				if v:IsA("TextButton") and v.Visible == true then
					local ID = v.ItemId.Value
					table.insert(items, getItemName(ID))
				end
			end
			return items
		end
		function Pulse()
			if not table.find(validInInv_Name(), "Ore Pulsar") then
				BuyItem:InvokeServer("Ore Pulsar", 1)
				wait(0.01) 
			end
			PlaceItem("Ore Pulsar", CFrame.new(75, 5.00000381, 73.5000153, 1, 0, 0, 0, 1, 0, 0, 0, 1) + Tycoon.Base.Position, {FacBase}) 
			wait(0.5)
			game.ReplicatedStorage.Pulse:FireServer()
			wait(0.1)
			game:GetService("ReplicatedStorage").DestroyItem:InvokeServer(PlrTycoon["Ore Pulsar"])
		end
		function TouchLoop(Item, Cash, nextdest)
			local Upgrader
			local Conveyor
			local Destination
			if Cash ~= nil and Item ~= nil then
				for i,v in next, Item:GetDescendants() do
					if v:IsA("Part") and v.Name == "Upgrade" then
						Upgrader = v
					elseif v:IsA("Part") and v.Name == "Cannon" then
						Upgrader = v
					end
				end
				for i,v in next, Item:GetDescendants() do
					if v:IsA("Part") and v.Name == "Conv" then
						Conveyor = v
					end
				end
				Upgrader.Touched:connect(function(hit)
					if hit:FindFirstChild("Cash") then
						if hit.Cash.Value < Cash then
							local ConvCalc = Upgrader.CFrame + Vector3.new(0,1.5,0)
							hit.CFrame = ConvCalc - Upgrader.CFrame.lookVector * 1.5
						else
							for i,v in next, PlrTycoon:GetDescendants() do
								if v:IsA("Model") and v.Name == nextdest then
									Destination = v
                                    break
								end
							end
							local DestCalc = Destination.Model.Conv.CFrame + Vector3.new(0,1.5,0)
							hit.CFrame = DestCalc - Destination.Model.Conv.CFrame.lookVector * 1.5
						end
					end
				end)
			end
		end
		function TouchLoopAmount(Item, Amount, nextdest, olddest)
			local Upgrader
			local Conveyor
			local Destination
			local LoopCount
			if Amount ~= nil and Item ~= nil then
				for i,v in next, Item:GetDescendants() do
					if v:IsA("Part") and v.Name == "Upgrade" then
						Upgrader = v
					elseif v:IsA("Part") and v.Name == "Cannon" then
						Upgrader = v
					end
				end
				for i,v in next, Item:GetDescendants() do
					if v:IsA("Part") and v.Name == "Conv" then
						Conveyor = v
					end
				end

				Upgrader.Touched:connect(function(hit)
					if hit:FindFirstChild("Cash") and not hit:FindFirstChild("LoopCount") then
						LoopCount = Instance.new("IntValue")
						LoopCount.Name = "LoopCount"
						LoopCount.Parent = hit
						LoopCount.Value = Amount
						if hit.LoopCount.Value >= 1 then 
							local ConvCalc = Upgrader.CFrame + Vector3.new(0,1.5,0)
							hit.CFrame = ConvCalc - Upgrader.CFrame.lookVector * 1.8
							hit.LoopCount.Value = hit.LoopCount.Value - 1
						end
					end
					if hit:FindFirstChild("Cash") and hit:FindFirstChild("LoopCount") then
						if hit.LoopCount.Value >= 1 then 
							local ConvCalc = Upgrader.CFrame + Vector3.new(0,1.5,0)
							hit.CFrame = ConvCalc - Upgrader.CFrame.lookVector * 1.8
							hit.LoopCount.Value = hit.LoopCount.Value - 1
							hit.Velocity = Vector3.new(0, 0, 0)
						else
							for i,v in next, PlrTycoon:GetDescendants() do
								if v:IsA("Model") and v.Name == nextdest then
									--print(v.Name)
									Destination = v
								end
								if v:IsA("Model") and v.Name == olddest then
									--print(v.Name)
									OldDestination = v
								end
							end
							hit.LoopCount:Remove()
							hit.Velocity = Vector3.new(0, 0, 0)
							local DestCalc = Destination.Model.Conv.CFrame + Vector3.new(0,1.5,0)
							hit.CFrame = DestCalc - Destination.Model.Conv.CFrame.lookVector * 1.8
						end
					end
				end)
			end
		end
		function TPOre(Item, nextdest)
			local Upgrader
			local Conveyor
			local Destination
			if Item ~= nil then
				for i,v in next, Item:GetDescendants() do
					if v:IsA("Part") and v.Name == "Upgrade" then
						Upgrader = v
					elseif v:IsA("Part") and v.Name == "Cannon" then
						Upgrader = v
					end
				end
				for i,v in next, Item:GetDescendants() do
					if v:IsA("Part") and v.Name == "Conv" then
						Conveyor = v
					end
				end
				Upgrader.Touched:connect(function(hit)
					if hit:FindFirstChild("Cash") then
						for i,v in next, PlrTycoon:GetDescendants() do
							if v:IsA("Model") and v.Name == nextdest then
								--print(v.Name)
								Destination = v
							end
						end
						wait(0.08)
						hit.Anchored = true
						if hit:FindFirstChild("RealBodyVelocity") then
							hit.RealBodyVelocity:Destroy()
						end
						hit.Velocity = Vector3.new(0, 0, 0)
						wait(0.08)
						local DestCalc = Destination.Model.Conv.CFrame + Vector3.new(0,2,0)
						hit.CFrame = DestCalc - Destination.Model.Conv.CFrame.lookVector * 1.5
						hit.Anchored = false
					end
				end)
			end
		end
		ProximityList = {
			"Plutonium Excavator"
		}
		CellListList = {
			"Cell Furnace",
			"Cell Incinerator",
			"Cell Processor",
		}

		if not SettingsS["Autofarm"]["Auto Setup"] then
			FacBase.Parent.AdjustSpeed.Value = 1
		end
		while SettingsS["Autofarm"]["Auto Setup"] do task.wait(1)
			FacBase.Parent.AdjustSpeed.Value = 2
			--Inital Setup (Life 1 - 100 )
			--game:GetService("Workspace").Tycoons.Factory1.AdjustSpeed < 5
			local OGLife
			local CurrentLife
			local SkippedCalc
            if getMoney() <= 1e6 then
                Withdrawl() 
                PlaceItem("Basic Furnace", CFrame.new(0, 3.50000381, -3.05175781e-05, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Basic Iron Mine", CFrame.new(-7.5, 6.00000381, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Basic Iron Mine", CFrame.new(0, 5.00000381, 7.5, 0, 0, 1, 0, 1, -0, -1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Basic Iron Mine", CFrame.new(0, 5.00000381, -7.5, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                --PlaceItem("Basic Iron Mine", CFrame.new(7.5, 5.00000381, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
				MessagePrompt("Waiting for your cash to be more than "..MoneyLib.HandleMoney(400),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
                if table.find(validInInv_Name(), "Ninja Diamond Mine") and table.find(validInInv_Name(), "Scavenger's Loot Collector") then
                    PlaceItem("Ninja Diamond Mine", CFrame.new(78, 5.00000381, 79.5, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
                    PlaceItem("Scavenger's Loot Collector", CFrame.new(69, 5.00000381, 75, 1, 0, 0, 0, 1, 0, 0, 0, 1) + Tycoon.Base.Position, {FacBase}) 
                elseif table.find(validInInv_Name(), "Ninja Diamond Mine") then
                    PlaceItem("Ninja Diamond Mine", CFrame.new(9, 5.00000381, -1.5, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
                end
                repeat wait() until getMoney() > 402 or not SettingsS["Autofarm"]["Auto Setup"]; if not SettingsS["Autofarm"]["Auto Setup"] then return end
                Withdrawl() 
                BuyItem("Remote Iron Mine", 1)
                PlaceItem("Basic Furnace", CFrame.new(0, 3.50000381, -3.05175781e-05, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Remote Iron Mine", CFrame.new(-7.5, 5.00000381, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) + Tycoon.Base.Position, {FacBase}) 
				MessagePrompt("Waiting for your cash to be more than "..MoneyLib.HandleMoney(400),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
                repeat wait() game.ReplicatedStorage.RemoteDrop:FireServer() until getMoney() > 402 or not SettingsS["Autofarm"]["Auto Setup"]; if not SettingsS["Autofarm"]["Auto Setup"] then return end
                BuyItem("Remote Iron Mine", 1)
                PlaceItem("Remote Iron Mine", CFrame.new(0, 5.00000381, -7.5, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
				MessagePrompt("Waiting for your cash to be more than "..MoneyLib.HandleMoney(400),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
                repeat wait() game.ReplicatedStorage.RemoteDrop:FireServer() until getMoney() > 402 or not SettingsS["Autofarm"]["Auto Setup"]; if not SettingsS["Autofarm"]["Auto Setup"] then return end
                BuyItem("Remote Iron Mine", 1)
                PlaceItem("Remote Iron Mine", CFrame.new(7.5, 5.00000381, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
				MessagePrompt("Waiting for your cash to be more than "..MoneyLib.HandleMoney(400),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
                repeat wait() game.ReplicatedStorage.RemoteDrop:FireServer() until getMoney() > 402 or not SettingsS["Autofarm"]["Auto Setup"]; if not SettingsS["Autofarm"]["Auto Setup"] then return end
                BuyItem("Remote Iron Mine", 1)
                PlaceItem("Remote Iron Mine", CFrame.new(0, 5.00000381, 7.5, 0, 0, 1, 0, 1, -0, -1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
				MessagePrompt("Waiting for your cash to be more than "..MoneyLib.HandleMoney(7500),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
                repeat wait() game.ReplicatedStorage.RemoteDrop:FireServer() until getMoney() > 7550 or not SettingsS["Autofarm"]["Auto Setup"]; if not SettingsS["Autofarm"]["Auto Setup"] then return end
                Withdrawl()
                BuyItem("Cell Furnace", 1)
                PlaceItem("Cell Furnace", CFrame.new(0, 5.00000381, -3.05175781e-05, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Remote Iron Mine", CFrame.new(0, 5.00000381, 7.5, 0, 0, 1, 0, 1, -0, -1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Remote Iron Mine", CFrame.new(-7.5, 5.00000381, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Remote Iron Mine", CFrame.new(0, 5.00000381, -7.5, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Remote Iron Mine", CFrame.new(7.5, 5.00000381, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
				MessagePrompt("Waiting for your cash to be more than "..MoneyLib.HandleMoney(120000),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
                repeat wait() game.ReplicatedStorage.RemoteDrop:FireServer() until getMoney() > 120500 or not SettingsS["Autofarm"]["Auto Setup"]; if not SettingsS["Autofarm"]["Auto Setup"] then return end
                Withdrawl()
                BuyItem("Remote Diamond Mine", 1)
                PlaceItem("Cell Furnace", CFrame.new(0, 5.00000381, -3.05175781e-05, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Remote Diamond Mine", CFrame.new(-9, 6.50000381, 1.49996948, 1, 0, 0, 0, 1, 0, 0, 0, 1) + Tycoon.Base.Position, {FacBase}) 
                MessagePrompt("Waiting for your cash to be more than "..MoneyLib.HandleMoney(120000),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
                repeat wait() game.ReplicatedStorage.RemoteDrop:FireServer() until getMoney() > 120500 or not SettingsS["Autofarm"]["Auto Setup"]; if not SettingsS["Autofarm"]["Auto Setup"] then return end
                BuyItem("Remote Diamond Mine", 1)
                PlaceItem("Remote Diamond Mine", CFrame.new(1.50003052, 6.50000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                MessagePrompt("Waiting for your cash to be more than "..MoneyLib.HandleMoney(120000),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
                repeat wait() game.ReplicatedStorage.RemoteDrop:FireServer() until getMoney() > 120500 or not SettingsS["Autofarm"]["Auto Setup"]; if not SettingsS["Autofarm"]["Auto Setup"] then return end
                BuyItem("Remote Diamond Mine", 1)
                PlaceItem("Remote Diamond Mine", CFrame.new(9, 6.50000381, 1.50003052, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase})
				MessagePrompt("Waiting for your cash to be more than "..MoneyLib.HandleMoney(950000),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
                repeat wait() game.ReplicatedStorage.RemoteDrop:FireServer() until getMoney() > 950500 or not SettingsS["Autofarm"]["Auto Setup"]; if not SettingsS["Autofarm"]["Auto Setup"] then return end
            elseif getMoney() <= 1.0e10 then
                Withdrawl()
                BuyItem("Cell Incinerator", 1)
                PlaceItem("Cell Incinerator", CFrame.new(3.05175781e-05, 5.00000381, 3, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Remote Diamond Mine", CFrame.new(-9, 6.50000381, 1.49996948, 1, 0, 0, 0, 1, 0, 0, 0, 1) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Remote Diamond Mine", CFrame.new(1.50003052, 6.50000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Remote Diamond Mine", CFrame.new(9, 6.50000381, 1.50003052, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
				MessagePrompt("Waiting for your cash to be more than "..MoneyLib.HandleMoney(1310000),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
                repeat wait() game.ReplicatedStorage.RemoteDrop:FireServer() until getMoney() > 1310500 or not SettingsS["Autofarm"]["Auto Setup"]; if not SettingsS["Autofarm"]["Auto Setup"] then return end;
                BuyItem("Cell Incinerator", 1)
                BuyItem("Remote Diamond Mine", 3)
                PlaceItem("Remote Diamond Mine", CFrame.new(1.49996948, 6.50000381, -21, 0, 0, 1, 0, 1, -0, -1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Remote Diamond Mine", CFrame.new(-9, 6.50000381, -31.5000305, 1, 0, 0, 0, 1, 0, 0, 0, 1) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Remote Diamond Mine", CFrame.new(9, 6.50000381, -31.4999695, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Cell Incinerator", CFrame.new(-3.05175781e-05, 5.00000381, -33, 1, 0, 0, 0, 1, 0, 0, 0, 1) + Tycoon.Base.Position, {FacBase}) 
				MessagePrompt("Waiting for your cash to be more than "..MoneyLib.HandleMoney(1310000),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
                repeat wait() game.ReplicatedStorage.RemoteDrop:FireServer() until getMoney() > 1310500 or not SettingsS["Autofarm"]["Auto Setup"]; if not SettingsS["Autofarm"]["Auto Setup"] then return end
                BuyItem("Cell Incinerator", 1)
                BuyItem("Remote Diamond Mine", 3)
                PlaceItem("Cell Incinerator", CFrame.new(-3.05175781e-05, 5.00000381, 15, 1, 0, 0, 0, 1, 0, 0, 0, 1) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Remote Diamond Mine", CFrame.new(-9, 6.50000381, 16.4999695, 1, 0, 0, 0, 1, 0, 0, 0, 1) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Remote Diamond Mine", CFrame.new(1.49996948, 6.50000381, 27, 0, 0, 1, 0, 1, -0, -1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Remote Diamond Mine", CFrame.new(9, 6.50000381, 16.5000305, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
                MessagePrompt("Waiting for your cash to be more than "..MoneyLib.HandleMoney(500000000),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
                repeat wait() game.ReplicatedStorage.RemoteDrop:FireServer() until getMoney() > 500005000 or not SettingsS["Autofarm"]["Auto Setup"]; if not SettingsS["Autofarm"]["Auto Setup"] then return end-- For Plutonium Excavator
                Withdrawl()
                BuyItem("Plutonium Excavator", 1)
                PlaceItem("Cell Incinerator", CFrame.new(3.05175781e-05, 5.00000381, 3, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plutonium Excavator", CFrame.new(-9, 5.00000381, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) + Tycoon.Base.Position, {FacBase}) 
				MessagePrompt("Waiting for your cash to be more than "..MoneyLib.HandleMoney(500000000),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
                repeat wait() 
                    local PlrTycoon = workspace.Tycoons[tostring(Client.PlayerTycoon.Value)]:GetChildren()
                    for i,v in next, PlrTycoon do
                        if v:IsA("Model") and v.Name == "Cell Incinerator" and v.Model:FindFirstChild("Lava") then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Model.Lava.CFrame + Vector3.new(0,6,0)
                        end
                        if v:IsA("Model") and table.find(ProximityList, v.Name) then 
                            fireproximityprompt(v.Model.Internal["ProximityPrompt"])
							wait(0.1)
                        end
                    end
                until getMoney() > 500005000 or not SettingsS["Autofarm"]["Auto Setup"]; if not SettingsS["Autofarm"]["Auto Setup"] then return end -- For 2nd Plutonium Excavator
                BuyItem("Plutonium Excavator", 1)
                PlaceItem("Cell Incinerator", CFrame.new(-3.05175781e-05, 5.00000381, -15, 1, 0, 0, 0, 1, 0, 0, 0, 1) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plutonium Excavator", CFrame.new(-9, 5.00000381, -12, 1, 0, 0, 0, 1, 0, 0, 0, 1) + Tycoon.Base.Position, {FacBase}) 
				MessagePrompt("Waiting for your cash to be more than "..MoneyLib.HandleMoney(9.5e8),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
                repeat wait() 
                    local PlrTycoon = workspace.Tycoons[tostring(Client.PlayerTycoon.Value)]:GetChildren()
                    for i,v in next, PlrTycoon do
                        if v:IsA("Model") and v.Name == "Cell Incinerator" and v.Model:FindFirstChild("Lava") then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Model.Lava.CFrame + Vector3.new(0,6,0)
                        end
                        if v:IsA("Model") and table.find(ProximityList, v.Name) then 
                            fireproximityprompt(v.Model.Internal["ProximityPrompt"])
							wait(0.1)
                        end
                    end
                until getMoney() > 950005000 or not SettingsS["Autofarm"]["Auto Setup"]; if not SettingsS["Autofarm"]["Auto Setup"] then return end -- For Cell Processor with 2 Plutonium Excavators
                BuyItem("Cell Processor", 1)
                Withdrawl()
                PlaceItem("Cell Processor", CFrame.new(0, 5.00000381, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plutonium Excavator", CFrame.new(-9, 5.00000381, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plutonium Excavator", CFrame.new(9, 5.00000381, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
				MessagePrompt("Waiting for your cash to be more than "..MoneyLib.HandleMoney(1.96e9),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
                repeat wait() 
                    local PlrTycoon = workspace.Tycoons[tostring(Client.PlayerTycoon.Value)]:GetChildren()
                    for i,v in next, PlrTycoon do
                        if v:IsA("Model") and v.Name == "Cell Processor" and v.Model:FindFirstChild("Lava") then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Model.Lava.CFrame + Vector3.new(0,6,0)
                            wait(0.1)
                        end 
                        if v:IsA("Model") and table.find(ProximityList, v.Name) then 
                            fireproximityprompt(v.Model.Internal["ProximityPrompt"])
							wait(0.1)
                        end
                    end
                until getMoney() > 1.96e9 or not SettingsS["Autofarm"]["Auto Setup"]; if not SettingsS["Autofarm"]["Auto Setup"] then return end
                BuyItem("Cell Processor", 1)
                BuyItem("Plutonium Excavator", 2)
                PlaceItem("Plutonium Excavator", CFrame.new(-9, 5, 18.0000153, 1, 0, 0, 0, 1, 0, 0, 0, 1) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Cell Processor", CFrame.new(0, 5, 18, 1, 0, 0, 0, 1, 0, 0, 0, 1) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plutonium Excavator", CFrame.new(9, 5, 17.9999847, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
				MessagePrompt("Waiting for your cash to be more than "..MoneyLib.HandleMoney(1.96e9),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
                repeat wait() 
                    local PlrTycoon = workspace.Tycoons[tostring(Client.PlayerTycoon.Value)]:GetChildren()
                    for i,v in next, PlrTycoon do
                        if v:IsA("Model") and v.Name == "Cell Processor" and v.Model:FindFirstChild("Lava") then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Model.Lava.CFrame + Vector3.new(0,6,0)
                        end 
                        if v:IsA("Model") and table.find(ProximityList, v.Name) then 
                            fireproximityprompt(v.Model.Internal["ProximityPrompt"])
							wait(0.1)
                        end
                    end
                until getMoney() > 1.96e9 or not SettingsS["Autofarm"]["Auto Setup"]; if not SettingsS["Autofarm"]["Auto Setup"] then return end
                BuyItem("Cell Processor", 1)
                BuyItem("Plutonium Excavator", 2)
                PlaceItem("Plutonium Excavator", CFrame.new(-9, 5, -17.9999847, 1, 0, 0, 0, 1, 0, 0, 0, 1) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Cell Processor", CFrame.new(0, 5, -18, 1, 0, 0, 0, 1, 0, 0, 0, 1) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plutonium Excavator", CFrame.new(9, 5, -18.0000153, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
				MessagePrompt("Waiting for your cash to be more than "..MoneyLib.HandleMoney(1.1e10),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
                repeat wait() 
                    local PlrTycoon = workspace.Tycoons[tostring(Client.PlayerTycoon.Value)]:GetChildren()
                    for i,v in next, PlrTycoon do
                        if v:IsA("Model") and v.Name == "Cell Processor" and v.Model:FindFirstChild("Lava") then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Model.Lava.CFrame + Vector3.new(0,6,0)
                        end 
                        if v:IsA("Model") and table.find(ProximityList, v.Name) then 
                            fireproximityprompt(v.Model.Internal["ProximityPrompt"])
							wait(0.1)
                        end
                    end
                until getMoney() > 1.1e10 or not SettingsS["Autofarm"]["Auto Setup"]; if not SettingsS["Autofarm"]["Auto Setup"] then return end-- 11 billion
			elseif getMoney() <= 1e24 then
				wait(2)
				print(getMoney())
                BuyItem("Portable Ore Advancer", 20)
                BuyItem("Plasma Iron Polisher", 10)
                BuyItem("Way-Up-High Upgrader", 1)
                BuyItem("Plutonium Mine", 1)
                    --BuyItem("Conveyor Ramp", 1)
                BuyItem("Ore Scanner", 2)
                BuyItem("Raised Furnace", 1)
                BuyItem("Military-Grade Conveyor", 1)
				Withdrawl()
				PlaceItem("Way-Up-High Upgrader", CFrame.new(63, 5.00000381, -33, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Military-Grade Conveyor", CFrame.new(81, 2.00000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(67.5, 3.50000381, -75, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(58.5, 3.50000381, -75, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Ore Scanner", CFrame.new(-6, 3.50000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Ore Scanner", CFrame.new(6, 3.50000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(15, 3.50000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(21, 3.50000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(31.5, 3.50000381, -75, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(49.5, 3.50000381, -75, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(63, 3.50000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(57, 3.50000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(-13.5, 3.50000381, -57, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(69, 3.50000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(49.5, 3.50000381, -57, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(39, 3.50000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(22.5, 3.50000381, -57, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(40.5, 3.50000381, -57, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(58.5, 3.50000381, -57, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(-13.5, 3.50000381, -75, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Basic Conveyor", CFrame.new(75, 2.00000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(4.5, 3.50000381, -75, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(40.5, 3.50000381, -75, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(-4.5, 3.50000381, -75, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(67.5, 3.50000381, -57, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(22.5, 3.50000381, -75, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(33, 3.50000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(27, 3.50000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(-4.5, 3.50000381, -57, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(13.5, 3.50000381, -75, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(45, 3.50000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(31.5, 3.50000381, -57, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(13.5, 3.50000381, -57, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(4.5, 3.50000381, -57, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(51, 3.50000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Basic Conveyor", CFrame.new(57, 2.00000381, -33, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plutonium Mine", CFrame.new(64.5, 8.00000381, -42, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                if table.find(validInInv_Name(), "Sword Master's Spirit") then
                    PlaceItem("Basic Conveyor", CFrame.new(-15, 2.00000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                    PlaceItem("Sword Master's Spirit", CFrame.new(-27.0000305, 5.00000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                else
                    BuyItem("Conveyor Ramp", 1)
                    PlaceItem("Conveyor Ramp", CFrame.new(-15, 3.50000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                    PlaceItem("Raised Furnace", CFrame.new(-24, 5.00000381, -66.0000305, 1, 0, 0, 0, 1, 0, 0, 0, 1) + Tycoon.Base.Position, {FacBase}) 
                end
                --[[if getResearchPoints() < 50000  then
					MessagePrompt("Farming server crates until RP is more than "..MoneyLib.HandleMoney(50000).." and Waiting for your cash to be more than "..MoneyLib.HandleMoney(1.5e12),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
				else
                	MessagePrompt("Waiting for your cash to be more than "..MoneyLib.HandleMoney(2e13),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
				end--]]
                TouchLoop(PlrTycoon["Way-Up-High Upgrader"], 1e9, "Military-Grade Conveyor")
				repeat
					if getResearchPoints() < 50000 then
						AutoRebirthSetup_Crates = true
					end
					wait(0.05)
				until (getResearchPoints() > 50000 and getMoney() > 2e13) or not SettingsS["Autofarm"]["Auto Setup"]; AutoRebirthSetup_Crates = false 
				if not SettingsS["Autofarm"]["Auto Setup"] then return end;
                BuyItem("Sacrificial Altar", 1)
                BuyItem("Advanced Ore Scanner", 2)
                BuyItem("Painite Mine", 1)
                BuyItem("Freon-Blast Upgrader", 1)
				Withdrawl()
				wait(2)
                PlaceItem("Portable Ore Advancer", CFrame.new(34.5, 3.50000381, -18, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Advanced Ore Scanner", CFrame.new(12, 5.00000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Advanced Ore Scanner", CFrame.new(0, 5.00000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(61.5, 3.50000381, 0, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(43.5, 3.50000381, 0, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(25.5, 3.50000381, 0, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(16.5, 3.50000381, 0, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(7.5, 3.50000381, 0, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(52.5, 3.50000381, 0, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(-1.5, 3.50000381, 0, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(79.5, 3.50000381, 0, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(75, 3.50000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(70.5, 3.50000381, 0, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(7.5, 3.50000381, -18, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(27, 3.50000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(79.5, 3.50000381, -18, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(70.5, 3.50000381, -18, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(61.5, 3.50000381, -18, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(52.5, 3.50000381, -18, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(43.5, 3.50000381, -18, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(34.5, 3.50000381, 0, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(25.5, 3.50000381, -18, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(16.5, 3.50000381, -18, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(69, 3.50000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(63, 3.50000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(45, 3.50000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(51, 3.50000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(39, 3.50000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(-1.5, 3.50000381, -18, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(21, 3.50000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(33, 3.50000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(57, 3.50000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Military-Grade Conveyor", CFrame.new(81, 2.00000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Freon-Blast Upgrader", CFrame.new(60, 5.00000381, -42, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Basic Conveyor", CFrame.new(66, 2.00000381, -42, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Basic Conveyor", CFrame.new(72, 2.00000381, -42, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Painite Mine", CFrame.new(79.5, 8.00000381, -37.5, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
                if table.find(validInInv_Name(), "Sword Master's Spirit") then
                    PlaceItem("Sword Master's Spirit", CFrame.new(-15.0000305, 5.00000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                else
                    PlaceItem("Sacrificial Altar", CFrame.new(-16.5, 8.00000381, -9.00003052, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
                end
                TouchLoop(PlrTycoon["Freon-Blast Upgrader"], 1.25e11, "Military-Grade Conveyor")
				if getResearchPoints() < 100000  then
					MessagePrompt("Farming server crates until RP is more than "..MoneyLib.HandleMoney(100000).." and Waiting for your cash to be more than "..MoneyLib.HandleMoney(3e15),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
                else
					MessagePrompt("Waiting for your cash to be more than "..MoneyLib.HandleMoney(3e15),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
                end
				repeat
					if getResearchPoints() < 100000 then
						--MessagePrompt("Farming server crates till you have 100k RP!",Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
						--Notif("Farming server crates till you have 100k RP!",{"Sweet"},nil)
						AutoRebirthSetup_Crates = true 
					end
					wait(0.05)
				until (getResearchPoints() > 100000 and getMoney() > 3e15) or not SettingsS["Autofarm"]["Auto Setup"];  AutoRebirthSetup_Crates = false 
				if not SettingsS["Autofarm"]["Auto Setup"] then return end;
                BuyItem("Painite Mine", 1)
                BuyItem("Shielded Conveyor", 1)
                BuyItem("Walled Conveyor", 1)
                BuyItem("Ore Collider", 1)
                BuyItem("Schrodinger Evaluator", 1)
				Withdrawl()
				wait(2)
                PlaceItem("Portable Ore Advancer", CFrame.new(76.5, 3.50000381, -75, 0, 0, 1, 0, 1, -0, -1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(76.5, 3.50000381, -57, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(67.5, 3.50000381, -75, 0, 0, 1, 0, 1, -0, -1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Shielded Conveyor", CFrame.new(78, 2.00000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Basic Conveyor", CFrame.new(69, 2.00000381, -36, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Freon-Blast Upgrader", CFrame.new(63, 5.00000381, -36, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Painite Mine", CFrame.new(73.5, 8.00000381, -43.5, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Painite Mine", CFrame.new(76.5, 8.00000381, -31.5, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(67.5, 3.50000381, -57, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(58.5, 3.50000381, -57, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(49.5, 3.50000381, -57, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(40.5, 3.50000381, -57, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(31.5, 3.50000381, -57, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(22.5, 3.50000381, -57, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(13.5, 3.50000381, -57, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(4.5, 3.50000381, -57, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(-4.5, 3.50000381, -57, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(72, 3.50000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(66, 3.50000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(60, 3.50000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(54, 3.50000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(48, 3.50000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(42, 3.50000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(36, 3.50000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(30, 3.50000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(24, 3.50000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(18, 3.50000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(4.5, 3.50000381, -75, 0, 0, 1, 0, 1, -0, -1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(-4.5, 3.50000381, -75, 0, 0, 1, 0, 1, -0, -1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Advanced Ore Scanner", CFrame.new(-3, 5.00000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Advanced Ore Scanner", CFrame.new(9, 5.00000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(13.5, 3.50000381, -75, 0, 0, 1, 0, 1, -0, -1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(22.5, 3.50000381, -75, 0, 0, 1, 0, 1, -0, -1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(31.5, 3.50000381, -75, 0, 0, 1, 0, 1, -0, -1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(40.5, 3.50000381, -75, 0, 0, 1, 0, 1, -0, -1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(49.5, 3.50000381, -75, 0, 0, 1, 0, 1, -0, -1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(58.5, 3.50000381, -75, 0, 0, 1, 0, 1, -0, -1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Ore Collider", CFrame.new(31.5, 3.50000381, -36, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Walled Conveyor", CFrame.new(39, 2.00000381, -36, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Schrodinger Evaluator", CFrame.new(48, 3.50000381, -36, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Military-Grade Conveyor", CFrame.new(57, 2.00000381, -36, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                if table.find(validInInv_Name(), "Sword Master's Spirit") then
                    PlaceItem("Sword Master's Spirit", CFrame.new(-18.0000305, 5.00000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                else
                    PlaceItem("Sacrificial Altar", CFrame.new(-19.5, 8.00000381, -66.0000305, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
                end
				MessagePrompt("Waiting for your cash to be more than "..MoneyLib.HandleMoney(4.5e17),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
                TouchLoop(PlrTycoon["Freon-Blast Upgrader"], 1.25e11, "Military-Grade Conveyor")
                --TPOre(PlrTycoon["Schrodinger Evaluator"], "Walled Conveyor")
                TPOre(PlrTycoon["Ore Collider"], "Shielded Conveyor")
                repeat
					local droplimit = game.ReplicatedStorage.PlayerData[FacBase.Parent.Name].DropLimit.Value / 1.5
					if game.ReplicatedStorage.PlayerData[FacBase.Parent.Name].DropCount.Value >= droplimit then
						Pulse()
					end 
					if getResearchPoints() < 100000 then
						AutoRebirthSetup_Crates = true 
					end
					wait(0.05)
				until (getResearchPoints() > 100000 and getMoney() > 4.5e17) or not SettingsS["Autofarm"]["Auto Setup"]; AutoRebirthSetup_Crates = false
				if not SettingsS["Autofarm"]["Auto Setup"] then return end;
                BuyItem("Ion Field", 4)
                BuyItem("The Dream-Maker", 1)
                BuyItem("Orbitable Upgrader", 3)
                BuyItem("Flaming Ore Scanner", 2)
                    --game.ReplicatedStorage.Items["Ion Field"].Model.Upgrade.Size = Vector3.new(100, 100, 100)
				Withdrawl()
				wait(2)
                PlaceItem("Basic Conveyor", CFrame.new(-33, 2.00000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(61.5, 3.50000381, 0, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(43.5, 3.50000381, 0, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(25.5, 3.50000381, 0, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(16.5, 3.50000381, 0, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(7.5, 3.50000381, 0, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(52.5, 3.50000381, 0, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(-1.5, 3.50000381, 0, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(79.5, 3.50000381, 0, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(75, 3.50000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(70.5, 3.50000381, 0, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(7.5, 3.50000381, -18, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(27, 3.50000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(79.5, 3.50000381, -18, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(70.5, 3.50000381, -18, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(61.5, 3.50000381, -18, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(52.5, 3.50000381, -18, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(43.5, 3.50000381, -18, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(34.5, 3.50000381, 0, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(25.5, 3.50000381, -18, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(16.5, 3.50000381, -18, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(69, 3.50000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(63, 3.50000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(45, 3.50000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(51, 3.50000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(34.5, 3.50000381, -18, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(39, 3.50000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(-1.5, 3.50000381, -18, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(21, 3.50000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(33, 3.50000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Plasma Iron Polisher", CFrame.new(57, 3.50000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Basic Conveyor", CFrame.new(-15, 2.00000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Ion Field", CFrame.new(-12, 8.00000381, -21, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                for i1,v1 in next, PlrTycoon:GetChildren() do
                    if v1.Name == "Ion Field" then
                        v1.Model.Upgrade.Size = Vector3.new(40, 40, 40)
                    end
                end
                 
                PlaceItem("Ion Field", CFrame.new(-12, 8.00000381, 3, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase})
                for i1,v1 in next, PlrTycoon:GetChildren() do
                    if v1.Name == "Ion Field" then
                        v1.Model.Upgrade.Size = Vector3.new(40, 40, 40)
                    end
                end 
                 
                PlaceItem("Ion Field", CFrame.new(-24, 8.00000381, 3, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                for i1,v1 in next, PlrTycoon:GetChildren() do
                    if v1.Name == "Ion Field" then
                        v1.Model.Upgrade.Size = Vector3.new(40, 40, 40)
                    end
                end
                 
                --game.ReplicatedStorage.Items["Ion Field"].Model.Upgrade.Size = Vector3.new(100, 100, 100)
                PlaceItem("Ion Field", CFrame.new(-24, 8.00000381, -21, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                for i1,v1 in next, PlrTycoon:GetChildren() do
                    if v1.Name == "Ion Field" then
                        v1.Model.Upgrade.Size = Vector3.new(40, 40, 40)
                    end
                end
                 
                PlaceItem("Orbitable Upgrader", CFrame.new(-43.5, 3.50000381, -3, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Basic Conveyor", CFrame.new(-21, 2.00000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Basic Conveyor", CFrame.new(-27, 2.00000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Basic Conveyor", CFrame.new(-39, 2.00000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Shielded Conveyor", CFrame.new(81, 2.00000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Flaming Ore Scanner", CFrame.new(-4.5, 5.00000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Orbitable Upgrader", CFrame.new(-34.5, 3.50000381, -15, 0, 0, 1, 0, 1, -0, -1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Flaming Ore Scanner", CFrame.new(10.5, 5.00000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Basic Conveyor", CFrame.new(-45, 2.00000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Orbitable Upgrader", CFrame.new(-34.5, 3.50000381, -3, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Basic Conveyor", CFrame.new(45, 2.00000381, 15, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Freon-Blast Upgrader", CFrame.new(39, 5.00000381, 15, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Military-Grade Conveyor", CFrame.new(27, 2.00000381, 15, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Schrodinger Evaluator", CFrame.new(18, 3.50000381, 15, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Ore Collider", CFrame.new(7.5, 3.50000381, 15, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
				PlaceItem("Painite Mine", CFrame.new(49.5, 8.00000381, 7.5, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Painite Mine", CFrame.new(52.5, 8.00000381, 19.5, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
                
                if table.find(validInInv_Name(), "Sword Master's Spirit") then
                    PlaceItem("Sword Master's Spirit", CFrame.new(-57.0000305, 5.00000381, -9, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                else
                    PlaceItem("The Dream-Maker", CFrame.new(-55.5, 5.00000381, -9.00003052, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
                end
                
                if getResearchPoints() < 100000 then
					MessagePrompt("Farming server crates until RP is more than "..MoneyLib.HandleMoney(100000).." and Waiting for your cash to be more than "..MoneyLib.HandleMoney(1.8e19),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
                else
					MessagePrompt("Waiting for your cash to be more than "..MoneyLib.HandleMoney(1.8e19),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
                end
                TouchLoop(PlrTycoon["Freon-Blast Upgrader"], 1.25e11, "Military-Grade Conveyor")
                --TPOre(PlrTycoon["Schrodinger Evaluator"], "Walled Conveyor")
                TPOre(PlrTycoon["Ore Collider"], "Shielded Conveyor")
                repeat wait()
                    CurrentLife = Client.Rebirths.Value
                    local droplimit = tonumber(game.ReplicatedStorage.PlayerData[FacBase.Parent.Name].DropLimit.Value / 1.5)
                    if game.ReplicatedStorage.PlayerData[FacBase.Parent.Name].DropCount.Value >= droplimit then
                        Pulse()
                    end 
                until getMoney() > RebornPrice(Client.Rebirths.Value) or (getResearchPoints() > 100000 and getMoney() > 1.8e19) or not SettingsS["Autofarm"]["Auto Setup"]; if not SettingsS["Autofarm"]["Auto Setup"] then return end
                Pulse()
                BuyItem("Tiny Conveyor", 2)
                BuyItem("Nuclear Conveyor", 1)
                BuyItem("Portable Macrowave", 1)
                BuyItem("Serpentine Upgrader", 1)
                BuyItem("Raised-ier Conveyor", 1)
                BuyItem("Shrine of Penitence", 1)
				Withdrawl()
				wait(2)
                PlaceItem("Basic Conveyor", CFrame.new(69, 2.00000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Freon-Blast Upgrader", CFrame.new(63, 5.00000381, -66, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Military-Grade Conveyor", CFrame.new(72, 2.00000381, -45, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Serpentine Upgrader", CFrame.new(58.5, 3.50000381, -42, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Tiny Conveyor", CFrame.new(67.5, 2.00000381, -46.5, 1, 0, 0, 0, 1, 0, 0, 0, 1) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Tiny Conveyor", CFrame.new(67.5, 2.00000381, -43.5, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Shielded Conveyor", CFrame.new(72, 2.00000381, -24, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Ore Collider", CFrame.new(52.5, 3.50000381, -24, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Schrodinger Evaluator", CFrame.new(63, 3.50000381, -24, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Ore Advancer", CFrame.new(70.5, 3.50000381, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Walled Conveyor", CFrame.new(72, 2.00000381, -6, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Portable Macrowave", CFrame.new(72, 5.00000381, 16.5, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Raised-ier Conveyor", CFrame.new(72, 3.50000381, 10.5, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Nuclear Conveyor", CFrame.new(72, 2.00000381, 36, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Flaming Ore Scanner", CFrame.new(46.5, 5.00000381, 36, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Flaming Ore Scanner", CFrame.new(61.5, 5.00000381, 36, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Orbitable Upgrader", CFrame.new(1.5, 3.50000381, 30, 0, 0, 1, 0, 1, -0, -1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Basic Conveyor", CFrame.new(36, 2.00000381, 36, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Basic Conveyor", CFrame.new(30, 2.00000381, 36, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Basic Conveyor", CFrame.new(24, 2.00000381, 36, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Basic Conveyor", CFrame.new(18, 2.00000381, 36, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Basic Conveyor", CFrame.new(12, 2.00000381, 36, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Ion Field", CFrame.new(33, 8.00000381, 45, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Ion Field", CFrame.new(33, 8.00000381, 27, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Ion Field", CFrame.new(21, 8.00000381, 45, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Ion Field", CFrame.new(21, 8.00000381, 27, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Orbitable Upgrader", CFrame.new(10.5, 3.50000381, 42, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Orbitable Upgrader", CFrame.new(10.5, 3.50000381, 30, 0, 0, 1, 0, 1, -0, -1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Basic Conveyor", CFrame.new(0, 2.00000381, 36, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Basic Conveyor", CFrame.new(6, 2.00000381, 36, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
				PlaceItem("Painite Mine", CFrame.new(76.5, 8.00000381, -61.5, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
                PlaceItem("Painite Mine", CFrame.new(73.5, 8.00000381, -73.5, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                
                if table.find(validInInv_Name(), "Sword Master's Spirit") then
                    PlaceItem("Sword Master's Spirit", CFrame.new(-12.0000305, 5.00000381, 36, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                else
                    PlaceItem("Shrine of Penitence", CFrame.new(-9, 5.00000381, 35.9999695, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) 
                end
                for i1,v1 in next, PlrTycoon:GetChildren() do
                    if v1.Name == "Ion Field" then
                        v1.Model.Upgrade.Size = Vector3.new(40, 40, 1)
                    end
                end --"Farming server crates until RP is more than "..MoneyLib.HandleMoney(100000)..
                TouchLoop(PlrTycoon["Freon-Blast Upgrader"], 1.25e11, "Military-Grade Conveyor")
                TouchLoop(PlrTycoon["Serpentine Upgrader"], 1e12, "Shielded Conveyor")
                TPOre(PlrTycoon["Ore Collider"], "Walled Conveyor")
                TouchLoopAmount(PlrTycoon["Portable Ore Advancer"], 30, "Raised-ier Conveyor")
                TouchLoopAmount(PlrTycoon["Portable Macrowave"], 6, "Nuclear Conveyor")
				MessagePrompt("Waiting for your cash to be more than "..MoneyLib.HandleMoney(1e20),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
                repeat wait()
                    checkPlayer()
                    CurrentLife = Client.Rebirths.Value
					local droplimit = tonumber(game.ReplicatedStorage.PlayerData[FacBase.Parent.Name].DropLimit.Value / 1.2)
                    if game.ReplicatedStorage.PlayerData[FacBase.Parent.Name].DropCount.Value >= droplimit then
                        Pulse()
					end
					wait(0.5)
				until getMoney() >= RebornPrice(Client.Rebirths.Value) or (getResearchPoints() > 100000 and getMoney() > 1e25) or not SettingsS["Autofarm"]["Auto Setup"]; if not SettingsS["Autofarm"]["Auto Setup"] then return end -- Make layout for sx rebirhts
				Pulse()
				--[[BuyItem("Schrodinger Evaluator", 3);  
				BuyItem("Tiny Conveyor", 1); 
				BuyItem("Ore Pulsar", 1); 
				BuyItem("Tiny Conveyor", 1); 
				BuyItem("Portable Macrowave", 1); 
				BuyItem("Shielded Conveyor", 1); 
				BuyItem("Serpentine Upgrader", 1); 
				BuyItem("Raised Mini Conveyor", 2); 
				BuyItem("Military-Grade Conveyor", 1); 
				BuyItem("Nuclear Conveyor", 1); 
				BuyItem("Flaming Ore Scanner", 2);
				BuyItem("Raised-ier Conveyor", 1); 
				BuyItem("Walled Conveyor", 1); 
				BuyItem("Shrine of Penitence", 1); 
				BuyItem("Way-Up-High Regular Converter", 1); 
				Withdrawl()
				wait(2)
				PlaceItem("Schrodinger Evaluator", CFrame.new(54, 3.50000381, -57, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) ;
				PlaceItem("Plasma Iron Polisher", CFrame.new(69, 3.50000381, -18, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) ;
				PlaceItem("Schrodinger Evaluator", CFrame.new(42, 3.50000381, -57, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) ;
				PlaceItem("Raised Mini Conveyor", CFrame.new(75, 2.00000381, -16.5, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) ;
				PlaceItem("Tiny Conveyor", CFrame.new(70.5, 2.00000381, -73.5, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) ;
				PlaceItem("Tiny Conveyor", CFrame.new(70.5, 2.00000381, -76.5, 1, 0, 0, 0, 1, 0, 0, 0, 1) + Tycoon.Base.Position, {FacBase}) ;
				PlaceItem("Portable Macrowave", CFrame.new(75, 5.00000381, 19.5, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) ;
				PlaceItem("Shielded Conveyor", CFrame.new(75, 2.00000381, -57, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) ;
				PlaceItem("Serpentine Upgrader", CFrame.new(61.5, 3.50000381, -72, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) ;
				PlaceItem("Schrodinger Evaluator", CFrame.new(66, 3.50000381, -57, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) ;			
				PlaceItem("Military-Grade Conveyor", CFrame.new(75, 2.00000381, -75, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) ;
				PlaceItem("Nuclear Conveyor", CFrame.new(72, 2.00000381, 36, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) ;
				PlaceItem("Flaming Ore Scanner", CFrame.new(46.5, 5.00000381, 36, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) ;
				PlaceItem("Flaming Ore Scanner", CFrame.new(61.5, 5.00000381, 36, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) ;
				PlaceItem("Raised Mini Conveyor", CFrame.new(75, 2.00000381, -19.5, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) ;
				PlaceItem("Orbitable Upgrader", CFrame.new(69, 3.50000381, 13.5, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) ;
				PlaceItem("Ore Collider", CFrame.new(31.5, 3.50000381, -57, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) ; 
				PlaceItem("Raised-ier Conveyor", CFrame.new(75, 3.50000381, 13.5, -1.1920929e-07, -0, -1.00000012, 0, 1, -0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) ;
				PlaceItem("Portable Ore Advancer", CFrame.new(73.5, 3.50000381, 3, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) ;
				PlaceItem("Walled Conveyor", CFrame.new(75, 2.00000381, -3, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) ;
				PlaceItem("Ion Field", CFrame.new(72, 8.00000381, -45, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07) + Tycoon.Base.Position, {FacBase}) ;
				PlaceItem("Way-Up-High Regular Converter", CFrame.new(75, 3.50000381, -33, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) ;
				PlaceItem("Painite Mine", CFrame.new(79.5, 8.00000381, -82.5, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) ;
				PlaceItem("Painite Mine", CFrame.new(82.5, 8.00000381, -70.5, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) ;
				if table.find(validInInv_Name(), "Sword Master's Spirit") then
                    PlaceItem("Sword Master's Spirit", CFrame.new(-12.0000305, 5.00000381, 36, 0, 0, -1, 0, 1, 0, 1, 0, 0) + Tycoon.Base.Position, {FacBase}) 
                else
                    PlaceItem("Shrine of Penitence", CFrame.new(33, 5.00000381, 35.9999695, -1, 0, 0, 0, 1, 0, 0, 0, -1) + Tycoon.Base.Position, {FacBase}) ;
				end
                for i1,v1 in next, PlrTycoon:GetChildren() do
                    if v1.Name == "Ion Field" then
                        v1.Model.Upgrade.Size = Vector3.new(40, 40, 40)
                    end
                end --"Farming server crates until RP is more than "..MoneyLib.HandleMoney(100000)..
                TouchLoop(PlrTycoon["Serpentine Upgrader"], 1e12, "Shielded Conveyor")
				TPOre(PlrTycoon["Ore Collider"], "Raised Mini Conveyor") --Walled Conveyor
				TouchLoopAmount(PlrTycoon["Plasma Iron Polisher"], 10, "Way-Up-High Regular Converter")
				TouchLoopAmount(PlrTycoon["Ion Field"], 4, "Walled Conveyor")
                TouchLoopAmount(PlrTycoon["Portable Ore Advancer"], 30, "Raised-ier Conveyor")
				TouchLoopAmount(PlrTycoon["Portable Macrowave"], 6, "Nuclear Conveyor")
				
				MessagePrompt("Waiting for your cash to be more than "..MoneyLib.HandleMoney(1e20),Color3.fromRGB(88,1,221),Color3.fromRGB(0,0,0),6467659297,10,2)
                repeat wait()
                    checkPlayer()
                    CurrentLife = Client.Rebirths.Value
					local droplimit = tonumber(game.ReplicatedStorage.PlayerData[FacBase.Parent.Name].DropLimit.Value / 1.5)
                    if game.ReplicatedStorage.PlayerData[FacBase.Parent.Name].DropCount.Value >= droplimit then
                        Pulse()
                    end 
                    FarmCrates()
                until getMoney() >= RebornPrice(Client.Rebirths.Value) or (getResearchPoints() > 100000 and getMoney() > 1e25) or not SettingsS["Autofarm"]["Auto Setup"]; if not SettingsS["Autofarm"]["Auto Setup"] then return end -- Make layout for sx rebirhts
               --]]
				game.ReplicatedStorage.Rebirth:InvokeServer()
            --elseif getMoney() <= 1e24 then -- 1 Septillion
                Withdrawl()
				wait(2)
            end
		end
	--window:Notify("SkyeX's Miner's Haven UI Update", "Auto Setup Toggle is now set to "..tostring(State))
	end
)

BoxesLocation.ChildAdded:Connect(function(Box_Drop)
    task.defer(function()
		if AutoRebirthSetup_Crates then
        	FarmCrates(Box_Drop)
	    end
    end)
end)

--===[[ Base Tweaks Page ]]===--

tweenFrameSize(LoadBarInside, {0, 24.3846 * 2, 0, 16}, LoadingTitle, "Loading Base Tweaks")

local BaseTweaksPage = MainWindow:addPage("Base Tweaks", 15640528020) --Temp ID
local UpgraderSizeSection = BaseTweaksPage:addSection("Upgrader Bean Size [IN DEVELOPMENT]")
local OreRotationSection = BaseTweaksPage:addSection("Ore Rotation")
local ConveryorSpeedSection = BaseTweaksPage:addSection("Conveyor Speed")
local OreTrackerSection = BaseTweaksPage:addSection("Ore Tracker")
local HoVSection = BaseTweaksPage:addSection("Heart Of Void Portable TP [IN DEVELOPMENT]")

--===[[ Upgrader Bean Size] Section ]]===--
--[[
	SettingsS = {
		["Base Tweaks"] = {
			["Upgrader Size"] = {
				["Upgraders"] = {
					["All"] = false,
					["Upgrader 1"] = "",
					["Upgrader 2"] = "",
				},
				["Size"] = 1,
				["Change Size"] = false,
			},
		}
	}
--]]

FirstUpgraderName_TextBox = UpgraderSizeSection:addTextbox(
	"1st Upgrader Name",
	SettingsS["Base Tweaks"]["Upgrader Size"]["Upgraders"]["Upgrader 1"],
	function(Value, focusLost)
		if focusLost then
			SettingsS["Base Tweaks"]["Upgrader Size"]["Upgraders"]["Upgrader 1"] = Value
			SaveS()
		end
	end
)
SecondUpgraderName_TextBox = UpgraderSizeSection:addTextbox(
	"2nd Upgrader Name",
	SettingsS["Base Tweaks"]["Upgrader Size"]["Upgraders"]["Upgrader 2"],
	function(Value, focusLost)
		if focusLost then
			SettingsS["Base Tweaks"]["Upgrader Size"]["Upgraders"]["Upgrader 2"] = Value
			SaveS()
		end
	end
)
UpgraderSize_TextBox = UpgraderSizeSection:addTextbox(
	"Upgrader Size",
	SettingsS["Base Tweaks"]["Upgrader Size"]["Size"],
	function(Value, focusLost)
		if focusLost then
			SettingsS["Base Tweaks"]["Upgrader Size"]["Size"] = Value
			SaveS()
		end
	end
)
UseAllUpgraders_Toggle = UpgraderSizeSection:addToggle(
	"All Upgraders",
	SettingsS["Base Tweaks"]["Upgrader Size"]["Upgraders"]["All"],
	function(state)
		SettingsS["Base Tweaks"]["Upgrader Size"]["Upgraders"]["All"] = state
		SaveS()
	end
)
ActivateChanges_Toggle = UpgraderSizeSection:addToggle(
	"Activate Beam Change",
	SettingsS["Base Tweaks"]["Upgrader Size"]["Change Size"],
	function(state)
		SettingsS["Base Tweaks"]["Upgrader Size"]["Change Size"] = state
		SaveS()
	end
)

--===[[ Ore Rotation Section ]]===--
--[[
	SettingsS = {
		["Base Tweaks"] = {
			["LockOreRot"] = {
				["Lock Rotation"] = false,
				["X Pos"] = 1,
				["Y Pos"] = 0,
			},
		}
	}
--]]

RotationX_Silder = OreRotationSection:addSlider(
	"Ore Rotation (X)",
	SettingsS["Base Tweaks"]["LockOreRot"]["X Pos"],
	0, 		-- Minimum 
	90,  	-- Maximum
	function(Value)
		SettingsS["Base Tweaks"]["LockOreRot"]["X Pos"] = Value
		for i,v in pairs(PlrDroppedParts:GetChildren()) do
			if v:FindFirstChild("AlignOrientation") then
				local value1 = Value
				local value2 = 0

				value1 = math.min(value1 + 1, 90)

				-- Calculate value2 based on value1
				if value1 <= 45 then
					value2 = 45
				else
					value2 = 45 - (value1 - 45)
				end

				v.AlignOrientation.CFrame = CFrame.new(0, 0, 0, value1, 0, 0, value2, 1, 0, 0, 0, 1)
			end
		end
	end
)
RotationY_Silder = OreRotationSection:addSlider(
	"Ore Rotation (Y)",
	SettingsS["Base Tweaks"]["LockOreRot"]["Y Pos"],
	0, 		-- Minimum 
	90,  	-- Maximum
	function(Value)
		SettingsS["Base Tweaks"]["LockOreRot"]["Y Pos"] = Value
		for i,v in pairs(PlrDroppedParts:GetChildren()) do
			if v:FindFirstChild("AlignOrientation") then
				local value1 = Value
				local value2 = 0

				value1 = math.min(value1, 90)

				-- Calculate value2 based on value1
				if value1 <= 45 then
					value2 = 45
				else
					value2 = 45 - (value1 - 45)
				end

				v.AlignOrientation.CFrame = CFrame.new(0, 0, 0, 1, 0, 0, value2, 1, 0, value1, 0, 1)
			end
		end
	end
)
OreRotationLock_Toggle = OreRotationSection:addToggle(
	"Lock Ore Rotation (More Consistant Railgun Turns)",
	SettingsS["Base Tweaks"]["LockOreRot"]["Lock Rotation"],
	function(state)
		SettingsS["Base Tweaks"]["LockOreRot"]["Lock Rotation"] = state
		SaveS()

		local Tycoon = Client.PlayerTycoon.Value 
		local PlrDroppedParts = workspace.DroppedParts[tostring(Tycoon)]

		task.defer(function()
			if SettingsS["Base Tweaks"]["LockOreRot"]["Lock Rotation"] then
				for i,v in pairs(PlrDroppedParts:GetChildren()) do
					if not v:FindFirstChild("AlignOrientation") then
						local Align = Instance.new("AlignOrientation")
						Align.Parent = v

						local Attach = Instance.new("Attachment")
						Attach.Parent = v

						Align.Mode = "OneAttachment"
						Align.Attachment0 = Attach
						Align.MaxTorque = 99999999999
						Align.Responsiveness = 40

						local value1 = SettingsS["Base Tweaks"]["LockOreRot"]["X Pos"]
						local value2 = 0
					
						value1 = math.min(value1 + 1, 90)
					
						-- Calculate value2 based on value1
						if value1 <= 45 then
							value2 = 45
						else
							value2 = 45 - (value1 - 45)
						end
					
						Align.CFrame = CFrame.new(0, 0, 0, value1, 0, 0, value2, 1, 0, 0, 0, 1)
					end
				end
			else
				for i,v in pairs(PlrDroppedParts:GetChildren()) do
					if v:FindFirstChild("AlignOrientation") then
						v.AlignOrientation:Destroy()
						v.Attachment:Destroy()
					end
				end
			end
		end)

		task.defer(function()
			PlrDroppedParts.ChildAdded:Connect(function(Ore)
				if SettingsS["Base Tweaks"]["LockOreRot"]["Lock Rotation"] then
					if not Ore:FindFirstChild("AlignOrientation") then
						local Align = Instance.new("AlignOrientation")
						Align.Parent = Ore
	
						local Attach = Instance.new("Attachment")
						Attach.Parent = Ore
	
						Align.Mode = "OneAttachment"
						Align.Attachment0 = Attach
						Align.MaxTorque = 99999999999
						Align.Responsiveness = 40
	
						task.wait(0.1)
						local Value_X_1 = SettingsS["Base Tweaks"]["LockOreRot"]["X Pos"]
						local Value_X_2 = 0
		
						Value_X_1 = math.min(Value_X_1 + 1, 90)
		
						-- Calculate value2 based on value1
						if Value_X_1 <= 45 then
							Value_X_2 = 45
						else
							Value_X_2 = 45 - (Value_X_1 - 45)
						end
		
						Align.CFrame = CFrame.new(0, 0, 0, Value_X_1, 0, 0, Value_X_2, 1, 0, 0, 0, 1)
					end
				end
			end)
		end)
	end
)

ConveyorSpeed_Silder = ConveryorSpeedSection:addSlider(
	"Adjust Conveyor Speed (1x - 10x)",
	SettingsS["Base Tweaks"]["Conveyor Speed"],
	1, 		-- Minimum 
	10,  	-- Maximum
	function(Value)
		local Tycoon = Client.PlayerTycoon.Value 
		local PlrTycoon = workspace.Tycoons[tostring(Tycoon)]
		SettingsS["Base Tweaks"]["Conveyor Speed"] = Value
		SaveS()
		PlrTycoon.AdjustSpeed.Value = Value
	end
)

OreTracker_Toggle = OreTrackerSection:addToggle( -- Add tracker to dropped ores
	"Add Tracker To Ores", 
	false,
	function(state)
		SettingsS["Base Tweaks"]["AutoTracker"] = state
		--Save()
		spawn(function()
			while SettingsS["Base Tweaks"]["AutoTracker"] do wait()
				local Dropped = game.Workspace.DroppedParts[tostring(Client.PlayerTycoon.Value)]
				function AddTracker(ore)
					if ore:IsA("Part") and ore:FindFirstChild("Purity") == nil and ore:FindFirstChild("Cash") then
						local track = game:GetService("ReplicatedStorage").TrackerTypes.Purity:Clone()
						track.Parent = ore
						track.Adornee = ore
						track.Amount.TextColor3 = chromaColor
						track.Amount.Text = MoneyLib.HandleMoney(ore.Cash.Value)
						local function rtrack()
							if track ~= nil and track.Parent ~= nil and track.Amount ~= nil then
								track.Amount.Text = MoneyLib.HandleMoney(ore.Cash.Value)
							end
						end
						ore.Cash.Changed:Connect(rtrack)
					end
				end

				for i,v in next, Dropped:GetChildren() do
					if SettingsS["Base Tweaks"]["AutoTracker"] then
						AddTracker(v)
					end
				end
				
				--[[Dropped.ChildAdded:connect(function(drop)
					if SettingsS["AutoTracker"] then
						wait(0.1)
						AddTracker(drop)
					end
				end)--]]

			end
		end)
	end
)

--===[[ Heart of Void Section ]]===--

--[[
	SettingsS = {
		["Base Tweaks"] = {
			["Heart of Void"] = {
				["Upgrader Name"] = "Type Here",
				["Activate Teleport"] = false
			}
		}
	}
--]]

UpgradertoTPEyes_TextBox = HoVSection:addTextbox(
	"Upgrader to TP Eye", 
	SettingsS["Base Tweaks"]["Heart of Void"]["Upgrader Name"], 
	function(Value, focusLost)
		if focusLost then
			SettingsS["Base Tweaks"]["Heart of Void"]["Activate Teleport"] = Value
			Save()
		end
	end
)
TeleportEyesHoV_Toggle = HoVSection:addToggle(
	"Teleport Eyes",
	SettingsS["Base Tweaks"]["Heart of Void"]["Upgrader Name"],
	function(state)
		SettingsS["Base Tweaks"]["Heart of Void"]["Activate Teleport"] = state
		SaveS()

		task.defer(function()
		
		end)
	end
)

--===[[ Webhook Page ]]===--

tweenFrameSize(LoadBarInside, {0, 24.3846 * 3, 0, 16}, LoadingTitle, "Loading Webhooks")

local WebhooksPage = MainWindow:addPage("Webhooks", 5506273563)
local WebhookSection = WebhooksPage:addSection("Discord Webhook Settings [IN DEVELOPMENT]")
local WebhookEnableDisableSection = WebhooksPage:addSection("Enable/Disable [IN DEVELOPMENT]")
local ScreenshotsSection = WebhooksPage:addSection("Auto Screenshot [IN DEVELOPMENT]")

--===[[ Webhook Section ]]===--

--[[
	SettingsS = {
		["Webhooks"] = {
			["Links"] = {
				["Rebirth Link"] = "https://discord.com/",
				["Shiny Link"] = "https://discord.com/",
				["Decimal Link"] = "https://discord.com/",
			},
			["UIDs"] = {
				["Ping On Shiny UID"] = "38957239805792865",
				["Ping On Decimal UID"] = "38957239805792865",
			},
			["Enabled"] = {
				["Rebirth"] = false,
				["Shiny"] = false,
				["Decimal"] = false,
			},
			["Take Screenshots"] = false,
		},
	}
--]]

WebhookRebirthURL_TextBox = WebhookSection:addTextbox(
	"Rebirth Webhook URL", 
	SettingsS["Webhooks"]["Links"]["Rebirth Link"], 
	function(Value, focusLost)
		if focusLost then
			SettingsS["Webhooks"]["Rebirth Link"] = Value
			Save()
		end
	end
)
WebhookShinyURL_TextBox = WebhookSection:addTextbox(
	"Shiny Webhook URL", 
	SettingsS["Webhooks"]["Links"]["Shiny Link"], 
	function(Value, focusLost)
		if focusLost then
			SettingsS["Webhooks"]["Shiny Link"] = Value
			Save()
		end
	end
)
WebhookDecimalURL_TextBox = WebhookSection:addTextbox(
	"Decimal Webhook URL", 
	SettingsS["Webhooks"]["Links"]["Decimal Link"], 
	function(Value, focusLost)
		if focusLost then
			SettingsS["Webhooks"]["Decimal Link"] = Value
			Save()
		end
	end
)
WebhookShinyPingUID_TextBox = WebhookSection:addTextbox(
	"Ping On Shiny (Discord UserID)", 
	SettingsS["Webhooks"]["UIDs"]["Ping On Shiny UID"], 
	function(Value, focusLost)
		if focusLost then
			SettingsS["Webhooks"]["Ping On Shiny UID"] = Value
			Save()
		end
	end
)
WebhookDecimalPingUID_TextBox = WebhookSection:addTextbox(
	"Ping On Decimal (Discord UserID)", 
	SettingsS["Webhooks"]["UIDs"]["Ping On Decimal UID"], 
	function(Value, focusLost)
		if focusLost then
			SettingsS["Webhooks"]["Ping On Decimal UID"] = Value
			Save()
		end
	end
)

RebirthLogging_Toggle = WebhookEnableDisableSection:addToggle(
	"Rebirth Logging",
	SettingsS["Webhooks"]["Enabled"]["Rebirth"],
	function(state)
		SettingsS["Webhooks"]["Enabled"]["Rebirth"] = state
		SaveS()
	end
) do 
	task.defer(function()
		--print("Hi")
	end)
end
ShinyLogging_Toggle = WebhookEnableDisableSection:addToggle(
	"Shiny Logging",
	SettingsS["Webhooks"]["Enabled"]["Shiny"],
	function(state)
		SettingsS["Webhooks"]["Enabled"]["Shiny"] = state
		SaveS()
	end
) do 
	task.defer(function()
		--print("Hi")
	end)
end
DecimalLogging_Toggle = WebhookEnableDisableSection:addToggle(
	"Decimal Logging",
	SettingsS["Webhooks"]["Enabled"]["Decimal"],
	function(state)
		SettingsS["Webhooks"]["Enabled"]["Decimal"] = state
		SaveS()
	end
) do 
	task.defer(function()
		--print("Hi")
	end)
end

AutoScreenshots_Toggle = ScreenshotsSection:addToggle(
	"Auto Screenshot on Shiny",
	SettingsS["Webhooks"]["Take Screenshots"],
	function(state)
		SettingsS["Webhooks"]["Take Screenshots"] = state
		SaveS()
	end
) do 
	task.defer(function()
		--print("Hi")
	end)
end

--===[[ Leaderboards Page ]]===--

tweenFrameSize(LoadBarInside, {0, 24.3846 * 4, 0, 16}, LoadingTitle, "Loading Leaderboards")

local LeaderboardPage = MainWindow:addPage("Leaderboard", 5506279396)
local LeaderboardSection = LeaderboardPage:addSection("Select Leaderboard")
local LeaderboardViewSection = LeaderboardPage:addSection("Leaderboard")
local RefreshLeaderboardSection = LeaderboardPage:addSection("Refresh Leaderboard (to match the real boards)")

local rankNumber = ""
local displayName = "displayName"
local username = "@Username"
local Amount = "Blank"
LeaderboardDisplay_1 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)
LeaderboardDisplay_2 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)
LeaderboardDisplay_3 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)
LeaderboardDisplay_4 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)
LeaderboardDisplay_5 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)
LeaderboardDisplay_6 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)
LeaderboardDisplay_7 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)
LeaderboardDisplay_8 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)
LeaderboardDisplay_9 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)
LeaderboardDisplay_10 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)
LeaderboardDisplay_11 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)
LeaderboardDisplay_12 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)
LeaderboardDisplay_13 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)
LeaderboardDisplay_14 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)
LeaderboardDisplay_15 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)
LeaderboardDisplay_16 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)
LeaderboardDisplay_17 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)
LeaderboardDisplay_18 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)
LeaderboardDisplay_19 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)
LeaderboardDisplay_20 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)
LeaderboardDisplay_21 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)
LeaderboardDisplay_22 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)
LeaderboardDisplay_23 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)
LeaderboardDisplay_24 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)
LeaderboardDisplay_25 = LeaderboardViewSection:addButton(
    "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount,
    function()
        print("Uhh.. Why'd you click me..? I do nothing.")
    end
)

local LeaderboardSelected
SelectLeaderboardToView_Dropdown = LeaderboardSection:addDropdown(
	"Select a Leaderboard to View",
	{"Highest Life - Daily","Highest Life - All Time","Highest RP - All Time","Highest Shard - All Time","Highest Ores Mined - All Time","Highest Gift Streak - All Time","Highest uC - All Time"},
	function(Select)
		LeaderboardSelected = Select
		--[[
			"Highest Life - Daily", -- LifeSkippedV4
			"Highest Life - All Time", -- highestLifeV5
			"Highest RP - All Time", -- LeaderboardRPAllTimeV0
			"Highest Shard - All Time",  -- LeaderboardTopShardsV0
			"Highest Ores Mined - All Time", -- OreMinedAllTimeV4
			"Highest Gift Streak - All Time", -- LeaderboardRPAllTimeV0
			"Highest uC - All Time" -- LeaderboardUCV2
		]]
		local function extractRankNumber(rankText)
			return tonumber(rankText:sub(2))
		end

		if Select == "Highest RP - All Time" then		
			local frames = workspace.LeaderboardModels.LeaderboardRPAllTimeV0.Gui.Contents.Scrolling:GetChildren()
				
			-- Filter out only the frames
			local filteredFrames = {}
			for _, frame in ipairs(frames) do
				if frame:IsA("Frame") then
					table.insert(filteredFrames, frame)
				end
			end

			-- Sort frames based on rank (from lowest to highest)
			table.sort(filteredFrames, function(a, b)
				local rankA = extractRankNumber(a.Rank.Text)
				local rankB = extractRankNumber(b.Rank.Text)
				return rankA < rankB
			end)

			-- Iterate through frames and create buttons
			for _, frame in ipairs(filteredFrames) do
				local displayName = frame.DisplayName.Text
				local username = frame.DisplayName.Username.Text
				local rankText = frame.Rank.Text
				local Amount = frame.DisplayName.Data.Text
				local rankNumber = extractRankNumber(rankText)

				local ButtonName = "LeaderboardDisplay_".._
				local formattedString = "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount

				if _ == 1 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_1,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 2 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_2,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 3 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_3,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 4 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_4,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 5 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_5,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 6 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_6,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 7 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_7,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 8 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_8,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 9 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_9,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 10 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_10,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 11 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_11,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 12 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_12,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 13 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_13,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 14 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_14,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 15 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_15,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 16 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_16,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 17 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_17,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 18 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_18,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 19 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_19,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 20 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_20,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 21 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_21,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 22 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_22,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 23 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_23,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 24 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_24,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 25 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_25,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				end
			end	
		elseif Select == "Highest Life - Daily" then	
			local frames = workspace.LeaderboardModels.LifeSkippedV4.Gui.Contents.Scrolling:GetChildren()
				
			-- Filter out only the frames
			local filteredFrames = {}
			for _, frame in ipairs(frames) do
				if frame:IsA("Frame") then
					table.insert(filteredFrames, frame)
				end
			end

			-- Sort frames based on rank (from lowest to highest)
			table.sort(filteredFrames, function(a, b)
				local rankA = extractRankNumber(a.Rank.Text)
				local rankB = extractRankNumber(b.Rank.Text)
				return rankA < rankB
			end)

			-- Iterate through frames and create buttons
			for _, frame in ipairs(filteredFrames) do
				local displayName = frame.DisplayName.Text
				local username = frame.DisplayName.Username.Text
				local rankText = frame.Rank.Text
				local Amount = frame.DisplayName.Data.Text
				local rankNumber = extractRankNumber(rankText)

				local ButtonName = "LeaderboardDisplay_".._
				local formattedString = "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount

				if _ == 1 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_1,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 2 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_2,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 3 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_3,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 4 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_4,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 5 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_5,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 6 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_6,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 7 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_7,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 8 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_8,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 9 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_9,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 10 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_10,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 11 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_11,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 12 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_12,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 13 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_13,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 14 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_14,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 15 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_15,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 16 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_16,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 17 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_17,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 18 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_18,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 19 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_19,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 20 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_20,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 21 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_21,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 22 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_22,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 23 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_23,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 24 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_24,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 25 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_25,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				end
			end	
		elseif Select == "Highest Life - All Time" then
			local frames = workspace.LeaderboardModels.highestLifeV5.Gui.Contents.Scrolling:GetChildren()
				
			-- Filter out only the frames
			local filteredFrames = {}
			for _, frame in ipairs(frames) do
				if frame:IsA("Frame") then
					table.insert(filteredFrames, frame)
				end
			end

			-- Sort frames based on rank (from lowest to highest)
			table.sort(filteredFrames, function(a, b)
				local rankA = extractRankNumber(a.Rank.Text)
				local rankB = extractRankNumber(b.Rank.Text)
				return rankA < rankB
			end)

			-- Iterate through frames and create buttons
			for _, frame in ipairs(filteredFrames) do
				local displayName = frame.DisplayName.Text
				local username = frame.DisplayName.Username.Text
				local rankText = frame.Rank.Text
				local Amount = frame.DisplayName.Data.Text
				local rankNumber = extractRankNumber(rankText)

				local ButtonName = "LeaderboardDisplay_".._
				local formattedString = "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount

				if _ == 1 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_1,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 2 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_2,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 3 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_3,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 4 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_4,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 5 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_5,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 6 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_6,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 7 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_7,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 8 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_8,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 9 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_9,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 10 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_10,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 11 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_11,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 12 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_12,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 13 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_13,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 14 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_14,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 15 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_15,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 16 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_16,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 17 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_17,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 18 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_18,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 19 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_19,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 20 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_20,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 21 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_21,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 22 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_22,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 23 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_23,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 24 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_24,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 25 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_25,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				end
			end	
		elseif Select == "Highest Shard - All Time" then
			local frames = workspace.LeaderboardModels.LeaderboardTopShardsV0.Gui.Contents.Scrolling:GetChildren()
				
			-- Filter out only the frames
			local filteredFrames = {}
			for _, frame in ipairs(frames) do
				if frame:IsA("Frame") then
					table.insert(filteredFrames, frame)
				end
			end

			-- Sort frames based on rank (from lowest to highest)
			table.sort(filteredFrames, function(a, b)
				local rankA = extractRankNumber(a.Rank.Text)
				local rankB = extractRankNumber(b.Rank.Text)
				return rankA < rankB
			end)

			-- Iterate through frames and create buttons
			for _, frame in ipairs(filteredFrames) do
				local displayName = frame.DisplayName.Text
				local username = frame.DisplayName.Username.Text
				local rankText = frame.Rank.Text
				local Amount = frame.DisplayName.Data.Text
				local rankNumber = extractRankNumber(rankText)

				local ButtonName = "LeaderboardDisplay_".._
				local formattedString = "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount

				if _ == 1 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_1,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 2 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_2,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 3 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_3,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 4 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_4,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 5 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_5,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 6 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_6,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 7 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_7,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 8 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_8,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 9 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_9,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 10 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_10,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 11 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_11,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 12 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_12,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 13 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_13,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 14 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_14,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 15 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_15,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 16 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_16,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 17 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_17,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 18 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_18,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 19 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_19,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 20 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_20,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 21 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_21,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 22 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_22,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 23 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_23,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 24 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_24,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 25 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_25,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				end
			end	
		elseif Select == "Highest Ores Mined - All Time" then
			local frames = workspace.LeaderboardModels.OreMinedAllTimeV4.Gui.Contents.Scrolling:GetChildren()
				
			-- Filter out only the frames
			local filteredFrames = {}
			for _, frame in ipairs(frames) do
				if frame:IsA("Frame") then
					table.insert(filteredFrames, frame)
				end
			end

			-- Sort frames based on rank (from lowest to highest)
			table.sort(filteredFrames, function(a, b)
				local rankA = extractRankNumber(a.Rank.Text)
				local rankB = extractRankNumber(b.Rank.Text)
				return rankA < rankB
			end)

			-- Iterate through frames and create buttons
			for _, frame in ipairs(filteredFrames) do
				local displayName = frame.DisplayName.Text
				local username = frame.DisplayName.Username.Text
				local rankText = frame.Rank.Text
				local Amount = frame.DisplayName.Data.Text
				local rankNumber = extractRankNumber(rankText)

				local ButtonName = "LeaderboardDisplay_".._
				local formattedString = "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount

				if _ == 1 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_1,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 2 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_2,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 3 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_3,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 4 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_4,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 5 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_5,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 6 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_6,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 7 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_7,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 8 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_8,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 9 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_9,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 10 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_10,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 11 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_11,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 12 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_12,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 13 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_13,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 14 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_14,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 15 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_15,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 16 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_16,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 17 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_17,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 18 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_18,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 19 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_19,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 20 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_20,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 21 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_21,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 22 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_22,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 23 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_23,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 24 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_24,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 25 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_25,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				end
			end	
		elseif Select == "Highest Gift Streak - All Time" then
			local frames = workspace.LeaderboardModels.LeaderboardTopGiftV0.Gui.Contents.Scrolling:GetChildren()
				
			-- Filter out only the frames
			local filteredFrames = {}
			for _, frame in ipairs(frames) do
				if frame:IsA("Frame") then
					table.insert(filteredFrames, frame)
				end
			end

			-- Sort frames based on rank (from lowest to highest)
			table.sort(filteredFrames, function(a, b)
				local rankA = extractRankNumber(a.Rank.Text)
				local rankB = extractRankNumber(b.Rank.Text)
				return rankA < rankB
			end)

			-- Iterate through frames and create buttons
			for _, frame in ipairs(filteredFrames) do
				local displayName = frame.DisplayName.Text
				local username = frame.DisplayName.Username.Text
				local rankText = frame.Rank.Text
				local Amount = frame.DisplayName.Data.Text
				local rankNumber = extractRankNumber(rankText)

				local ButtonName = "LeaderboardDisplay_".._
				local formattedString = "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount

				if _ == 1 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_1,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 2 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_2,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 3 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_3,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 4 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_4,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 5 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_5,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 6 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_6,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 7 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_7,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 8 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_8,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 9 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_9,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 10 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_10,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 11 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_11,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 12 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_12,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 13 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_13,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 14 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_14,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 15 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_15,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 16 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_16,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 17 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_17,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 18 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_18,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 19 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_19,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 20 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_20,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 21 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_21,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 22 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_22,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 23 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_23,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 24 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_24,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 25 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_25,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				end
			end	
		elseif Select == "Highest uC - All Time" then
			local frames = workspace.LeaderboardModels.LeaderboardUCV2.Gui.Contents.Scrolling:GetChildren()
				
			-- Filter out only the frames
			local filteredFrames = {}
			for _, frame in ipairs(frames) do
				if frame:IsA("Frame") then
					table.insert(filteredFrames, frame)
				end
			end

			-- Sort frames based on rank (from lowest to highest)
			table.sort(filteredFrames, function(a, b)
				local rankA = extractRankNumber(a.Rank.Text)
				local rankB = extractRankNumber(b.Rank.Text)
				return rankA < rankB
			end)

			-- Iterate through frames and create buttons
			for _, frame in ipairs(filteredFrames) do
				local displayName = frame.DisplayName.Text
				local username = frame.DisplayName.Username.Text
				local rankText = frame.Rank.Text
				local Amount = frame.DisplayName.Data.Text
				local rankNumber = extractRankNumber(rankText)

				local ButtonName = "LeaderboardDisplay_".._
				local formattedString = "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount

				if _ == 1 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_1,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 2 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_2,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 3 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_3,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 4 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_4,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 5 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_5,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 6 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_6,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 7 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_7,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 8 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_8,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 9 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_9,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 10 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_10,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 11 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_11,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 12 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_12,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 13 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_13,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 14 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_14,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 15 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_15,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 16 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_16,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 17 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_17,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 18 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_18,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 19 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_19,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 20 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_20,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 21 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_21,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 22 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_22,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 23 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_23,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 24 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_24,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 25 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_25,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				end
			end	
		end
	end,
	nil
)
UpdateLeaderboard_Button = RefreshLeaderboardSection:addButton(
	"Update Buttons",
	function()
		local Select = LeaderboardSelected
		--[[
			"Highest Life - Daily", -- LifeSkippedV4
			"Highest Life - All Time", -- highestLifeV5
			"Highest RP - All Time", -- LeaderboardRPAllTimeV0
			"Highest Shard - All Time",  -- LeaderboardTopShardsV0
			"Highest Ores Mined - All Time", -- OreMinedAllTimeV4
			"Highest Gift Streak - All Time", -- LeaderboardRPAllTimeV0
			"Highest uC - All Time" -- LeaderboardUCV2
		]]
		local function extractRankNumber(rankText)
			return tonumber(rankText:sub(2))
		end

		if Select == "Highest RP - All Time" then		
			local frames = workspace.LeaderboardModels.LeaderboardRPAllTimeV0.Gui.Contents.Scrolling:GetChildren()
				
			-- Filter out only the frames
			local filteredFrames = {}
			for _, frame in ipairs(frames) do
				if frame:IsA("Frame") then
					table.insert(filteredFrames, frame)
				end
			end

			-- Sort frames based on rank (from lowest to highest)
			table.sort(filteredFrames, function(a, b)
				local rankA = extractRankNumber(a.Rank.Text)
				local rankB = extractRankNumber(b.Rank.Text)
				return rankA < rankB
			end)

			-- Iterate through frames and create buttons
			for _, frame in ipairs(filteredFrames) do
				local displayName = frame.DisplayName.Text
				local username = frame.DisplayName.Username.Text
				local rankText = frame.Rank.Text
				local Amount = frame.DisplayName.Data.Text
				local rankNumber = extractRankNumber(rankText)

				local ButtonName = "LeaderboardDisplay_".._
				local formattedString = "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount

				if _ == 1 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_1,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 2 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_2,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 3 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_3,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 4 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_4,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 5 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_5,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 6 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_6,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 7 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_7,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 8 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_8,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 9 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_9,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 10 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_10,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 11 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_11,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 12 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_12,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 13 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_13,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 14 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_14,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 15 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_15,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 16 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_16,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 17 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_17,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 18 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_18,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 19 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_19,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 20 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_20,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 21 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_21,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 22 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_22,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 23 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_23,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 24 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_24,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 25 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_25,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				end
			end	
		elseif Select == "Highest Life - Daily" then	
			local frames = workspace.LeaderboardModels.LifeSkippedV4.Gui.Contents.Scrolling:GetChildren()
				
			-- Filter out only the frames
			local filteredFrames = {}
			for _, frame in ipairs(frames) do
				if frame:IsA("Frame") then
					table.insert(filteredFrames, frame)
				end
			end

			-- Sort frames based on rank (from lowest to highest)
			table.sort(filteredFrames, function(a, b)
				local rankA = extractRankNumber(a.Rank.Text)
				local rankB = extractRankNumber(b.Rank.Text)
				return rankA < rankB
			end)

			-- Iterate through frames and create buttons
			for _, frame in ipairs(filteredFrames) do
				local displayName = frame.DisplayName.Text
				local username = frame.DisplayName.Username.Text
				local rankText = frame.Rank.Text
				local Amount = frame.DisplayName.Data.Text
				local rankNumber = extractRankNumber(rankText)

				local ButtonName = "LeaderboardDisplay_".._
				local formattedString = "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount

				if _ == 1 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_1,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 2 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_2,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 3 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_3,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 4 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_4,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 5 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_5,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 6 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_6,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 7 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_7,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 8 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_8,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 9 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_9,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 10 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_10,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 11 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_11,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 12 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_12,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 13 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_13,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 14 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_14,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 15 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_15,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 16 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_16,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 17 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_17,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 18 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_18,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 19 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_19,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 20 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_20,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 21 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_21,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 22 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_22,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 23 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_23,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 24 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_24,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 25 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_25,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				end
			end	
		elseif Select == "Highest Life - All Time" then
			local frames = workspace.LeaderboardModels.highestLifeV5.Gui.Contents.Scrolling:GetChildren()
				
			-- Filter out only the frames
			local filteredFrames = {}
			for _, frame in ipairs(frames) do
				if frame:IsA("Frame") then
					table.insert(filteredFrames, frame)
				end
			end

			-- Sort frames based on rank (from lowest to highest)
			table.sort(filteredFrames, function(a, b)
				local rankA = extractRankNumber(a.Rank.Text)
				local rankB = extractRankNumber(b.Rank.Text)
				return rankA < rankB
			end)

			-- Iterate through frames and create buttons
			for _, frame in ipairs(filteredFrames) do
				local displayName = frame.DisplayName.Text
				local username = frame.DisplayName.Username.Text
				local rankText = frame.Rank.Text
				local Amount = frame.DisplayName.Data.Text
				local rankNumber = extractRankNumber(rankText)

				local ButtonName = "LeaderboardDisplay_".._
				local formattedString = "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount

				if _ == 1 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_1,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 2 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_2,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 3 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_3,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 4 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_4,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 5 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_5,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 6 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_6,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 7 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_7,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 8 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_8,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 9 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_9,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 10 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_10,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 11 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_11,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 12 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_12,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 13 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_13,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 14 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_14,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 15 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_15,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 16 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_16,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 17 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_17,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 18 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_18,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 19 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_19,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 20 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_20,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 21 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_21,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 22 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_22,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 23 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_23,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 24 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_24,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 25 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_25,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				end
			end	
		elseif Select == "Highest Shard - All Time" then
			local frames = workspace.LeaderboardModels.LeaderboardTopShardsV0.Gui.Contents.Scrolling:GetChildren()
				
			-- Filter out only the frames
			local filteredFrames = {}
			for _, frame in ipairs(frames) do
				if frame:IsA("Frame") then
					table.insert(filteredFrames, frame)
				end
			end

			-- Sort frames based on rank (from lowest to highest)
			table.sort(filteredFrames, function(a, b)
				local rankA = extractRankNumber(a.Rank.Text)
				local rankB = extractRankNumber(b.Rank.Text)
				return rankA < rankB
			end)

			-- Iterate through frames and create buttons
			for _, frame in ipairs(filteredFrames) do
				local displayName = frame.DisplayName.Text
				local username = frame.DisplayName.Username.Text
				local rankText = frame.Rank.Text
				local Amount = frame.DisplayName.Data.Text
				local rankNumber = extractRankNumber(rankText)

				local ButtonName = "LeaderboardDisplay_".._
				local formattedString = "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount

				if _ == 1 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_1,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 2 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_2,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 3 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_3,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 4 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_4,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 5 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_5,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 6 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_6,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 7 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_7,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 8 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_8,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 9 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_9,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 10 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_10,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 11 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_11,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 12 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_12,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 13 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_13,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 14 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_14,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 15 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_15,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 16 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_16,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 17 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_17,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 18 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_18,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 19 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_19,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 20 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_20,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 21 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_21,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 22 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_22,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 23 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_23,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 24 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_24,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 25 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_25,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				end
			end	
		elseif Select == "Highest Ores Mined - All Time" then
			local frames = workspace.LeaderboardModels.OreMinedAllTimeV4.Gui.Contents.Scrolling:GetChildren()
				
			-- Filter out only the frames
			local filteredFrames = {}
			for _, frame in ipairs(frames) do
				if frame:IsA("Frame") then
					table.insert(filteredFrames, frame)
				end
			end

			-- Sort frames based on rank (from lowest to highest)
			table.sort(filteredFrames, function(a, b)
				local rankA = extractRankNumber(a.Rank.Text)
				local rankB = extractRankNumber(b.Rank.Text)
				return rankA < rankB
			end)

			-- Iterate through frames and create buttons
			for _, frame in ipairs(filteredFrames) do
				local displayName = frame.DisplayName.Text
				local username = frame.DisplayName.Username.Text
				local rankText = frame.Rank.Text
				local Amount = frame.DisplayName.Data.Text
				local rankNumber = extractRankNumber(rankText)

				local ButtonName = "LeaderboardDisplay_".._
				local formattedString = "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount

				if _ == 1 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_1,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 2 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_2,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 3 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_3,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 4 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_4,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 5 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_5,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 6 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_6,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 7 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_7,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 8 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_8,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 9 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_9,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 10 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_10,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 11 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_11,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 12 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_12,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 13 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_13,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 14 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_14,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 15 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_15,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 16 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_16,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 17 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_17,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 18 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_18,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 19 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_19,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 20 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_20,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 21 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_21,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 22 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_22,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 23 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_23,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 24 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_24,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 25 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_25,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				end
			end	
		elseif Select == "Highest Gift Streak - All Time" then
			local frames = workspace.LeaderboardModels.LeaderboardTopGiftV0.Gui.Contents.Scrolling:GetChildren()
				
			-- Filter out only the frames
			local filteredFrames = {}
			for _, frame in ipairs(frames) do
				if frame:IsA("Frame") then
					table.insert(filteredFrames, frame)
				end
			end

			-- Sort frames based on rank (from lowest to highest)
			table.sort(filteredFrames, function(a, b)
				local rankA = extractRankNumber(a.Rank.Text)
				local rankB = extractRankNumber(b.Rank.Text)
				return rankA < rankB
			end)

			-- Iterate through frames and create buttons
			for _, frame in ipairs(filteredFrames) do
				local displayName = frame.DisplayName.Text
				local username = frame.DisplayName.Username.Text
				local rankText = frame.Rank.Text
				local Amount = frame.DisplayName.Data.Text
				local rankNumber = extractRankNumber(rankText)

				local ButtonName = "LeaderboardDisplay_".._
				local formattedString = "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount

				if _ == 1 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_1,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 2 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_2,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 3 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_3,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 4 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_4,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 5 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_5,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 6 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_6,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 7 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_7,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 8 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_8,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 9 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_9,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 10 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_10,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 11 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_11,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 12 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_12,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 13 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_13,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 14 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_14,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 15 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_15,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 16 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_16,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 17 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_17,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 18 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_18,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 19 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_19,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 20 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_20,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 21 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_21,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 22 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_22,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 23 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_23,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 24 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_24,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 25 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_25,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				end
			end	
		elseif Select == "Highest uC - All Time" then
			local frames = workspace.LeaderboardModels.LeaderboardUCV2.Gui.Contents.Scrolling:GetChildren()
				
			-- Filter out only the frames
			local filteredFrames = {}
			for _, frame in ipairs(frames) do
				if frame:IsA("Frame") then
					table.insert(filteredFrames, frame)
				end
			end

			-- Sort frames based on rank (from lowest to highest)
			table.sort(filteredFrames, function(a, b)
				local rankA = extractRankNumber(a.Rank.Text)
				local rankB = extractRankNumber(b.Rank.Text)
				return rankA < rankB
			end)

			-- Iterate through frames and create buttons
			for _, frame in ipairs(filteredFrames) do
				local displayName = frame.DisplayName.Text
				local username = frame.DisplayName.Username.Text
				local rankText = frame.Rank.Text
				local Amount = frame.DisplayName.Data.Text
				local rankNumber = extractRankNumber(rankText)

				local ButtonName = "LeaderboardDisplay_".._
				local formattedString = "#"..rankNumber.." "..displayName.." ("..username.."): "..Amount

				if _ == 1 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_1,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 2 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_2,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 3 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_3,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 4 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_4,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 5 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_5,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 6 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_6,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 7 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_7,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 8 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_8,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 9 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_9,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 10 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_10,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 11 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_11,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 12 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_12,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 13 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_13,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 14 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_14,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 15 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_15,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 16 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_16,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 17 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_17,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 18 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_18,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 19 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_19,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 20 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_20,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 21 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_21,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 22 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_22,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 23 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_23,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 24 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_24,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				elseif _ == 25 then
					LeaderboardViewSection:updateButton(LeaderboardDisplay_25,"#"..rankNumber.." "..displayName.." ("..username.."): "..Amount)
				end
			end	
		end
	end
) 

--===[[ Venders Page ]]===--

tweenFrameSize(LoadBarInside, {0, 24.3846 * 5, 0, 16}, LoadingTitle, "Loading Vendors")

local VendersPage = MainWindow:addPage("Venders", 5670621831)
local AutoSuperstitiousSection = VendersPage:addSection("Auto Superstitious (Use with Auto Rebirth) [IN DEVELOPMENT]")
local ItemSalvageSection = VendersPage:addSection("Auto Salvage")
local VendersSection = VendersPage:addSection("Game GUIs")

AutoSuperstitious_Dropdown = AutoSuperstitiousSection:addDropdown(
	"Select Superstitious Item",
	{"None","Draedon's Gauntlet","Daestrophe","Delta Phantom","Pandora's Box","Elysium Solemnity","Optic Origin","Havium Mine","The Death Cap","Vulcan's Wrath","Midas Blaster","Tyrant's Throne","Garden of Gaia","Ore Hypernova","Enchanted Library","The Hourglass","Swag City","Methuselah's Mask","Meralin's Sorcery","The Heart of Void"},
	function(Select)
		SettingsS["Autofarm"]["Auto Rebirth"]["Auto Superstitious"]["Item"] = Select
		if Select == "None" or Select == nil then
			SettingsS["Autofarm"]["Auto Rebirth"]["Auto Superstitious"]["Enabled"] = false

		else
			SettingsS["Autofarm"]["Auto Rebirth"]["Auto Superstitious"]["Enabled"] = true
		end
		SaveS()
		-- Get all the itmes required, make a table for all items per superstitious, then place all needed down and rebirth. 
	end,
	nil
)

AutoSalvage_Button = ItemSalvageSection:addButton(
	"Open Auto-Salvage GUI",
	function()
		transitionTo(CoreGui[guiname].Main, CoreGui[salvageguiname].autosalvage, nil, CoreGui[guiname].Main.Glow)
	end
) do
	loadstring(game:HttpGet("https://raw.githubusercontent.com/VeronicVR/MHScripts/main/Auto%20Salvage.lua"))()
end

MaskedMan_Button = VendersSection:addButton(
	"Open Masked Man",
	function()
		if workspace.Market ~= nil then 
			game:GetService("Players").LocalPlayer.PlayerGui.GUI.BOKBook.Visible = false
			fireproximityprompt(workspace.Market.Internal.ProximityPrompt)
		end
	end
)
Craftsman_Button = VendersSection:addButton(
	"Open Craftsman",
	function()
		-- workspace.Map.TeleporterModel.TowerInterior --Teleporter
		
		if workspace.Map.WizardDude ~= nil then 
			game:GetService("Players").LocalPlayer.PlayerGui.GUI.BOKBook.Visible = false
			fireproximityprompt(workspace.Map.WizardDude.Internal.ProximityPrompt)
		end
	end
)
McDook_Button = VendersSection:addButton(
	"Open Spook McDook",
	function()
		-- workspace.Map.TeleporterModel.McDookShop --Teleporter
		
		if workspace.Map.SpookMcDook ~= nil then 
			game:GetService("Players").LocalPlayer.PlayerGui.GUI.BOKBook.Visible = false
			fireproximityprompt(workspace.Map.SpookMcDook.Internal.ProximityPrompt)
		end
	end
)
Draedon_Button = VendersSection:addButton(
	"Open Draedon",
	function()
		-- workspace.Map.TeleporterModel.Temple --Teleporter
		
		if workspace.Map.Draedon ~= nil then 
			game:GetService("Players").LocalPlayer.PlayerGui.GUI.BOKBook.Visible = false
			fireproximityprompt(workspace.Map.Draedon.Internal.ProximityPrompt)
		end
		
	end
)
BOK_Button = VendersSection:addButton(
	"Open Book Of Knowledge",
	function()
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.BOKBook.Visible = true
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.BOKBook.Top.Close.MouseButton1Click:Connect(function() game:GetService("Players").LocalPlayer.PlayerGui.GUI.BOKBook.Visible = false end)
	end
)

--===[[ Layouts Page ]]===--

tweenFrameSize(LoadBarInside, {0, 24.3846 * 6, 0, 16}, LoadingTitle, "Loading Layouts")

--[[
	SettingsS = {
		["Layouts"] = {
			["Save External Layout Custom Name"] = "",
			["Select External Layout"] = {
				["All External Layouts"] = {},
				["Selected External Layout"] = "",
			},
			["Layout Stealer"] = {
				["Player To Copy"] = {
					["Players"] = {},
					["Selected"] = "",
				},
				["Layout To Copy"] = {
					["Layouts"] = {"Current Base", "Layout 1", "Layout 2", "Layout 3", "Layout 4"},
					["Selected"] = "",
				},
			},
			["Database Layouts"] = {
				["Unique ID"] = "Paste Here",
				["Show Preview"] = false,
			},
			["Missing"] = {
				["Selected Layout"] = "",
				["Unique ID"] = "",
			},
		},
	}
--]]

local LayoutsPage = MainWindow:addPage("Layouts", 5506488860)
local SaveExternalLayoutsSection = LayoutsPage:addSection("Save External Layout [IN DEVELOPMENT]")
local LoadDeleteExternalLayoutsSection = LayoutsPage:addSection("Load/Delete External Layout [IN DEVELOPMENT]")
local LayoutStealerSection = LayoutsPage:addSection("Layout Stealer")
local DatabaseLayoutsSection = LayoutsPage:addSection("Database Layouts [IN DEVELOPMENT]")
local PresetLayoutsSection = LayoutsPage:addSection("Preset Layouts [IN DEVELOPMENT]")
local CheckMissingSection = LayoutsPage:addSection("Check for Missing Items [IN DEVELOPMENT]")

--===[[ External Layouts Section ]]===--

CustomNameForExternal_TextBox = SaveExternalLayoutsSection:addTextbox(
	"Custom Name For External Layout",
	"Type Here",
	function(Value, focusLost)
		if focusLost then
			SettingsS["Layouts"]["Save External Layout Custom Name"] = Value
		end
	end
)
SaveExternalLayout_Button = SaveExternalLayoutsSection:addButton(
	"Save External Layout",
	function()
		--Save External Via JSON with name from SettingsS["Layouts"]["Save External Layout Custom Name"]

		--[{"Position":[-210,"11.0",-120,1,0,0],"Plane":0,"ItemId":560},
		--{"Position":["-205.5","18.5",-117,0,0,-1],"Plane":0,"ItemId":18}]

		for _,Items in ipairs(PlrTycoonChildren) do
			print(_,Items)
		end
	end
)

SelectExternalLayout_Dropdown = LoadDeleteExternalLayoutsSection:addDropdown(
	"Select External Layout",
	SettingsS["Layouts"]["Select External Layout"]["All External Layouts"],
	function(Select)
		SettingsS["Layouts"]["Select External Layout"]["Selected External Layout"] = Select
	end,
	nil
)
ShowPreviewExternal_Toggle = LoadDeleteExternalLayoutsSection:addToggle(
	"Show Preview", 
	false,
	function(state)
		
	end
)
LoadExternalLayout_Button = LoadDeleteExternalLayoutsSection:addButton(
	"Load External Layout",
	function()
		--Load External Via Saved JSON
	end
)
DeleteExternalLayout_Button = LoadDeleteExternalLayoutsSection:addButton(
	"Delete External Layout",
	function()
		--Delete External via SettingsS["Layouts"]["Select External Layout"]["Selected External Layout"]
	end
)

function removebyKey(tab, val)
    for i, v in ipairs(tab) do 
        if (v.id == val) then
          tab[i] = nil
        end
    end
end
function extract_text_between_parentheses(input_string)
    local start_index = input_string:find("%(@") -- Find the start index of the substring
    local end_index = input_string:find("%)", start_index) -- Find the end index of the substring
    
    -- If both start and end indexes are found, extract the substring
    if start_index and end_index then
        return input_string:sub(start_index + 2, end_index - 1) -- Extract the substring between indexes
    else
        return nil -- Return nil if either start or end index is not found
    end
end

--===[[ Layout Stealer Section ]]===--

SettingsS["Layouts"]["Layout Stealer"]["Player To Copy"]["Players"] = {}
task.wait()
for _,Player in next, game.Players:GetChildren() do
	table.insert(SettingsS["Layouts"]["Layout Stealer"]["Player To Copy"]["Players"], Player.DisplayName .. " (@"..Player.Name..")")
end

local SelectLayoutToCopy_Dropdown
PlayerToCopy_Dropdown = LayoutStealerSection:addDropdown(
	"Select Which Player To Copy",
	SettingsS["Layouts"]["Layout Stealer"]["Player To Copy"]["Players"],
	function(Selected)
		SettingsS["Layouts"]["Layout Stealer"]["Player To Copy"]["Selected"] = Selected
		SaveS()

		task.defer(function()
			local ActualName = extract_text_between_parentheses(SettingsS["Layouts"]["Layout Stealer"]["Player To Copy"]["Selected"])
			local Layouts = game.Players[ActualName].Layouts:GetChildren()

			if #Layouts == 4 then
				SettingsS["Layouts"]["Layout Stealer"]["Layout To Copy"]["Layouts"] = {"Current Base", "Layout 1", "Layout 2", "Layout 3", "Layout 4"}
				LayoutStealerSection:updateDropdown(SelectLayoutToCopy_Dropdown, nil, nil, nil)
			else
				SettingsS["Layouts"]["Layout Stealer"]["Layout To Copy"]["Layouts"] = {"Current Base", "Layout 1", "Layout 2", "Layout 3"}
				LayoutStealerSection:updateDropdown(SelectLayoutToCopy_Dropdown, nil, nil, nil)
			end
		end)
		
	end,
	nil
)
ShowPreviewOfPlayerBase_Toggle = LayoutStealerSection:addToggle(
	"Show Preview", 
	false,
	function(state)
		
	end
)
SelectLayoutToCopy_Dropdown = LayoutStealerSection:addDropdown(
	"Select Which Layout To Copy",
	SettingsS["Layouts"]["Layout Stealer"]["Layout To Copy"]["Layouts"],
	function(Selected)
		SettingsS["Layouts"]["Layout Stealer"]["Layout To Copy"]["Selected"] = Selected
	end,
	nil
)
CopySelectedLayout_Button = LayoutStealerSection:addButton(
	"Copy Selected Layout",
	function()
		local HttpService = game:GetService("HttpService")

		function getItemName(itemId)
		    for _, item in ipairs(game.ReplicatedStorage.Items:GetChildren()) do
		        if item:FindFirstChild("ItemId") and item.ItemId.Value == itemId then
		            return item.Name
		        end
		    end
		    return nil
		end

		function getPlayerBasePart()
		    local TycoonList = game.Workspace.Tycoons:GetChildren()
		    for _, v in ipairs(TycoonList) do
		        if v.Owner.Value == game.Players.LocalPlayer.Name then
		            return v
		        end
		    end
		    return nil
		end

		--{"Current Base", "Layout 1", "Layout 2", "Layout 3", "Layout 4"}
		if SettingsS["Layouts"]["Layout Stealer"]["Layout To Copy"]["Selected"] == "Layout 1" or SettingsS["Layouts"]["Layout Stealer"]["Layout To Copy"]["Selected"] == "Layout 2" or SettingsS["Layouts"]["Layout Stealer"]["Layout To Copy"]["Selected"] == "Layout 3" or SettingsS["Layouts"]["Layout Stealer"]["Layout To Copy"]["Selected"] == "Layout 4" then

			local LayoutReal = remove_spaces(SettingsS["Layouts"]["Layout Stealer"]["Layout To Copy"]["Selected"])
			local ActualName = extract_text_between_parentheses(SettingsS["Layouts"]["Layout Stealer"]["Player To Copy"]["Selected"])

			if game.Players[ActualName].Layouts[LayoutReal] ~= nil then 
				local jsonData = game.Players[ActualName].Layouts[LayoutReal].Value
				local decodedData = HttpService:JSONDecode(jsonData)

				local playerBasePart = getPlayerBasePart()
				if not playerBasePart.Base then
				    warn("Player base part not found.")
				    return
				end

				for _, data in ipairs(decodedData) do
				    local itemName = getItemName(data.ItemId)
				    if itemName then
						local Pos1
						local Pos2
						local Pos3
						local Pos4
						local Pos5
						local Pos6
						local Pos7
						local Pos8
						local Pos9
						local Pos10
						local Pos11
						local Pos12
						if game:GetService("MarketplaceService"):UserOwnsGamePassAsync(Client.UserId, 747406) then
				        	local position = data.Position
							if playerBasePart.Name == "Factory1" then
								Pos1 = position[1] - 259.881531
								Pos2 = position[2] + 62.0766449
								Pos3 = position[3] - 183.379639
							elseif playerBasePart.Name == "Factory2"  then
								Pos1 = position[1] + 284.0075989
								Pos2 = position[2] + 87.3820801
								Pos3 = position[3] - 48.2033844
							elseif playerBasePart.Name == "Factory3" then
								Pos1 = position[1] + 672.076538 
								Pos2 = position[2] + 72.7919998
								Pos3 = position[3] + 340.343933
							elseif playerBasePart.Name == "Factory4" then
								Pos1 = position[1] + 418.114716
								Pos2 = position[2] + 36.8071632
								Pos3 = position[3] + 911.529541
							elseif playerBasePart.Name == "Factory5" then
								Pos1 = position[1] - 111.149445
								Pos2 = position[2] + 78.7649536
								Pos3 = position[3] + 947.775818
							elseif playerBasePart.Name == "Factory6" then
								Pos1 = position[1] - 476.019592
								Pos2 = position[2] + 102.726143
								Pos3 = position[3] + 522.690369
							end
							if position[4] == 1 and position[5] == 0 and position[6] == 0 then
								Pos4 = 1.19248806e-08
								Pos5 = 0
								Pos6 = -1
								Pos7 = 0
								Pos8 = 1
								Pos9 = 0
								Pos10 = 1
								Pos11 = 0
								Pos12 = 1.19248806e-08
							elseif position[4] == 0 and position[5] == 0 and position[6] == -1 then
								Pos4 = 1
								Pos5 = 0
								Pos6 = 1.74845553e-07
								Pos7 = 0
								Pos8 = 1
								Pos9 = 0
								Pos10 = -1.74845553e-07
								Pos11 = 0
								Pos12 = 1
							elseif position[4] == -1 and position[5] == 0 and position[6] == 0 then
								Pos4 = -4.37113883e-08
								Pos5 = 0
								Pos6 = 1
								Pos7 = 0
								Pos8 = 1
								Pos9 = 0
								Pos10 = -1
								Pos11 = 0
								Pos12 = -4.37113883e-08
							elseif position[4] == 0 and position[5] == 0 and position[6] == 1 then
								Pos4 = -1
								Pos5 = 0
								Pos6 = -8.74227766e-08
								Pos7 = 0
								Pos8 = 1
								Pos9 = 0
								Pos10 = 8.74227766e-08
								Pos11 = 0
								Pos12 = -1
							end
							local cframe = CFrame.new(Pos1, Pos2, Pos3, Pos4, Pos5, Pos6, Pos7, Pos8, Pos9, Pos10, Pos11, Pos12)
				        	game:GetService("ReplicatedStorage").PlaceItem:InvokeServer(itemName, cframe, {playerBasePart.Base})
						else
							local position = data.Position
							if playerBasePart.Name == "Factory1" then
								Pos1 = position[1] + 286.881531
								Pos2 = position[2] + 62.0766449
								Pos3 = position[3] + 210.379639
							elseif playerBasePart.Name == "Factory2"  then
								Pos1 = position[1] + 257.0075989
								Pos2 = position[2] + 87.3820801
								Pos3 = position[3] - 75.2033844
							elseif playerBasePart.Name == "Factory3" then
								Pos1 = position[1] + 645.076538
								Pos2 = position[2] + 72.7919998
								Pos3 = position[3] + 313.343933
							elseif playerBasePart.Name == "Factory4" then
								Pos1 = position[1] + 391.114716
								Pos2 = position[2] + 36.8071632
								Pos3 = position[3] + 884.529541
							elseif playerBasePart.Name == "Factory5" then
								Pos1 = position[1] - 138.149445
								Pos2 = position[2] + 78.7649536
								Pos3 = position[3] + 914.275818
							elseif playerBasePart.Name == "Factory6" then
								Pos1 = position[1] - 503.019592
								Pos2 = position[2] + 102.726143
								Pos3 = position[3] + 495.690369
							end
							if position[4] == 1 and position[5] == 0 and position[6] == 0 then
								Pos4 = 1.19248806e-08
								Pos5 = 0
								Pos6 = -1
								Pos7 = 0
								Pos8 = 1
								Pos9 = 0
								Pos10 = 1
								Pos11 = 0
								Pos12 = 1.19248806e-08
							elseif position[4] == 0 and position[5] == 0 and position[6] == -1 then
								Pos4 = 1
								Pos5 = 0
								Pos6 = 1.74845553e-07
								Pos7 = 0
								Pos8 = 1
								Pos9 = 0
								Pos10 = -1.74845553e-07
								Pos11 = 0
								Pos12 = 1
							elseif position[4] == -1 and position[5] == 0 and position[6] == 0 then
								Pos4 = -4.37113883e-08
								Pos5 = 0
								Pos6 = 1
								Pos7 = 0
								Pos8 = 1
								Pos9 = 0
								Pos10 = -1
								Pos11 = 0
								Pos12 = -4.37113883e-08
							elseif position[4] == 0 and position[5] == 0 and position[6] == 1 then
								Pos4 = -1
								Pos5 = 0
								Pos6 = -8.74227766e-08
								Pos7 = 0
								Pos8 = 1
								Pos9 = 0
								Pos10 = 8.74227766e-08
								Pos11 = 0
								Pos12 = -1
							end
			
							local cframe = CFrame.new(Pos1, Pos2, Pos3, Pos4, Pos5, Pos6, Pos7, Pos8, Pos9, Pos10, Pos11, Pos12)
							game:GetService("ReplicatedStorage").PlaceItem:InvokeServer(itemName, cframe, {playerBasePart.Base})
						end
				    end
				end
			else
				LayoutReal = SettingsS["Layouts"]["Layout Stealer"]["Layout To Copy"]["Selected"]
				MainWindow:Notify("Failed","Cannot load layout, "..LayoutReal.." does NOT exist for "..ActualName)
			end
		elseif SettingsS["Layouts"]["Layout Stealer"]["Layout To Copy"]["Selected"] == "Current Base" then

		end
	end
)
local GenerateIDForLayout_Button
GenerateIDForLayout_Button = LayoutStealerSection:addButton(
	"Generate ID For Selected Layout",
	function()
		--Save External Via JSON with name from SettingsS["Layouts"]["Save External Layout Custom Name"]
		local LayoutReal = remove_spaces(SettingsS["Layouts"]["Layout Stealer"]["Layout To Copy"]["Selected"])
		local ActualName = extract_text_between_parentheses(SettingsS["Layouts"]["Layout Stealer"]["Player To Copy"]["Selected"])

		local Layout = game.Players[ActualName].Layouts[LayoutReal]

		local Encrypted = crypt.encrypt(Layout.Value, "IronicsClientUwU", "23N21I26N26121522726J22E24A22U25K21X25X", CBC)
		setclipboard(Encrypted)
		task.wait()
		MainWindow:Notify("Success","Generated ID to clipboard! You can now post this code to the Layout Sharing Channel along with a picture.")
	end
)
function onPlayerAdded(player)
    table.insert(SettingsS["Layouts"]["Layout Stealer"]["Player To Copy"]["Players"], player.DisplayName .. " (@"..player.Name..")")
	LayoutStealerSection:updateDropdown(PlayerToCopy_Dropdown, nil, nil, nil)
end
function onPlayerRemoved(player)
	removebyKey(SettingsS["Layouts"]["Layout Stealer"]["Player To Copy"]["Players"], player.DisplayName .. " (@"..player.Name..")")
	LayoutStealerSection:updateDropdown(PlayerToCopy_Dropdown, nil, nil, nil)
end 
game.Players.PlayerAdded:Connect(onPlayerAdded)
game.Players.PlayerRemoving:Connect(onPlayerRemoved)

--===[[ Database Layout Section ]]===--

DeleteExternalLayout_Button = DatabaseLayoutsSection:addButton(
	"Get Unique ID for Current Layout",
	function()
		
	end
)
CustomNameForExternal_TextBox = DatabaseLayoutsSection:addTextbox(
	"Paste Unique ID",
	"Paste Here",
	function(Value, focusLost)
		if focusLost then
			SettingsS["Layouts"]["Database Layouts"]["Unique ID"] = Value
		end
	end
)
ShowPreviewDatabase_Toggle = DatabaseLayoutsSection:addToggle(
	"Show Preview", 
	false,
	function(state)
		
	end
)
LoadExternalLayout_Button = DatabaseLayoutsSection:addButton(
	"Load Layout with Unique ID",
	function()
		
	end
)

--===[[ Preset Layout Section ]]===--

SelectPresetLayoutLayout_Dropdown = PresetLayoutsSection:addDropdown(
	"Select Preset Layout",
	{},
	function(Select)
		--SettingsS["Layouts"]["Select External Layout"]["Selected External Layout"] = Select
	end,
	nil
)

--===[[ Missing Items Section ]]===--

MissingItems_Layouts_Dropdown = CheckMissingSection:addDropdown(
	"Select Layout to Check",
	{"Last Copied Layout"},
	function(Select)
		SettingsS["Layouts"]["Missing"]["Selected Layout"] = Select
	end,
	nil
)
CheckMissingFromID_TextBox = CheckMissingSection:addTextbox(
	"Check a layout ID",
	"Paste Here",
	function(Value, focusLost)
		if focusLost then
			SettingsS["Layouts"]["Missing"]["Unique ID"] = Value
		end
	end
)
CheckMissingItems_Button = CheckMissingSection:addButton(
	"Check what Items you're missing", 
	function()

	end
)

--===[[ Misc Page ]]===--

--[[
	SettingsS = {
		["Misc"] = {
			["Time Set"] = {
				["Options"] = {"Normal Cycle","Day","Night"},
				["Selected"] = "Normal Cycle",
			},
			["Explosions"] = false,
			["UpgradeChecker"] = false,
			["Ore ESP"] = false,
		}
	}
--]]

tweenFrameSize(LoadBarInside, {0, 24.3846 * 7, 0, 16}, LoadingTitle, "Loading Misc")

local MiscPage = MainWindow:addPage("Misc", 5506574548)
local CodesSection = MiscPage:addSection("Codes")
local CrateItemsSection = MiscPage:addSection("Crate Items")
local BlueprintsSection = MiscPage:addSection("Blueprints")
local DayNightSection = MiscPage:addSection("Always Day/Night")
local ExplosionVisualsSection = MiscPage:addSection("Turn Off Explosions (Visuals)")
local UpgraderCheckerSection = MiscPage:addSection("Upgrader Checker (For Railgun Setups) [IN DEVELOPMENT]")
local DestroyOresSection = MiscPage:addSection("Clear Ores")
local OreESPSection = MiscPage:addSection("Ore ESP")
local OptimizationSection = MiscPage:addSection("Optimize Game (Reduce Lag) [IN DEVELOPMENT]")

RedeemCodes_Button = CodesSection:addButton(
	"Redeem Current Codes",
	function()
		game:GetService("ReplicatedStorage").TryCode:InvokeServer("KaBOOOOM")
		game:GetService("ReplicatedStorage").TryCode:InvokeServer("HeadStart")
		game:GetService("ReplicatedStorage").TryCode:InvokeServer("Rthro")
		game:GetService("ReplicatedStorage").TryCode:InvokeServer("ItsWonderful!")
		game:GetService("ReplicatedStorage").TryCode:InvokeServer("DragonThatIsShockinglyLucky")
		game:GetService("ReplicatedStorage").TryCode:InvokeServer("EXOTICDAY2020")
		game:GetService("ReplicatedStorage").TryCode:InvokeServer("YesItIsNostalgicToMe")
		game:GetService("ReplicatedStorage").TryCode:InvokeServer("SLUMBER")
		game:GetService("ReplicatedStorage").TryCode:InvokeServer("RestEasyNow")
		game:GetService("ReplicatedStorage").TryCode:InvokeServer("twelvetosixteen")
		game:GetService("ReplicatedStorage").TryCode:InvokeServer("BagelHeart")
		game:GetService("ReplicatedStorage").TryCode:InvokeServer("MakeYourDestiny")
		game:GetService("ReplicatedStorage").TryCode:InvokeServer("mysoupisaboy")
		game:GetService("ReplicatedStorage").TryCode:InvokeServer("ancientcode")
		game:GetService("ReplicatedStorage").TryCode:InvokeServer("whatayear")
		game:GetService("ReplicatedStorage").TryCode:InvokeServer("FancyGrass")
		game:GetService("ReplicatedStorage").TryCode:InvokeServer("FUTURE")
		game:GetService("ReplicatedStorage").TryCode:InvokeServer("EggsEggsAndEggs")
		game:GetService("ReplicatedStorage").TryCode:InvokeServer("EASTER2024")
	
	end
)

BuyCrateItems_Button = CrateItemsSection:addButton(
	"Buy Crate Items", 
	function()
		game.ReplicatedStorage.BuyItem:InvokeServer("Ore Zapper", 99)
		game.ReplicatedStorage.BuyItem:InvokeServer("Ore Winder", 99)
		game.ReplicatedStorage.BuyItem:InvokeServer("Ore Hoister", 99)
		game.ReplicatedStorage.BuyItem:InvokeServer("Rush Upgrader", 99)
		game.ReplicatedStorage.BuyItem:InvokeServer("Ore Recliner", 99)
		game.ReplicatedStorage.BuyItem:InvokeServer("Satellite Beam", 99)
		game.ReplicatedStorage.BuyItem:InvokeServer("Endpoint Refiner", 99)
		game.ReplicatedStorage.BuyItem:InvokeServer("Portable Ore Stopper", 99)
		game.ReplicatedStorage.BuyItem:InvokeServer("Ore Steamer", 99)
		game.ReplicatedStorage.BuyItem:InvokeServer("Overhang Upgrader", 99)
		game.ReplicatedStorage.BuyItem:InvokeServer("Heat Condenser", 99)
		game.ReplicatedStorage.BuyItem:InvokeServer("Ore Recliner", 99)
		game.ReplicatedStorage.BuyItem:InvokeServer("Industrial Ore Welder", 99)
		game.ReplicatedStorage.BuyItem:InvokeServer("Portable Ore Enhancer", 99)
		game.ReplicatedStorage.BuyItem:InvokeServer("Drone Upgrader", 99)
	end
)

UnlockBlueprints_Button = BlueprintsSection:addButton(
	"Unlock Blueprints (Requires RP)", 
	function()
		local items = RS.Items:GetChildren()
        for i=1,#items do
            if items[i]:findFirstChild("BlueprintPrice") then
                if items[i].BlueprintPrice.Value <= Client.Points.Value then
                    RS.CraftsmanEvents:InvokeServer("type:buyblueprint", items[i].ItemId.Value)
                end
            end
        end
	end
)

DayNight_Dropdown = DayNightSection:addDropdown(
	"Select Day/Night",
	SettingsS["Misc"]["Time Set"]["Options"],
	function(Select)
		SettingsS["Misc"]["Time Set"]["Selected"] = Select
		task.defer(function()
			if SettingsS["Misc"]["Time Set"]["Selected"] == "Normal Cycle" then

			elseif SettingsS["Misc"]["Time Set"]["Selected"] == "Day" then
				while SettingsS["Misc"]["Time Set"]["Selected"] == "Day" and task.wait() do
					RS.NightTime.Value = false
					if SettingsS["Misc"]["Time Set"]["Selected"] ~= "Day" then break end
				end
			elseif SettingsS["Misc"]["Time Set"]["Selected"] == "Night" then
				while SettingsS["Misc"]["Time Set"]["Selected"] == "Night" and task.wait() do
					RS.NightTime.Value = true
					if SettingsS["Misc"]["Time Set"]["Selected"] ~= "Night" then break end
				end
			end
		end)
	end,
	nil
)

DisableVisualExplosions_Toggle = ExplosionVisualsSection:addToggle(
	"Explosion Invisibility", 
	false,
	function(state)
		SettingsS["Misc"]["Explosions"] = state
		SaveS()

		task.defer(function()
			if SettingsS["Misc"]["Explosions"] == true then
				while SettingsS["Misc"]["Explosions"] == true and task.wait(1) do
					
					for i,v in next, PlrTycoon:GetChildren() do
						for _, Descendant in next, v:GetDescendants() do
							if Descendant.Name == "Explode" then 
								Descendant.Volume = 0
							end
						end
					end

					if not SettingsS["Misc"]["Explosions"] then break end
				end
			else
				for i,v in next, PlrTycoon:GetChildren() do
					for _, Descendant in next, v:GetDescendants() do
						if Descendant.Name == "Explode" then 
							Descendant.Volume = 0.5
						end
					end
				end
			end
		end)
	end
)
game.Workspace.ChildAdded:Connect(function(Child)
	if Child.Name == "Explosion" then
		if SettingsS["Misc"]["Explosions"] == true then
			Child.Visible = false
		end
	end
end)
EnabledVisualChecker_Toggle = UpgraderCheckerSection:addToggle(
	"Enable/Disable Checker Mode", 
	false,
	function(state)
		if state == true then
			for _,Item in next, PlrTycoon:GetChildren() do
				if Item:IsA("Model") then
					for i_a,ModelInModel in next, Item.Model:GetDescendants() do
						if ModelInModel:IsA("TrussPart") or ModelInModel:IsA("UnionOperation") or ModelInModel:IsA("Part") or ModelInModel:IsA("WedgePart") or ModelInModel:IsA("MeshPart") or ModelInModel:IsA("CornerWedgePart") then
							if ModelInModel.Name == "Upgrade" then
								ModelInModel.Color = Color3.fromRGB(85, 255, 0)
							elseif ModelInModel.Name ~= "Drop" or ModelInModel.Name ~= "Lava" or ModelInModel.Name ~= "PortalPart" then
								if ModelInModel.Transparency == 1 then
									ModelInModel.Transparency = 2
								elseif ModelInModel.Transparency >= 0 and ModelInModel.Transparency <= 0.99 then
									ModelInModel.Transparency = 1.5
								elseif ModelInModel.Transparency == 1.5 then
									ModelInModel.Transparency = 0
								end
							end
						end
					end
				end
			end
		else
			for _,Item in next, PlrTycoon:GetChildren() do
				if Item:IsA("Model") then
					for i_a,ModelInModel in next, Item.Model:GetDescendants() do
						if ModelInModel:IsA("TrussPart") or ModelInModel:IsA("UnionOperation") or ModelInModel:IsA("Part") or ModelInModel:IsA("WedgePart") or ModelInModel:IsA("MeshPart") or ModelInModel:IsA("CornerWedgePart") then
							if ModelInModel.Name == "Upgrade" then
								ModelInModel.Color = Color3.fromRGB(255, 255, 255)
							elseif ModelInModel.Name ~= "Drop" or ModelInModel.Name ~= "Lava" or ModelInModel.Name ~= "PortalPart" then
								if ModelInModel.Transparency == 2 then
								elseif ModelInModel.Transparency >= 1.4 and ModelInModel.Transparency <= 1.6 then
									ModelInModel.Transparency = 0
								end
							end
						end
					end
				end
			end
		end
	end
)
ResetAlltoRed_Button = UpgraderCheckerSection:addButton(
	"Reset all to Red",
	function()
		for _,Item in next, PlrTycoon:GetChildren() do
			if Item:IsA("Model") then
				for i_a,ModelInModel in next, Item.Model:GetDescendants() do
					if ModelInModel:IsA("TrussPart") or ModelInModel:IsA("UnionOperation") or ModelInModel:IsA("Part") or ModelInModel:IsA("WedgePart") or ModelInModel:IsA("MeshPart") or ModelInModel:IsA("CornerWedgePart") then
						if ModelInModel.Name == "Upgrade" then
							ModelInModel.Color = Color3.fromRGB(255, 0, 0)
						end
					end
				end
			end
		end
	end
)
DestroyOres_Button = DestroyOresSection:addButton(
	"Destroy Ores", 
	function()
		for Int_1e,Ore_To_Restroy in next, PlrDroppedParts:GetChildren() do
			task.wait()
			if Ore_To_Restroy:FindFirstChild("Attachment") then
				Ore_To_Restroy.Attachment:Destroy()
			end
			firetouchtransmitter(Ore_To_Restroy, PlrTycoon.Base, 0)
			firetouchtransmitter(Ore_To_Restroy, PlrTycoon.Base, 1)
		end
	end
)
DestroyOres_Keybind = DestroyOresSection:addKeybind(
    "Keybind (Optional)",
    Enum.KeyCode.X,
    function()
        --print("Activated Keybind")
		for Int_1e,Ore_To_Restroy in next, PlrDroppedParts:GetChildren() do
			if Ore_To_Restroy:FindFirstChild("Attachment") then
				Ore_To_Restroy.Attachment:Destroy()
			end
			task.wait()
			firetouchtransmitter(Ore_To_Restroy, PlrTycoon.Base, 0)
			firetouchtransmitter(Ore_To_Restroy, PlrTycoon.Base, 1)
		end		
    end,
    function(key)
        --print("Changed Keybind", key)
    end
)

OreESP_Toggle = OreESPSection:addToggle(
	"Enable/Disable Ore ESP", 
	SettingsS["Misc"]["Ore ESP"],
	function(state)
		SettingsS["Misc"]["Ore ESP"] = state
		SaveS()
		
		if state == true then 
			for _, Ores in next, PlrDroppedParts:GetChildren() do
				local newHighlight = Instance.new("Highlight", Ores)
            	newHighlight.FillColor = Color3.fromRGB(44, 1, 150)
				newHighlight.OutlineColor = Color3.fromRGB(88, 1, 221)
			end
		elseif state == false then 
			for _, Ores in next, PlrDroppedParts:GetChildren() do
				if Ores:FindFirstChild("Highlight") then
					Ores.Highlight:Destroy()
				end
			end
		end
	end
)
PlrDroppedParts.ChildAdded:Connect(function(Ore_Drop)
    task.defer(function()
		if SettingsS["Misc"]["Ore ESP"] == true then
        	local newHighlight = Instance.new("Highlight", Ore_Drop)
            newHighlight.FillColor = Color3.new(88, 1, 221)
			newHighlight.OutlineColor = Color3.fromRGB(88, 1, 221)
		end
    end)
end)

--[[
OreESP_Keybind = OreESPSection:addKeybind(
    "Keybind (Optional)",
    Enum.KeyCode.KeypadOne,
    function()
        print("Activated Keybind")
		OreESPSection:updateToggle(OreESP_Toggle, nil, false)
    end,
    function(key)
        print("Changed Keybind", key)
    end
)
--]]

OptimizeGame_Toggle = OptimizationSection:addToggle(
	"Optimize Game (Leaves Only Bases)", 
	false,
	function(state)
		
	end
)


--===[[ Events Page ]]===--

tweenFrameSize(LoadBarInside, {0, 24.3846 * 8, 0, 16}, LoadingTitle, "Loading Events")

--[[
SettingsS
	["Event"] = {
		["Easter"] = {
			["Easter Egg Farm"] = false,
			["Redeem Eggs"],
		},
	},
--]]

local EventsPage = MainWindow:addPage("Events", 5506275157)
local EasterEvent_Section = EventsPage:addSection("Easter Event")
Event_EggAutofarm_Toggle = EasterEvent_Section:addToggle(
	"Event Egg Autofarm", 
	SettingsS["Event"]["Easter"]["Easter Egg Farm"],
	function(State)
		SettingsS["Event"]["Easter"]["Easter Egg Farm"] = State
		SaveS()
		task.defer(function()
			repeat task.wait()
				if not SettingsS["Event"]["Easter"]["Easter Egg Farm"] then break end

				local OldPosition = Client.Character.HumanoidRootPart.CFrame
				local function hasNoChildren(parent)
					for _, child in ipairs(parent:GetChildren()) do
						if child:IsA("Model") and #child:GetChildren() > 0 then
							return false
						end
					end
					return true
				end
				
				for _, Egg in next, workspace.Map.EGG_SPAWNS:GetChildren() do
					for __, EggChild in next, Egg:GetChildren() do
						if EggChild ~= nil then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = EggChild.CFrame 
							task.wait(1)
							fireproximityprompt(EggChild.ProximityPrompt)
							task.wait(1)
							if hasNoChildren(workspace.Map.EGG_SPAWNS) then
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldPosition
							end
						end
					end
				end
				
				for _, Egg in next, workspace.Easter["EASTER ISLAND EGG SPAWNS"]:GetChildren() do
					for __, EggChild in next, Egg:GetChildren() do
						if EggChild ~= nil then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = EggChild.CFrame 
							task.wait(1)
							fireproximityprompt(EggChild.ProximityPrompt)
							task.wait(1)
							if hasNoChildren(workspace.Easter["EASTER ISLAND EGG SPAWNS"]) then
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldPosition
							end
						end
					end
				end
			if hasNoChildren(workspace.Easter["EASTER ISLAND EGG SPAWNS"]) and hasNoChildren(workspace.Map.EGG_SPAWNS) then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OldPosition
			end
			task.wait(2)
			until SettingsS["Event"]["Easter"]["Easter Egg Farm"] == false
		end)
	end
)

--===[[ Movement Page ]]===--

tweenFrameSize(LoadBarInside, {0, 24.3846 * 9, 0, 16}, LoadingTitle, "Loading Movement")

local MovementPage = MainWindow:addPage("Movement", 15008363085)
local MovementSection = MovementPage:addSection("Basic Movement")
local FlightSection = MovementPage:addSection("Flight")
--local InfuseSection = MovementPage:addSection("Infusers")

local flying = false;
local deb = true;
local ctrl = {
	f = 0,
	b = 0,
	l = 0,
	r = 0
};
local lastctrl = {
	f = 0,
	b = 0,
	l = 0,
	r = 0
};
local maxspeed = 50;
local speed = 0;

function Fly()
	local torso = Client.Character.HumanoidRootPart;
	local bg = Instance.new("BodyGyro", torso);
	bg.P = 90000;
	bg.maxTorque = Vector3.new(9000000000, 9000000000, 9000000000);
	bg.cframe = torso.CFrame;
	local bv = Instance.new("BodyVelocity", torso);
	bv.velocity = Vector3.new(0, 0.1, 0);
	bv.maxForce = Vector3.new(9000000000, 9000000000, 9000000000);
	repeat
		wait();
		Client.Character.HumanoidRootPart.Running.Volume = 0
		Client.Character.Humanoid.PlatformStand = true;
		if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
			speed = speed + 0.5 + speed / maxspeed;
			if speed > maxspeed then
				speed = maxspeed;
			end;
		elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
			speed = speed - 1;
			if speed < 0 then
				speed = 0;
			end;
		end;
		if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
			bv.velocity = (game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f + ctrl.b) + (game.Workspace.CurrentCamera.CoordinateFrame * (CFrame.new((ctrl.l + ctrl.r), ((ctrl.f + ctrl.b) * 0.2), 0)).p - game.Workspace.CurrentCamera.CoordinateFrame.p)) * speed;
			lastctrl = {
				f = ctrl.f,
				b = ctrl.b,
				l = ctrl.l,
				r = ctrl.r
			};
		elseif ctrl.l + ctrl.r == 0 and ctrl.f + ctrl.b == 0 and speed ~= 0 then
			bv.velocity = (game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f + lastctrl.b) + (game.Workspace.CurrentCamera.CoordinateFrame * (CFrame.new((lastctrl.l + lastctrl.r), ((lastctrl.f + lastctrl.b) * 0.2), 0)).p - game.Workspace.CurrentCamera.CoordinateFrame.p)) * speed;
		else
			bv.velocity = Vector3.new(0, 0.1, 0);
		end;
		bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles((-math.rad(((ctrl.f + ctrl.b) * 50 * speed / maxspeed))), 0, 0);
	until not flying;
	ctrl = {
		f = 0,
		b = 0,
		l = 0,
		r = 0
	};
	lastctrl = {
		f = 0,
		b = 0,
		l = 0,
		r = 0
	};
	speed = 0;
	bg:Destroy();
	bv:Destroy();
	Client.Character.Humanoid.PlatformStand = false;
	Client.Character.HumanoidRootPart.Running.Volume = 0.6499999761581421
end;
Mouse.KeyDown:connect(function(key)
	if key:lower() == "w" then
		ctrl.f = 1;
	elseif key:lower() == "s" then
		ctrl.b = -1;
	elseif key:lower() == "a" then
		ctrl.l = -1;
	elseif key:lower() == "d" then
		ctrl.r = 1;
	end;
end);
Mouse.KeyUp:connect(function(key)
	if key:lower() == "w" then
		ctrl.f = 0;
	elseif key:lower() == "s" then
		ctrl.b = 0;
	elseif key:lower() == "a" then
		ctrl.l = 0;
	elseif key:lower() == "d" then
		ctrl.r = 0;
	end;
end);

Walkspeed_Silder = MovementSection:addSlider(
	"Set Walkspeed",
	SettingsS["Movement"]["WalkSpeed"],
	16, 	-- Minimum 
	300,  	-- Maximum
	function(Value)
		SettingsS["Movement"]["WalkSpeed"] = Value
		SaveS()
		checkPlayer()
        character.Humanoid.WalkSpeed = tonumber(Value)
	end
)
JumpHeight_Silder = MovementSection:addSlider(
	"Set Jump Height",
	SettingsS["Movement"]["JumpHeight"],
	50, 	-- Minimum 
	300,  	-- Maximum
	function(Value)
		SettingsS["Movement"]["JumpHeight"] = Value
		SaveS()
		checkPlayer()
        character.Humanoid.JumpPower = tonumber(Value)
	end
)

local FlightDebounce = false
FlightSpeed_Silder = FlightSection:addSlider(
	"Flight Speed",
	SettingsS["Movement"]["Flight Speed"],
	1, 		-- Minimum 
	20,  	-- Maximum
	function(Value)
		maxspeed = maxspeed + Value
		speed = Value
	end
)

local MobileFlightDebounce = false
if IsOnMobile then
	MobileFly_Button = FlightSection:addButton(
		"Mobile Fly",
		function()
			MobileFlightDebounce = not MobileFlightDebounce
			if MobileFlightDebounce then

			else
				
			end
		end
	)
end
FlightEnable_Keybind = FlightSection:addKeybind(
    "Keybind",
    Enum.KeyCode.B,
    function()
		FlightDebounce = not FlightDebounce

		if FlightDebounce then
			flying = true;
			Fly();
		else
			flying = false;
		end
	end,
    function(key)
        --print("Changed Keybind", key)
    end
)

--===[[ Universe TP Page ]]===--

tweenFrameSize(LoadBarInside, {0, 24.3846 * 10, 0, 16}, LoadingTitle, "Loading Universe TP")

local UniverseTP = MainWindow:addPage("Universe TP", 5506279975)
local UniverseTPSection = UniverseTP:addSection("Select Place to Teleport")

local pages = game:GetService("AssetService"):GetGamePlacesAsync()
function clear(t)
    for k in pairs(t) do
        t[k] = nil
    end
end
clear(SettingsS["Universe TP"])
task.defer(function()
	while true do
	    for _,place in pairs(pages:GetCurrentPage()) do
	        if place.Name:find('Restore') then task.wait() 
	            --print("Found Restore, Skipping")
	        else
				table.insert(SettingsS["Universe TP"] , place.Name)
	        end
	    end
	    if pages.IsFinished then SaveS() break end
	    pages:AdvanceToNextPageAsync()
	end
end)
UniTP_Dropdown = UniverseTPSection:addDropdown(
	"Place Teleport - Select Place",
	SettingsS["Universe TP"],
	function(Select)
		-- Define the table of place IDs
		local IDs = {
		    ["[EASTER] Miner's Haven ⛏️"] = 258258996,
		    ["The Void"] = 4464946645,
		    ["Revenge of John Doe"] = 4780479031,
		    ["Illusion"] = 4888384971,
		    ["Heart of Void"] = 5621678877,
		    ["The Temple"] = 5621679766,
		    ["Shiny Void"] = 5621680266,
		}

		local selectedPlaceID = IDs[Select]
		if selectedPlaceID then
			game:GetService("TeleportService"):Teleport(selectedPlaceID, Client)
		else
			warn("Selected place ID not found. Update?")
		end
	end,
	nil
)

--===[[ Spoofer Page ]]===--

tweenFrameSize(LoadBarInside, {0, 24.3846 * 11, 0, 16}, LoadingTitle, "Loading Spoofer")

local SpooferPage = MainWindow:addPage("Spoofer", 5670622878)
local StatSpoofSection = SpooferPage:addSection("Stat Spoof")
local CharSpoofSection = SpooferPage:addSection("Character Spoof")
local BaseSpoofSection = SpooferPage:addSection("Invisible Base")

SpoofName_Button = StatSpoofSection:addButton(
	"Spoof Stats and Name",
	function()
		local Name = "Ironic Client :3"
		local function modifyText(gui)
		    for _, child in ipairs(gui:GetChildren()) do
		        if child:IsA("TextLabel") or child:IsA("TextBox") then
		            local modifiedText = string.gsub(child.Text, game.Players.LocalPlayer.Name, Name)
		            modifiedText = string.gsub(modifiedText, game.Players.LocalPlayer.DisplayName, Name)
		            child.Text = modifiedText
		        end

		        modifyText(child)
		    end
		end

		modifyText(game:GetService("Players").LocalPlayer.PlayerGui)
		modifyText(game.CoreGui)

		for _, child in ipairs(game.Players.LocalPlayer.PlayerGui.GUI.HUDTop.MoneyOther:GetChildren()) do
			if child:IsA("Frame") and child:FindFirstChild("Amount") ~= nil then
				local SpoofText = child.Amount:Clone()
				SpoofText.Parent = child
				SpoofText.Text = "Ironic"
				SpoofText.Name = "Ironic"
				child.Amount.Visible = false
			end
		end
		local ChatScroll = game:GetService("CoreGui").ExperienceChat.appLayout.chatWindow.scrollingView.bottomLockedScrollView.RCTScrollView.RCTScrollContentView
		ChatScroll.ChildAdded:Connect(function()
			task.wait(0.01)
			modifyText(ChatScroll)
		end)
	end
)
CharacterSpoof_Toggle = CharSpoofSection:addToggle(
	"Character Spoof",
	false,
	function(state)
		if state == true then
			function removeAllClothing(character)
			    local clothingItems = character:GetChildren()
			    for _, item in ipairs(clothingItems) do
			        if item:IsA("Accessory") or item:IsA("Shirt") or item:IsA("Pants") or item:IsA("ShirtGraphic") then
			            item:Destroy()
			        end
			    end
			end

			function setRandomColors(character)
			    local part = character:GetChildren()
			    for i,v in next, part do
			        if v:IsA("MeshPart") then
			            v.Color = Color3.new(math.random(), math.random(), math.random())
			        end
			    end
			end

			local player = game.Players.LocalPlayer
			local character = player.Character or player.CharacterAdded:Wait()

			removeAllClothing(character)
			setRandomColors(character)
		else
			game.Players.LocalPlayer.Humanoid.Health = 0
		end
	end
)
BaseSpoof_Toggle = BaseSpoofSection:addToggle(
	"Hide/Unhide Base (Local)",
	false,
	function(state)
		if state == true then
			for _,Item in next, PlrTycoon:GetChildren() do
				if Item:IsA("Model") then
					for i_a,ModelInModel in next, Item.Model:GetDescendants() do
						if ModelInModel:IsA("TrussPart") or ModelInModel:IsA("UnionOperation") or ModelInModel:IsA("Part") or ModelInModel:IsA("WedgePart") or ModelInModel:IsA("MeshPart") or ModelInModel:IsA("CornerWedgePart") then
							if ModelInModel.Name == "Upgrade" then
								ModelInModel.Transparency = 3
							elseif ModelInModel.Name ~= "Drop" or ModelInModel.Name ~= "Lava" or ModelInModel.Name ~= "PortalPart" then
								if ModelInModel.Transparency == 1 then
									ModelInModel.Transparency = 2
								elseif ModelInModel.Transparency >= 0 and ModelInModel.Transparency <= 0.99 then
									ModelInModel.Transparency = 1.5
								elseif ModelInModel.Transparency == 1.5 then
									ModelInModel.Transparency = 0
								end
							end
						end
					end
				end
			end
		else
			for _,Item in next, PlrTycoon:GetChildren() do
				if Item:IsA("Model") then
					for i_a,ModelInModel in next, Item.Model:GetDescendants() do
						if ModelInModel:IsA("TrussPart") or ModelInModel:IsA("UnionOperation") or ModelInModel:IsA("Part") or ModelInModel:IsA("WedgePart") or ModelInModel:IsA("MeshPart") or ModelInModel:IsA("CornerWedgePart") then
							if ModelInModel.Name == "Upgrade" then
								warn("Upgrader")
								ModelInModel.Transparency = 0.5
							elseif ModelInModel.Name ~= "Drop" or ModelInModel.Name ~= "Lava" or ModelInModel.Name ~= "PortalPart" then
								if ModelInModel.Transparency == 2 then
									--ModelInModel.Transparency = 2
								elseif ModelInModel.Transparency >= 1.4 and ModelInModel.Transparency <= 1.6 then
									ModelInModel.Transparency = 0
								end
							end
						end
					end
				end
			end
		end
	end
)

--===[[ ItemInfo Page ]]===--

tweenFrameSize(LoadBarInside, {0, 24.3846 * 12, 0, 16}, LoadingTitle, "Loading Item Info")

local ItemInfoPage = MainWindow:addPage("Item Info", 5506272905)
local ItemWikiaSection = ItemInfoPage:addSection("Item Wikia")
local UIAddonsSection = ItemInfoPage:addSection("In-Game UI Addons [IN DEVELOPMENT]")

InGameWikia_Button = ItemWikiaSection:addButton(
	"Open In-game Wikia",
	function()
		transitionTo(CoreGui[guiname].Main, CoreGui[wikiguiname].wikisearch, nil, CoreGui[guiname].Main.Glow)
	end
) do
	loadstring(game:HttpGet("https://raw.githubusercontent.com/VeronicVR/MHScripts/main/In-game%20WIkia.lua"))()
end
HoverInfoUI_Toggle = UIAddonsSection:addToggle(
	"Toggle Hover Info [COMING SOON]",
	false,
	function(state)

	end
)

--===[[ Settings Page ]]===--

tweenFrameSize(LoadBarInside, {0, 24.3846 * 12, 0, 16}, LoadingTitle, "Loading Settings")

local SettingsPage = MainWindow:addPage("Settings", 5506279557)
local SettingsSection = SettingsPage:addSection("Funny/Test Features")
MenuToggle_KeyBind = SettingsSection:addKeybind("Toggle UI Keybind", Enum.KeyCode[SettingsS["MenuHotkey"]], function() MainWindow:toggle() end)
MenuDestroy_Button = SettingsSection:addButton(
	"Destroy UI", 
	function()
		game:GetService("CoreGui")["Ironic's Miner's Haven Ghost Client - v"..DefaultSettingsS.ScriptVersion]:Destroy()
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.HUDLeft.Buttons.GhostClient:Destroy()
	end
)

tweenFrameSize(LoadBarInside, {0, 24.3846 * 13, 0, 16}, LoadingTitle, "Loaded")
task.wait(1)

transitionTo(CoreGui["Ironic's Loader"].Main, CoreGui[guiname].Main, UDim2.new(0, 671, 0, 415), CoreGui["Ironic's Loader"].Main.Glow)

MainWindow:SelectPage(MainWindow.pages[1], true)
IronicsLoader:Destroy()
MessagePrompt("Loaded Ironic's Miners Haven Ghost Client",Color3.fromRGB(88,1,221),Color3.fromRGB(30,30,30),"Harp",10,0.1)
queue_on_teleport([[local Theme = "Ironic Hub/Miners Haven/Theme.Ironic"; local SettingsT = game:service"HttpService":JSONDecode(readfile(Theme)); script_key=SettingsT.Key; loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/96f7a598d9f82ed6e28d28c1f716b506.lua"))()]])
