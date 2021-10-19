if game:GetService("CoreGui"):FindFirstChild("FluxLib") then
    game:GetService("CoreGui").FluxLib:Destroy()
end

local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()

local win = Flux:Window("Suck Hub", "Suck", Color3.fromRGB(0, 255, 255), Enum.KeyCode.RightControl)
local tab1 = win:Tab("Autofarm", "http://www.roblox.com/asset/?id=4572527796")
local tab2 = win:Tab("Auto Stats", "http://www.roblox.com/asset/?id=242655952")
local tab3 = win:Tab("Teleport", "http://www.roblox.com/asset/?id=242655952")
local tab4 = win:Tab("Game", "http://www.roblox.com/asset/?id=242655952")
local Players = win:Tab("Players", "http://www.roblox.com/asset/?id=242655952")
local tab6 = win:Tab("DevilFruit", "http://www.roblox.com/asset/?id=242655952")
local tab7 = win:Tab("Dungeon", "http://www.roblox.com/asset/?id=242655952")
local tab8 = win:Tab("Misc", "http://www.roblox.com/asset/?id=242655952")
local tab9 = win:Tab("Settings", "http://www.roblox.com/asset/?id=242655952")

function EquipWeapon(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
       local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
       wait()
       game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
 end


Weapon = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
    if v:IsA("Tool") then
        table.insert(Weapon ,v.Name)
    end
end

for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
    if v:IsA("Tool") then
        table.insert(Weapon ,v.Name)
    end
end


local SelectWeapon = tab1:Dropdown("Select Weapon",Weapon,function(Value)
    SelectToolWeapon = Value
end)

tab1:Button("Refresh Weapon"," ",function()
    SelectWeapon:Clear()
    Weapon = {}
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
        if v:IsA("Tool") then
            SelectWeapon:Add(v.Name)
        end
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
        if v:IsA("Tool") then
            SelectWeapon:Add(v.Name)
        end
    end
end)

PlayerName = {}
for i,v in pairs(game.Players:GetChildren()) do  
    table.insert(PlayerName ,v.Name)
end

local PlayerSe = Players:Dropdown("Select Player",PlayerName,function(v) 
    KillPlayer = v
end)

Players:Button("Refresh Player","",function()
    PlayerSe:Clear()
    PlayerName = {}
    for i,v in pairs(game.Players:GetChildren()) do  
       Player:Add(v.Name)
    end
end)





tab2:Toggle("Melee", "",false, function(t)
    melee = t
    end)
tab2:Toggle("Defense", "",false, function(t)
    Defense = t
    end)
tab2:Toggle("Sword", "",false, function(t)
    sword = t
    end)
tab2:Toggle("Gun", "",false, function(t)
    Gun = t
    end)
tab2:Toggle("BloxFruit", "",false, function(t)
    BloxFruit = t
    end)
    
    spawn(function()
    while wait() do 
    if melee then 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",1)
    end
    if Defense then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",1)
    end
    if Sword then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",1)
    end
    if Gun then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",1)
    end
    if BloxFruit then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",1)
    end
    end
    end) 






tab1:Toggle("Auto Farm","farm",false,function(t)
autofarm = t
end)

tab3:Button("Starter Pirate","Teleport to Starter Pirate Island",function(t)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1071.283203125, 16.273557662964, 1426.8679199219)
    end)
tab3:Button("Starter Marine","Teleport to Starter Marine Island",function(t)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2573.3374023438, 6.888819694519, 2046.9981689453)
    end)
tab3:Button("Middle Town","Teleport to Middle Town Island",function(t)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-655.82415771484, 7.8520412445068, 1436.6790771484)
    end)
tab3:Button("Jungle","Teleport to Jungle Island",function(t)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1249.7722167969, 11.852043151855, 341.35647583008)
    end)
tab3:Button("Pirate Village","Teleport to Pirate Village Island",function(t)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1122.3499755859, 4.7520518302917, 3855.919921875)
    end)    
tab3:Button("Desert","Teleport to Desert Island",function(t)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1094.1458740234, 6.4384655952454, 4192.8872070313)
    end)    
tab3:Button("Frozen Village","Teleport to Frozen Village Island",function(t)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1198.0092773438, 26.972459793091, -1211.7337646484)
    end)    
tab3:Button("Marine Fort","Teleport to Marine Fort Island",function(t)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4505.375, 20.652256011963, 4260.5590820313)
    end)    
tab3:Button("Colosseum","Teleport to Coossulem Island",function(t)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1428.3547363281, 7.3893394470215, -3014.373046875)
    end)    
tab3:Button("Sky 1st Floor","Teleport to Sky 1st Floor Island",function(t)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4970.21875, 717.67205810547, -2622.3544921875)
    end)    
