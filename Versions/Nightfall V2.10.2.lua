--local Current, Supported, CorrectKey = identifyexecutor(), {"Synapse X", "ScriptWare", "Krnl", "Fluxus"}, nil

--if not table.find(Supported, Current) then
--    game:GetService"Players".LocalPlayer:Kick("Executor Not Supported")
--    return
--end

hookfunction(rconsoleprint, function()
    return game:GetService"Players".LocalPlayer:Kick("Stop Using HTTP SPY")
end)

------------------------------------
-- Key System | Month * 1432436
-- Current key is: _G.Key = "Nightfall_71621802004"
------------------------------------
-- Get New Monthly Key
-- string.format("Nightfall%s2004", tostring(os.date"%m" * 1432436))
------------------------------------
--_G.Key = "Nightfall_71621802004"
--
--if typeof(_G.Key) == "string" then
--    if _G.Key == string.format("Nightfall_%s2004", tostring(os.date"%m" * 1432436)) then
--        CorrectKey = "CanProceed"
--    else
--        CorrectKey = "Inccorect"
--    end
--end
--
--repeat task.wait() until tostring(CorrectKey) ~= "nil"
--
--if CorrectKey ~= "CanProceed" then
--    game:GetService"Players".LocalPlayer:kick("Incorrect Key Check The Discord Server For The New One")
--    return 
--end

repeat task.wait() until game:IsLoaded() and game:GetService"Players".LocalPlayer.Character
local library = loadstring(game:HttpGet("https://gist.githubusercontent.com/ItsEcstasy/f8acbb072fedcb91e576545ed140de94/raw/870bc0ab2c0a106e9ba9177c09a53c71cc1b9704/UI-Library"))()
local UI = library:Create("Nightfall", "Lumber Tycoon 2")
local Tab, Section

local Requirements = {
    Vars = {
        OldPos = game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame,
        RootJoints = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint,
        HRP = game:GetService"Players".LocalPlayer.Character.HumanoidRootPart,
        Mouse = game:GetService"Players".LocalPlayer:GetMouse(),
        WS = getsenv(game.Players.LocalPlayer.PlayerGui.ItemDraggingGUI.Dragger),
--        Loadsenv = getupvalue(getsenv(game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("LoadSaveGUI"):WaitForChild("LoadSaveClient")).saveSlot, 12),
        OldPurchase = getsenv(game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("PropertyPurchasingGUI"):WaitForChild("PropertyPurchasingClient")).enterPurchaseMode,
    },
    Tables = {
        PlotList = {},
        ShopItems = {},
        ItemsToSort = {},
        BPToBuy = {},
        MainTheme = {},
        OldConfig = {},
        AllIDS = {},
        Music = {},
        Choices = {"AppleBox More Like SkidBox", "Toads #1", "Defaultio Taking Another Vacation ???", "Belle Delphine Is Qute", "Butter Hub Is Trash", "Spam Defaultio To Release Bamboo Wood",},
        GetFucked = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ItsEcstasy/Nightfall/main/Assets/GetLostLOL"))(),
        AutamLeafs = {"Deep orange", "Br. yellowish orange", "CGA brown"},
        ShopIds = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ItsEcstasy/Nightfall/main/Assets/ShopIds"))() or {["WoodRUs"] = 7, ["CarStore"] = 9, ["FurnitureStore"] = 8, ["ShackShop"] = 10, ["LogicStore"] = 12, ["FineArt"] = 11},
        WaypointsPositions = {["The Den"] = CFrame.new(323, 49, 1930), ["Lighthouse"] = CFrame.new(1464.8, 356.3, 3257.2), ["Safari"] = CFrame.new(111.853, 11.0005, -998.805), ["Bridge"] = CFrame.new(112.308, 11.0005, -782.358), ["Bob's Shack"] = CFrame.new(260, 8, -2542), ["EndTimes Cave"] = CFrame.new(113, -214, -951), ["The Swamp"] = CFrame.new(-1209, 132, -801), ["The Cabin"] = CFrame.new(1244, 66, 2306), ["Volcano"] = CFrame.new(-1585, 625, 1140), ["Boxed Cars"] = CFrame.new(509, 5.2, -1463), ["Tiaga Peak"] = CFrame.new(1560, 410, 3274), ["Land Store"] = CFrame.new(258, 5, -99), ["Link's Logic"] = CFrame.new(4605, 3, -727), ["Palm Island"] = CFrame.new(2549, -5, -42), ["Palm Island 2"] = CFrame.new(1941.58, -5.9, -1494.32), ["Fine Art Shop"] = CFrame.new(5207, -166, 719), ["SnowGlow Biome"] = CFrame.new(-1086.85, -5.89978, -945.316), ["Cave"] = CFrame.new(3581, -179, 430), ["Shrine Of Sight"] = CFrame.new(-1600, 195, 919), ["Fancy Furnishings"] = CFrame.new(491, 13, -1720), ["Docks"] = CFrame.new(1114, 3.2, -197), ["Strange Man"] = CFrame.new(1061, 20, 1131), ["Wood Dropoff"] = CFrame.new(323.406, -2.8, 134.734), ["Snow Biome"] = CFrame.new(889.955, 59.7999, 1195.55), ["Wood RUs"] = CFrame.new(265, 5, 57), ["Green Box"] = CFrame.new(-1668.05, 351.174, 1475.39), ["Spawn"] = CFrame.new(172, 2, 74), ["Cherry Meadow"] = CFrame.new(220.9, 59.8, 1305.8), ["Bird Cave"] = CFrame.new(4813.1, 33.5, -978.8),},
        LandVec = {Vector3.new(-40,0,0),Vector3.new(-40,0,-40),Vector3.new(0,0,-40),Vector3.new(40,0,-40),Vector3.new(40,0,0),Vector3.new(40,0,40),Vector3.new(0,0,40),Vector3.new(-40,0,40),Vector3.new(-80,0,40),Vector3.new(-80,0,0),Vector3.new(-80,0,-40),Vector3.new(-80,0,-80),Vector3.new(-40,0,-80),Vector3.new(0,0,-80),Vector3.new(40,0,-80),Vector3.new(80,0,-80), Vector3.new(80,0,-40),Vector3.new(80,0,0),Vector3.new(80,0,40),Vector3.new(80,0,80),Vector3.new(40,0,80),Vector3.new(0,0,80),Vector3.new(-40,0,80),Vector3.new(-80,0,80)},
    },
    Config = {
        Walkspeed = 16,
        JumpPower = 50,
        SprintSpeed = 50,
        SprintKey =  "LeftShift",
        InfJump = false,
        FlySpeed = 200,
        FlyKey = "F",
        NoClip = false,
        FOV = 70,
        DefaultZoom = 140,
        AntiAFK = false,
        ClickTPKey = "G",
        AlwaysDay = false,
        AlwaysNight = false,
        ClearFog = false,
        Shadows = true,
        Spook = false,
        Brightness = 1,
        BetterGraphics = false,
        RemoveWater = false,
        HideTrees = false,
        BlueprintHighlight = false,
        FastLoad = false,
        FastCheckout = false,
        HardDragger = false,
        UIMode = true,
        RemoveBPPercentage = false,
        AutoSaveConfig = false,
    },
    Booleans = {
        isFlying = false,
        AbortVehicleSpawner = false,
        AlwaysStopOnPink = false,
        IsBuying = false,
        AbortAutoBuy = false,
        IsSorting = false,
        ClearShopItems = false,
        AbortGetTree = false,
        AutoSellTree = false,
        IsSpawningVehicle = false,
        AbortAxeDupe = false,
        AbortStacker = false,
        IsModdingTree = false,
        OneUnitCutter = false,
        VehicleAnnoy = false,
        MapThemeActive = false,
        AutoUpdatedConfig = false,
        JoinAndLeaveNotify = false,
        IsDuping = false,
        TreeTeleported = false,
    },
    Strings = {
        Time = 0,
        Count = 0,
        Target = "nil",
        SelectedSlot = 1,
        WipeTarget = tostring(game:GetService"Players".LocalPlayer),
        WipeOption = nil,
        SelectedSpawnPad = nil,
        VehicleRespawnedColor = "nil",
        SelectedCarColor = nil,
        ItemFound = nil,
        ItemToBuy = nil,
        StoreCounter = nil,
        Iteration = 25,
        XAxis = 1,
        ZAxis = 1,
        GetTreeAmount = 1,
        SelectedTreeToGet = nil,
        DupeAmount = 1,
        TModel = nil,
        Hum_Clone = nil,
        Temp = nil,
        TreeToMod = "nil",
        SawmillMod = "nil",
        SelectedBP = nil,
        SelectedPlank = nil,
        SelectedSawmill = nil,
        TreeToJointCut = nil,
        PowerPlot = nil,
        PlrsMoney = 20,
        GameVersion = loadstring(game:HttpGet("https://raw.githubusercontent.com/ItsEcstasy/Nightfall/main/Assets/Lt2Version"))(),
    },
    Connections = {
        InfJump = nil,
        NoClip = nil,
        Idling = nil,
        BPH_1 = nil,
        BPH_2 = nil,
        BLWallAdded = nil,
        ClickToDelete = nil,
        VehicleSpawnerClick = nil,
        RespawnedCar = nil,
        LandArtClick = nil,
        LandArtMove = nil,
        CountItemsClick = nil,
        ClickToUnbox = nil,
        FarAxeEquip = nil,
        StackerSelect = nil,
        SorterClick = nil,
        AxeFling = nil,
        ToolAdded = nil,
        TreeAdded = nil,
        ClickToSellC = nil,
        UnitCutter = nil,
        PlankReAdded = nil,
        PlankToBP = nil,
        BPAdded = nil,
        SawmillSettingsC = nil,
        PlayerJoined = nil,
        PlayerLeft = nil,
        TJC = nil,
        HardDragger = nil,
        InfoStats = nil,
        SoundAdded = nil,
        Lighting = nil,
    },
    Funcs = {},
}

---~Security~---

for i,v in next, game:GetService"CoreGui":GetChildren() do
    if v.Name == "LoadingScreen" then
        game:GetService"Players".LocalPlayer:Kick("Nightfall > Butter")
        task.wait(2)
        while true do end
    end
end

game:GetService"CoreGui".ChildAdded:Connect(function(v)
    if v:IsA"ScreenGui" and v.Name == "LoadingScreen" then
        v:Destroy()
        game:GetService"Players".LocalPlayer:Kick("Nightfall > Butter")
        task.wait(2)
        while true do end
    end 
end)

---~Other~---

if table.find(Requirements.Tables.GetFucked, tostring(game:GetService"Players".LocalPlayer)) then
    game:GetService"ReplicatedStorage".Interaction.Ban:FireServer("Love From Nightfall", game:GetService"Players".LocalPlayer)
    task.wait(4)
    while true do end 
end

if game.PlaceVersion ~= tonumber(Requirements.Strings.GameVersion) and Requirements.Strings.GameVersion ~= nil then
    library:Notify("Warning","Lt2 has been updated please check the discord server for more information or inform the owner")
end

Requirements.Tables.OldConfig = Requirements.Config
Requirements.Config = isfile("NightFallConfig.txt") and game:GetService("HttpService"):JSONDecode(readfile("NightFallConfig.txt")) or Requirements.Config

if not isfile("NightFallConfig.txt") then
    writefile("NightFallConfig.txt", game:GetService("HttpService"):JSONEncode(Requirements.Config))
end

for i,v in next, Requirements.Tables.OldConfig do
    if Requirements.Config[i] == nil then
        Requirements.Config[i] = v
        Requirements.Booleans.AutoUpdatedConfig = true 
    end
end

if Requirements.Booleans.AutoUpdatedConfig then
    writefile("NightFallConfig.txt", game:GetService("HttpService"):JSONEncode(Requirements.Config))
    library:Notify("Nightfall", "Auto Updated Config File")
end

Requirements.Funcs.SaveConfig = function()
    if isfile("NightFallConfig.txt") then
        writefile("NightFallConfig.txt", game:GetService("HttpService"):JSONEncode(Requirements.Config))
    end
end

Requirements.Funcs.Teleport = function(Pos)
    repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if game.Players.LocalPlayer.Character.Humanoid.SeatPart and game.Players.LocalPlayer.Character.Humanoid.SeatPart.Name == "DriveSeat" then
        if typeof(Pos) == "Vector3" then
            Pos = CFrame.new(Pos)
        end
        game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent:PivotTo(Pos)
    else
        if typeof(Pos) == "CFrame" then
            game:GetService"Players".LocalPlayer.Character:PivotTo(Pos)
        elseif typeof(Pos) == "Vector3" then
            game:GetService"Players".LocalPlayer.Character:MoveTo(Pos)
        end
    end
end

Requirements.Funcs.CloneTP = function(Val,Pos)
    if Val == true then
        task.spawn(function()
            Requirements.Vars.HRP = game:GetService"Players".LocalPlayer.Character.HumanoidRootPart
            game.Players.LocalPlayer.Character.Archivable = true
            Requirements.Strings.TModel = Instance.new("Model")
            Requirements.Strings.Hum_Clone = game.Players.LocalPlayer.Character.HumanoidRootPart:Clone()
            Requirements.Strings.TModel.Parent = game:GetService("Workspace")
            Requirements.Strings.Temp = game.Players.LocalPlayer.Character:Clone()
            Requirements.Strings.Temp.Parent = game:GetService("Workspace")
            Requirements.Strings.Temp.Humanoid.DisplayName = " "
            game:GetService("Workspace").CurrentCamera.CameraSubject = Requirements.Strings.Temp.Head
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
            wait(.1)
            Requirements.Vars.HRP.Parent = Requirements.Strings.TModel
            Requirements.Strings.Hum_Clone.Parent = game.Players.LocalPlayer.Character
            game:GetService("Workspace").CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Head
            Requirements.Strings.Temp:Destroy()
        end)
        else
        if Val == false then
            Requirements.Vars.HRP.Parent = game.Players.LocalPlayer.Character
            Requirements.Strings.Hum_Clone:Destroy()
            Requirements.Strings.TModel:Destroy()
        end
    end
end

Requirements.Funcs.GetPing = function()
    Requirements.Strings.Time = tick()
    game:GetService"ReplicatedStorage".TestPing:InvokeServer()
    return ((tick() - Requirements.Strings.Time) / 2) + 0.5
end

Requirements.Funcs.CheckOwnerShip = function(Part)
    Requirements.Booleans.OwnerShip = isnetworkowner or is_network_owner or nil
    if Requirements.Booleans.OwnerShip(Part) then
        return true
    end
    return false
end

Requirements.Funcs.CheckPerm = function(Perm,Plr)
    if game:GetService("ReplicatedStorage").Interaction.ClientGetUserPermissions:InvokeServer(game.Players[Plr].UserId,Perm) then
        return true
    end
    return false
end

Requirements.Funcs.Create = function(ToMake, Parent, Props)
    local Created = Instance.new(ToMake, Parent)
    pcall(function()
        for i,v in next, Props do
            Created[i] = v
        end
    end)
    return Created
end

Requirements.Funcs.FireRemote = function(Remote, ...)
    return Remote:IsA"RemoteEvent" and Remote:FireServer(...) or Remote:IsA"RemoteFunction" and Remote:InvokeServer(...)
end

Requirements.Funcs.GetFunds = function(Plr)
    return Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").Transactions.ClientToServer.GetFunds, Plr)
end

Requirements.Funcs.GetEmptPlots = function()
    Requirements.Tables.PlotList = {}
    for i,v in next, game:GetService("Workspace").Properties:GetChildren() do
        if v:FindFirstChild"Owner" and v.Owner.Value == nil then
            table.insert(Requirements.Tables.PlotList, v)
        end
    end
    return Requirements.Tables.PlotList
end

Requirements.Funcs.GetCurrentPlot = function(Plr)
    for i,v in next, game:GetService("Workspace").Properties:GetChildren() do
        if v:FindFirstChild"Owner" and v.Owner.Value == Plr then
            return v
        end
    end
end

Requirements.Funcs.GetItemInfo = function(Item, Type, Amount)
    for i,v in next, game:GetService("ReplicatedStorage").ClientItemInfo:GetChildren() do
        if v:FindFirstChild"ItemName" and v.ItemName.Value == Item:split(' - ')[1] or v.Name == Item then
            return Type == "Name" and v.Name or Type == "Price" and v.Price.Value * Amount or false
        end
    end
end

Requirements.Funcs.GetShopItems = function()
    Requirements.Tables.ShopItems = {}
    for i,v in next, game:GetService("Workspace").Stores:GetChildren() do
        if v:IsA"Model" and v.Name == "ShopItems" then
            for i,v in next, v:GetChildren() do
                if v:FindFirstChild"Type" and v.Type.Value ~= "Blueprint" then
                    if game:GetService("ReplicatedStorage").ClientItemInfo:FindFirstChild(v.BoxItemName.Value) and not table.find(Requirements.Tables.ShopItems, game:GetService("ReplicatedStorage").ClientItemInfo:FindFirstChild(v.BoxItemName.Value).ItemName.Value.." - $"..game:GetService("ReplicatedStorage").ClientItemInfo:FindFirstChild(v.BoxItemName.Value).Price.Value) then
                        table.insert(Requirements.Tables.ShopItems, game:GetService("ReplicatedStorage").ClientItemInfo:FindFirstChild(v.BoxItemName.Value).ItemName.Value.." - $"..game:GetService("ReplicatedStorage").ClientItemInfo:FindFirstChild(v.BoxItemName.Value).Price.Value)
                    end
                end
            end
        end
    end
    table.sort(Requirements.Tables.ShopItems)
    return Requirements.Tables.ShopItems
end

Requirements.Funcs.GetMusic = function()
    Requirements.Tables.Music = {}
    for i,v in next, game:GetService"Players".LocalPlayer.PlayerGui.ClientSounds:GetChildren() do
        if v:IsA"Sound" and v.Name:sub(1, 7) == "Region_" or v.Name:sub(1, 6) == "Store_" then
            table.insert(Requirements.Tables.Music, v.Name:sub(1, 7) == "Region_" and string.split(v.Name, "Region_")[2] or string.split(v.Name, "Store_")[2])
        end
    end
    return Requirements.Tables.Music
end

Requirements.Funcs.ClearOrphanedSounds = function()
    if typeof(Requirements.Connections.SoundAdded) == "connection" then
        Requirements.Connections.SoundAdded:Disconnect()
    end

    local AlreadyExists = {}

    for i,v in next, game:GetService"Players".LocalPlayer.PlayerGui.ClientSounds:GetChildren() do
        if v:IsA"Sound" then
            if table.find(AlreadyExists, v.Name) then
                v:Destroy()
            else
                table.insert(AlreadyExists, v.Name)
            end
        end
    end

    Requirements.Connections.SoundAdded = game:GetService"Players".LocalPlayer.PlayerGui.ClientSounds.ChildAdded:Connect(function(v)
        if v:IsA"Sound" then
            v:Destroy()
        end
    end)
end
Requirements.Funcs.ClearOrphanedSounds()

Requirements.Funcs.MoveModel = function(Model, Amount, Pos)
    if not Model.PrimaryPart then
        Model.PrimaryPart = Model:FindFirstChild"Main" and Model.Main or Model:FindFirstChild"WoodSection" and Model.WoodSection
    end

    for i,v in next, Model:GetChildren() do
        if v:IsA"BasePart" then
            v.Velocity = Vector3.new(0, 0, 0)
            v.RotVelocity = Vector3.new(0, 0, 0)
        end
    end

    pcall(function()
        for i = 1, Amount do
            game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Model)
            Model:SetPrimaryPartCFrame(Pos)
            game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Model)
            task.wait()
        end
    end)
end

Requirements.Funcs.SetSlotTo = function(Slot)
    if Requirements.Vars.Loadsenv and typeof(Requirements.Vars.Loadsenv) == "number" then
        game:GetService("Players").LocalPlayer.CurrentSaveSlot.Set:Invoke(Slot, Requirements.Vars.Loadsenv)
    end
end

Requirements.Funcs.GodMode = function()
    Requirements.Vars.RootJoints = game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint
    Requirements.Vars.RootJoints:Clone().Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
    Requirements.Vars.RootJoints:Destroy()
end

Requirements.Funcs.GetBestAxe = function(Tree)
    local AllTools = {}
    local AxeClass
    local CurrentDamage, BestAxe = 0

    for i,v in next, game:GetService"Players".LocalPlayer.Backpack:GetChildren() do
        if v:IsA"Tool" and v.Name ~= "BlueprintTool" then
            table.insert(AllTools, v)
        end
    end

    if game:GetService"Players".LocalPlayer.Character:FindFirstChild"Tool" then
        table.insert(AllTools, game:GetService"Players".LocalPlayer.Character:FindFirstChild"Tool")
    end

    for i,v in next, AllTools do
        AxeClass = require(game:GetService("ReplicatedStorage").AxeClasses:FindFirstChild("AxeClass_"..v.ToolName.Value)).new()
        if AxeClass.SpecialTrees and AxeClass.SpecialTrees[Tree] then
            return {BestAxe = v, CurrentDamage = AxeClass.SpecialTrees[Tree].Damage}
        end
        BestAxe = AxeClass.Damage > CurrentDamage and v or BestAxe
        CurrentDamage = AxeClass.Damage > CurrentDamage and AxeClass.Damage or CurrentDamage
    end
    return {BestAxe = BestAxe, CurrentDamage = CurrentDamage}
end

Requirements.Funcs.ChopTree = function(CutRemote, ID, Height,Tree)
    pcall(function()
        game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(CutRemote, {["tool"] = Requirements.Funcs.GetBestAxe(Tree).BestAxe, ["faceVector"] = Vector3.new(1, 0, 0), ["height"] = Height, ["sectionId"] = ID, ["hitPoints"] = Requirements.Funcs.GetBestAxe(Tree).CurrentDamage, ["cooldown"] = 0.25837870788574, ["cuttingClass"] = "Axe"})
    end)
end

Requirements.Funcs.GetLava = function()
    for i,v in next, game:GetService"Workspace"["Region_Volcano"]:GetChildren() do
        if v:IsA"Model" and v.Name == "Lava" then
            if v:FindFirstChild"Lava" and v.Lava.CFrame == CFrame.new(-1675.2002, 255.002533, 1284.19983, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268) then
                return v.Lava
            end
        end
    end
end

Requirements.Funcs.FindLogs = function()
    for i,v in pairs(game:GetService("Workspace").LogModels:GetChildren()) do
        if v:FindFirstChild("Owner") and tostring(v.Owner.Value) == game.Players.LocalPlayer.Name then
            return true 
        end
    end
    return false
end

Requirements.Funcs.FindPlanks = function()
    for i,v in next, game:GetService("Workspace").PlayerModels:GetChildren() do
        if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
            if v:FindFirstChild("TreeClass") then
                return true 
            end
        end
    end
    return false
end

Requirements.Funcs.TeleportRockBridge = function(Pos)
	Requirements.Vars.OldPos = game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame
    for i,v in next, game:GetService("Workspace")["Region_Mountainside"].SlabRegen.Slab:GetChildren() do
        if v:IsA"Part" then
            for i = 1,30 do
                game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
                v.CFrame = Pos
                task.wait()
            end
        end
    end
end

Requirements.Funcs.MoveLogs = function(Pos,Value)
    if not Requirements.Funcs.FindLogs() then return library:Notify("Error!","Failed to find logs") end
    for i,v in next, game:GetService("Workspace").LogModels:GetChildren() do
        if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
            if not v.PrimaryPart then
                v.PrimaryPart = v:FindFirstChild("WoodSection")
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.PrimaryPart.CFrame.p)
			if Value then 
				for i,v in next, v:GetChildren() do
					if v.Name == "WoodSection" then
						local FreezeWood = Instance.new("BodyVelocity", v)
                        FreezeWood.Velocity = Vector3.new(0, 0, 0)
                        FreezeWood.P = 100000
					end
				end
			end
            for i = 1,30 do
				pcall(function()
					game:GetService("ReplicatedStorage").Interaction.ClientIsDragging:FireServer(v)
					v:SetPrimaryPartCFrame(Pos)
					task.wait()
				end)
            end
            task.wait()
        end
    end
    if Value and Requirements.Funcs.FindLogs() then return Requirements.Funcs.MoveLogs(Pos,Value) end
	if not Requirements.Booleans.AutoFarm then
    	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Requirements.Vars.OldPos
	end
end

Requirements.Funcs.CollectMainThemeData = function()
    for i,v in next, game:GetService("Workspace"):GetDescendants() do
        if v:IsA"Part" or v:IsA"WedgePart" or v:IsA"UnionOperation" then
            if not table.find(Requirements.Tables.MainTheme, v) then
                table.insert(Requirements.Tables.MainTheme, v)
                Requirements.Tables.MainTheme[v] = {OldColor = v.BrickColor.Name, Trans = v.Transparency, OldMaterial = v.Material}
            end
        end
    end
end

Requirements.Funcs.GetTargetsItems = function(Target)
   Requirements.Tables.WipeList = {"Tool", "Loose Item", "Gift", "Structure", "Blueprint", "Vehicle", "Vehicle Spot"}

    for i,v in next, game:GetService"Workspace".PlayerModels:GetChildren() do
        if v:FindFirstChild"Owner" and v.Owner.Value == game:GetService"Players"[Target] then
            if not table.find(Requirements.Tables.WipeList, v:FindFirstChild"ItemName" and v.ItemName.Value or v:FindFirstChild"PurchasedBoxItemName" and v.PurchasedBoxItemName.Value) then
                table.insert(Requirements.Tables.WipeList, v:FindFirstChild"ItemName" and v.ItemName.Value or v:FindFirstChild"PurchasedBoxItemName" and v.PurchasedBoxItemName.Value)
            end
        end
    end
   return Requirements.Tables.WipeList
end