tab3:Button("Sky 2st Floor","Teleport to Sky 2st Floor Island",function(t)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4813.0249023438, 903.67352294922, -1912.6905517578)
    end)    
tab3:Button("Sky 3st Floor","Teleport to Sky 3st Floor Island",function(t)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7952.3100585938, 5545.4916992188, -320.70495605469)
    end)    
tab3:Button("Prison","Teleport to Prison Island",function(t)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4854.1645507813, 5.6523880958557, 740.19464111328)
    end)    
tab3:Button("Magma Village","Teleport to Magma Village Island",function(t)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5231.7587890625, 8.5901308059692, 8467.876953125)
    end)    
tab3:Button("Under Water City","Teleport to Under Water City Island",function(t)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(61163.8515625, 5.3073039054871, 1819.7841796875)
    end)    
tab3:Button("Fountain City","Teleport to Fountain City Island",function(t)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5132.7124023438, 4.5012903213501, 4037.8562011719)
    end)   
tab3:Button("House Cyborg's","Teleport to House Cyborg's Island",function(t)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6262.7255859375, 71.274711608887, 3998.23046875)
    end)   
tab3:Button("Shank's Room","Teleport to Shank's Room Island",function(t)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1442.1655273438, 29.851997375488, -28.354747772217)
    end)   
tab3:Button("Mob Island","Teleport to Mob Island",function(t)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new (-2850.2006835938, 7.3922481536865, 5354.9926757813)
    end)   
                                                                                                                                                                                                                            

game:GetService("RunService").Heartbeat:Connect(function()
    if autofarm then
     pcall(function()
       game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
     end)
    end
 end)

 function Quest()
	MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
    if MyLevel == 1 or MyLevel <= 9 then ----Bandit
        Mon = "Bandit [Lv. 5]"
        LevelQuest = 1
        NameQuest = "BanditQuest1"
        NameMon = "Bandit"
        CFrameQuest = CFrame.new(1060.3233642578, 16.36280632019, 1549.2186279297)
		CFrameMon = CFrame.new(1091.7424316406, 69.048439025879, 1619.8005371094)
    elseif MyLevel == 10 or MyLevel <=14 then ----Monkey
        Mon = "Monkey [Lv. 14]"
        NameQuest = "JungleQuest"
        LevelQuest = 1
        NameMon = "Monkey"
        CFrameQuest = CFrame.new(-1599.4478759766, 36.852127075195, 153.33097839355)
        CFrameMon = CFrame.new(-1542.0985107422, 22.852096557617, 42.292865753174)
    elseif MyLevel == 15 or MyLevel <=29 then ----Gorilla
        Mon = "Gorilla [Lv. 20]"
        NameQuest = "JungleQuest"
        LevelQuest = 2
        NameMon = "Gorilla"
        CFrameQuest = CFrame.new(-1599.4478759766, 36.852127075195, 153.33097839355)   
        CFrameMon = CFrame.new(-1206.4844970703, 6.2209558486938, -495.36413574219)
    elseif MyLevel == 30 or MyLevel <=39 then ----Pirate
        Mon = "Pirate [Lv. 35]"
        NameQuest = "BuggyQuest1"
        LevelQuest = 1
        NameMon = "Pirate"
        CFrameQuest = CFrame.new(-1140.5678710938, 5.152051448822, 3830.3427734375)
        CFrameMon = CFrame.new(-1229.5366210938, 12.590867042542, 3972.1003417969)
    elseif MyLevel == 40 or MyLevel <=59 then ----Brute
        Mon = "Brute [Lv. 45]"
        NameQuest = "BuggyQuest1"
        LevelQuest = 2
        NameMon = "Brute"
        CFrameQuest = CFrame.new(-1140.5678710938, 5.152051448822, 3830.3427734375)
        CFrameMon = CFrame.new(-1276.025390625, 14.752036094666, 4197.8696289063)
    elseif MyLevel == 60 or MyLevel <=74 then ----Desert Bandit
        Mon = "Desert Bandit [Lv. 60]"
        NameQuest = "DesertQuest"
        LevelQuest = 1
        NameMon = "Desert Bandit"
        CFrameQuest = CFrame.new(895.40686035156, 6.4384641647339, 4391.203125)
        CFrameMon = CFrame.new(950.80535888672, 15.289397239685, 4399.998046875)
    elseif MyLevel == 75 or MyLevel <=89 then ----Desert Officer
        Mon = "Desert Officer [Lv. 70]"
        NameQuest = "DesertQuest"
        LevelQuest = 2
        NameMon = "Desert Officer"
        CFrameQuest = CFrame.new(895.40686035156, 6.4384641647339, 4391.203125)
        CFrameMon = CFrame.new(1557.9979248047, 14.452040672302, 4382.275390625)
    elseif MyLevel == 90 or MyLevel <=99 then ----Snow Bandit
        Mon = "Snow Bandit [Lv. 90]"
        NameQuest = "SnowQuest"
        LevelQuest = 1
        NameMon = "Snow Bandit"
        CFrameQuest = CFrame.new(1388.4506835938, 87.272789001465, -1297.9666748047)
        CFrameMon = CFrame.new(1342.4562988281, 98.140518188477, -1329.1422119141)
    elseif MyLevel == 100 or MyLevel <=119 then ----Snowman
        Mon = "Snowman [Lv. 100]"
        NameQuest = "SnowQuest"
        LevelQuest = 2
        NameMon = "Snowman"
        CFrameQuest = CFrame.new(1388.4506835938, 87.272789001465, -1297.9666748047)
        CFrameMon = CFrame.new(1200.4803466797, 144.57958984375, -1549.9926757813)
    elseif MyLevel == 120 or MyLevel <=149 then ----Chief Petty Officer
        Mon = "Chief Petty Officer [Lv. 120]"
        NameQuest = "MarineQuest2"
        LevelQuest = 1
        NameMon = "Chief Petty Officer"
        CFrameQuest = CFrame.new(-5038.171875, 28.652038574219, 4324.5947265625)
        CFrameMon = CFrame.new(-4894.8520507813, 20.652038574219, 4299.6337890625)
    elseif MyLevel == 150 or MyLevel <=174 then ----Sky Bandit
        Mon = "Sky Bandit [Lv. 150]"
        NameQuest = "SkyQuest"
        LevelQuest = 1
        NameMon = "Sky Bandit"
        CFrameQuest = CFrame.new(-4840.1025390625, 718.14978027344, -2620.5903320313)
        CFrameMon = CFrame.new(-4977.6538085938, 278.06680297852, -2886.5749511719)
    elseif MyLevel == 175 or MyLevel <=224 then ----Dark Master
        Mon = "Dark Master [Lv. 175]"
        NameQuest = "SkyQuest"
        LevelQuest = 2
        NameMon = "Dark Master"
        CFrameQuest = CFrame.new(-4840.1025390625, 718.14978027344, -2620.5903320313)
        CFrameMon = CFrame.new(-5230.4008789063, 428.90463256836, -2278.1242675781)
    elseif MyLevel == 225 or MyLevel <=274 then ----Toga Warrior
        Mon = "Toga Warrior [Lv. 225]"
        NameQuest = "ColosseumQuest"
        LevelQuest = 1
        NameMon = "Toga Warrior"
        CFrameQuest = CFrame.new(-1579.0218505859, 7.9218797683716, -2985.7900390625)
        CFrameMon = CFrame.new(-1910.5230712891, 7.2890739440918, -2773.4221191406)
    elseif MyLevel == 275 or MyLevel <=299 then ----Gladiator
        Mon = "Gladiator [Lv. 275]"
        NameQuest = "ColosseumQuest"
        LevelQuest = 2
        NameMon = "Gladiator"
        CFrameQuest = CFrame.new(-1579.0218505859, 7.9218797683716, -2985.7900390625)
        CFrameMon = CFrame.new(-1284.4512939453, 7.4425458908081, -3247.2822265625)
    elseif MyLevel == 300 or MyLevel <=329 then ----Military Soldier
        Mon = "Military Soldier [Lv. 300]"
        NameQuest = "MagmaQuest"
        LevelQuest = 1
        NameMon = "Military Soldier"
        CFrameQuest = CFrame.new(-5314.5844726563, 12.236616134644, 8516.423828125)
        CFrameMon = CFrame.new(-5410.6171875, 11.081379890442, 8454.6484375)
    elseif MyLevel == 330 or MyLevel <=374 then ----Military Spy
        Mon = "Military Spy [Lv. 330]"
        NameQuest = "MagmaQuest"
        LevelQuest = 2
        NameMon = "Military Spy"
        CFrameQuest = CFrame.new(-5314.5844726563, 12.236616134644, 8516.423828125)
        CFrameMon = CFrame.new(-5799.1596679688, 98.265869140625, 8810.90234375)
    elseif MyLevel == 375 or MyLevel <=399 then ----Fishman Warrior
        Mon = "Fishman Warrior [Lv. 375]"
        NameQuest = "FishmanQuest"
        LevelQuest = 1
        NameMon = "Fishman Warrior"
        CFrameQuest = CFrame.new(61121.859375, 18.471639633179, 1566.0565185547)
        CFrameMon = CFrame.new(60889.125, 18.482824325562, 1537.7541503906)
    elseif MyLevel == 400 or MyLevel <=449 then ----Fishman Commando
        Mon = "Fishman Commando [Lv. 400]"
        NameQuest = "FishmanQuest"
        LevelQuest = 2
        NameMon = "Fishman Commando"
        CFrameQuest = CFrame.new(61121.859375, 18.471639633179, 1566.0565185547)
        CFrameMon = CFrame.new(61899.90625, 18.482824325562, 1490.5560302734)
    elseif MyLevel == 450 or MyLevel <=474 then ----God's Guard
        Mon = "God's Guard [Lv. 450]"
        NameQuest = "SkyExp1Quest"
        LevelQuest = 1
        NameMon = "God's Guard"
        CFrameQuest = CFrame.new(-4721.7670898438, 845.27703857422, -1951.4034423828)
        CFrameMon = CFrame.new(-4716.1889648438, 845.27716064453, -1927.91796875)
    elseif MyLevel == 475 or MyLevel <=524 then ----Shanda
        Mon = "Shanda [Lv. 475]"
        NameQuest = "SkyExp1Quest"
        LevelQuest = 2
        NameMon = "Shanda"
        CFrameQuest = CFrame.new(-7860.4526367188, 5545.4916992188, -381.04513549805)
        CFrameMon = CFrame.new(-7673.4252929688, 5562.1064453125, -499.29217529297)
    elseif MyLevel == 525 or MyLevel <=549 then ----Royal Squad
        Mon = "Royal Squad [Lv. 525]"
        NameQuest = "SkyExp2Quest"
        LevelQuest = 1
        NameMon = "Royal Squad"
        CFrameQuest = CFrame.new(-7905.1875, 5635.9638671875, -1411.9754638672)
        CFrameMon = CFrame.new(-7645.453125, 5606.8784179688, -1461.5729980469)
    elseif MyLevel == 550 or MyLevel <=624 then ----Royal Soldier
        Mon = "Royal Soldier [Lv. 550]"
        NameQuest = "SkyExp2Quest"
        LevelQuest = 2
        NameMon = "Royal Soldier"
        CFrameQuest = CFrame.new(-7905.1875, 5635.9638671875, -1411.9754638672)
        CFrameMon = CFrame.new(-7834.6254882813, 5622.2817382813, -1798.7495117188)
    elseif MyLevel == 625 or MyLevel <=649 then
        Mon = "Gally Pirate [Lv. 625]" ----Gally Pirate
        NameQuest = "FountainQuest"
        LevelQuest = 1
        NameMon = "Gally Pirate"
        CFrameQuest = CFrame.new(5258.1162109375, 38.501140594482, 4049.9204101563)
        CFrameMon = CFrame.new(5580.556640625, 38.538639068604, 3976.8366699219)
    elseif MyLevel == 650 or MyLevel <=699 then
        Mon = "Gally Captain [Lv. 650]" ----Gally Captain
        NameQuest = "Quest"
        LevelQuest = 2
        NameMon = "Gally Captain"
        CFrameQuest = CFrame.new(5258.1162109375, 38.501140594482, 4049.9204101563)
        CFrameMon = CFrame.new(5611.2543945313, 38.501140594482, 4929.0498046875)
    
    end