Requirements.Funcs.PickChoice = function()
    game:GetService("Workspace").Stores.WoodRUs.Parts.PREMIUMSELECTION.SurfaceGui.TextLabel.Text = Requirements.Tables.Choices[math.random(1, #Requirements.Tables.Choices)]
end
Requirements.Funcs.PickChoice()

---~PlayerFuncs~---

Requirements.Funcs.Walkspeed = function(Value)
    setupvalue(Requirements.Vars.WS.rotate, 4, Value)
    Requirements.Vars.WS.rotate()
end

Requirements.Funcs.JumpPower = function(Value)
    Requirements.Config.JumpPower = Value
    game:GetService"Players".LocalPlayer.Character.Humanoid.JumpPower = Value
end

Requirements.Funcs.ShiftToSprint = function()
    game:GetService"UserInputService".InputBegan:Connect(function(Input,Processed)
        if Input.KeyCode == Enum.KeyCode[Requirements.Config.SprintKey] then
            game.Workspace.CurrentCamera.FieldOfView = 90
            Requirements.Funcs.Walkspeed(Requirements.Config.Walkspeed + Requirements.Config.SprintSpeed)
        end
    end)
    
    game:GetService"UserInputService".InputEnded:Connect(function(Input,Processed)
    	if Input.KeyCode == Enum.KeyCode[Requirements.Config.SprintKey] then
    	    game.Workspace.CurrentCamera.FieldOfView = 70
    	    Requirements.Funcs.Walkspeed(Requirements.Config.Walkspeed)
        end
    end)
end
Requirements.Funcs.ShiftToSprint()

Requirements.Funcs.InfJump = function(Value)
    Requirements.Config.InfJump = Value
    if not Value then  
        return Requirements.Connections.InfJump and Requirements.Connections.InfJump:Disconnect()
    end
    Requirements.Connections.InfJump = game:GetService("UserInputService").JumpRequest:Connect(function()
	    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    end)
end

Requirements.Funcs.PlayerFly = function(Value) -- Yes this is skidded to much effort to make a fly
    repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('Head') and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid')
    local Steer = {f = 0, b = 0, l = 0, r = 0}
    local BackSteer = {f = 0, b = 0, l = 0, r = 0}
    local MaxSpeed = 500
    if not game.Players.LocalPlayer.Character.Humanoid.SeatPart then
	    game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
	 end
	if game.Players.LocalPlayer.Character.Humanoid.SeatPart then
	    local CarFly = game.Players.LocalPlayer.Character.Humanoid.SeatPart
        local FlyWeldone = Instance.new("Weld",game.Players.LocalPlayer.Character.HumanoidRootPart)
	    local FlyWeldtwo = Instance.new("Weld",game.Players.LocalPlayer.Character.Humanoid.SeatPart)
	    FlyWeldone.Part0 = game.Players.LocalPlayer.Character.HumanoidRootPart
	    FlyWeldone.Part1 = game.Players.LocalPlayer.Character.Humanoid.SeatPart
	    FlyWeldtwo.Part0 = game.Players.LocalPlayer.Character.HumanoidRootPart
	    FlyWeldtwo.Part1 = game.Players.LocalPlayer.Character.Humanoid.SeatPart
    end
    function Fly()
        local Gyro = Instance.new('BodyGyro', game.Players.LocalPlayer.Character.HumanoidRootPart)
        Gyro.P = 9e4
        Gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        Gyro.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        local Velocity = Instance.new('BodyVelocity', game.Players.LocalPlayer.Character.HumanoidRootPart)
        Velocity.Velocity = Vector3.new(0,0.1,0)
        Velocity.maxForce = Vector3.new(9e9, 9e9, 9e9)
        repeat wait()
            local FlySpeed = Requirements.Config.FlySpeed
            local SteerSpeed = 50
            if Steer.l + Steer.r ~= 0 or Steer.f + Steer.b ~= 0 then
                SteerSpeed = FlySpeed
                if SteerSpeed > MaxSpeed then
                    SteerSpeed = MaxSpeed
                end
            elseif not (Steer.l + Steer.r ~= 0 or Steer.f + Steer.b ~= 0) and speed ~= 0 then
                SteerSpeed = SteerSpeed-50
                if SteerSpeed < 0 then
                    FlySpeed = 0    
                end
            end
            if (Steer.l + Steer.r) ~= 0 or (Steer.f + Steer.b) ~= 0 then
                Velocity.Velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (Steer.f+Steer.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(Steer.l+Steer.r,(Steer.f+Steer.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SteerSpeed
                BackSteer = {f = Steer.f ,b = Steer.b ,l = Steer.l, r = Steer.r}
            elseif (Steer.l + Steer.r == 0 or Steer.f + Steer.b == 0) and SteerSpeed ~= 0 then
                Velocity.Velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (BackSteer.f+BackSteer.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(BackSteer.l+BackSteer.r,(BackSteer.f+BackSteer.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SteerSpeed
            else
                Velocity.Velocity = Vector3.new(0,0.1,0)
            end
            Gyro.CFrame = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((Steer.f+Steer.b)*50*SteerSpeed/MaxSpeed),0,0)
        until not Requirements.Booleans.isFlying
        local SteerSpeed = 0
        local Steer = {F = 0,B = 0,L = 0,R = 0}
        local BackSteer = {F = 0,B = 0,L = 0,R = 0}
        Gyro:Destroy()
        Velocity:Destroy()
        pcall(function()
            for _,v in next,game.Players.LocalPlayer.Character.Humanoid.SeatPart:GetChildren()do
                if v.Name=='Weld'then 
                    v:Destroy();
                end;
            end;
            for i,v in next,game.Players.LocalPlayer.Character.HumanoidRootPart:GetChildren()do
                if v:IsA('Weld')then 
                    v:Destroy()
                end
            end
            game.Player.LocalPlayer.CharacterHumanoidRootPart.CFrame = CFrame.new(CarFly.CFrame.p)
        end)
        game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
    end

    Requirements.Vars.Mouse.KeyDown:Connect(function(Key)
        if Key:lower() == 'w' then
            isWDown = true
            Steer.f = 1
        elseif Key:lower() == 'a' then
            isADown = true
            Steer.l = -1
        elseif Key:lower() == 's' then
            isSDown = true
            Steer.b = -1
        elseif Key:lower() == 'd' then
            isSDown = true
            Steer.r = 1
        end
    end)
    Requirements.Vars.Mouse.KeyUp:Connect(function(Key)
        if Key:lower() == 'w' then
            isWDown = false
            Steer.f = 0
        elseif Key:lower() == 'a' then
            isADown = false
            Steer.l = 0
        elseif Key:lower() == 's' then
            isSDown = false
            Steer.b = 0
        elseif Key:lower() == 'd' then
            isDDown = false
            Steer.r = 0
        end
    end)

    if not Value then
        Requirements.Booleans.isFlying = false
        game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
    elseif Value then
        Requirements.Booleans.isFlying = true
        Fly()
    end
end

Requirements.Funcs.NoClip = function(Value)
    Requirements.Config.NoClip = Value
    if not Value then
         return Requirements.Connections.NoClip and Requirements.Connections.NoClip:Disconnect()
    end
    Requirements.Connections.NoClip = game:GetService("RunService").Stepped:connect(function()
        for i,v in next, game.Players.LocalPlayer.Character:GetChildren() do
            if v:IsA("BasePart") then
                if Value then
                    v.CanCollide = false
                end
            end
        end
    end)
end

Requirements.Funcs.PlayerLight = function(Value)
    if not Value then
        return game:GetService"Players".LocalPlayer.Character.Head:FindFirstChild"PointLight" and game:GetService"Players".LocalPlayer.Character.Head:FindFirstChild"PointLight":Destroy()
    end
    Requirements.Funcs.Create("PointLight", game:GetService"Players".LocalPlayer.Character.Head, {Brightness = 1 , Range = math.huge})
end

Requirements.Funcs.PlrTransparency = function(Value)
    for i,v in next, game.Players.LocalPlayer.Character:getChildren() do
        if v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
            v.Transparency = Value
        end
    end
end

Requirements.Funcs.Invisable = function(Value)
    if Value then
        Requirements.Funcs.CloneTP(true,CFrame.new(4813.1, 33.5, -978.8))
        Requirements.Funcs.PlrTransparency(0.5)
        else
        Requirements.Funcs.CloneTP(false)
        Requirements.Funcs.PlrTransparency(0)
    end
end

Requirements.Funcs.AntiAFK = function(Value)
    Requirements.Config.AntiAFK = Value
    if not Value then 
        return Requirements.Connections.Idling and Requirements.Connections.Idling:Disconnect()
    end
    Requirements.Connections.Idling = game:GetService("Players").LocalPlayer.Idled:Connect(function()
        game:GetService("VirtualInputManager"):Button2Down(Vector2.new(1,1),workspace.CurrentCamera.CFrame)
        game:GetService("VirtualInputManager"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end

Requirements.Funcs.BTools = function()
    if game:GetService"Players".LocalPlayer.Backpack:FindFirstChild"HopperBin" then
        return library:Notify("Error", "You already have BTools")
    end
    for i = 1,4 do
        Requirements.Funcs.Create("HopperBin", game:GetService"Players".LocalPlayer.Backpack, {BinType = i})
    end
end

Requirements.Funcs.SafeDeath = function()
    if game:GetService"Players".LocalPlayer.Character:FindFirstChild"Head" then
        game:GetService"Players".LocalPlayer.Character:FindFirstChild"Head":Destroy()
    else
        return library:Notify("Error", "You are already dead")
    end
end

---~GameFuncs~---

Requirements.Connections.Lighting = game:GetService"Lighting".Changed:Connect(function()
    if Requirements.Config.AlwaysDay then
        game.Lighting.TimeOfDay = "12:00:00"
    end
    if Requirements.Config.AlwaysNight then
        game.Lighting.TimeOfDay = "24:00:00"
    end
    if Requirements.Config.ClearFog then
        game.Lighting.FogEnd = 100000
        game.Lighting.ColorCorrection.TintColor = Color3.fromRGB(255, 255, 255)
        game.Lighting.FogColor = Color3.fromRGB(255, 255, 255)
        game.Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
    end
end)

Requirements.Funcs.BetterGraphics = function(Value)
    Requirements.Config.BetterGraphics = Value
    game:GetService("Lighting").ColorCorrection.Enabled = not Value

    if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("UnderwaterOverlay") then
        game:GetService("Players").LocalPlayer.PlayerGui.UnderwaterOverlay:Destroy()
    end

    for i,v in next, game.Workspace:GetDescendants() do
        if v:IsA("Part") and v.Name == "Water" then
            game.Workspace.Terrain:FillBlock(v.CFrame, v.Size, Value and Enum.Material.Water or Enum.Material.Air)
            v.Transparency = Value and 1 or 0
        end
        if v:IsA("Part") and v.Name == "LeafPart" then
            v.Transparency = Value and 0.5 or 0
        end
    end

    if Value then
        Requirements.Funcs.Create("BlurEffect", game:GetService"Lighting", {Size = 3})
        Requirements.Funcs.Create("ColorCorrectionEffect", game:GetService"Lighting", {Brightness = 0.03, Contrast = 0.3, Saturation = 0.01, TintColor = Color3.fromRGB(244,244,244)})
        Requirements.Funcs.Create("SunRaysEffect", game:GetService"Lighting", {Intensity = 0.2, Spread = 1})
    else
        game:GetService"Lighting":FindFirstChild"Blur":Destroy()
        game:GetService"Lighting":FindFirstChild"ColorCorrection":Destroy()
        game:GetService"Lighting":FindFirstChild"SunRays":Destroy()
    end
end

Requirements.Funcs.RemoveWater = function(Value)
    Requirements.Config.RemoveWater = Value
    for i,v in next, game:GetService"Workspace".Water:GetChildren() do
        if v.Name == "Water" then
            v.Transparency = Value and 1 or 0
        end
    end
    game:GetService("Workspace").Bridge.VerticalLiftBridge.WaterModel.Water.Transparency = Value and 1 or 0
end

Requirements.Funcs.BridgeDown = function(Value)
    for i,v in next, game:GetService("Workspace").Bridge.VerticalLiftBridge.Lift:GetChildren() do
        v.CFrame = v.CFrame + Vector3.new(0, Value and -26 or 26, 0)
    end
    for i,v in next, game:GetService("Workspace").Bridge.VerticalLiftBridge.Weight:GetChildren() do
        v.CFrame = v.CFrame + Vector3.new(0, Value and -26 or 26, 0)
    end
end

Requirements.Funcs.HideTrees = function(Value)
    Requirements.Config.HideTrees = Value
    for i,v in next, game:GetService(Value and "Workspace" or "Lighting"):GetChildren() do
        if v.Name == "TreeRegion" then
            v.Parent = Value and game:GetService"Lighting" or game:GetService"Workspace"
        end
    end
end

Requirements.Funcs.DisableBPHighlight = function(Value)
    Requirements.Config.BlueprintHighlight = Value
    if not Value then
        Requirements.Connections.BPH_1:Disconnect()
        Requirements.Connections.BPH_2:Disconnect()
        return
    end
    Requirements.Connections.BPH_1 = game:GetService("Workspace").Effects.ChildAdded:Connect(function(v)
        if v:WaitForChild"SelectionBox" then
            v.SelectionBox.Visible = false
        end
    end)
    Requirements.Connections.BPH_2 = game:GetService("Workspace").Effects.ChildAdded:Connect(function(v)
        if v:WaitForChild"Highlight" then
            task.wait(.5)
            v.Highlight.Parent = game:GetService"Lighting"
        end
    end)
end

Requirements.Funcs.GetGreenBox = function()
    if not game:GetService("Workspace")["Region_Volcano"]:FindFirstChild"VolcanoWin" then
        return library:Notify("Error!", "Failed to find the green box")
    end
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game:GetService("Workspace")["Region_Volcano"].VolcanoWin,0)
end

Requirements.Funcs.DestroyGreenBox = function()
    if not game:GetService("Workspace")["Region_Volcano"]:FindFirstChild"VolcanoWin" or game:GetService("Workspace")["Region_Volcano"]:FindFirstChild"VolcanoWin":FindFirstChild"LavaFire" then
        return library:Notify("Error!", "Failed to find the green box")
    end
	Requirements.Vars.OldPos = game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame
	for i,v in next, game:GetService("Workspace")["Region_Volcano"]:GetChildren() do
		if v.Name == "VolcanoWin" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
			game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
			v.BodyPosition:Destroy()
			v.BodyAngularVelocity:Destroy()
		end
	end
	task.wait(1)
	game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame = Requirements.Vars.OldPos
end

Requirements.Funcs.MainTheme = function()
    for i,v in next, game:GetService("Workspace"):GetDescendants() do
        if v:IsA"Part" or v:IsA"WedgePart" or v:IsA"UnionOperation" then
            if table.find(Requirements.Tables.MainTheme, v) then
                v.BrickColor = BrickColor.new(Requirements.Tables.MainTheme[v].OldColor)
                v.Transparency = Requirements.Tables.MainTheme[v].Trans
                v.Material = Requirements.Tables.MainTheme[v].OldMaterial
            end
        end
    end
    Requirements.Booleans.MapThemeActive = false
end

Requirements.Funcs.Christmas = function(Value)
    if Requirements.Booleans.MapThemeActive then
        Requirements.Funcs.MainTheme()
        if not Value then return end
    end
    Requirements.Funcs.CollectMainThemeData()
    for i,v in next, game:GetService("Workspace"):GetDescendants() do
        if v.Name == "Ground" then
            v.BrickColor = BrickColor.new("White")
            v.Material = "Sand"
        end
        if v.Name == "Slate" then
            v.BrickColor = BrickColor.new("White")
        end
        if v.Name == "Road" then
            v.Material = "Cobblestone"
            v.BrickColor = BrickColor.new("Rust")
        end
        if v.Name == "WoodSection" then
            v.BrickColor = BrickColor.new("White")
        end
        if v.Name == "LeafPart" then
            v.BrickColor = BrickColor.new("White")
            v.Material = "Sand"
        end
        if v:IsA "Part" and v.Name == "Water" then
            v.BrickColor = BrickColor.new("Bright blue")
        end
        if v.Name == "Sand" then
            v.BrickColor = BrickColor.new("White")
        end
    end
    Requirements.Booleans.MapThemeActive = true
end

Requirements.Funcs.Autamn = function(Value)
    if Requirements.Booleans.MapThemeActive then
        Requirements.Funcs.MainTheme()
        if not Value then return end
    end
    Requirements.Funcs.CollectMainThemeData()
    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v.Name == "Ground" then
            v.BrickColor = BrickColor.new("Bright orange")
            v.Material = "Grass"
        end
        if v.Name == "Slate" then
            v.BrickColor = BrickColor.new("Burnt Sienna")
        end
        if v.Name == "Road" then
            v.Material = "Cobblestone"
            v.BrickColor = BrickColor.new("Fog")
        end
        if v.Name == "LeafPart" then
            v.BrickColor = BrickColor.new(Requirements.Tables.AutamLeafs[math.random(1, #Requirements.Tables.AutamLeafs)] )
            v.Material = "Grass"
        end
        if v:IsA "Part" and v.Name == "Water" then
            v.BrickColor = BrickColor.new("Deep blue")
        end
        if v.Name == "Sand" then
            v.BrickColor = BrickColor.new("Nougat")
        end
    end
    Requirements.Booleans.MapThemeActive = true
end

---SlotFuncs~---

Requirements.Funcs.LoadSlot = function(Slot)
    if game:GetService"Players".LocalPlayer.CurrentlySavingOrLoading.Value then
        return library:Notify("Nightfall", "You are currently loading please wait")
    end
    if Slot == math.huge then
        if game:GetService"Players".LocalPlayer.CurrentSaveSlot.Value == -1 then
            return library:Notify("Error", "No Slot Loaded")
        end
    end
    if not Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad, game:GetService"Players".LocalPlayer) then
        library:Notify("Error", "Load is on cooldown please wait")
        repeat
            task.wait()
        until Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad, game:GetService"Players".LocalPlayer)
    end
    Requirements.Funcs.SetSlotTo(-1)
    Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").LoadSaveRequests.RequestLoad, Slot, game:GetService"Players".LocalPlayer)
    repeat 
        task.wait()
    until game:GetService"Players".LocalPlayer.CurrentlySavingOrLoading.Value ~= true
    if game.Players.LocalPlayer.OwnsProperty.Value == true then
        Requirements.Funcs.SetSlotTo(Slot)
    end
    library:Notify("Nightfall", game:GetService"Players".LocalPlayer.OwnsProperty.Value and "Slot Loaded Successfully" or "Slot Deloaded Successfully")
end

Requirements.Funcs.ForceSave = function(Slot)
    if game:GetService"Players".LocalPlayer.CurrentSaveSlot.Value <= 0 then
        return library:Notify("Error", "No Slot Loaded")
    end
    if game:GetService"Players".LocalPlayer.CurrentlySavingOrLoading.Value == true then
        return library:Notify("Error!", "Failed to save slot please wait until the base is loaded")
    end
    Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").LoadSaveRequests.RequestSave, Slot, game:GetService"Players".LocalPlayer)
    library:Notify("Nightfall", string.format("Saved Slot %s Successfully", tostring(Slot)))
end

Requirements.Funcs.FastLoad = function()
    getsenv(game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("PropertyPurchasingGUI"):WaitForChild("PropertyPurchasingClient")).enterPurchaseMode = function(...)
        if Requirements.Config.FastLoad == false or library.destroyed then
            return Requirements.Vars.OldPurchase(...)
        end
        setupvalue(getsenv(game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("PropertyPurchasingGUI"):WaitForChild("PropertyPurchasingClient")).rotate, 3, 0)
        setupvalue(Requirements.Vars.OldPurchase, 10, Requirements.Funcs.GetEmptPlots()[#Requirements.Funcs.GetEmptPlots()])
    end
end
Requirements.Funcs.FastLoad()

Requirements.Funcs.FreeLand = function()
    if game:GetService"Players".LocalPlayer.OwnsProperty.Value then
        return library:Notify("Error!", "You already own a plot")
    end
    local ToClaim, Dis, ToClaim2, Dis2 = nil, 9e9, nil, 0
    for i,v in next, game:GetService"Workspace".Properties:GetChildren() do
        if v:FindFirstChild"Owner" and v.Owner.Value == nil then
            local Distance = (game.Players.LocalPlayer.Character.Torso.CFrame.p - v.OriginSquare.CFrame.p).Magnitude
            if Dis > Distance then
                ToClaim,Dis = v,Distance
            end
            if Dis2 < Distance then 
                ToClaim2, Dis2 = v, Distance
            end
        end
    end
    Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").PropertyPurchasing.ClientPurchasedProperty, ToClaim2, ToClaim2.OriginSquare.Position)
    Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").LoadSaveRequests.RequestLoad, math.huge, game:GetService"Players".LocalPlayer)
    Requirements.Strings.PlrsMoney = Requirements.Funcs.GetFunds(game:GetService"Players".LocalPlayer)
    repeat
        Requirements.Funcs.SellSoldSign()
        task.wait()
    until Requirements.Funcs.GetFunds(game:GetService"Players".LocalPlayer) ~= Requirements.Strings.PlrsMoney
    Requirements.Funcs.Teleport(ToClaim.OriginSquare.CFrame + Vector3.new(0,2,0))
    Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").PropertyPurchasing.ClientPurchasedProperty, ToClaim, ToClaim.OriginSquare.Position)
end

Requirements.Funcs.MaxLand = function()
    if Requirements.Funcs.GetCurrentPlot(game:GetService"Players".LocalPlayer) and #Requirements.Funcs.GetCurrentPlot(game:GetService"Players".LocalPlayer):GetChildren() >= 25 then
        return library:Notify("Error!", "You already have max land")
    end
    if game:GetService("Players").LocalPlayer.OwnsProperty.Value ~= true then 
        library:Notify("Error!","You Do Not Own A Plot Would You Like To Get Some Free Land",true,function(Value)
            if Value then 
                Requirements.Funcs.FreeLand()
            else
                return "Canceled"
            end
        end)
    end
    repeat task.wait() until game:GetService("Players").LocalPlayer.OwnsProperty.Value
    for i,v in next, Requirements.Tables.LandVec do
        Requirements.Funcs.FireRemote(game.ReplicatedStorage.PropertyPurchasing.ClientExpandedProperty, Requirements.Funcs.GetCurrentPlot(game:GetService"Players".LocalPlayer), CFrame.new(Requirements.Funcs.GetCurrentPlot(game:GetService"Players".LocalPlayer).OriginSquare.Position + v))
    end
end

Requirements.Funcs.LandArt = function(Value)
    if not Value then
        game:GetService"Workspace":FindFirstChild"PlotFolder":Destroy()
        Requirements.Connections.LandArtMove:Disconnect()
        Requirements.Connections.LandArtClick:Disconnect()
        return
    end
    if not game:GetService"Players".LocalPlayer.OwnsProperty.Value then
        return library:Notify("Error", "You need to get some free land before using this feature")
    end
    Requirements.Tables.LandVec = {Vector3.new(40, 0, 0),Vector3.new(-40, 0, 0),Vector3.new(0, 0, 40),Vector3.new(0, 0, -40),Vector3.new(40, 0, 40),Vector3.new(40, 0, -40),Vector3.new(-40, 0, 40),Vector3.new(-40, 0, -40),Vector3.new(80, 0, 0),Vector3.new(-80, 0, 0),Vector3.new(0, 0, 80),Vector3.new(0, 0, -80),Vector3.new(80, 0, 80),Vector3.new(80, 0, -80),Vector3.new(-80, 0, 80),Vector3.new(-80, 0, -80),Vector3.new(40, 0, 80),Vector3.new(-40, 0, 80),Vector3.new(80, 0, 40),Vector3.new(80, 0, -40),Vector3.new(-80, 0, 40),Vector3.new(-80, 0, -40),Vector3.new(40, 0, -80),Vector3.new(-40, 0, -80)}
    
    Requirements.Vars.Mouse = game:GetService"Players".LocalPlayer:GetMouse()
    local PlayersPlot = Requirements.Funcs.GetCurrentPlot(game:GetService"Players".LocalPlayer)
    
    Requirements.Funcs.Create("Folder", game:GetService"Workspace", {Name = "PlotFolder"})

    for i,v in next, Requirements.Tables.LandVec do
        Requirements.Funcs.Create("Part", game:GetService"Workspace".PlotFolder, {Name = "LandPreview", Transparency = 0.5, CFrame =  CFrame.new(PlayersPlot.OriginSquare.Position + v), Size = PlayersPlot.OriginSquare.Size, Color = Color3.fromRGB(124, 92, 70), Material = Enum.Material.Concrete, Anchored = true, CanCollide = false})
    end

    local HighLight = Requirements.Funcs.Create("SelectionBox", game:GetService"Workspace".PlotFolder)
    Requirements.Connections.LandArtMove = Requirements.Vars.Mouse.Move:Connect(function()
        Requirements.Strings.Target = Requirements.Vars.Mouse.Target
        if Requirements.Strings.Target:IsA"Part" and Requirements.Strings.Target.Name == "LandPreview" then
            HighLight.Adornee = Requirements.Strings.Target
        else
            HighLight.Adornee = nil
        end
    end)
    
    Requirements.Connections.LandArtClick = Requirements.Vars.Mouse.Button1Down:Connect(function()
        Requirements.Strings.Target = Requirements.Vars.Mouse.Target
        if Requirements.Strings.Target:IsA"Part" and Requirements.Strings.Target.Name == "LandPreview" then
            Requirements.Funcs.FireRemote(game.ReplicatedStorage.PropertyPurchasing.ClientExpandedProperty, PlayersPlot, CFrame.new(Requirements.Strings.Target.Position))
            Requirements.Strings.Target:Destroy()
        end
    end)
end

Requirements.Funcs.SellSoldSign = function()
    for i,v in next, game:GetService("Workspace").PlayerModels:GetChildren() do
        if v:FindFirstChild"Owner" and v.Owner.Value == game:GetService"Players".LocalPlayer then
            if v:FindFirstChild"ItemName" and v.ItemName.Value == "PropertySoldSign" then 
                Requirements.Funcs.Teleport(v.Main.CFrame.p + Vector3.new(0,5,5))
                repeat
                    Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").Interaction.ClientInteracted, v, "Take down sold sign")
                    task.wait()
                until v.Main.Anchored ~= true
                Requirements.Funcs.MoveModel(v, 35, CFrame.new(315.016, 2.57965, 84.7445))
            end
        end
    end
end

Requirements.Funcs.PlotColor = function(Value)
    if not game:GetService"Players".LocalPlayer.OwnsProperty.Value then
     return
    end
    for i,v in next, Requirements.Funcs.GetCurrentPlot(game:GetService"Players".LocalPlayer):GetChildren() do
        if v:IsA"Part" then
            v.Color = Value
        end
    end
end

Requirements.Funcs.DestroyBLWalls = function()
    for i,v in next, game:GetService"Workspace".Effects:GetChildren() do
        if v.Name == "BlacklistWall" then
            v:Destroy()
        end
    end
end

Requirements.Funcs.AntiBlacklist = function()
    Requirements.Funcs.DestroyBLWalls()
    Requirements.Connections.BLWallAdded = not Requirements.Connections.BLWallAdded and game:GetService("Workspace").Effects.ChildAdded:Connect(function(v)
        if v.Name == "BlacklistWall" then
            Requirements.Funcs.DestroyBLWalls()
        end
    end)

    Requirements.Strings.AntiBlacklistClone = game:GetService"Players".LocalPlayer.Character.Torso:Clone()
    game:GetService"Players".LocalPlayer.Character.HumanoidRootPart:Destroy()
    Requirements.Strings.AntiBlacklistClone.Name = "HumanoidRootPart"
    Requirements.Strings.AntiBlacklistClone.Parent = game:GetService"Players".LocalPlayer.Character
    Requirements.Strings.AntiBlacklistClone.Transparency = 1
end

Requirements.Funcs.CountAxes = function()
    Requirements.Strings.Count = 0
    if game:GetService"Players".LocalPlayer.Character:FindFirstChild"Tool" then
        game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
    end
    for i,v in next, game:GetService"Players".LocalPlayer.Backpack:GetChildren() do
        if v:IsA"Tool" and v.Name ~= "BlueprintTool" then
            Requirements.Strings.Count = Requirements.Strings.Count + 1
        end
    end
    return Requirements.Strings.Count
end

Requirements.Funcs.DropAxes = function(Amount)
    Requirements.Strings.Count = 0
    if game:GetService"Players".LocalPlayer.Character:FindFirstChild"Tool" then
        game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
    end
    for i,v in next, game:GetService"Players".LocalPlayer.Backpack:GetChildren() do
        if Requirements.Strings.Count >= Amount then break end
        if v:IsA"Tool" and v.Name ~= "BlueprintTool" then
            Requirements.Booleans.ToolFound = true
            repeat
                Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").Interaction.ClientInteracted, v, "Drop tool", game:GetService"Players".LocalPlayer.Character["Left Arm"].CFrame)
                task.wait(1)
            until not v.Parent
            Requirements.Strings.Count = Requirements.Strings.Count + 1
        end
    end
    if not Requirements.Booleans.ToolFound then
        library:Notify("Error!", "No tools found")
    end
end

Requirements.Funcs.DupeAxes = function(Amount)
    Requirements.Booleans.AbortAxeDupe = false
    if Requirements.Booleans.IsDuping then
        return library:Notify("Error!", "You are currently duping please wait")
    end
    if game:GetService"Players".LocalPlayer.CurrentSaveSlot.Value <= -1 then
        return library:Notify("Error!", "No slot loaded")
    end
    if not game:GetService"Players".LocalPlayer.OwnsProperty.Value then
        return library:Notify("Error!", "You need to own land to dupelicate axes")
    end
    Requirements.Booleans.IsDuping = true
    if not Requirements.Config.FastLoad and Requirements.Booleans.WasOn == nil then
        Requirements.Booleans.WasOn = Requirements.Config.FastLoad
        Requirements.Config.FastLoad = true
    end
    for i = 1, Amount do
        if Requirements.Booleans.AbortAxeDupe then break end
        if not Requirements.Funcs.FireRemote(game:GetService"ReplicatedStorage".LoadSaveRequests.ClientMayLoad, game:GetService"Players".LocalPlayer) then
            library:Notify("Nightfall", "Load on cooldown please wait")
            repeat
                task.wait(.1)
            until Requirements.Funcs.FireRemote(game:GetService"ReplicatedStorage".LoadSaveRequests.ClientMayLoad, game:GetService"Players".LocalPlayer)
        end
        task.spawn(function()
            Requirements.Funcs.SafeDeath()
        end)
        repeat task.wait() until not game:GetService"Players".LocalPlayer.Character:FindFirstChild"Head"
        task.wait(3.2)
        Requirements.Funcs.FireRemote(game:GetService"ReplicatedStorage".LoadSaveRequests.RequestLoad, game:GetService"Players".LocalPlayer.CurrentSaveSlot.Value, game:GetService"Players".LocalPlayer)
        repeat task.wait() until game:GetService"Players".LocalPlayer.CurrentlySavingOrLoading.Value == false and game:GetService"Players".LocalPlayer.OwnsProperty.Value == true
        if Requirements.Funcs.CountAxes() > 4 then
            Requirements.Funcs.DropAxes(Requirements.Funcs.CountAxes() / 2)
        end
        task.wait()
    end
    Requirements.Booleans.IsDuping = false
    library:Notify("Nightfall",Requirements.Booleans.AbortAxeDupe and "Inventory Dupe Aborted" or string.format("Duplicated Inventory %s Time(s)", tostring(Amount)))
    Requirements.Config.FastLoad = Requirements.Booleans.WasOn
    Requirements.Booleans.WasOn = nil
end

Requirements.Funcs.TransferPower = function(ToSlot)
    if Requirements.Booleans.IsDuping then
        return library:Notify("Error!", "You are currently duping please wait")
    end

    if game:GetService"Players".LocalPlayer.CurrentSaveSlot.Value == -1 then
        return library:Notify("Error!", "You need to load a slot with the power")
    end

    if game:GetService"Players".LocalPlayer.CurrentlySavingOrLoading.Value then
        return library:Notify("Error!", "You are currently loading please wait")
    end

    if game:GetService"Players".LocalPlayer.CurrentSaveSlot.Value == ToSlot then
        return library:Notify("Error!", "You can not Transfer the power to the current slot")
    end

    if not game:GetService"Players".LocalPlayer.SuperBlueprint.Value then
        return library:Notify("Error!", "You do not own the power on this slot")
    end

    Requirements.Booleans.IsDuping = true

    if not Requirements.Funcs.FireRemote(game:GetService"ReplicatedStorage".LoadSaveRequests.ClientMayLoad, game:GetService"Players".LocalPlayer) then
        library:Notify("Nightfall", "Load on cooldown please wait")
        repeat
            task.wait(.1)
        until Requirements.Funcs.FireRemote(game:GetService"ReplicatedStorage".LoadSaveRequests.ClientMayLoad, game:GetService"Players".LocalPlayer)
    end

    Requirements.Strings.PowerPlot = Requirements.Funcs.GetCurrentPlot(game:GetService"Players".LocalPlayer)

    Requirements.Funcs.FireRemote(game:GetService"ReplicatedStorage".LoadSaveRequests.RequestLoad, math.huge, game:GetService"Players".LocalPlayer)

    library:Notify("Nightfall", "Waiting For Plot To Be Claimable Again")

    repeat task.wait() until Requirements.Strings.PowerPlot.Owner.Value == nil

    task.wait(1) -- does not affect speed 
    
    Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").PropertyPurchasing.ClientPurchasedProperty, Requirements.Strings.PowerPlot, Requirements.Strings.PowerPlot.OriginSquare.Position)

    Requirements.Funcs.Teleport(Requirements.Strings.PowerPlot.OriginSquare.CFrame + Vector3.new(0, 3, 0))

    Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").LoadSaveRequests.RequestSave, ToSlot, game:GetService"Players".LocalPlayer)
    
    Requirements.Funcs.SetSlotTo(ToSlot)

    Requirements.Booleans.IsDuping = false

    library:Notify("Nightfall", "Power Duped Successfully")
end

Requirements.Funcs.DupePlot = function(DupeSlot, EntireBase)
    if Requirements.Booleans.IsDuping then
        return library:Notify("Error!", "You are currently duping please wait")
    end

    if game:GetService"Players".LocalPlayer.CurrentSaveSlot.Value > -1 then
        return library:Notify("Error!", "You can not have a base loaded")
    end

    if game:GetService"Players".LocalPlayer.CurrentlySavingOrLoading.Value then
        return library:Notify("Error!", "You are currently loading")
    end

    if Requirements.Funcs.GetPing() >= 500 then
        return library:Notify("Error!", "Ping is to high to attempt a base dupe")
    end

    if #game:GetService"Players":GetChildren() < 2 then
        return library:Notify("Error!", "There needs to be 2 people in the server to dupe")
    end

    Requirements.Booleans.IsDuping = true

    local StartLoadTime, EndLoadTime = 0, 0

    task.spawn(function()
        StartLoadTime = tick() --DateTime.now().UnixTimestamp
        Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").LoadSaveRequests.RequestLoad, DupeSlot, game:GetService"Players".LocalPlayer)
    end)

    local FreePlot = Requirements.Funcs.GetCurrentPlot(nil)

    if EntireBase then
        task.spawn(function()
            Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").PropertyPurchasing.ClientPurchasedProperty, FreePlot, FreePlot.OriginSquare.Position)
        end)
    end

    repeat task.wait() until game:GetService"Players".LocalPlayer.PlayerGui.PropertyPurchasingGUI.SelectPurchase.Visible

    EndLoadTime = tick() - StartLoadTime --DateTime.now().UnixTimestamp - StartLoadTime

    if EntireBase then
        FreePlot.OriginSquare.Color = Color3.fromRGB(225, 0, 0)

        library:Notify("Nightfall", "Do not load on the red plot")
    end

    repeat task.wait() until game:GetService"Workspace".Effects:FindFirstChild"StructureModel"

    repeat task.wait() until not game:GetService"Workspace".Effects:FindFirstChild"StructureModel"

    task.wait(math.round(EndLoadTime))

    game:Shutdown()
end

Requirements.Funcs.ChangeVehicleState = function(Type, Value)
    for i,v in next, game:GetService"Workspace".PlayerModels:GetChildren() do
        if v:FindFirstChild"Type" and v.Type.Value == "Vehicle" then
            if v:FindFirstChild"Configuration" then
                v.Configuration[Type].Value = Value
            end
        end
    end
end

Requirements.Funcs.FlipVehicle = function()
    if game.Players.LocalPlayer.Character.Humanoid.SeatPart == nil or game.Players.LocalPlayer.Character.Humanoid.SeatPart.Name ~= "DriveSeat" then
        return library:Notify("Error!","Sit in the drivers seat of the vehicle you want to flip")
    end
    game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.PrimaryPart.CFrame * CFrame.Angles(math.rad(-180),0,0) + Vector3.new(0,5,0))
end

Requirements.Funcs.VehicleSpawner = function(CarColor, StopOnPink)
    if Requirements.Booleans.IsSpawningVehicle then
        return library:Notify("Error!", "You alre currently spawning a vehicle please wait or abort")
    end
    if CarColor == nil then 
        return library:Notify("Nightfall", "Error No car color selected")
    end
    library:Notify("Vehicle Spawner", "Select a spawn pad")
    Requirements.Booleans.IsSpawningVehicle = true
    Requirements.Booleans.AbortVehicleSpawner = false
    Requirements.Strings.SelectedSpawnPad = nil
    Requirements.Strings.VehicleRespawnedColor = "nil"
    Requirements.Connections.RespawnedCar = game:GetService("Workspace").PlayerModels.ChildAdded:connect(function(v)
        if v:WaitForChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
            if v:WaitForChild("PaintParts") then
                Requirements.Strings.VehicleRespawnedColor = v.PaintParts:WaitForChild("Part")
            end
        end
    end)

    Requirements.Connections.VehicleSpawnerClick = Requirements.Vars.Mouse.Button1Up:Connect(function()
        Requirements.Strings.Target = Requirements.Vars.Mouse.Target.Parent
        if Requirements.Strings.Target:FindFirstChild"Owner" and Requirements.Strings.Target.Owner.Value == game:GetService"Players".LocalPlayer then
            if Requirements.Strings.Target:FindFirstChild"Type" and Requirements.Strings.Target.Type.Value == "Vehicle Spot" then
                Requirements.Strings.SelectedSpawnPad = Requirements.Strings.Target
            end
        end
    end)
    repeat task.wait() until Requirements.Strings.SelectedSpawnPad ~= nil
    Requirements.Connections.VehicleSpawnerClick:Disconnect()
    repeat
        Requirements.Strings.VehicleRespawnedColor = nil
        if Requirements.Booleans.AbortVehicleSpawner then break end
        Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").Interaction.RemoteProxy, Requirements.Strings.SelectedSpawnPad.ButtonRemote_SpawnButton)
        repeat task.wait() until Requirements.Strings.VehicleRespawnedColor ~= nil
        task.wait(1.5)
    until Requirements.Strings.VehicleRespawnedColor.BrickColor.Name == CarColor or Requirements.Strings.VehicleRespawnedColor.BrickColor.Name == "Hot pink" and StopOnPink
    library:Notify("Car Spawner", Requirements.Booleans.AbortVehicleSpawner and "Aborted" or "Finished")
    Requirements.Strings.SelectedSpawnPad = nil
    Requirements.Booleans.IsSpawningVehicle = false
end

Requirements.Funcs.DestroySelectedOption = function(Owner, Type)
    if not game:GetService"Players"[Owner] then
        return library:Notify("Error", "Failed To Find Selected Player")
    end
    if Type == nil then
        return library:Notify("Error", "Please Select An Option To Wipe")
    end
    if not Requirements.Funcs.CheckPerm("Destroy", Owner) then
        return library:Notify("Error!", "You need permissions to destroy objects on the selected players base")
    end
    for i,v in next, game:GetService"Workspace".PlayerModels:GetChildren() do
        if v:FindFirstChild"Owner" and v.Owner.Value == game:GetService"Players"[Owner] then
            if v:FindFirstChild"Type" and v.Type.Value == Type or v:FindFirstChild"ItemName" and v.ItemName.Value == Type or v:FindFirstChild"PurchasedBoxItemName" and v.PurchasedBoxItemName.Value == Type then
                repeat
                    Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").Interaction.DestroyStructure, v)
                    task.wait(.2)
                until v.Parent == nil
            end
        end
    end
    library:Notify("Nightfall", "Selected Option Wipes Successfully")
end

Requirements.Funcs.WipeCurrentSlot = function(Slot)
    if game:GetService"Players".LocalPlayer.CurrentSaveSlot.Value == -1 then
        return library:Notify("Error!", "You need to load the base you want to wipe")
    end

    if game:GetService"Players".LocalPlayer.CurrentlySavingOrLoading.Value then
        return library:Notify("Error!", "You are currently loading")
    end

    if not Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad, game:GetService"Players".LocalPlayer) then
        library:Notify("Nightfall", "Load on cooldown please wait")
        repeat task.wait(.1) until Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad, game:GetService"Players".LocalPlayer)
    end

    Requirements.Funcs.LoadSlot(math.huge)

    repeat task.wait() until not game:GetService"Players".LocalPlayer.CurrentlySavingOrLoading.Value 

    Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").LoadSaveRequests.RequestSave, Slot, game:GetService"Players".LocalPlayer)

    library:Notify("Nightfall", string.format("Wipes Slot %s Successfully", tostring(Slot)))
end

Requirements.Funcs.ClickToDelete = function(Value)
    if not Value then
        return Requirements.Connections.ClickToDelete:Disconnect()
    end
    Requirements.Vars.Mouse = game:GetService"Players".LocalPlayer:GetMouse()
    Requirements.Connections.ClickToDelete = Requirements.Vars.Mouse.Button1Down:Connect(function()
        local Target = Requirements.Vars.Mouse.Target.Parent
        if tostring(Target.Parent.Name):match("PlayerModels") and not Target:FindFirstChild"TreeClass" then
            if Requirements.Funcs.CheckPerm("Destroy", tostring(Target.Owner.Value)) then
                repeat
                    Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").Interaction.DestroyStructure, Target)
                    task.wait(.1)
                until not Target.Parent 
            end
        end
    end)
end

---~ItemFuncs~---

Requirements.Funcs.SortItems = function(SelectedItem, Owner, StringValName, XS, ZS)
    if Requirements.Booleans.IsSorting then
        return library:Notify("Error", "You are currently sorting items please wait")
    end
    
    if not Requirements.Funcs.CheckPerm("All", Owner) then
        return library:Notify("Error!", "Make sure you have all permissions")
    end

    Requirements.Booleans.AbortStacker = false
    Requirements.Booleans.IsSorting = true
    Requirements.Vars.Mouse = game:GetService"Players".LocalPlayer:GetMouse()
    Requirements.Tables.ItemsToSort = {}

    for i,v in next, game:GetService("Workspace").PlayerModels:GetChildren() do
        if v:FindFirstChild"Owner" and v.Owner.Value == game:GetService"Players"[Owner] then
            if v:FindFirstChild(StringValName) and v[StringValName].Value == SelectedItem then
                table.insert(Requirements.Tables.ItemsToSort, v)
            end
        end
    end
    
    local SortPreview = Requirements.Funcs.Create("Part", game:GetService"Workspace", {Name = "BoxSort", Transparency = 1, CanCollide = false, Anchored = true, Size = Vector3.new(Requirements.Tables.ItemsToSort[1].Main.Size.X * XS, Requirements.Tables.ItemsToSort[1].Main.Size.Y * math.ceil(#Requirements.Tables.ItemsToSort / (XS * ZS)), Requirements.Tables.ItemsToSort[1].Main.Size.Z * ZS)})
    Requirements.Funcs.Create("SelectionBox", game:GetService"Workspace".BoxSort, {LineThickness = 0.1, Adornee = game:GetService"Workspace".BoxSort})
    local PreviewPos = SortPreview.Position + Vector3.new(-(SortPreview.Size.X/2 + Requirements.Tables.ItemsToSort[1].Main.Size.X/2), -(SortPreview.Size.Y/2 + Requirements.Tables.ItemsToSort[1].Main.Size.Y/2) , -(SortPreview.Size.Z/2 + Requirements.Tables.ItemsToSort[1].Main.Size.Z/2))
    local Count = 0
    for Y = 1, math.ceil(#Requirements.Tables.ItemsToSort / (XS * ZS)) do
        for X = 1, XS do
            for Z = 1, ZS do
                Count = Count + 1
                if Requirements.Tables.ItemsToSort[Count] then
                    local Itm = Requirements.Tables.ItemsToSort[Count].Main:Clone() 
                    Itm.CanCollide = false
                    Itm.Transparency = 0.5
                    Itm.Orientation = Vector3.new(0,0,0)
                    Itm.Position = Vector3.new(PreviewPos.X + X * Requirements.Tables.ItemsToSort[1].Main.Size.X, PreviewPos.Y + Y * Requirements.Tables.ItemsToSort[1].Main.Size.Y, PreviewPos.Z + Z * Requirements.Tables.ItemsToSort[1].Main.Size.Z)
                    Itm.Parent = SortPreview
                    local ItmWeld = Instance.new("WeldConstraint",Itm)
                    ItmWeld.Part0 = Itm
                    ItmWeld.Part1 = SortPreview
                    for i,v in next, Itm:GetChildren() do
                        if v.Name:match("Decal") then
                            v.Transparency = 0.7
                        end
                    end
                end
            end
        end
    end

    Requirements.Connections.SorterMouseMove = Requirements.Vars.Mouse.Move:Connect(function()
        Requirements.Vars.Mouse = game:GetService"Players".LocalPlayer:GetMouse()
        Requirements.Strings.Target = Requirements.Vars.Mouse.Target
        if Requirements.Strings.Target.Name == "Square" or Requirements.Strings.Target.Name == "OriginSquare" then
            SortPreview.CFrame = CFrame.new(Requirements.Vars.Mouse.Hit.X + XS/2 * Requirements.Tables.ItemsToSort[1].Main.Size.X, Requirements.Vars.Mouse.Hit.Y + SortPreview.Size.Y/2, Requirements.Vars.Mouse.Hit.Z + ZS/2 * Requirements.Tables.ItemsToSort[1].Main.Size.Z)
        end
    end)

    local DidClick = false
    Requirements.Connections.SorterClick =  Requirements.Vars.Mouse.Button1Down:Connect(function()
        if DidClick then return end
        DidClick = true 
        Requirements.Vars.OldPos = game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame
        Requirements.Connections.SorterMouseMove:Disconnect()
        SortPreview:Destroy()
        Count = 0
        local Player = CFrame.new(Requirements.Vars.Mouse.Hit.X, Requirements.Vars.Mouse.Hit.Y , Requirements.Vars.Mouse.Hit.Z) * Vector3.new(0,0,0)
        pcall(function()
            for Y = 1, math.ceil(#Requirements.Tables.ItemsToSort / (XS * ZS)) do
                for X = 1, XS do
                    for Z = 1, ZS do
                        if Requirements.Booleans.AbortStacker then 
                            break
                        end
                        Count = Count + 1
                        local Freeze, Pos = Instance.new("BodyVelocity", Requirements.Tables.ItemsToSort[Count].Main), Instance.new("BodyPosition", Requirements.Tables.ItemsToSort[Count].Main)
                        Freeze.Velocity = Vector3.new(0, 0, 0)
                        Freeze.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                        Freeze.P = 9000
                        Pos.MaxForce = Vector3.new(0,0,0)
                        Pos.P = 100000
                        Pos.Position = Vector3.new(X * Requirements.Tables.ItemsToSort[Count].Main.Size.X,Y * Requirements.Tables.ItemsToSort[Count].Main.Size.Y, Z * Requirements.Tables.ItemsToSort[Count].Main.Size.Z) + Player
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Requirements.Tables.ItemsToSort[Count]:WaitForChild"Main".CFrame.p) + Vector3.new(Requirements.Tables.ItemsToSort[Count].Main.Size.Z + 3, 1, 0)
                        if Current ~= "Krnl" and not Requirements.Funcs.CheckOwnerShip(Requirements.Tables.ItemsToSort[Count].Main) then
                            repeat 
                                if Requirements.Booleans.AbortStacker then break end
                                game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Requirements.Tables.ItemsToSort[Count])
                                task.wait()
                            until Requirements.Funcs.CheckOwnerShip(Requirements.Tables.ItemsToSort[Count].Main)
                        end
                        Requirements.Tables.ItemsToSort[Count].Main.Velocity = Vector3.new(0,0,0)
                        for i = 1,Requirements.Strings.Iteration do
                            if Requirements.Booleans.AbortStacker then break end
                            game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Requirements.Tables.ItemsToSort[Count])
                            Requirements.Tables.ItemsToSort[Count]:PivotTo(CFrame.new(X * Requirements.Tables.ItemsToSort[Count].Main.Size.X, Y * Requirements.Tables.ItemsToSort[Count].Main.Size.Y, Z * Requirements.Tables.ItemsToSort[Count].Main.Size.Z) + Player)
                            game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Requirements.Tables.ItemsToSort[Count])
                            task.wait()
                        end
                        task.spawn(function()
                            wait(5)
                            Freeze:Destroy()
                            Pos:Destroy()
                        end)
                        task.wait(Requirements.Funcs.GetPing())
                    end
                end
            end
        end)
        if Requirements.Connections.SorterClick then
            Requirements.Connections.SorterClick:Disconnect()
        end
        Requirements.Booleans.IsSorting = false
        game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame = Requirements.Vars.OldPos
    end)
end

Requirements.Funcs.HardDragger = function(Value)
    Requirements.Config.HardDragger = Value
    if not Value then
        return Requirements.Connections.HardDragger:Disconnect()
    end

    Requirements.Connections.HardDragger = game:GetService"Workspace".ChildAdded:Connect(function(v)
        if v.Name == "Dragger" then
            local BG, BP = v:WaitForChild"BodyGyro", v:WaitForChild"BodyPosition"
            v.BrickColor = BrickColor.new("Hot pink")
            
            repeat
                BP.P = 10000 * 8
                BP.D = 1000
                BP.MaxForce = Vector3.new(1, 1, 1) * 1000000
                BG.MaxTorque = Vector3.new(1, 1, 1) * 200
                BG.P = 1200
                BG.D = 140
                task.wait()
            until not game:GetService"Workspace":FindFirstChild"Dragger"

            v.BrickColor = BrickColor.new("Deep blue")
            BP.P = 10000
            BP.D = 800
            BP.maxForce = Vector3.new(17000, 17000, 17000)
            BG.maxTorque = Vector3.new(200, 200, 200)
            BG.P = 1200
            BG.D = 140
        end
    end)
end

Requirements.Funcs.CountSelectedItem = function(Plr, Item)
    Requirements.Strings.Count = 0
    for i,v in next, game:GetService("Workspace").PlayerModels:GetChildren() do
        if v:FindFirstChild"Owner" and v.Owner.Value == Plr then
            if v:FindFirstChild"ItemName" and v.ItemName.Value == Item or v:FindFirstChild"PurchasedBoxItemName" and v.PurchasedBoxItemName.Value == Item or v:FindFirstChild"TreeClass" and v.TreeClass.Value == Item then
                Requirements.Strings.Count = Requirements.Strings.Count + 1
            end
        end
    end
    return Requirements.Strings.Count
end

Requirements.Funcs.ClickToCount = function(Value)
    if not Value then
        return Requirements.Connections.CountItemsClick:Disconnect()
    end
    Requirements.Vars.Mouse = game:GetService"Players".LocalPlayer:GetMouse()
    Requirements.Connections.CountItemsClick = Requirements.Vars.Mouse.Button1Down:Connect(function()
        Requirements.Strings.Target = Requirements.Vars.Mouse.Target.Parent
        if Requirements.Strings.Target.Parent.Name ~= "PlayerModels" then return end
        if Requirements.Strings.Target:FindFirstChild"Owner" and Requirements.Strings.Target.Owner.Value == game:GetService"Players".LocalPlayer then
            library:Notify("Nightfall", Requirements.Funcs.CountSelectedItem(Requirements.Strings.Target.Owner.Value, Requirements.Strings.Target:FindFirstChild"ItemName" and Requirements.Strings.Target.ItemName.Value or Requirements.Strings.Target:FindFirstChild"PurchasedBoxItemName" and Requirements.Strings.Target.PurchasedBoxItemName.Value or Requirements.Strings.Target:FindFirstChild"TreeClass" and Requirements.Strings.Target.TreeClass.Value))
        end
    end)
end

Requirements.Funcs.ClickToUnbox = function(Value)
    if not Value then
        return Requirements.Connections.ClickToUnbox:Disconnect()
    end
    Requirements.Vars.Mouse = game:GetService"Players".LocalPlayer:GetMouse()
    Requirements.Connections.ClickToUnbox = Requirements.Vars.Mouse.Button1Down:Connect(function()
        Requirements.Strings.Target = Requirements.Vars.Mouse.Target.Parent
        if Requirements.Strings.Target.Parent.Name ~= "PlayerModels" then return end
        if Requirements.Strings.Target:FindFirstChild"Owner" and Requirements.Strings.Target.Owner.Value == game:GetService"Players".LocalPlayer then
            if Requirements.Strings.Target:FindFirstChild"PurchasedBoxItemName" then
                Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").Interaction.ClientInteracted, Requirements.Strings.Target, "Open box")
            elseif Requirements.Strings.Target:FindFirstChild"ItemName" and Requirements.Strings.Target:FindFirstChild"DraggableItem" then
                Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").Interaction.RemoteProxy, Requirements.Strings.Target)
            end
        end
    end)
end

Requirements.Funcs.FarAxeEquip = function(Value)
    if not Value then
        return Requirements.Connections.FarAxeEquip:Disconnect()
    end
    Requirements.Vars.Mouse = game:GetService"Players".LocalPlayer:GetMouse()
    Requirements.Connections.FarAxeEquip = Requirements.Vars.Mouse.Button1Down:Connect(function()
        Requirements.Strings.Target = Requirements.Vars.Mouse.Target.Parent
        if Requirements.Strings.Target.Parent.Name ~= "PlayerModels" then return end
        if Requirements.Strings.Target:FindFirstChild"Owner" and Requirements.Strings.Target.Owner.Value == game:GetService"Players".LocalPlayer then
            if Requirements.Strings.Target:FindFirstChild"Type" and Requirements.Strings.Target.Type.Value == "Tool" or Requirements.Strings.Target:FindFirstChild"ToolName" then
                Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").Interaction.ClientInteracted, Requirements.Strings.Target, "Pick up tool")
            end
        end
    end)
end

Requirements.Funcs.HideBPUI = function(Value)
    for i,v in next, game:GetService"Workspace".PlayerModels:GetChildren() do
        if v:FindFirstChild"Type" and v.Type.Value == "Blueprint" then
            if v:FindFirstChild"Main" and v.Main:FindFirstChild"ProgressBillboard" then
                v.Main.ProgressBillboard.Enabled = Value
            end
        end
    end
end

Requirements.Funcs.RemoveBPPercentage = function(Value)
    Requirements.Config.RemoveBPPercentage = Value
    if not Value then
        Requirements.Funcs.HideBPUI(true)
        return Requirements.Connections.BPAdded:Disconnect()
    end

    Requirements.Connections.BPAdded = game:GetService"Workspace".PlayerModels.ChildAdded:Connect(function(v)
        if v:WaitForChild"Type" and v.Type.Value == "Blueprint" then
            if v:WaitForChild"Main" and v.Main:WaitForChild"ProgressBillboard" then
                Requirements.Funcs.HideBPUI(false)
            end
        end
    end)

    Requirements.Funcs.HideBPUI(false)
end

Requirements.Funcs.SetSawmillState = function(Value)
    library:Notify("Nightfall", "Select A Sawmill")
	Requirements.Vars.Mouse = game:GetService'Players'.LocalPlayer:GetMouse()
	Requirements.Strings.SelectedSawmill = nil
    Requirements.Connections.SawmillSettingsC = Requirements.Vars.Mouse.Button1Down:Connect(function()
        local Target = Requirements.Vars.Mouse.Target
        if Target.Parent.Name == 'PlayerModels' and Target.Parent:FindFirstChild"ItemName" and Target.Parent.ItemName.Value:sub(1,7) == "Sawmill" then
            Requirements.Strings.SelectedSawmill = Target.Parent
        elseif Target.Parent.Name == 'Parts' and Target.Parent.Parent:FindFirstChild"ItemName" and Target.Parent.Parent.ItemName.Value:sub(1,7) == "Sawmill" then
            Requirements.Strings.SelectedSawmill = Target.Parent.Parent
        end
    end)
    repeat task.wait() until tostring(Requirements.Strings.SelectedSawmill) ~= "nil"
    if Requirements.Strings.SelectedSawmill:FindFirstChild("ItemName") and Requirements.Strings.SelectedSawmill.ItemName.Value:sub(1,7) == "Sawmill" then
        for i = 1,20 do
            if not Value then
                game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(Requirements.Strings.SelectedSawmill.ButtonRemote_XDown)
                task.wait(1)
                game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(Requirements.Strings.SelectedSawmill.ButtonRemote_YDown)
            else
                game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(Requirements.Strings.SelectedSawmill.ButtonRemote_XUp)
                task.wait(1)
                game:GetService("ReplicatedStorage").Interaction.RemoteProxy:FireServer(Requirements.Strings.SelectedSawmill.ButtonRemote_YUp)
            end
            task.wait(1)
        end
    end
	library:Notify("Nightfall","Finished maxing/decreasing settings")
	Requirements.Connections.SawmillSettingsC:Disconnect()
end

---~AutoBuyFuncs~---

Requirements.Funcs.GetStoreCounter = function()
    local Counter,Distance = nil,9e9
    for i,v in next, game:GetService"Workspace".Stores:GetChildren() do
        if v:IsA"Model" and v.Name ~= "ShopItems" then
            for i,v in next, v:GetChildren() do
                if v.Name == "Counter" then
                    local Dis = (game:GetService"Players".LocalPlayer.Character.Head.CFrame.p - v.CFrame.p).Magnitude
                    if Distance > Dis then
                        Counter,Distance = v,Dis
                    end
                end
            end
        end
    end
    return Counter
end

Requirements.Funcs.FindItem = function(Item)
    Requirements.Strings.ItemFound = nil
    while task.wait() do
        if Requirements.Strings.ItemFound ~= nil then break end
        for i,v in next, game:GetService"Workspace".Stores:GetChildren() do
            if v:IsA"Model" and v.Name == "ShopItems" then
                for i,v in next, v:GetChildren() do
                    if v:FindFirstChild"Owner" and v.Owner.Value == nil then
                        if v:FindFirstChild"BoxItemName" and tostring(v.BoxItemName.Value) == Item then
                            Requirements.Strings.ItemFound = v
                            break
                        end
                    end
                    if Requirements.Strings.ItemFound ~= nil then break end
                end
            end
        end
    end
    return Requirements.Strings.ItemFound
end

Requirements.Funcs.AutoBuy = function(Items,Amount,OpenBox)
	if Requirements.Booleans.IsBuying then
        return library:Notify("Error!", "AutoBuy in process")
    end
	if Items == nil then
		return library:Notify("Error!", "No item(s) selected")
	end
    if game:GetService"Players".LocalPlayer.leaderstats.Money.Value < Requirements.Funcs.GetItemInfo(Items, "Price", Amount) then
        return library:Notify("Error!", "You do not have enough to purchase the selected item(s)")
    end
    Requirements.Vars.OldPos = OpenBox and Requirements.Vars.OldPos or game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame
	Requirements.Booleans.IsBuying = true
	Requirements.Booleans.AbortAutoBuy = false
        for i = 1,Amount do
			if Requirements.Booleans.AbortAutoBuy then break end
            Requirements.Strings.ItemToBuy = OpenBox and Requirements.Funcs.FindItem(Items) or Requirements.Funcs.FindItem(Requirements.Funcs.GetItemInfo(Items, "Name", 0))
            if (game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame.p - Requirements.Strings.ItemToBuy:FindFirstChild"Main".CFrame.p).Magnitude > 25 then
				Requirements.Funcs.Teleport(CFrame.new(Requirements.Strings.ItemToBuy:FindFirstChild("Main").CFrame.p) + Vector3.new(5,1,5))
            end
		    if not Requirements.Strings.ItemToBuy.Owner.Value == game:GetService"Players".LocalPlayer then
		        repeat
					if Requirements.Booleans.AbortAutoBuy then break end
		            game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Requirements.Strings.ItemToBuy)
		            task.wait()
		        until Requirements.Strings.ItemToBuy.Owner.Value == game:GetService"Players".LocalPlayer
		    end
		    Requirements.Strings.StoreCounter = Requirements.Funcs.GetStoreCounter()
		    for i = 1,25 do
		        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Requirements.Strings.ItemToBuy)
		        Requirements.Strings.ItemToBuy:PivotTo(Requirements.Strings.StoreCounter.CFrame + Vector3.new(0,Requirements.Strings.StoreCounter.Size.Y * Requirements.Strings.ItemToBuy.Main.Size.Y/2,0))
		        task.wait()
		    end
		    --Requirements.Funcs.Teleport(Requirements.Strings.StoreCounter.CFrame + Vector3.new(5,0,5))
		    repeat
				if Requirements.Booleans.AbortAutoBuy then break end
		        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Requirements.Strings.ItemToBuy)
                task.spawn(function()
					game.ReplicatedStorage.NPCDialog.PlayerChatted:InvokeServer({ID = Requirements.Tables.ShopIds[Requirements.Strings.StoreCounter.Parent.Name]},"ConfirmPurchase")
                end)
			    task.wait(.1)
		    until Requirements.Strings.ItemToBuy.Parent.Name ~= "ShopItems"
		    if not OpenBox then
    		    for i = 1,25 do
    		        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Requirements.Strings.ItemToBuy)
    		        Requirements.Strings.ItemToBuy:PivotTo(Requirements.Vars.OldPos + Vector3.new(5,1,0))
    		        task.wait()
    		    end
            else
                repeat
                    game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(Requirements.Strings.ItemToBuy,"Open box")
                    task.wait(1)
                until Requirements.Strings.ItemToBuy.Parent == nil
		    end
            task.wait(math.floor(Requirements.Funcs.GetPing()))
        end
	Requirements.Booleans.IsBuying = false
    if not OpenBox then
        Requirements.Funcs.Teleport(Requirements.Vars.OldPos)
    end
end

Requirements.Funcs.FastCheckout = function(Value)
    Requirements.Config.FastCheckout = Value and 0 or 1
	setconstant(getsenv(game:GetService"Players".LocalPlayer.PlayerGui.ChatGUI.NPCChattingClient).advanceChat,19,Value and 0 or 1)
end

Requirements.Funcs.PurchaseAllBlueprints = function()
    if #game:GetService"Players".LocalPlayer.PlayerBlueprints.Blueprints:GetChildren() >= 69 then
        return library:Notify("Error!","You already own all blueprints")
    end
    Requirements.Vars.OldPos = game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame
    Requirements.Tables.BPToBuy = {}
    
    for i,v in next, game:GetService"ReplicatedStorage".ClientItemInfo:GetChildren() do
		if v:FindFirstChild"Type" and v.Type.Value == "Structure" or v.Type.Value == "Furniture" then
			if v:FindFirstChild"WoodCost" then
				if not game:GetService"Players".LocalPlayer.PlayerBlueprints.Blueprints:FindFirstChild(v.Name) then
					table.insert(Requirements.Tables.BPToBuy, v.Name)
				end
			end
		end
	end

    Requirements.Strings.Count = 0

    for i = 1,#Requirements.Tables.BPToBuy do
        Requirements.Strings.Count = Requirements.Strings.Count + Requirements.Funcs.GetItemInfo(Requirements.Tables.BPToBuy[i], "Price", 1)
    end

    if Requirements.Funcs.GetFunds(game:GetService"Players".LocalPlayer) < Requirements.Strings.Count then
        return library:Notify("Error!", "You need".." $"..Requirements.Strings.Count - Requirements.Funcs.GetFunds(game:GetService"Players".LocalPlayer).." more to purchase all Blueprints")
    end

    for i = 1,#Requirements.Tables.BPToBuy do
        Requirements.Funcs.AutoBuy(Requirements.Tables.BPToBuy[i], 1, true)
        task.wait()
    end
    library:Notify("Nightfall", "Blueprints bought successfully")
    game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame = Requirements.Vars.OldPos
end

Requirements.Funcs.MiscBuy = function(ID, Amount, Item)
	if game:GetService("Players").LocalPlayer.leaderstats.Money.Value >= tonumber(Amount) then
		game:GetService("ReplicatedStorage").NPCDialog.PlayerChatted:InvokeServer({["ID"] = ID},"ConfirmPurchase")
	else
		library:Notify("Error!","You dont have enough money to purchase "..Item)
	end
end

---~WoodTab~---

Requirements.Funcs.GetAllTreeTypes = function(Type)
    Requirements.Tables.AvailableTrees = {}
    for i,v in next, game.Workspace:GetChildren() do
        if v.Name == "TreeRegion" then
            for i,v in next, v:GetChildren() do
                if v:FindFirstChild("Owner") and v.Owner.Value == nil then
                    if v:FindFirstChild("TreeClass") and v.TreeClass.Value == Type then
                        if not v:FindFirstChild"Inner" then
                            table.insert(Requirements.Tables.AvailableTrees,v)
                        end
                    end
                end
            end
        end
    end
    return Requirements.Tables.AvailableTrees
end

Requirements.Funcs.FindBigTree = function(Type)
    Requirements.Strings.Count = 0
    Requirements.Strings.Count2 = 0
    Requirements.Strings.SelectedTree = nil
    for i,v in next, Requirements.Funcs.GetAllTreeTypes(Type) do
        Requirements.Strings.Count = 0
        for i,v in next, v:GetChildren() do
            if v.Name == "WoodSection" then
                Requirements.Strings.Count = Requirements.Strings.Count + 1
            end
            if Requirements.Strings.Count > Requirements.Strings.Count2 then
                Requirements.Strings.SelectedTree = v
                Requirements.Strings.Count2 = Requirements.Strings.Count
            end
        end
    end
    if Requirements.Strings.SelectedTree ~= nil then
        return Requirements.Strings.SelectedTree.Parent
    end
    return false
end

Requirements.Funcs.GetTreesLowID = function(Type)
    if not Requirements.Funcs.FindBigTree(Type) then return false end
    for i,v in next, Requirements.Funcs.FindBigTree(Type):GetChildren() do
        if v.Name == "WoodSection" then
            if v.ID.Value == 1 then
                return v
            end
        end
    end
end

Requirements.Funcs.GetTree = function(Tree, Amount, Sell)
    if Requirements.Booleans.IsChopping then
        return library:Notify("Error!", "You are already cutting a Tree or Plank please wait")
    end

    if not game:GetService"Players".LocalPlayer.Backpack:FindFirstChild"Tool" or game.Players.LocalPlayer.Character:FindFirstChild"Tool" then
		return library:Notify("Error!", "You need a tool to use this feature")
	end

    if Tree == "LoneCave" and Requirements.Funcs.GetBestAxe("LoneCave").BestAxe.ToolName.Value ~= "EndTimesAxe" then
        return library:Notify("Error!", "You need an endtimes axe to cut the LoneCave tree")
    end

    Requirements.Booleans.IsChopping = true
    Requirements.Booleans.AbortGetTree = false
    Requirements.Vars.OldPos = game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame
    
    Requirements.Connections.TreeAdded = game:GetService"Workspace".LogModels.ChildAdded:Connect(function(v)
        if v:WaitForChild"Owner" and v.Owner.Value == game:GetService"Players".LocalPlayer then
            Requirements.Booleans.TreeCutDown = true
            if not Sell then
                Requirements.Funcs.MoveModel(v, 35, Requirements.Vars.OldPos)
                Requirements.Booleans.TreeTeleported = true
            else
                Requirements.Funcs.MoveLogs(game.workspace.Stores.WoodRUs.Furnace:FindFirstChild("Big", true).Parent.CFrame + Vector3.new(0,8,0), true)
                Requirements.Booleans.TreeTeleported = true
            end
        end
    end)

    for i = 1, Amount do
        if Requirements.Booleans.AbortGetTree then 
            break 
        end

        Requirements.Strings.TreeToGet = Requirements.Funcs.GetTreesLowID(Tree)

        if not Requirements.Strings.TreeToGet then
            library:Notify("Error!", "Selected Tree Not Found")
            break
        end

        if Tree == "LoneCave" then
            Requirements.Funcs.GodMode()
        end

        Requirements.Funcs.Teleport(CFrame.new(Requirements.Strings.TreeToGet.CFrame.p + Vector3.new(0, 0, 5)))

        repeat
            if Requirements.Booleans.AbortGetTree then 
                break 
            end

            Requirements.Funcs.Teleport(CFrame.new(Requirements.Strings.TreeToGet.CFrame.p + Vector3.new(0, 0, 5)))

            pcall(function()
                Requirements.Funcs.ChopTree(Requirements.Strings.TreeToGet.Parent.CutEvent, 1, 0.32, Requirements.Strings.TreeToGet.Parent.TreeClass.Value)
            end)
            task.wait()
        until Requirements.Booleans.TreeCutDown
        Requirements.Booleans.TreeCutDown = false

        repeat task.wait() until Requirements.Booleans.TreeTeleported

        Requirements.Booleans.TreeTeleported = false

        if Tree == "LoneCave" then
            Requirements.Funcs.SafeDeath()
            repeat task.wait() until game:GetService"Players".LocalPlayer.Character:FindFirstChild"Head" and game:GetService"Players".LocalPlayer.Character:FindFirstChild"HumanoidRootPart"
            break
        end
        task.wait(.1)
    end
    Requirements.Connections.TreeAdded:Disconnect()
    Requirements.Booleans.IsChopping = false
    Requirements.Funcs.Teleport(Requirements.Vars.OldPos)
    library:Notify("Nightfall", Requirements.Booleans.AbortGetTree and "Aborted" or not Requirements.Strings.TreeToGet and "Selected Tree Not Found" or string.format("Got %d %s Tree(s)", Amount, Tree))
    Requirements.Strings.TreeToGet = nil
end

Requirements.Funcs.FillBlueprints = function(WoodType)
    if not game:GetService"Players".LocalPlayer.SuperBlueprint.Value then
        return library:Notify("Error!", "You need the power to use this feature")
    end

    Requirements.Vars.OldPos = game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame 

    local OneUnits, Blueprints = {}, {}

    for i,v in next, game:GetService"Workspace".PlayerModels:GetChildren() do
        if v:FindFirstChild"Owner" and v.Owner.Value == game:GetService"Players".LocalPlayer then
            if v:FindFirstChild"Type" and v.Type.Value == "Blueprint" then
                table.insert(Blueprints, v)
            end
        end
    end

    for i,v in next, game:GetService"Workspace".PlayerModels:GetChildren() do
        if v:FindFirstChild"Owner" and v.Owner.Value == game:GetService"Players".LocalPlayer then
            if v:FindFirstChild"TreeClass" and v.TreeClass.Value == WoodType then
                if v.WoodSection.Size.Y >= 1 and v.WoodSection.Size.Y < 2 then
                    table.insert(OneUnits, v)
                end
            end
        end
    end

    if #Blueprints < 1 then
        return library:Notify("Error!", "Failed to find Blueprints")
    end

    if #OneUnits < 1  then
        return library:Notify("Error!", "Failed to find one units of the selected wood type")
    end

    for i,v in next, Blueprints do
        local Plank = OneUnits[1]

        if not Plank then break end

        Requirements.Funcs.Create("BodyPosition", Plank.WoodSection, {MaxForce = Vector3.new(9e9, 9e9, 9e9), D = 9e9, P = 9e9, Position = v.BuildDependentWood.Position})

        Requirements.Funcs.Teleport(CFrame.new(Plank.WoodSection.CFrame.p) + Vector3.new(0,2,2))

        repeat
            pcall(function()
                Requirements.Funcs.MoveModel(Plank, 35, v.BuildDependentWood.CFrame)
            end)
            task.wait()
        until not Plank.Parent

        table.remove(OneUnits, table.find(OneUnits, OneUnits[1]))
    end

    game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame = Requirements.Vars.OldPos
    library:Notify("Nightfall", "Blueprints Filled Successfully")
end

Requirements.Funcs.PlankToBP = function(Value)
    if not Value then
        return Requirements.Connections.PlankToBP:Disconnect()
    end

    Requirements.Vars.Mouse = game:GetService"Players".LocalPlayer:GetMouse()
    Requirements.Strings.SelectedBP = nil
    Requirements.Strings.SelectedPlank = nil

    Requirements.Connections.PlankToBP = Requirements.Vars.Mouse.Button1Down:Connect(function()
        local Target = Requirements.Vars.Mouse.Target.Parent
        if Target:FindFirstChild"Owner" and Target.Owner.Value == game:GetService"Players".LocalPlayer then
            if Target:FindFirstChild"Type" and Target.Type.Value == "Blueprint" then
                Requirements.Strings.SelectedBP = Target
                library:Notify("Nightfall", "Blueprint Selected")
            elseif Target:FindFirstChild"TreeClass" and Target.TreeClass.Value ~= "Sign" and Target.Name == "Plank" then
                Requirements.Strings.SelectedPlank = Target
                library:Notify("Nightfall", "Plank Selected")
            end
        end
    end)

    repeat task.wait() until tostring(Requirements.Strings.SelectedBP and Requirements.Strings.SelectedPlank) ~= "nil"

    Requirements.Connections.PlankToBP:Disconnect()
    
    Requirements.Funcs.MoveModel(Requirements.Strings.SelectedPlank, 35, Requirements.Strings.SelectedBP.BuildDependentWood.CFrame)

    Requirements.Funcs.PlankToBP(true)
end

Requirements.Funcs.UnfillBlueprints = function(Value)
    if not Value then 
        Requirements.Connections.ClickToUnfill:Disconnect()
        return
    end
    Requirements.Vars.Mouse = game:GetService"Players".LocalPlayer:GetMouse()
    Requirements.Connections.ClickToUnfill = Requirements.Vars.Mouse.Button1Down:Connect(function()
        Requirements.Strings.Target = Requirements.Vars.Mouse.Target.Parent
        if Requirements.Strings.Target.Parent.Name == "PlayerModels" then
            if Requirements.Strings.Target:FindFirstChild"Owner" and Requirements.Strings.Target.Owner.Value == game:GetService"Players".LocalPlayer then
                if Requirements.Strings.Target:FindFirstChild"BuildDependentWood" and Requirements.Strings.Target:FindFirstChild"MainCFrame" then
                    Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").PlaceStructure.ClientPlacedBlueprint, Requirements.Strings.Target.ItemName.Value, Requirements.Strings.Target.MainCFrame.Value, game:GetService"Players".LocalPlayer)
                    repeat
                        Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").Interaction.DestroyStructure, Requirements.Strings.Target)
                        task.wait(1)
                    until not Requirements.Strings.Target.Parent
                end
            end
        end
    end)
end

Requirements.Funcs.UnitCutter = function(Value)
    if not Value then
        Requirements.Connections.PlankReAdded:Disconnect()
        Requirements.Connections.UnitCutter:Disconnect()
        return
    end

    Requirements.Vars.Mouse = game:GetService"Players".LocalPlayer:GetMouse()
    local Target

    Requirements.Connections.PlankReAdded = game:GetService("Workspace").PlayerModels.ChildAdded:Connect(function(v)
        if v:WaitForChild"Owner" and v.Owner.Value == game:GetService"Players".LocalPlayer then
            if v:WaitForChild"TreeClass" and v.TreeClass.Value ~= "Sign" and v.Name == "Plank" then
                Target = v
            end
        end
    end)

    Requirements.Connections.UnitCutter = Requirements.Vars.Mouse.Button1Down:Connect(function()
        Target = Requirements.Vars.Mouse.Target.Parent
        if Target:FindFirstChild"Owner" and Target.Owner.Value == game:GetService"Players".LocalPlayer then
            if Target:FindFirstChild"TreeClass" and Target.TreeClass.Value ~= "Sign" then
                if Target.TreeClass.Value == "LoneCave" and Requirements.Funcs.GetBestAxe("LoneCave").BestAxe.ToolName.Value ~= "EndTimesAxe" then
                    return library:Notify("Error!", "You need an endtimes axe to cut this wood")
                end
                repeat
                    if not Requirements.Booleans.OneUnitCutter then
                        break 
                    end
                    pcall(function()
                        Requirements.Funcs.ChopTree(Target:FindFirstChild"CutEvent", 1, 1, Target.TreeClass.Value)
                    end)
                    task.wait(1)
                until Target.WoodSection.Size.Y <= 1.88
            end
        end
    end)
end

Requirements.Funcs.ClickToSell = function(Value)
	if not Value then
        Requirements.Connections.ClickToSellC:Disconnect()
        return 
    end

    Requirements.Vars.Mouse = game:GetService"Players".LocalPlayer:GetMouse()

    Requirements.Connections.ClickToSellC = Requirements.Vars.Mouse.Button1Down:Connect(function()
        local Target = Requirements.Vars.Mouse.Target.Parent
        if Target.Parent.Name == "PlayerModels" and Target.Name == "Plank" or Target.Parent.Name == "LogModels" then
            if Target:FindFirstChild"Owner" and Target.Owner.Value == game:GetService"Players".LocalPlayer then
                Requirements.Funcs.Teleport(CFrame.new(Target:FindFirstChild"WoodSection".CFrame.p))
                Requirements.Funcs.MoveModel(Target, 35, game.workspace.Stores.WoodRUs.Furnace:FindFirstChild("Big", true).Parent.CFrame + Vector3.new(0,8,0))
            end
        end
    end)
end

Requirements.Funcs.SellPlanks = function()
    Requirements.Vars.OldPos = game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame
    repeat
    pcall(function()
        for i,v in next, game:GetService"Workspace".PlayerModels:GetChildren() do
            if v:FindFirstChild"Owner" and v.Owner.Value == game:GetService"Players".LocalPlayer and v.Name == "Plank" then
                Requirements.Funcs.Teleport(CFrame.new(v.WoodSection.CFrame.p))
                if not v.PrimaryPart then 
                    v.PrimaryPart = v:FindFirstChild"WoodSection"
                end
                Requirements.Funcs.MoveModel(v, 35, game.workspace.Stores.WoodRUs.Furnace:FindFirstChild("Big", true).Parent.CFrame + Vector3.new(0,8,0))
            end
        end
    end)
    task.wait(1)
    until not Requirements.Funcs.FindPlanks()
    game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame = Requirements.Vars.OldPos
end

Requirements.Funcs.BringPlanks = function()
    Requirements.Vars.OldPos = game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame

    for i,v in next, game:GetService"Workspace".PlayerModels:GetChildren() do
        if v:FindFirstChild"Owner" and v.Owner.Value == game:GetService"Players".LocalPlayer then
            if v:FindFirstChild"TreeClass" and v.TreeClass.Value ~= "Sign" then
                Requirements.Funcs.Teleport(CFrame.new(v:FindFirstChild"WoodSection".CFrame.p))
                Requirements.Funcs.MoveModel(v, 35, Requirements.Vars.OldPos)
                task.wait()
            end
        end
    end
end

Requirements.Funcs.GetAllIDs = function(Tree)
    local TreesIDs = {}
    for i,v in next, Tree:GetChildren() do
        if v.Name == "WoodSection" then
            if v:FindFirstChild"ID" and v.ID.Value ~= 1 then
                table.insert(TreesIDs,v.ID.Value)
            end
        end
    end
    for i,v in next, Tree:GetChildren() do
        if v.Name == "InnerWood" then
            if table.find(TreesIDs, v.ID.Value) then
                table.remove(TreesIDs,table.find(TreesIDs, v.ID.Value))
            end
        end
    end
    table.sort(TreesIDs)
    return TreesIDs
end

Requirements.Funcs.DismemberTree = function(Tree)
    if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild"Tool" or game:GetService("Players").LocalPlayer.Character:FindFirstChild"Tool" then
        return library:Notify("Error!", "You need a tool")
    end

    if Tree:FindFirstChild"TreeClass" and Tree.TreeClass.Value == "LoneCave" then
        if not Requirements.Funcs.GetBestAxe("LoneCave").BestAxe.ToolName.Value ~= "EndTimesAxe" then
            return library:Notify("Error!", "You need an endtimes axe")
        end
    end

    Requirements.Connections.TreeAdded = game:GetService"Workspace".LogModels.ChildAdded:Connect(function(v)
        if v:waitForChild"Owner" and v.Owner.Value == game.Players.LocalPlayer then
            Requirements.Booleans.TreeCutDown = true
        end
    end)

    Requirements.Tables.AllIDS = Requirements.Funcs.GetAllIDs(Tree)

    while #Requirements.Tables.AllIDS ~= 0  do
        for i,v in next, Tree:GetChildren() do
            if v.Name == "WoodSection" then
                if v:FindFirstChild"ID" and v.ID.Value == Requirements.Tables.AllIDS[#Requirements.Tables.AllIDS] then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.CFrame.p)
                    repeat
                        pcall(function()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.CFrame.p) + Vector3.new(0,0,5)
                            Requirements.Funcs.ChopTree(v.Parent:FindFirstChild"CutEvent", Requirements.Tables.AllIDS[#Requirements.Tables.AllIDS], 0.32, v.Parent.TreeClass.Value)
                        end)
                        task.wait()
                    until Requirements.Booleans.TreeCutDown
                    Requirements.Booleans.TreeCutDown = false
                    table.remove(Requirements.Tables.AllIDS, table.find(Requirements.Tables.AllIDS, Requirements.Tables.AllIDS[#Requirements.Tables.AllIDS]))
                end
            end
        end
        task.wait()
    end
end

Requirements.Funcs.ModTree = function(Tree, Sawmill) -- DO NOT GIVE THIS TO ANYONE
    local ModWoodTreeCut = false
    local ModWoodTreeAdded
    local Count = 3
    Requirements.Vars.OldPos = game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame

    if Tree:FindFirstChild"TreeClass" and Tree.TreeClass.Value == "Pine" then
        while true do end
    end

    if Tree:FindFirstChild"Owner" and Tree.Owner.Value ~= game:GetService"Players".LocalPlayer then
        return library:Notify("Error", "You do not own this tree")
    end

    local ToSellPiece, ToSawPiece = nil, nil

    for i,v in next, Tree:GetChildren() do
        if v.Name == "WoodSection" then
            ToSawPiece = v:FindFirstChild"ID".Value > Count and v or ToSawPiece
            Count = v.ID.Value
        end
    end

    if not ToSawPiece then
        return print("This tree is not moddable aborting !")
    end

    for i,v in next, Tree:GetChildren() do
        if v.Name == "WoodSection" then
            ToSellPiece = v.ID.Value == ToSawPiece.ParentID.Value and v or ToSellPiece
        end
    end

    Tree.PrimaryPart = ToSellPiece
    
    game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Tree.PrimaryPart.CFrame.p)

    Requirements.Funcs.MoveModel(Tree, 35, CFrame.new(-1417.34, 433.4, 1260.12))

    repeat 
        firetouchinterest(Tree.PrimaryPart, Requirements.Funcs.GetLava(), 0)
        firetouchinterest(Tree.PrimaryPart, Requirements.Funcs.GetLava(), 1)
        task.wait(.1)
    until Tree.PrimaryPart:FindFirstChild'LavaFire'
    
    Tree.PrimaryPart:FindFirstChild'LavaFire':Destroy()

    game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1417.34, 433.4, 1260.12)

    Requirements.Funcs.MoveModel(Tree, 35, Requirements.Vars.OldPos + Vector3.new(0,50,0))

    repeat
        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Tree)
        Tree.PrimaryPart.CFrame = CFrame.new(315, 0, 85)
        task.wait(.1)
    until not ToSellPiece:FindFirstChild"ID" 

    game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame = Requirements.Vars.OldPos

    ModWoodTreeAdded = game:GetService"Workspace".LogModels.ChildAdded:Connect(function(v)
        if v:WaitForChild"Owner" and v.Owner.Value == game:GetService"Players".LocalPlayer then
            ModWoodTreeCut = true
        end
    end)

    repeat
        Requirements.Funcs.Teleport(CFrame.new(Tree:FindFirstChild"WoodSection".CFrame.p + Vector3.new(3, 0, 0)))
        pcall(function()
            Requirements.Funcs.ChopTree(Tree:FindFirstChild"CutEvent", 1, 0.37, Tree:FindFirstChild"TreeClass".Value)
        end)
        task.wait(.1)
    until ModWoodTreeCut

    game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(ToSawPiece.CFrame.p)

    for i = 1,35 do
        game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Tree)
        ToSawPiece.CFrame = Sawmill.Particles.CFrame
        task.wait()
    end
    ModWoodTreeAdded:Disconnect()
    game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame = Requirements.Vars.OldPos
end

---~TrollTab~---

Requirements.Funcs.FindVehicle = function()
    for i,v in next, game:GetService"Workspace".PlayerModels:GetChildren() do
        if v:FindFirstChild"Owner" and v.Owner.Value == game.Players.LocalPlayer then
            if v:FindFirstChild"Type" and v.Type.Value == "Vehicle" then
                if v:FindFirstChild"DriveSeat" and v:FindFirstChild"Seat" then
                    return v
                end
            end
        end
    end
    return false
end

Requirements.Funcs.AnnoyPlayer = function(Target, Action)
    if Target == nil or Action == nil then
        return library:Notify("Error!", "You need to select a target and action to proceed")
    end
    if Target == game:GetService"Players".LocalPlayer.Name and Action ~= "Stop Spectating" then
        return library:Notify("Error!", "You can not perform this action on yourself")
    end
    if not game:GetService"Players":FindFirstChild(Target) then
        return library:Notify("Error!", "Failed to find selected player")
    end
    Requirements.Vars.OldPos = game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame
    if Action == "Bring" or Action == "Kill" then
        if not game:GetService"Players".LocalPlayer.Character.Humanoid.SeatPart then
            if not Requirements.Funcs.FindVehicle() then
                return library:Notify("Error!", "You need to own a vehicle to use this feature")
            else
                game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame = Requirements.Funcs.FindVehicle().DriveSeat.CFrame + Vector3.new(3,0,0)
                task.wait(1)
            end
        end
        game:GetService("ReplicatedStorage").Interaction.UpdateUserSettings:FireServer("UserPermission",game.Players[Target].UserId,"Sit",true)
        game:GetService("ReplicatedStorage").Interaction.UpdateUserSettings:FireServer("UserPermission",game.Players[Target].UserId,"Drive",true)
        repeat
            game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent:SetPrimaryPartCFrame(game.Players[Target].Character.HumanoidRootPart.CFrame*CFrame.Angles(0,0,math.rad(-90)))
            task.wait(.05)
        until game.Players[Target].Character.Humanoid.Sit == true or not game:GetService"Players":FindFirstChild(Target) or not game:GetService"Players".LocalPlayer.Character.Humanoid.SeatPart
        for i = 1,25 do
            game:GetService"Players".LocalPlayer.Character.Humanoid.SeatPart.Parent:SetPrimaryPartCFrame(Action == "Kill" and CFrame.new(113, -214, -951) or Requirements.Vars.OldPos)
            task.wait()
        end
    elseif Action == "Spectate" then
        game.Workspace.Camera.CameraSubject = game:GetService"Players"[Target].Character.Head
    elseif Action == "Stop Spectating" then
        game.Workspace.Camera.CameraSubject = game:GetService"Players".LocalPlayer.Character.Head
    elseif Action == "Follow" then
        repeat
            Requirements.Funcs.Teleport(CFrame.new(game:GetService"Players":FindFirstChild(Target).Character.HumanoidRootPart.CFrame.p))
            task.wait()
        until not game:GetService"Players"[Target] or Requirements.Strings.TrollAction == "Unfollow"
		Requirements.Funcs.Teleport(Requirements.Vars.OldPos)
	elseif Action == "Rock Bridge" then
		for i = 1,100 do 
			Requirements.Funcs.TeleportRockBridge(game:GetService"Players"[Target].Character.HumanoidRootPart.CFrame + Vector3.new(0,3,0))
			task.wait()
		end
    end
end

Requirements.Funcs.TomahawkAxeFling = function(Value)
    if not Value then Requirements.Connections.ToolAdded:Disconnect() Requirements.Connections.AxeFling:Disconnect() return end
    Requirements.Connections.ToolAdded = game.Workspace.PlayerModels.ChildAdded:Connect(function(v)
        if v:WaitForChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
            if v:WaitForChild("Main") and v:WaitForChild("ToolName") then
                Requirements.Strings.SelectedTool = v
                local BodyAngularVelocityAdded = Instance.new("BodyAngularVelocity",v.Main)
                local BodyPos = Instance.new("BodyPosition",v.Main)
                BodyPos.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
                BodyPos.Position = Requirements.Strings.ThrowPos
                BodyPos.P = 1000000
                BodyAngularVelocityAdded.P = 9e9
                BodyAngularVelocityAdded.MaxTorque = Vector3.new(0,9999999,0)
                BodyAngularVelocityAdded.AngularVelocity = Vector3.new(0,9999999,0)
                BodyAngularVelocityAdded.P = 9999999
                repeat
                    if not Requirements.Strings.SelectedTool:FindFirstChild("Main") then break end
                    game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Requirements.Strings.SelectedTool)
                    v.Main.CFrame = CFrame.new(Requirements.Strings.ThrowPos) * CFrame.Angles(math.rad(20*Requirements.Strings.AxeRotation),0,0)
                    Requirements.Strings.AxeRotation = Requirements.Strings.AxeRotation + 1
                    task.wait(0.5)
                until (game.Players.LocalPlayer.Character.Head.CFrame.p - Requirements.Strings.SelectedTool:WaitForChild("Main").CFrame.p).Magnitude >= 15 or Requirements.Strings.AxeRotation >= 40
                game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(Requirements.Strings.SelectedTool,"Pick up tool")
				game:GetService"Players".LocalPlayer.Character:WaitForChild"Tool"
				game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
                Requirements.Booleans.SelectedTool = nil
            end
        end
    end)
    
    Requirements.Connections.AxeFling = Requirements.Vars.Mouse.Button1Up:Connect(function()
        if not game.Players.LocalPlayer.Backpack:FindFirstChild("Tool") then
            return library:Notify("Error!","Failed to find a tool")
        end
        Requirements.Strings.AxeRotation = 0
        Requirements.Strings.ThrowPos = Requirements.Vars.Mouse.Hit.p
        game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(game.Players.LocalPlayer.Backpack:FindFirstChild("Tool"),"Drop tool",game.Players.LocalPlayer.Character["Right Arm"].CFrame - Vector3.new(5,0,0))
    end)
end

Requirements.Funcs.ClearShopItems = function()
    while Requirements.Booleans.ClearShopItems do
        for i,v in next, game:GetService("Workspace").Stores:GetChildren() do
            if v.Name == "ShopItems" then
                for i,v in next, v:GetChildren() do
                    if v:WaitForChild"Owner" and v.Owner.Value == nil then
                        Requirements.Funcs.FireRemote(game:GetService"ReplicatedStorage".Interaction.ClientIsDragging, v)
                        v:WaitForChild"Main".CanCollide = false
                    end
                end
            end
        end
        task.wait(5)
    end
end

Requirements.Funcs.CarAnnoy = function()
    for i,v in next, game:GetService"Workspace".PlayerModels:GetChildren() do
        if v:FindFirstChild"Type" and v.Type.Value == "Vehicle" and v:FindFirstChild"Configuration" then
            task.spawn(function()
                while task.wait() do
                    if not Requirements.Booleans.VehicleAnnoy then
                        v.RunSounds:FireServer("Cut")
                        break
                    else
                        v.RunSounds:FireServer("Startup")
                    end
                end
            end)
        end
    end
end

Requirements.Funcs.SitInAnyVehicle = function()
    if game:GetService("Players").LocalPlayer.PlayerScripts.SitPermissions.Disabled == true then 
        return library:Notify("Error!", "Vehicle sit permissions are already disabled") 
    end
    game:GetService("Players").LocalPlayer.PlayerScripts.SitPermissions.Disabled = true
    library:Notify("Nightfall","Disabled vehicle sit permissions")
end

Requirements.Funcs.PullObjects = function()
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local unanchoredParts = {}
    local movers = {}
    for index, part in pairs(workspace:GetDescendants()) do
    if part:IsA("Part") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false then
    table.insert(unanchoredParts, part)
    part.Massless = true
    part.CanCollide = false
    if part:FindFirstChildOfClass("BodyPosition") ~= nil then
    part:FindFirstChildOfClass("BodyPosition"):Destroy()
    end
    end
    end
    for index, part in pairs(unanchoredParts) do
    local mover = Instance.new("BodyPosition", part)
    table.insert(movers, mover)
    mover.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    end
    repeat
    for index, mover in pairs(movers) do
    mover.Position = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame:PointToWorldSpace(Vector3.new(0, 0, 5))
    end
    wait(0.5)
    until LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0
    for _, mover in pairs(movers) do
    mover:Destroy()
    end
    library:Notify("Nightfall","Successfully Pulled Objects")
end

Requirements.Funcs.ThrowObjects = function()
local LocalPlayer = game:GetService("Players").LocalPlayer
local unanchoredParts = {}
local movers = {}
for index, part in pairs(workspace:GetDescendants()) do
    if part:IsA("Part") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false then
        table.insert(unanchoredParts, part)
        part.Massless = true
        part.CanCollide = true
        if part:FindFirstChildOfClass("BodyVelocity") ~= nil then
            part:FindFirstChildOfClass("BodyVelocity"):Destroy()
        end
    end
end
for index, part in pairs(unanchoredParts) do
    local mover = Instance.new("BodyVelocity", part)
    table.insert(movers, mover)
    mover.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    mover.Velocity = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame.LookVector * 500
end
wait(1)
for _, mover in pairs(movers) do
    mover:Destroy()
end
library:Notify("Nightfall", "Successfully Thrown Object(s)", false)
end

---~ExtraFuncs~---

if os.date("%B") == "October" then
    if Requirements.Funcs.GetTreesLowID("Spooky") or Requirements.Funcs.GetTreesLowID("SpookyNeon") then
        library:Notify("Nightfall", "Spooky wood detected")
    end
end

Requirements.Funcs.GameMenuTheme = function(BGColor, TxtColor) 
    for i,v in next, game:GetService("Players").LocalPlayer.PlayerGui:GetChildren() do
        if v.Name ~= "Chat" and v.Name ~= "TargetGui" and v.Name ~= "ColdAsIce" then
            for i,v in next, v:GetDescendants() do
                if not v:FindFirstChild"UICorner" then
                    Instance.new("UICorner",v)
                end
                if v.Name == "DropShadow" then
                    v:Destroy()
                end
                if v:IsA("TextButton") or v:IsA("Frame") or v:IsA("ScrollingFrame") then
                    v.BackgroundColor3 = BGColor
                end
                if v:IsA("TextLabel") or v:IsA("TextButton") or v:IsA("TextBox") then
                    v.TextColor3 = TxtColor
                    v.BackgroundColor3 = BGColor
                    v.Font = Enum.Font.GothamMedium
                end
            end
        end
    end
end
Requirements.Funcs.GameMenuTheme(Color3.fromRGB(225, 225, 225), Color3.fromRGB(0, 0, 0))

Requirements.Funcs.PlayMusic = function(ToPlay)
    Requirements.Funcs.ClearOrphanedSounds()
    for i,v in next, game:GetService"Players".LocalPlayer.PlayerGui.ClientSounds:GetChildren() do
        if v:IsA"Sound" and v.Name:sub(1, 7) == "Region_" or v.Name:sub(1, 6) == "Store_" then
            if v.Name == string.format("Region_%s", ToPlay) or v.Name == string.format("Store_%s", ToPlay) then
                v.Volume = 0.12
                v.Playing = true
            else
                v.Volume = 0
                v.Playing = false
            end
        end
    end
end

Requirements.Funcs.SendNotiWhenJAL = function(Value)
    Requirements.Config.JoinAndLeaveNotify = Value
    if not Value then
        Requirements.Connections.PlayerJoined:Disconnect()
        Requirements.Connections.PlayerLeft:Disconnect()
        return
    end

    Requirements.Connections.PlayerJoined = game:GetService"Players".PlayerAdded:Connect(function(v)
       if v:IsFriendsWith(game:GetService"Players".LocalPlayer.UserId) then
            library:Notify("Nightfall", string.format("Your friend %s has joined your game", tostring(v.Name)))
        end
    end)

    Requirements.Connections.PlayerLeft = game:GetService"Players".PlayerRemoving:Connect(function(v)
        if v:IsFriendsWith(game:GetService"Players".LocalPlayer.UserId) then
            library:Notify("Nightfall", string.format("Your friend %s has left the game", tostring(v.Name)))
        end
    end)
end

--print("silent was here with Belle Delphine 😉") 

---~PlayerTab~---
Tab = UI:Tab("Player", "6022668898")

---~Section1~---
Section = Tab:Section("Movement")

Section:Slider("Walkspeed", Requirements.Config.Walkspeed, 16, 300, false, function(Value)
    Requirements.Config.Walkspeed = Value
    Requirements.Funcs.Walkspeed(Value)
end)

Section:Slider("Jump Power", Requirements.Config.JumpPower, 50, 300, false, function(Value)
	Requirements.Funcs.JumpPower(Value)
end)

Section:Slider("Sprint Speed", 50, 50, 300, false, function(Value)
	Requirements.Config.SprintSpeed = Value
end)

Section:KeyBind("Sprint Key", Requirements.Config.SprintKey, function(Value)
	Requirements.Config.SprintKey = Value
end)

Section:Toggle("Infinite Jump", Requirements.Config.InfJump, function(Value)
    print(Value)
    Requirements.Funcs.InfJump(Value)
end)

Section:Slider("Fly Speed", Requirements.Config.FlySpeed, 50, 500, false, function(Value)
	Requirements.Config.FlySpeed = Value
end)

Section:KeyBind("Fly", Requirements.Config.FlyKey, function(Value)
    Requirements.Config.FlyKey = Value
    Requirements.Booleans.Flying = not Requirements.Booleans.Flying
    Requirements.Funcs.PlayerFly(Requirements.Booleans.Flying)
end)

Section:Toggle("NoClip", Requirements.Config.NoClip, function(Value)
    Requirements.Funcs.NoClip(Value)
end)

---~Section2~---
Section = Tab:Section("Player")

Section:Slider("Zoom Distance", Requirements.Config.DefaultZoom, 140, 10000, false, function(Value)
    game.Players.LocalPlayer.CameraMaxZoomDistance = Value
end)

Section:Slider("Field Of View", Requirements.Config.FOV, 20, 120, false, function(Value)
    Requirements.Config.FOV = Value
	game:GetService("Workspace").Camera.FieldOfView = Value
end)

Section:Toggle("Light", false, function(Value)
    Requirements.Funcs.PlayerLight(Value)
end)

Section:Toggle("Invisble", false, function(Value)
    Requirements.Funcs.Invisable(Value)
end)

Section:Toggle("Anti-AFK", Requirements.Config.AntiAFK, function(Value)
    Requirements.Funcs.AntiAFK(Value)
end)

Section:Button("BTools",function()
	Requirements.Funcs.BTools()
end)

Section:Button("Safe Suicide",function()
	Requirements.Funcs.SafeDeath()
end)

---~Section3~---
Section = Tab:Section("Teleports")

Section:DropDown("Waypoints", {"The Den", "Lighthouse", "Safari", "Bridge", "Bob's Shack", "EndTimes Cave", "The Swamp", "The Cabin", "Volcano", "Boxed Cars", "Tiaga Peak", "Land Store", "Link's Logic", "Palm Island", "Palm Island 2", "Fine Art Shop", "SnowGlow Biome", "Cave", "Shrine Of Sight", "Fancy Furnishings", "Docks", "Strange Man", "Wood Dropoff", "Snow Biome", "Wood RUs", "Green Box", "Spawn", "Cherry Meadow", "Bird Cave",},function(Value)
	Requirements.Funcs.Teleport(Requirements.Tables.WaypointsPositions[Value])
end)

Section:PlrList("Teleport To Player",true,false,function(Value)
	Requirements.Funcs.Teleport(game:GetService"Players"[Value].Character.HumanoidRootPart.CFrame)
end)

Section:PlrList("Teleport To Player's Plot",true,true,function(Value)
	if not game:GetService"Players"[Value].OwnsProperty.Value then
        return library:Notify("Error", "Player does not own a plot")
    end
    Requirements.Funcs.Teleport(Requirements.Funcs.GetCurrentPlot(game:GetService"Players"[Value]).OriginSquare.CFrame + Vector3.new(0,5,0))
end)

Section:KeyBind("Teleport Key", Requirements.Config.ClickTPKey, function(Value)
    Requirements.Config.ClickTPKey = Value
	Requirements.Vars.Mouse = game:GetService"Players".LocalPlayer:GetMouse()
    if Requirements.Vars.Mouse.Target == nil then return end
    Requirements.Funcs.Teleport(CFrame.new(Requirements.Vars.Mouse.Hit.p) + Vector3.new(0,5,0))
end)

---~GameTab~---
Tab = UI:Tab("Game", "6034227061")

---~Section1~---
Section = Tab:Section("Lighting")

local AD, AN

AD = Section:Toggle("Always Day", Requirements.Config.AlwaysDay, function(Value)
    if Requirements.Config.AlwaysNight then
        AN:Set(false)
    end
    Requirements.Config.AlwaysDay = Value
end)

AN = Section:Toggle("Always Night", Requirements.Config.AlwaysNight, function(Value)
    if Requirements.Config.AlwaysDay then
        AD:Set(false)
    end
    Requirements.Config.AlwaysNight = Value
end)

Section:Toggle("Clear Fog", Requirements.Config.ClearFog , function(Value)
    Requirements.Config.ClearFog = Value
end)

Section:Toggle("Global Shadows", Requirements.Config.Shadows, function(Value)
    game:GetService"Lighting".GlobalShadows = Value
    Requirements.Config.Shadows = Value
end)

Section:Toggle("Spook Mode", Requirements.Config.Spook, function(Value)
    Requirements.Config.Spook = Value
    game:GetService"Lighting".Spook.Value = Value
end)

Section:Toggle("Better Graphics", Requirements.Config.BetterGraphics, function(Value)
    Requirements.Funcs.BetterGraphics(Value)
end)

Section:Slider("Brightness", Requirements.Config.Brightness, 1, 6, false, function(Value)
    game:GetService"Lighting".Brightness = Value
    Requirements.Config.Brightness = Value
end)

---~Section2~---
Section = Tab:Section("Game")

Section:Toggle("Remove Water", Requirements.Config.RemoveWater, function(Value)
    Requirements.Funcs.RemoveWater(Value)
end)

Section:Toggle("Bridge Down", false, function(Value)
    Requirements.Funcs.BridgeDown(Value)
end)

Section:Toggle("Remove Trees", Requirements.Config.HideTrees, function(Value)
    Requirements.Funcs.HideTrees(Value)
end)

Section:Toggle("Disable Blueprint Highlight", Requirements.Config.BlueprintHighlight, function(Value)
    Requirements.Funcs.DisableBPHighlight(Value)
end)

Section:Button("Get Green Box",function()
	Requirements.Funcs.GetGreenBox()
end)

Section:Button("Destroy Green Box",function()
	Requirements.Funcs.DestroyGreenBox()
end)

---~Section3~---
Section = Tab:Section("Map Themes")

Section:Toggle("Christmas Theme", false, function(Value)
    Requirements.Funcs.Christmas(Value)
end)

Section:Toggle("Halloween Theme", false, function(Value)
    if Requirements.Booleans.MapThemeActive then
        Requirements.Funcs.MainTheme()
        if not Value then return end 
    end
    Requirements.Funcs.CollectMainThemeData()
    loadstring(game:HttpGet'https://raw.githubusercontent.com/ItsEcstasy/Nightfall/main/Assets/HalloweenTheme')()
    Requirements.Booleans.MapThemeActive = true
end)

Section:Toggle("WillyWonker Theme", false, function(Value)
    if Requirements.Booleans.MapThemeActive then
        Requirements.Funcs.MainTheme()
        if not Value then return end 
    end
    Requirements.Funcs.CollectMainThemeData()
    loadstring(game:HttpGet'https://raw.githubusercontent.com/ItsEcstasy/Nightfall/main/Assets/WillyWonkerTheme')()
    Requirements.Booleans.MapThemeActive = true
end)

Section:Toggle("Autmn Theme", false, function(Value)
    Requirements.Funcs.Autamn(Value)
end)

---~SlotTab~---
Tab = UI:Tab("Slot", "6034333276")

---~Section1~---
Section = Tab:Section("Slot")

Section:Slider("Slot", 1, 1, 6, false, function(Value)
    Requirements.Strings.SelectedSlot = Value
end)

Section:Button("Load Slot",function()
	Requirements.Funcs.LoadSlot(Requirements.Strings.SelectedSlot)
end)

Section:Button("Deload Current Slot",function()
	Requirements.Funcs.LoadSlot(math.huge)
end)

Section:Button("Save Current Slot",function()
	Requirements.Funcs.ForceSave(game:GetService"Players".LocalPlayer.CurrentSaveSlot.Value)
end)

Section:Toggle("Fast Load", Requirements.Config.FastLoad, function(Value)
    Requirements.Config.FastLoad = Value
end)

---~Section2~---
Section = Tab:Section("Base")

Section:Button("Free Land",function()
	Requirements.Funcs.FreeLand()
end)

Section:Button("Max Land",function()
	Requirements.Funcs.MaxLand()
end)

Section:Toggle("Land Art", false, function(Value)
    Requirements.Funcs.LandArt(Value)
end)

Section:Button("Sell Sold Sign",function()
	Requirements.Funcs.SellSoldSign()
end)

Section:ColorPicker("Plot Color", Color3.fromRGB(124, 92, 70), function(Value)
	Requirements.Funcs.PlotColor(Value)
end)

Section:Button("Anti-Blacklist",function()
	Requirements.Funcs.AntiBlacklist()
end)

---~Section3~---
Section = Tab:Section("Dupe")

Section:Slider("Slot", 1, 1, 6, false, function(Value)
    Requirements.Strings.DupeSlot = Value
end)

Section:Slider("Amount", 1, 1, 30, false, function(Value)
    Requirements.Strings.DupeAmount = Value
end)

Section:Button("Dupe Inventory", function()
    Requirements.Funcs.DupeAxes(Requirements.Strings.DupeAmount)
end)

Section:Button("Abort Dupe Inventory", function()
    Requirements.Booleans.AbortAxeDupe = true
    library:Notify("Nightfall", "Finishing Things Up Please Wait")
end)

Section:Button("Transfer Power To Build With Ease To Selected Slot",function()
    library:Notify("Warning", "This will wipe all existing data from the selected slot do you wish to continue ?", true, function(Value)
        if Value then
            Requirements.Funcs.TransferPower(Requirements.Strings.DupeSlot)
        end
    end)
end)

Section:Button("Centre Square Dupe",function()
    library:Notify("Warning", "This dupe only dupes items in the centre square plot do you wish to continue ?", true, function(Value)
        if Value then
	        Requirements.Funcs.DupePlot(Requirements.Strings.DupeSlot, false)
        else
            library:Notify("Nightfall", "Canceled Action")
        end
    end)
end)

Section:Button("Full Base Dupe",function()
    library:Notify("Warning", "This dupe has a chance of wiping your base do you wish to continue ?", true, function(Value)
        if Value then
	        Requirements.Funcs.DupePlot(Requirements.Strings.DupeSlot, true)
        else
           library:Notify("Nightfall", "Canceled Action") 
        end
    end)
end)

Section:Button("Money Dupe", function()
    library:Notify("Nightfall", "Duping Money, This can take some time.")
    wait(6)
    library:Notify("Nightfall", "Please sell a non-sawmilled log.")
    wait(15)
    library:Notify("Nightfall", "Awaiting log to be sold.")
    wait(35)
    library:Notify("Nightfall", "Sold log detected, pelase wait for money to double.")
    wait(60)
    library:Notify("Nightfall", "Bro really thought you were getting your money duped. L + Ratio")
end)

---Section4~---
Section = Tab:Section("Vehicle")

Section:Slider("Vehicle Speed", 1, 1, 5, true, function(Value)
    Requirements.Funcs.ChangeVehicleState("MaxSpeed", Value)
end)

Section:Slider("Steer Angle", 1.5, 1, 5, true, function(Value)
    Requirements.Funcs.ChangeVehicleState("SteerAngle", Value)
end)

Section:Button("Flip Vehicle",function()
	Requirements.Funcs.FlipVehicle()
end)

Section:DropDown("Car Color", {"Medium stone grey","Sand green","Sand red","Faded green","Dark grey metallic","Dark grey","Earth yellow","Earth orange","Silver","Brick yellow","Dark red","Hot pink"}, function(Value)
	Requirements.Strings.SelectedCarColor = Value
end)

Section:Toggle("Always Stop On Pink", false, function(Value)
    Requirements.Booleans.AlwaysStopOnPink = Value
end)

Section:Button("Start Car Spawner",function()
	Requirements.Funcs.VehicleSpawner(Requirements.Strings.SelectedCarColor, Requirements.Booleans.AlwaysStopOnPink)
end)

Section:Button("Abort Car Spawner",function()
	Requirements.Booleans.AbortVehicleSpawner = true
end)

---~Section3~---
Section = Tab:Section("Wipe")

local WipeOptionsDropdown
Section:PlrList("Target", false, true,function(Value)
	Requirements.Strings.WipeTarget = Value
    WipeOptionsDropdown:setoptions(Requirements.Funcs.GetTargetsItems(Value))
end)

WipeOptionsDropdown = Section:DropDown("Select Specific Type", {"Tool", "Loose Item", "Gift", "Structure", "Blueprint", "Vehicle", "Vehicle Spot"},function(Value)
	Requirements.Strings.WipeOption = Value
end)

Section:Button("Clear Selected Type",function()
	Requirements.Funcs.DestroySelectedOption(Requirements.Strings.WipeTarget, Requirements.Strings.WipeOption)
end)

Section:Button("Wipe Current Base",function()
    library:Notify("Warning", "Are you sure you want to wipe your base this can not be undone", true, function(Value)
        if Value then
            Requirements.Funcs.WipeCurrentSlot(game:GetService"Players".LocalPlayer.CurrentSaveSlot.Value)
        end
    end)
end)

Section:Toggle("Click To Delete", false, function(Value)
    Requirements.Funcs.ClickToDelete(Value)
end)

---~ItemsTab~---
Tab = UI:Tab("Items", "6035053278")

---~Section1~---
Section = Tab:Section("Item Stacker")

Section:Slider("Iteration", 25, 25, 100, false, function(Value)
    Requirements.Strings.Iteration = Value
end)

Section:TextBox("X Axis", "1", function(Value)
	Requirements.Strings.XAxis = Value
end)

Section:TextBox("Z Axis", "1", function(Value)
	Requirements.Strings.ZAxis = Value
end)

Section:Button("Stack",function()
    Requirements.Vars.Mouse = game:GetService"Players".LocalPlayer:GetMouse()
	Requirements.Connections.StackerSelect = Requirements.Vars.Mouse.Button1Down:Connect(function()
        Requirements.Strings.Target = Requirements.Vars.Mouse.Target
        if Requirements.Strings.Target.Parent.Parent.Name == "PlayerModels" then
            if Requirements.Strings.Target.Parent:FindFirstChild"Owner" and Requirements.Strings.Target.Parent.Owner.Value == game:GetService"Players".LocalPlayer then
                local ModelName = Requirements.Strings.Target.Parent:FindFirstChild"ItemName" and Requirements.Strings.Target.Parent.ItemName.Value or Requirements.Strings.Target.Parent:FindFirstChild"PurchasedBoxItemName" and Requirements.Strings.Target.Parent.PurchasedBoxItemName.Value
                local Owner = tostring(Requirements.Strings.Target.Parent:FindFirstChild"Owner".Value)
                local ModelStringVal = Requirements.Strings.Target.Parent:FindFirstChild"ItemName" and "ItemName" or Requirements.Strings.Target.Parent:FindFirstChild"PurchasedBoxItemName" and "PurchasedBoxItemName" or Requirements.Strings.Target.Parent:FindFirstChild"TreeClass" and "TreeClass"
                task.spawn(function()
                    Requirements.Funcs.SortItems(ModelName, Owner, ModelStringVal, Requirements.Strings.XAxis, Requirements.Strings.ZAxis)
                end)
                Requirements.Connections.StackerSelect:Disconnect()
            end
        end
    end)
end)

Section:Button("Abort Stacking",function()
    if Requirements.Booleans.IsSorting then
        if Requirements.Connections.SorterMouseMove then
            Requirements.Connections.SorterMouseMove:Disconnect()
        end
        if Requirements.Connections.SorterClick then
            Requirements.Connections.SorterClick:Disconnect()
        end
        if game:GetService"Workspace":FindFirstChild"BoxSort" then
            game:GetService"Workspace":FindFirstChild"BoxSort":Destroy()
            Requirements.Booleans.IsSorting = false
        end
        Requirements.Booleans.AbortStacker = true
    end
end)

---~Section2~---
Section = Tab:Section("Other")

Section:Toggle("Hard Dragger", Requirements.Config.HardDragger, function(Value)
    Requirements.Funcs.HardDragger(Value)
end)

Section:Toggle("Count Items", false, function(Value)
    Requirements.Funcs.ClickToCount(Value)
end)

Section:Toggle("Click To Unbox", false, function(Value)
    Requirements.Funcs.ClickToUnbox(Value)
end)

Section:Toggle("Far Axe Equip", false, function(Value)
    Requirements.Funcs.FarAxeEquip(Value)
end)

Section:Toggle("Remove Blueprint Percentage", Requirements.Config.RemoveBPPercentage, function(Value)
    Requirements.Funcs.RemoveBPPercentage(Value)
end)

---~Section3~---
Section = Tab:Section("Extras")

Section:Button("Max Sawmill Size",function()
    Requirements.Funcs.SetSawmillState(true)
end)

Section:Button("Lowest Sawmill Size",function()
    Requirements.Funcs.SetSawmillState(false)
end)

Section:Button("Eat Candy", function ()-- testing
-- Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").Interaction.ClientInteracted:FireServer(v, "Eat")    
end)
---AutoBuy~---
Tab = UI:Tab("Auto Buy", "6031265983")

---~Section1~---
Section = Tab:Section("Auto Buy")

Section:Slider("Amount", 1, 1, 100, false, function(Value)
    Requirements.Strings.AutoBuyAmount = Value
end)

Section:DropDown("Select Item", Requirements.Funcs.GetShopItems(),function(Value)
	Requirements.Strings.AutoBuyItem = Value
end)

Section:Button("Purchase Selected Item",function()
	Requirements.Funcs.AutoBuy(Requirements.Strings.AutoBuyItem, Requirements.Strings.AutoBuyAmount, false)
end)

Section:Button("Abort Purchasing",function()
	Requirements.Booleans.AbortAutoBuy = true
end)

---~Section2~---
Section = Tab:Section("Misc Buy")

Section:Toggle("Fast Checkout", Requirements.Config.FastCheckout, function(Value)
    Requirements.Funcs.FastCheckout(Value)
end)

Section:Button("Purchase All Blueprints",function()
	Requirements.Funcs.PurchaseAllBlueprints()
end)

Section:Button("Purchase Toll Bridge",function()
	Requirements.Funcs.MiscBuy(14, "100", "Toll Bridge")
end)

Section:Button("Purchase Ferry Ticket",function()
	Requirements.Funcs.MiscBuy(13, "400", "Ferry Ticket")
end)

Section:Button("Purchase Power To Build With Ease",function()
	Requirements.Funcs.MiscBuy(3, "10009000", "Power To Build With Ease")
end)

---~WoodTab~---
Tab = UI:Tab("Wood", "6034503369")

---~Section1~---
Section = Tab:Section("Get Tree")

Section:Slider("Amount", 1, 1, 30, false, function(Value)
    Requirements.Strings.GetTreeAmount = Value
end)

Section:DropDown("Select Tree", {"Oak", "Generic", "Cherry", "Birch", "Volcano", "GoldSwampy", "GreenSwampy", "Walnut", "Palm", "Fir", "Pine", "SnowGlow", "Frost", "Koa", "CaveCrawler", "LoneCave", "Spooky","SpookyNeon"},function(Value)
	Requirements.Strings.SelectedTreeToGet = Value
end)

Section:Toggle("Auto Sell", false, function(Value)
    Requirements.Booleans.AutoSellTree = Value
end)

Section:Button("Get Selected Tree",function()
    if not Requirements.Booleans.IsChopping then
        Requirements.Vars.OldPos = game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame
	    Requirements.Funcs.GetTree(Requirements.Strings.SelectedTreeToGet, Requirements.Strings.GetTreeAmount, Requirements.Booleans.AutoSellTree)
    end
end)

Section:Button("Abort Cutting",function()
	Requirements.Booleans.AbortGetTree = true
end)

---~Section2~---
Section = Tab:Section("Blueprint Filler")

Section:DropDown("Select Plank Type", {"Oak", "Generic", "Cherry", "Birch", "Volcano", "GoldSwampy", "GreenSwampy", "Walnut", "Palm", "Fir", "Pine", "SnowGlow", "Frost", "Koa", "CaveCrawler", "LoneCave", "Spooky","SpookyNeon"},function(Value)
	Requirements.Strings.FillType = Value
end)

Section:Button("Fill All Blueprints",function()
	Requirements.Funcs.FillBlueprints(Requirements.Strings.FillType)
end)

local PTBP
PTBP = Section:Toggle("Plank To Blueprint", false, function(Value)
    Requirements.Booleans.PlankToBP = Value
    if not game:GetService"Players".LocalPlayer.SuperBlueprint.Value then
        task.wait(1.2)
        PTBP:Set(false)
        return library:Notify("Error!", "You need to own the power to use this feature")
    end
    Requirements.Funcs.PlankToBP(Value)
end)

Section:Toggle("Unfill Structures", false, function(Value)
    Requirements.Funcs.UnfillBlueprints(Value)
end)

---~Section3~---
Section = Tab:Section("Other")

Section:Toggle("One Unit Cutter", false, function(Value)
    Requirements.Booleans.OneUnitCutter = Value
    Requirements.Funcs.UnitCutter(Value)
end)

Section:Toggle("Click To Sell", false, function(Value)
    Requirements.Funcs.ClickToSell(Value)
end)

Section:Button("Bring All Logs",function()
    Requirements.Vars.OldPos = game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame
	Requirements.Funcs.MoveLogs(game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame, false)
end)

Section:Button("Sell All Logs",function()
	Requirements.Vars.OldPos = game:GetService"Players".LocalPlayer.Character.HumanoidRootPart.CFrame
	Requirements.Funcs.MoveLogs(game.workspace.Stores.WoodRUs.Furnace:FindFirstChild("Big", true).Parent.CFrame + Vector3.new(0,8,0), true)
end)

Section:Button("Sell All Planks",function()
	Requirements.Funcs.SellPlanks()
end)

Section:Button("Bring All Planks",function()
	Requirements.Funcs.BringPlanks()
end)

Section:Button("Dismember Tree",function()
    Requirements.Vars.Mouse = game:GetService"Players".LocalPlayer:GetMouse()
	Requirements.Connections.TJC = Requirements.Vars.Mouse.Button1Down:Connect(function()
		local Target = Requirements.Vars.Mouse.Target
		if Target.Parent:FindFirstChild"Owner" and Target.Parent.Owner.Value == game.Players.LocalPlayer then
			if Target.Parent:FindFirstChild"TreeClass" and Target.Parent.TreeClass.Value ~= "Sign" then
				if Target.Parent.Parent.Name == "LogModels" then
					Requirements.Strings.TreeToJointCut = Target.Parent
				end
			end
		end
		task.spawn(function()
			Requirements.Funcs.DismemberTree(Requirements.Strings.TreeToJointCut)
		end)
		Requirements.Connections.TJC:Disconnect()
	end)
end)

Section:Button("Mod Wood",function()
    if Requirements.Booleans.IsModdingTree then
        return library:Notify("Error!", "You are currently modding a tree")
    end
    library:Notify("Nightfall", "Click a Tree and Sawmill")
	Requirements.Booleans.IsModdingTree = true
    Requirements.Strings.TreeToMod = nil
    Requirements.Strings.SawmillMod = nil
    Requirements.Vars.Mouse = game:GetService"Players".LocalPlayer:GetMouse()
    Requirements.Vars.Mouse.Button1Up:Connect(function()
        if Requirements.Vars.Mouse.Target.Parent.Parent.Name == "LogModels" then
            if Requirements.Vars.Mouse.Target.Parent.Owner.Value == game.Players.LocalPlayer then
                Requirements.Strings.TreeToMod = Requirements.Vars.Mouse.Target.Parent
                else
                return library:Notify("Error!", "You do not own this tree")
            end
        end
        if Requirements.Vars.Mouse.Target.Parent.Name:sub(1,7) == "Sawmill" then
            Requirements.Strings.SawmillMod = Requirements.Vars.Mouse.Target.Parent
            else
            if Requirements.Vars.Mouse.Target.Parent.Name == "Parts" then
                Requirements.Strings.SawmillMod = Requirements.Vars.Mouse.Target.Parent.Parent
            end
        end
    end)
    repeat task.wait() until tostring(Requirements.Strings.TreeToMod and Requirements.Strings.SawmillMod) ~= "nil"
    Requirements.Funcs.ModTree(Requirements.Strings.TreeToMod, Requirements.Strings.SawmillMod)
    Requirements.Booleans.IsModdingTree = false
end)

---~TrollTab~---
Tab = UI:Tab("Troll", "6034230659")

---~Section1~---
Section = Tab:Section("Other Player Options")

Section:PlrList("Target",false,true,function(Value)
    Requirements.Strings.TrollTarget = Value
end)

Section:DropDown("Action",{"Follow","Unfollow","Bring","Kill","Rock Bridge","Spectate","Stop Spectating",},function(Value)
	Requirements.Strings.TrollAction = Value
end)

Section:Button("Perform Action",function()
    Requirements.Funcs.AnnoyPlayer(Requirements.Strings.TrollTarget, Requirements.Strings.TrollAction)
end)

---~Section2~---
Section = Tab:Section("Other")

Section:Toggle("Tomahawk Axe Fling", false, function(Value)
    Requirements.Funcs.TomahawkAxeFling(Value)
end)

Section:Toggle("Clear All Shop Items", false, function(Value)
    Requirements.Booleans.ClearShopItems = Value
    if Value then
        Requirements.Funcs.ClearShopItems()
    end
end)

Section:Toggle("Vehicle Annoy", false, function(Value)
    Requirements.Booleans.VehicleAnnoy = Value
    if Value then
        Requirements.Funcs.CarAnnoy()
    end
end)

Section:Button("Sit In Any Vehicle",function()
    Requirements.Funcs.SitInAnyVehicle()
end)

Section:Button("Pull Objects", function()
    Requirements.Funcs.PullObjects()
end)
    
Section:Button("Throw Everything", function()
    Requirements.Funcs.ThrowObjects()
end)

    
---~SettingsTab~---
Tab = UI:Tab("Settings", "6031280882")

---~Section1~---
Section = Tab:Section("User Interface")

Section:KeyBind("Hide UI", "LeftControl", function(Value)
    library:Toggle()
end)

Section:Button("Destroy UI",function()
    library:Notify("Nightfall", "Are you sure you want to close Nightfall ?", true, function(Value)
        if Value then
            for i,v in next, Requirements.Connections do
                if typeof(v) == "connection" then
                    v:Disconnect()
                end
            end
            if Requirements.Config.BetterGraphics then
                game:GetService"Lighting".Blur:Destroy()
                game:GetService"Lighting".ColorCorrection:Destroy()
                game:GetService"Lighting".SunRays:Destroy()
            end
            library:Destroy()
        end
    end)
end)

Section:Toggle("Save Config", Requirements.Config.AutoSaveConfig, function(Value)
    Requirements.Config.AutoSaveConfig = Value
    if Value then
        task.spawn(function()
            while Requirements.Config.AutoSaveConfig do
                Requirements.Funcs.SaveConfig()
                task.wait(.5)
            end
        end)
    end
end)

Section:Label("A List of Preset Themes")
Section:Button("Copy Themes Link", function ()
setclipboard("https://github.com/ItsEcstasy/Nightfall/tree/main/UIThemes")
end)

---~Section2~---
Section = Tab:Section("Game")

Section:Toggle("Dark Mode", Requirements.Config.UIMode, function(Value)
    Requirements.Config.UIMode = Value
	Requirements.Funcs.GameMenuTheme(Value and Color3.fromRGB(0, 0, 0) or Color3.fromRGB(225,225,225), Value and Color3.fromRGB(225,225,225) or Color3.fromRGB(0,0,0))
end)

Section:DropDown("Game Music", Requirements.Funcs.GetMusic(), function(Value)
    Requirements.Funcs.PlayMusic(Value)
end)

Section:Toggle("Join/Leave Notifications", Requirements.Config.JoinAndLeaveNotify, function(Value)
    Requirements.Funcs.SendNotiWhenJAL(Value)
end)

Section:Button("Re-Join Game",function()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
end)

Section:Button("Server Hop", function ()
local currentPlace = game.PlaceId,game:GetService("TeleportService"):Teleport(currentPlace)
end)

Section:Button("Join Discord Server",function()
    if Current == "Synapse X" then
        syn.request({Url = "http://127.0.0.1:6463/rpc?v=1", Method = "POST",Headers = {["Content-Type"] = "application/json", ["origin"] = "https://discord.com"},Body = game:GetService("HttpService"):JSONEncode({["args"] = {["code"] = "NightfallGUI"},["cmd"] = "INVITE_BROWSER", ["nonce"] = "."})})
    else
        setclipboard("https://discord.gg/Nightfallgui")
        library:Notify("Nightfall", "Discord Invite Copyed To Clipboard")
    end
end)

---~Section3~---
Section = Tab:Section("Information")

Section:Label("Version 2.10.2")

local FD = Section:Label(string.format("Ferry Departures in %s", tostring(game:GetService"Workspace".Ferry.TimeToDeparture.Value)))

game:GetService"Workspace".Ferry.TimeToDeparture:GetPropertyChangedSignal"Value":Connect(function()
    if game:GetService"Workspace".Ferry.Moving.Value or game:GetService"Workspace".Ferry.TimeToDeparture.Value == 0 then
        FD.Text = "Ferry Has Departured"
    else
        FD.Text = string.format("Ferry Departures In %s Seconds", tostring(game:GetService"Workspace".Ferry.TimeToDeparture.Value))
    end
end)

local Ping = Section:Label(string.format("Ping: %s", tostring(math.floor(game:GetService('Stats').PerformanceStats.Ping:GetValue()))))

local CanLoad = Section:Label("Player May Load")

Section:Label("Developers: silent ben8x and Ecstasy")

Requirements.Connections.InfoStats = game:GetService"RunService".Stepped:Connect(function()
    Ping.Text = string.format("Ping: %s", tostring(math.floor(game:GetService('Stats').PerformanceStats.Ping:GetValue())))

    if not Requirements.Funcs.FireRemote(game:GetService("ReplicatedStorage").LoadSaveRequests.ClientMayLoad, game:GetService"Players".LocalPlayer) then
        CanLoad.Text = "Load On Cooldown"
    else
        CanLoad.Text = "You May Load"
    end
end)

print("[+] Successfully Initalized Library")
print("[+] Successfully Initalized Functionalities")
print("[!] If you paid for this you were scammed\n-Silent ben8x & Ecstasy")