end

spawn(function()
    while wait() do
        if autofarm then
			pcall(function()
    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
		Quest()
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
    wait(1.1) 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest" , NameQuest , LevelQuest) 
    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
		Quest()
        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v.Name == Mon then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
            repeat wait(.1)
				if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                pcall(function()
                    EquipWeapon(SelectToolWeapon)
                end)
                if sethiddenproperty then 
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                end
				game:GetService('VirtualUser'):CaptureController()
				game:GetService('VirtualUser'):ClickButton1(Vector2.new(999, 999), game:GetService("Workspace").Camera.CFrame)
            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
            v.HumanoidRootPart.CanCollide = false
            v.Humanoid:ChangeState(11)
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
            Magnet = true
            MobMagnet = v.HumanoidRootPart.CFrame 
			else
				Magnet = false
				Quest()
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
				wait(1.1) 
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest" , NameQuest , LevelQuest) 
			end
            until v.Humanoid.Health <= 0 or autofarm == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
            Magnet = false
            if autofarm == false then return end
		else
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
        end
    
    end
    
    end
end)
    end
    end
    end)

    
spawn(function()
    while wait(.2) do
        if Magnet then
			pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v.Name == Mon then
                    v.HumanoidRootPart.CFrame = MobMagnet
                    v.Humanoid:ChangeState(14)
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					v.HumanoidRootPart.CanCollide = false
					v.Humanoid:ChangeState(11)
                end
            end
		end)
        end
    end
end)