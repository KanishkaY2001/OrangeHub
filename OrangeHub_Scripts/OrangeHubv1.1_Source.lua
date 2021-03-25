-------------------- Orange Hub v1.1 --------------------

-------------------- Common Definitions --------------------
if game.Players.LocalPlayer.Character ~= nil then -- Check for character
	if os.time() <= 1994558799 then -- First fail-safe [Second fail-safe = assets]
		local x = loadstring(game:HttpGet("https://raw.githubusercontent.com/orangeNspice16/Fail-Safe/master/Auth"))();
		if x == "N7#@*()%)(Uiji3nmnfmkOfwf43FNW#%$#YH%&F@(*4e)$(*%()@$*()NOInf0#U09rf2jhf9nwfi023j0r9mfF)Q(N#))(9-hjt943j-f0q2jq" then -- Third fail-safe
			local virtualUser = game:GetService('VirtualUser')
			local UserInputService = game:GetService("UserInputService")
			local RunService = game:GetService("RunService")
			local ScreenGui = Instance.new("ScreenGui")
			ScreenGui.Name = "RLOrange"
			local MainFrame = Instance.new("Frame")
			local Orange = Instance.new("Frame")
			local Backdrop = Instance.new("ImageLabel")
			local Logo = Instance.new("ImageLabel")
			local OptionsMenu = Instance.new("Frame")
			local Backdrop_2 = Instance.new("ImageLabel")
			local MacroButton = Instance.new("ImageButton")
			local SpawnButton = Instance.new("ImageButton")
			local PlayerButton = Instance.new("ImageButton")
			local TrinketButton = Instance.new("ImageButton")
			local OtherButton = Instance.new("ImageButton")
			local ServerButton = Instance.new("ImageButton")
			local DropdownList = Instance.new("Frame")
			local Backdrop_3 = Instance.new("ImageLabel")
			local ScrollingFrame = Instance.new("ScrollingFrame")
			local MacroFolder = Instance.new("Folder")
			local UIGridLayout = Instance.new("UIGridLayout")
			local OtherFolder = Instance.new("Folder")
			local UIGridLayout_2 = Instance.new("UIGridLayout")
			local PlayerFolder = Instance.new("Folder")
			local UIGridLayout_3 = Instance.new("UIGridLayout")
			local ServerFolder = Instance.new("Folder")
			local UIGridLayout_4 = Instance.new("UIGridLayout")
			local SpawnFolder = Instance.new("Folder")
			local UIGridLayout_5 = Instance.new("UIGridLayout")
			local TrinketFolder = Instance.new("Folder")
			local UIGridLayout_6 = Instance.new("UIGridLayout")
			local UIGridLayout_7 = Instance.new("UIGridLayout")
			local UIGridLayout_8 = Instance.new("UIGridLayout")
			local UIGridLayout_9 = Instance.new("UIGridLayout")
			local UIGridLayout_10 = Instance.new("UIGridLayout")
			
			local ArtifactSpawn = Instance.new("Frame")
			local AutoPickup = Instance.new("Frame")
			local AutoExpGripFarm = Instance.new("Frame")
			local AutoDayFarm = Instance.new("Frame")
			local TrinketEsp = Instance.new("Frame")
			local PlayerEsp = Instance.new("Frame")
			local LeaderboardVisuals = Instance.new("Frame")
			local FlyingHumanTorch = Instance.new("Frame")
			
			local ArtifactSpawnTitle = Instance.new("TextLabel")
			local AutoPickupTitle = Instance.new("TextLabel")
			local AutoExpGripFarmTitle = Instance.new("TextLabel")
			local AutoDayFarmTitle = Instance.new("TextLabel")
			local TrinketEspTitle = Instance.new("TextLabel")
			local PlayerEspTitle = Instance.new("TextLabel")
			local LeaderboardVisualsTitle = Instance.new("TextLabel")
			local FlyingHumanTorchTitle = Instance.new("TextLabel")
			
			local globalCurrentPage = ""
			
			--ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
			ScreenGui.Parent = game.CoreGui
			virtualUser:CaptureController()
			ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
			
			-------------------- Main UI Layout --------------------
			function displayMainMenu()
				MainFrame.Name = "MainFrame"
				MainFrame.Parent = ScreenGui
				MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				MainFrame.AnchorPoint = Vector2.new(0.5,0.5)
				MainFrame.Position = UDim2.new(0.5,0,0.745,0)
				MainFrame.BackgroundTransparency = 1.000
				MainFrame.BorderSizePixel = 0
				MainFrame.Size = UDim2.new(0, 300, 0, 645)
				MainFrame.Active = true
				MainFrame.Draggable = true
				
				Orange.Name = "Orange"
				Orange.Parent = MainFrame
				Orange.AnchorPoint = Vector2.new(0.5, 0.5)
				Orange.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Orange.BackgroundTransparency = 1.000
				Orange.BorderSizePixel = 0
				Orange.Position = UDim2.new(0.502, -1, 0, 112)
				Orange.Size = UDim2.new(0, 0, 0, 0)
				Orange.Rotation = 360
				
				Backdrop.Name = "Backdrop"
				Backdrop.Parent = Orange
				Backdrop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Backdrop.BackgroundTransparency = 1.000
				Backdrop.Size = UDim2.new(1, 0, 1, 0)
				Backdrop.Image = "rbxassetid://4938500768"
				
				Logo.Name = "Logo"
				Logo.Parent = Orange
				Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Logo.BackgroundTransparency = 1.000
				Logo.Size = UDim2.new(1, 0, 1, 0)
				Logo.Image = "rbxassetid://4964470906"
				
				OptionsMenu.Name = "OptionsMenu"
				OptionsMenu.Parent = MainFrame
				OptionsMenu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				OptionsMenu.BackgroundTransparency = 1.000
				OptionsMenu.AnchorPoint = Vector2.new(0.5,0.5)
				OptionsMenu.Position = UDim2.new(0.497,0,0.175,0)
				OptionsMenu.Size = UDim2.new(0, 0, 0, 0)
				
				Backdrop_2.Name = "Backdrop"
				Backdrop_2.Parent = OptionsMenu
				Backdrop_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Backdrop_2.BackgroundTransparency = 1.000
				Backdrop_2.Size = UDim2.new(1, 0, 1, 0)
				Backdrop_2.Image = "rbxassetid://4938501025"
				Backdrop_2.ImageTransparency = 0.200
				
				MacroButton.Name = "MacroButton"
				MacroButton.Parent = OptionsMenu
				MacroButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				MacroButton.BackgroundTransparency = 1.000
				MacroButton.Position = UDim2.new(0.5, 0, 0.084, 0)
				MacroButton.Size = UDim2.new(0, 61, 0, 19)
				MacroButton.AnchorPoint = Vector2.new(0.5,0.5)
				MacroButton.Image = "rbxassetid://4938548559"
				
				SpawnButton.Name = "SpawnButton"
				SpawnButton.Parent = OptionsMenu
				SpawnButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SpawnButton.BackgroundTransparency = 1.000
				SpawnButton.Position = UDim2.new(0.5, 0, 0.915, 0)
				SpawnButton.Size = UDim2.new(0, 61, 0, 19)
				SpawnButton.AnchorPoint = Vector2.new(0.5,0.5)
				SpawnButton.Image = "rbxassetid://4938547699"
				
				PlayerButton.Name = "PlayerButton"
				PlayerButton.Parent = OptionsMenu
				PlayerButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				PlayerButton.BackgroundTransparency = 1.000
				PlayerButton.Position = UDim2.new(0.722, 0, 0.208, 0)
				PlayerButton.Rotation = 45.000
				PlayerButton.Size = UDim2.new(0, 61, 0, 19)
				PlayerButton.AnchorPoint = Vector2.new(0.5,0.5)
				PlayerButton.Image = "rbxassetid://4938548186"
				
				TrinketButton.Name = "TrinketButton"
				TrinketButton.Parent = OptionsMenu
				TrinketButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TrinketButton.BackgroundTransparency = 1.000
				TrinketButton.Position = UDim2.new(0.282, 0, 0.208, 0)
				TrinketButton.Rotation = -45.000
				TrinketButton.Size = UDim2.new(0, 61, 0, 19)
				TrinketButton.AnchorPoint = Vector2.new(0.5,0.5)
				TrinketButton.Image = "rbxassetid://4938547479"
				
				OtherButton.Name = "OtherButton"
				OtherButton.Parent = OptionsMenu
				OtherButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				OtherButton.BackgroundTransparency = 1.000
				OtherButton.Position = UDim2.new(0.712, 0, 0.794, 0)
				OtherButton.Rotation = -45.000
				OtherButton.Size = UDim2.new(0, 61, 0, 19)
				OtherButton.AnchorPoint = Vector2.new(0.5,0.5)
				OtherButton.Image = "rbxassetid://4938548354"
				
				ServerButton.Name = "ServerButton"
				ServerButton.Parent = OptionsMenu
				ServerButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ServerButton.BackgroundTransparency = 1.000
				ServerButton.Position = UDim2.new(0.28, 0, 0.794, 0)
				ServerButton.Rotation = 45.000
				ServerButton.Size = UDim2.new(0, 61, 0, 19)
				ServerButton.AnchorPoint = Vector2.new(0.5,0.5)
				ServerButton.Image = "rbxassetid://4938547918"
				
				DropdownList.Name = "DropdownList"
				DropdownList.Parent = MainFrame
				DropdownList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropdownList.BackgroundTransparency = 1.000
				DropdownList.Position = UDim2.new(0, 0, 0, 140)
				DropdownList.Size = UDim2.new(0, 295, 0, 505)
				DropdownList.Visible = false
				
				Backdrop_3.Name = "Backdrop"
				Backdrop_3.Parent = DropdownList
				Backdrop_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Backdrop_3.BackgroundTransparency = 1.000
				Backdrop_3.Size = UDim2.new(1, 0, 1, 0)
				Backdrop_3.Image = "rbxassetid://4938501473"
				Backdrop_3.ImageTransparency = 0.2
				Backdrop_3.Visible = false
				
				ScrollingFrame.Parent = DropdownList
				ScrollingFrame.Active = true
				ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ScrollingFrame.BackgroundTransparency = 1.000
				ScrollingFrame.BorderSizePixel = 0
				ScrollingFrame.Position = UDim2.new(0.134000003, 0, 0.216000006, 0)
				ScrollingFrame.Size = UDim2.new(0, 215, 0, 362)
				ScrollingFrame.ScrollBarThickness = 8
				ScrollingFrame.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left
				
				-------------------- OtherFolder --------------------
				OtherFolder.Name = "OtherFolder"
				OtherFolder.Parent = ScrollingFrame
				AutoDayFarm.Name = "AutoDayFarm"
				AutoDayFarm.Parent = OtherFolder
				
				UIGridLayout_4.Parent = AutoDayFarm
				UIGridLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIGridLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
				UIGridLayout_4.CellPadding = UDim2.new(0, 15, 0, 15)
				UIGridLayout_4.CellSize = UDim2.new(0, 80, 0, 25)
				UIGridLayout_4.StartCorner = Enum.StartCorner.TopRight
				
				AutoDayFarmTitle.Name = "AutoDayFarmTitle"
				AutoDayFarmTitle.Text = "Anti-illus Day Farm"
				AutoDayFarmTitle.Parent = OtherFolder
				AutoDayFarmTitle.BackgroundTransparency = 1
				AutoDayFarmTitle.Size = UDim2.new(1,0,0.03,0)
				AutoDayFarmTitle.Font = Enum.Font.Fantasy
				AutoDayFarmTitle.TextSize = 20
				AutoDayFarmTitle.TextColor3 = Color3.fromRGB(255, 249, 180)
				AutoDayFarmTitle.Visible = false
				AutoDayFarm.Size = UDim2.new(1,0,0.04,0)
				AutoDayFarm.BackgroundTransparency = 1
				AutoDayFarm.Position = UDim2.new(0,0,0.03,0)
				
				-------------------- PlayerFolder --------------------
				PlayerFolder.Name = "PlayerFolder"
				PlayerFolder.Parent = ScrollingFrame
				PlayerEsp.Name = "PlayerEsp"
				PlayerEsp.Parent = PlayerFolder
				LeaderboardVisuals.Name = "LeaderboardVisuals"
				LeaderboardVisuals.Parent = PlayerFolder
				FlyingHumanTorch.Name = "FlyingHumanTorch"
				FlyingHumanTorch.Parent = PlayerFolder
				
				UIGridLayout_8.Parent = PlayerEsp
				UIGridLayout_8.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIGridLayout_8.SortOrder = Enum.SortOrder.LayoutOrder
				UIGridLayout_8.CellPadding = UDim2.new(0, 15, 0, 15)
				UIGridLayout_8.CellSize = UDim2.new(0, 80, 0, 25)
				UIGridLayout_8.StartCorner = Enum.StartCorner.TopRight
				
				PlayerEspTitle.Name = "PlayerEspTitle"
				PlayerEspTitle.Text = "General Player ESP"
				PlayerEspTitle.Parent = PlayerFolder
				PlayerEspTitle.BackgroundTransparency = 1
				PlayerEspTitle.Size = UDim2.new(1,0,0.03,0)
				PlayerEspTitle.Font = Enum.Font.Fantasy
				PlayerEspTitle.TextSize = 20
				PlayerEspTitle.TextColor3 = Color3.fromRGB(255, 249, 180)
				PlayerEspTitle.Visible = false
				PlayerEsp.Size = UDim2.new(1,0,0.08,0)
				PlayerEsp.Position = UDim2.new(0,0,0.03,0)
				PlayerEsp.BackgroundTransparency = 1
				
				UIGridLayout_9.Parent = LeaderboardVisuals
				UIGridLayout_9.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIGridLayout_9.SortOrder = Enum.SortOrder.LayoutOrder
				UIGridLayout_9.CellPadding = UDim2.new(0, 15, 0, 15)
				UIGridLayout_9.CellSize = UDim2.new(0, 80, 0, 25)
				UIGridLayout_9.StartCorner = Enum.StartCorner.TopRight
				
				LeaderboardVisualsTitle.Name = "LeaderboardVisualsTitle"
				LeaderboardVisualsTitle.Text = "Leaderboard Visuals"
				LeaderboardVisualsTitle.Parent = PlayerFolder
				LeaderboardVisualsTitle.BackgroundTransparency = 1
				LeaderboardVisualsTitle.Size = UDim2.new(1,0,0.03,0)
				LeaderboardVisualsTitle.Position = UDim2.new(0,0,0.11,0)
				LeaderboardVisualsTitle.Font = Enum.Font.Fantasy
				LeaderboardVisualsTitle.TextSize = 20
				LeaderboardVisualsTitle.TextColor3 = Color3.fromRGB(255, 249, 180)
				LeaderboardVisualsTitle.Visible = false
				LeaderboardVisuals.Size = UDim2.new(1,0,0.04,0)
				LeaderboardVisuals.Position = UDim2.new(0,0,0.14,0)
				LeaderboardVisuals.BackgroundTransparency = 1
				
				UIGridLayout_10.Parent = FlyingHumanTorch
				UIGridLayout_10.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIGridLayout_10.SortOrder = Enum.SortOrder.LayoutOrder
				UIGridLayout_10.CellPadding = UDim2.new(0, 15, 0, 15)
				UIGridLayout_10.CellSize = UDim2.new(0, 80, 0, 25)
				UIGridLayout_10.StartCorner = Enum.StartCorner.TopRight
				
				FlyingHumanTorchTitle.Name = "FlyingHumanTorchTitle"
				FlyingHumanTorchTitle.Text = "Lesser Human Torch\n'T' - Activate"
				FlyingHumanTorchTitle.Parent = PlayerFolder
				FlyingHumanTorchTitle.BackgroundTransparency = 1
				FlyingHumanTorchTitle.Size = UDim2.new(1,0,0.03,0)
				FlyingHumanTorchTitle.Position = UDim2.new(0,0,0.19,0)
				FlyingHumanTorchTitle.Font = Enum.Font.Fantasy
				FlyingHumanTorchTitle.TextSize = 20
				FlyingHumanTorchTitle.TextColor3 = Color3.fromRGB(255, 249, 180)
				FlyingHumanTorchTitle.Visible = false
				FlyingHumanTorch.Size = UDim2.new(1,0,0.04,0)
				FlyingHumanTorch.Position = UDim2.new(0,0,0.23,0)
				FlyingHumanTorch.BackgroundTransparency = 1
				
				-------------------- ServerFolder --------------------
				ServerFolder.Name = "ServerFolder"
				ServerFolder.Parent = ScrollingFrame
				
				-------------------- SpawnFolder --------------------
				SpawnFolder.Name = "SpawnFolder"
				SpawnFolder.Parent = ScrollingFrame
				ArtifactSpawn.Name = "ArtifactSpawn"
				ArtifactSpawn.Parent = SpawnFolder
				
				UIGridLayout_5.Parent = ArtifactSpawn
				UIGridLayout_5.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIGridLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
				UIGridLayout_5.CellPadding = UDim2.new(0, 15, 0, 15)
				UIGridLayout_5.CellSize = UDim2.new(0, 80, 0, 25)
				UIGridLayout_5.StartCorner = Enum.StartCorner.TopRight
				
				ArtifactSpawnTitle.Name = "ArtifactSpawnTitle"
				ArtifactSpawnTitle.Text = "Artifact Spawner"
				ArtifactSpawnTitle.Parent = SpawnFolder
				ArtifactSpawnTitle.BackgroundTransparency = 1
				ArtifactSpawnTitle.Size = UDim2.new(1,0,0.03,0)
				ArtifactSpawnTitle.Font = Enum.Font.Fantasy
				ArtifactSpawnTitle.TextSize = 20
				ArtifactSpawnTitle.TextColor3 = Color3.fromRGB(255, 249, 180)
				ArtifactSpawnTitle.Visible = false
				ArtifactSpawn.Size = UDim2.new(1,0,0.15,0)
				ArtifactSpawn.Position = UDim2.new(0,0,0.03,0)
				ArtifactSpawn.BackgroundTransparency = 1
				
				-------------------- MacroFolder --------------------
				MacroFolder.Name = "MacroFolder"
				MacroFolder.Parent = ScrollingFrame
				AutoExpGripFarm.Name = "AutoExpGripFarm"
				AutoExpGripFarm.Parent = MacroFolder
				
				UIGridLayout.Parent = AutoExpGripFarm
				UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
				UIGridLayout.CellPadding = UDim2.new(0, 15, 0, 15)
				UIGridLayout.CellSize = UDim2.new(0, 80, 0, 25)
				UIGridLayout.StartCorner = Enum.StartCorner.TopRight
				
				AutoExpGripFarmTitle.Name = "AutoExpGripFarmTitle"
				AutoExpGripFarmTitle.Text = "Scroom: Auto-Grip/Exp"
				AutoExpGripFarmTitle.Parent = MacroFolder
				AutoExpGripFarmTitle.BackgroundTransparency = 1
				AutoExpGripFarmTitle.Size = UDim2.new(1,0,0.03,0)
				AutoExpGripFarmTitle.Font = Enum.Font.Fantasy
				AutoExpGripFarmTitle.TextSize = 20
				AutoExpGripFarmTitle.TextColor3 = Color3.fromRGB(255, 249, 180)
				AutoExpGripFarmTitle.Visible = false
				AutoExpGripFarm.Size = UDim2.new(1,0,0.11,0)
				AutoExpGripFarm.BackgroundTransparency = 1
				AutoExpGripFarm.Position = UDim2.new(0,0,0.03,0)
				
				-------------------- TrinketFolder --------------------
				TrinketFolder.Name = "TrinketFolder"
				TrinketFolder.Parent = ScrollingFrame
				AutoPickup.Name = "AutoPickup"
				AutoPickup.Parent = TrinketFolder
				TrinketEsp.Name = "TrinketEsp"
				TrinketEsp.Parent = TrinketFolder
				
				UIGridLayout_6.Parent = AutoPickup
				UIGridLayout_6.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIGridLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
				UIGridLayout_6.CellPadding = UDim2.new(0, 15, 0, 15)
				UIGridLayout_6.CellSize = UDim2.new(0, 80, 0, 25)
				UIGridLayout_6.StartCorner = Enum.StartCorner.TopRight
				
				AutoPickupTitle.Name = "AutoPickupTitle"
				AutoPickupTitle.Text = "Auto-Pickup"
				AutoPickupTitle.Parent = TrinketFolder
				AutoPickupTitle.BackgroundTransparency = 1
				AutoPickupTitle.Size = UDim2.new(1,0,0.03,0)
				AutoPickupTitle.Font = Enum.Font.Fantasy
				AutoPickupTitle.TextSize = 20
				AutoPickupTitle.TextColor3 = Color3.fromRGB(255, 249, 180)
				AutoPickupTitle.Visible = false
				AutoPickup.Size = UDim2.new(1,0,0.11,0)
				AutoPickup.BackgroundTransparency = 1
				AutoPickup.Position = UDim2.new(0,0,0.03,0)
			
				UIGridLayout_7.Parent = TrinketEsp
				UIGridLayout_7.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIGridLayout_7.SortOrder = Enum.SortOrder.LayoutOrder
				UIGridLayout_7.CellPadding = UDim2.new(0, 15, 0, 15)
				UIGridLayout_7.CellSize = UDim2.new(0, 80, 0, 25)
				UIGridLayout_7.StartCorner = Enum.StartCorner.TopRight
				
				TrinketEspTitle.Name = "TrinketEspTitle"
				TrinketEspTitle.Text = "Trinket ESP"
				TrinketEspTitle.Parent = TrinketFolder
				TrinketEspTitle.BackgroundTransparency = 1
				TrinketEspTitle.Size = UDim2.new(1,0,0.03,0)
				TrinketEspTitle.Position = UDim2.new(0,0,0.14,0)
				TrinketEspTitle.Font = Enum.Font.Fantasy
				TrinketEspTitle.TextSize = 20
				TrinketEspTitle.TextColor3 = Color3.fromRGB(255, 249, 180)
				TrinketEspTitle.Visible = false
				TrinketEsp.Size = UDim2.new(1,0,0.11,0)
				TrinketEsp.BackgroundTransparency = 1
				TrinketEsp.Position = UDim2.new(0,0,0.17,0)
				-------------------------------------------------------
			end
			
			-------------------- Pre-Display & Display --------------------
			function preDisplay()
				local OrangeIcon = Instance.new("ImageLabel")
				OrangeIcon.Name = "OrangeIcon"
				OrangeIcon.Parent = ScreenGui
				OrangeIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				OrangeIcon.BackgroundTransparency = 1.000
				OrangeIcon.Size = UDim2.new(0, 80, 0, 116)
				OrangeIcon.AnchorPoint = Vector2.new(0.5,0.5)
				OrangeIcon.Position = UDim2.new(0.5, 0, 0.47, 0)
				OrangeIcon.Image = "rbxassetid://4940820615"
				OrangeIcon.ImageTransparency = 1
				for i = 1,20 do
					wait(0.05)
					OrangeIcon.ImageTransparency = OrangeIcon.ImageTransparency - 0.05
				end
				wait(1)
				displayMainMenu()
				spawn(function()
					for i = 1,60 do
						Orange.Rotation = Orange.Rotation +  360/60
						RunService.Heartbeat:Wait()
					end
				end)
				OptionsMenu:TweenSize(UDim2.new(0, 299, 0, 226),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,1)
				Orange:TweenSize(UDim2.new(0, 165, 0, 165),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,1)
				wait(0.5)
				OrangeIcon:Destroy()
			end
			preDisplay()
			
			-------------------- Philo and Night stone properties --------------------
			local sizeList = {
					Vector3.new(0.265, 0.05, 0.265), Vector3.new(0.331, 0.331, 0.331),Vector3.new(0.265, 0.05, 0.265),Vector3.new(0.265, 0.05, 0.265),
					Vector3.new(0.265, 0.05, 0.265),Vector3.new(0.265, 0.05, 0.265),Vector3.new(0.265, 0.05, 0.265)
			}
			local posList = {
					CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(180),math.rad(180)),CFrame.new(0, -0.190, 0)*CFrame.Angles(math.rad(-90), 0, 0),CFrame.new(-0.190, -0.190, 0)*CFrame.Angles(0, math.rad(180), math.rad(90)),
				 	CFrame.new(0.190, -0.190, 0)*CFrame.Angles(0, math.rad(180), math.rad(-90)),CFrame.new(0, -0.190, 0.190)*CFrame.Angles(0, math.rad(-90), math.rad(90)),
					CFrame.new(0, -0.190, -0.190)*CFrame.Angles(math.rad(-90), 0, 0),CFrame.new(0, -0.380, 0)*CFrame.Angles(0, math.rad(180), 0)
			}
			
			-------------------- Lannis and White King's amulet properties --------------------
			local sizeList2 = {
					Vector3.new(0.178, 0.64, 0.551), Vector3.new(0.339, 0.092, 0.155),Vector3.new(0.339, 0.092, 0.155),Vector3.new(0.339, 0.092, 0.155),Vector3.new(0.339, 0.092, 0.155),
					Vector3.new(0.339, 0.092, 0.155),Vector3.new(0.339, 0.092, 0.155),Vector3.new(0.197, 0.412, 0.363),Vector3.new(0.092, 0.133, 0.155),Vector3.new(0.092, 0.138, 0.155),
					Vector3.new(0.092, 0.133, 0.155),Vector3.new(0.092, 0.138, 0.155),Vector3.new(0.092, 0.142, 0.155),Vector3.new(0.092, 0.138, 0.155),Vector3.new(0.092, 0.167, 0.155),
					Vector3.new(0.092, 0.157, 0.155),Vector3.new(0.092, 0.133, 0.155),Vector3.new(0.092, 0.152, 0.155),Vector3.new(0.092, 0.142, 0.155)
			}
			local posList2 = {
					CFrame.new(0,0,0)*CFrame.Angles(0, math.rad(90), 0), CFrame.new(-0.307, 0.245, -0.002)*CFrame.Angles(0, 0, math.rad(120)),CFrame.new(-0.471, 0.862, -0.002)*CFrame.Angles(0,0, math.rad(90)),
					CFrame.new(0.475, 0.862, -0.002)*CFrame.Angles(0, 0, math.rad(90)),CFrame.new(0.31, 0.245, -0.002)*CFrame.Angles(0, 0, math.rad(60)),CFrame.new(-0.43, 0.543, -0.002)*CFrame.Angles(0, 0, math.rad(105)),
					CFrame.new(0.433, 0.542, -0.002)*CFrame.Angles(0, 0, math.rad(75)),CFrame.new(0, -0, 0.003)*CFrame.Angles(0, math.rad(90), 0),CFrame.new(-0.456, 1.075, -0.005)*CFrame.Angles(0, 0, math.rad(-15)),
					CFrame.new(0.415, 1.18, -0.006)*CFrame.Angles(0, math.rad(180), math.rad(-30)),CFrame.new(0.459, 1.075, -0.005)*CFrame.Angles(0, math.rad(180), math.rad(-15)),CFrame.new(-0.413, 1.18, -0.006)*CFrame.Angles(0, 0, math.rad(-30)),
					CFrame.new(-0.34, 1.276, -0.005)*CFrame.Angles(0, 0, math.rad(-45)),CFrame.new(-0.242, 1.353, -0.006)*CFrame.Angles(0, 0, math.rad(-60)),CFrame.new(-0.122, 1.403, -0.005)*CFrame.Angles(0, 0, math.rad(-75)),
					CFrame.new(-0.001, 1.421, -0.005)*CFrame.Angles(0, math.rad(180), math.rad(-90)),CFrame.new(0.127, 1.403, -0.005)*CFrame.Angles(0, math.rad(180), math.rad(-75)),
					CFrame.new(0.242, 1.354, -0.006)*CFrame.Angles(0, math.rad(180), math.rad(-60)),CFrame.new(0.342, 1.276, -0.005)*CFrame.Angles(0, math.rad(180), math.rad(-45))
			}
			
			-------------------- General lists --------------------
			local totalArtifacts = {
				"Philosopher's Stone",
				"Amulet of the White King",
				"Howler Friend",
				"Ice Essence",
				"Lannis's Amulet",
				"Phoenix Down",
				"Rift Gem",
				"Night Stone",
				"Fairfrozen",
				"Spider Cloak",
				"Scroom Key",
				"Scroll of Fimbulvetr",
				"Scroll of Manus Dei ",
				"Scroll of Shrieker Summoning",
			}
			
			local totalTrinketList = {
				"Old Amulet",
				"Amulet",
				"Old Ring",
				"Ring",
				"Goblet",
				"Idol Forgotten",
				"Opal",
				"Sapphire",
				"Emerald",
				"Ruby",
				"Diamond",
				"Scrolls"
			}
			
			-------------------- Artifact Spoof/Spawner --------------------
			local artifactList = {
				"Lannis's Amulet",
				"Night Stone",
				"Philosopher's Stone",
				"Rift Gem",
				"Amulet of the White King",
				"Scroll of Fimbulvetr",
				"Fairfrozen"
			}
			
			-------------------- Auto-pickup Silver/Artifacts --------------------
			local autoPickupList = {
				"active",
				"|--PICKUP--|",
			 	"Max Dist",
			 	"Min Silver",
			 	"silver",
			 	"all artifacts",
			}
			local pickupAllowList = {
				active = false,
				pickup = false,
				maxDist = 50,
				minSilver = 100,
				silver = false,
				artifacts = false,
			}
			local pickupDictSort = {
				"active",
				"pickup",
				"maxDist",
				"minSilver",
				"silver",
				"artifacts",
			}
			
			-------------------- Player EXP/GRIP Farming --------------------
			local playerFarmList = {
				"Start Farm",
				"Target Name",
			 	"Grip Mode",
			 	"Exp Mode",
			 	"Both Mode",
				"Stop Farm"
			}
			local PlayerFarmAllowList = {
				start = false,
				targetName = "",
				GripMode = false,
				ExpMode = false,
				BothMode = false,
				stop = false
			}
			local playerFarmDictSort = {
				"start",
				"targetName",
				"GripMode",
				"ExpMode",
				"BothMode",
				"stop"
			}
			
			-------------------- Day Farming --------------------
			local dayFarming = false
			local previousPos
			local farmingPos
			local illus = {}
			local currentlySpec = {}
			local justIncase
			local beingObserved = false
			local currentInvisPart
			
			local dayFarmButtonList = {
				"Stop Farm",
				"Start Farm"
			}
			
			-------------------- Trinket ESP --------------------
			local currentEspItems = {}
			local totalTrinketAllowList = {
				OldAmulet = false,
				Amulet = false,
				OldRing = false,
				Ring = false,
				Goblet = false,
				IdolForgotten = false,
				Opal = false,
				Sapphire = false,
				Emerald = false,
				Ruby = false,
				Diamond = false,
				Scrolls = false
			}
			
			local totalTrinketDictSort = {
				"OldAmulet",
				"Amulet",
				"OldRing",
				"Ring",
				"Goblet",
				"IdolForgotten",
				"Opal",
				"Sapphire",
				"Emerald",
				"Ruby",
				"Diamond",
				"Scrolls"
			}
			
			-------------------- Auto-grip/exp Variable Setup --------------------
			local maxTp = 55
			local waitTime = 0.2
			local MainAcc = ""
			local pointsFolder = Instance.new("Folder")
			local partsTable = {}
			local teleporting = false
			local mode = ""
			pointsFolder.Parent = game.Workspace
			
			local scroomGripPath = {
				Vector3.new(1618.961, 239.13, 1321.89),
				Vector3.new(1625.062, 238.587, 1395.883),
				Vector3.new(1690.762, 238.587, 1443.113),
				Vector3.new(1748.434, 238.587, 1491.326)
			}
			
			-------------------- General Essentials Variables --------------------
			local espList = {"Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg"}
			local bodyAreaList = {"Top", "Bottom", "Front", "Back", "Left", "Right"}
			local playergui = game.Players.LocalPlayer.PlayerGui
			local espGUIList = {}
			local gameNameList = {}
			local playerNameList = {}
			
			local playerEspButtonList = {
				"ESP On",
				"ESP Off",
				"Outline On",
				"Outline Off"
			}
			local leaderboardVisualsList = {
				"Visuals On",
				"Visuals Off"
			}
			
			local flyingHumanTorchList = {
				"Fly On",
				"Fly Off"
			}
			local flyEnabled = false
			local espEnabled = false
			local bodyOutlineEnabled = false
			local visualsEnabled = false
			
			-------------------- Main GUI Features --------------------
			function displayDropdown(currentPage)
				if DropdownList.Visible and globalCurrentPage == currentPage then
					DropdownList.Visible = false
					Backdrop_3.Visible = false
				else
					DropdownList.Visible = true
					Backdrop_3.Visible = true
				end
			end
			
			function titleDisplay() --> Update this each time a new title is added
				ArtifactSpawnTitle.Visible = false
				AutoPickupTitle.Visible = false
				AutoExpGripFarmTitle.Visible = false
				AutoDayFarmTitle.Visible = false
				TrinketEspTitle.Visible = false
				PlayerEspTitle.Visible = false
				LeaderboardVisualsTitle.Visible = false
				FlyingHumanTorchTitle.Visible = false
			end
			
			SpawnButton.MouseButton1Click:Connect(function()
				Backdrop.Rotation = 180
				titleDisplay()
				ArtifactSpawnTitle.Visible = true
				displayDropdown("SpawnFolder")
				changeDisplayPage("SpawnFolder")
			end)
			
			TrinketButton.MouseButton1Click:Connect(function()
				Backdrop.Rotation = 315
				titleDisplay()
				AutoPickupTitle.Visible = true
				TrinketEspTitle.Visible = true
				displayDropdown("TrinketFolder")
				changeDisplayPage("TrinketFolder")
			end)
			
			MacroButton.MouseButton1Click:Connect(function()
				Backdrop.Rotation = 0
				titleDisplay()
				AutoExpGripFarmTitle.Visible = true
				displayDropdown("MacroFolder")
				changeDisplayPage("MacroFolder")
			end)
			
			
			PlayerButton.MouseButton1Click:Connect(function()
				Backdrop.Rotation = 45
				titleDisplay()
				PlayerEspTitle.Visible = true
				LeaderboardVisualsTitle.Visible = true
				FlyingHumanTorchTitle.Visible = true
				displayDropdown("PlayerFolder")
				changeDisplayPage("PlayerFolder")
			end)
			
			--[[
			ServerButton.MouseButton1Click:Connect(function()
				Backdrop.Rotation = 215
			end)
			--]]
			
			OtherButton.MouseButton1Click:Connect(function()
				Backdrop.Rotation = 135
				titleDisplay()
				AutoDayFarmTitle.Visible = true
				displayDropdown("OtherFolder")
				changeDisplayPage("OtherFolder")
			end)
			
			
			
			UserInputService.InputBegan:Connect(function(input, processed)
			    if not processed then
			        if input.KeyCode == Enum.KeyCode.N then
						if MainFrame.Visible == true then
							MainFrame.Visible = false
						else
							MainFrame.Visible = true
						end
			        end
			    end
			end)
			
			-------------------- Change Display Page --------------------
			function clearFolders()
				for _,v in pairs(ScrollingFrame:GetChildren()) do
					if v.ClassName == "Folder" then
						for _,r in pairs(v:GetChildren()) do
							if r.ClassName == "Frame" then
								for _,z in pairs(r:GetChildren()) do
									if z.ClassName ~= "UIGridLayout" then
										z:Destroy()
									end
								end
							end
						end
					end
				end
			end
			
			-------------------- Change Display Page --------------------
			function changeDisplayPage(currentPage)
				globalCurrentPage = currentPage
				clearFolders()
				if currentPage == "SpawnFolder" then
					for i,v in pairs (artifactList) do
						local button = Instance.new("TextButton")
						button.Name = "TempButton"
						button.BackgroundColor3 = Color3.fromRGB(140, 88, 35)
						button.BackgroundTransparency = 0.500
						button.BorderSizePixel = 0
						button.Size = UDim2.new(0, 200, 0, 50)
						button.Font = Enum.Font.Antique
						button.LineHeight = 1.300
						button.Text = v
						button.TextColor3 = Color3.fromRGB(255, 249, 180)
						button.TextSize = 23.000
						button.Visible = true
						button.TextScaled = true
						button.TextWrapped = true
						button.Parent = ArtifactSpawn
						
						button.MouseButton1Click:Connect(function()
							if button.Text == "Scroll of Fimbulvetr" then
								giveFimb()
							elseif button.Text == "Amulet of the White King" then
								giveWKA()
							elseif button.Text == "Rift Gem" then
								giveRift()
							elseif button.Text == "Philosopher's Stone" then
								givePhilo()
							elseif button.Text == "Night Stone" then
								giveNS()
							elseif button.Text == "Lannis's Amulet" then
								giveLannis()
							elseif button.Text == "Fairfrozen" then
								giveFairfrozen()
							end
						end)
					end
					
				elseif currentPage == "TrinketFolder" then
					for i,v in pairs(autoPickupList) do
						local button
						if i > 4 or i < 3 then
							button = Instance.new("TextButton")
							button.Text = v
							button.Name = "TempButton"
							if i ~= 2 then
								
								for q,r in pairs(autoPickupList) do
									if button.Text == r then
										for x,y in pairs(pickupAllowList) do
											if pickupAllowList[pickupDictSort[q]] == true then
												button.BackgroundColor3 = Color3.fromRGB(116, 203, 91)
												break
											elseif pickupAllowList[pickupDictSort[q]] == false then
												button.BackgroundColor3 = Color3.fromRGB(203, 9, 29)
												break
											end
										end
									end
								end
								
							else
								button.BackgroundColor3 = Color3.fromRGB(140, 88, 35)
							end
						elseif i > 2 and i < 5 then
							button = Instance.new("TextBox")
							button.Text = v
							button.BackgroundColor3 = Color3.fromRGB(203, 198, 36)
							if i == 3 then -- Distance
								button.Name = "DistanceButton"
							else
								button.Name = "SilverButton"
							end
						end
						
						button.BackgroundTransparency = 0.500
						button.BorderSizePixel = 0
						button.Size = UDim2.new(0, 200, 0, 50)
						button.Font = Enum.Font.Antique
						button.LineHeight = 1.300
						button.TextColor3 = Color3.fromRGB(255, 249, 180)
						button.TextSize = 23.000
						button.Visible = true
						button.TextScaled = true
						button.TextWrapped = true
						button.Parent = AutoPickup
						
						if button.ClassName == "TextButton" then
							button.MouseButton1Click:Connect(function()
								for q,r in pairs(autoPickupList) do
									if button.Text == r and button.Text ~= "|--PICKUP--|"  then
										for x,y in pairs(pickupAllowList) do
											if pickupAllowList[pickupDictSort[q]] == true then
												pickupAllowList[pickupDictSort[q]] = false
												button.BackgroundColor3 = Color3.fromRGB(203, 9, 29)
												break
											elseif pickupAllowList[pickupDictSort[q]] == false then
												pickupAllowList[pickupDictSort[q]] = true
												button.BackgroundColor3 = Color3.fromRGB(116, 203, 91)
												break
											end
										end
									end
								end
								
								if button.Text == "|--PICKUP--|" and pickupAllowList["active"] == true then
									autoPickUp()
								end
							end)
						end
					end
					
					for i,v in pairs(totalTrinketList) do
						local button = Instance.new("TextButton")
						button.Text = v
						button.Name = "TempButton"
						for q,r in pairs(totalTrinketList) do
							if button.Text == r then
								for x,y in pairs(totalTrinketAllowList) do
									if totalTrinketAllowList[totalTrinketDictSort[q]] == true then
										button.BackgroundColor3 = Color3.fromRGB(116, 203, 91)
										break
									elseif totalTrinketAllowList[totalTrinketDictSort[q]] == false then
										button.BackgroundColor3 = Color3.fromRGB(203, 9, 29)
										break
									end
								end
							end
						end
						
						button.BackgroundTransparency = 0.500
						button.BorderSizePixel = 0
						button.Size = UDim2.new(0, 200, 0, 50)
						button.Font = Enum.Font.Antique
						button.LineHeight = 1.300
						button.TextColor3 = Color3.fromRGB(255, 249, 180)
						button.TextSize = 23.000
						button.Visible = true
						button.TextScaled = true
						button.TextWrapped = true
						button.Parent = TrinketEsp
						
						if button.ClassName == "TextButton" then
							button.MouseButton1Click:Connect(function()
								for q,r in pairs(totalTrinketList) do
									if button.Text == r then
										for x,y in pairs(totalTrinketAllowList) do
											if totalTrinketAllowList[totalTrinketDictSort[q]] == true then
												totalTrinketAllowList[totalTrinketDictSort[q]] = false
												for _,cPart in pairs(game.Workspace:GetChildren()) do
													verifyTrinket(cPart, button.Text)
												end
												button.BackgroundColor3 = Color3.fromRGB(203, 9, 29)
												break
											elseif totalTrinketAllowList[totalTrinketDictSort[q]] == false then
												totalTrinketAllowList[totalTrinketDictSort[q]] = true
												for _,cPart in pairs(game.Workspace:GetChildren()) do
													if not table.find(currentEspItems, cPart) then
														verifyTrinket(cPart, button.Text)
													end
												end
												button.BackgroundColor3 = Color3.fromRGB(116, 203, 91)
												break
											end
										end
									end
								end
							end)
						end
					end
					
				elseif currentPage == "MacroFolder" then
					for i,v in pairs(playerFarmList) do
						local button
						if i ~= 2 then
							button = Instance.new("TextButton")
							button.Text = v
							button.Name = "TempButton"
							for q,r in pairs(playerFarmList) do
								if button.Text == r then
									for x,y in pairs(PlayerFarmAllowList) do
										if PlayerFarmAllowList[playerFarmDictSort[q]] == true then
											button.BackgroundColor3 = Color3.fromRGB(116, 203, 91)
											break
										elseif PlayerFarmAllowList[playerFarmDictSort[q]] == false then
											button.BackgroundColor3 = Color3.fromRGB(203, 9, 29)
											break
										end
									end
								end
							end
							if i == 1 or i == 6 then
								button.BackgroundColor3 = Color3.fromRGB(140, 88, 35)
							end
						elseif i == 2 then
							button = Instance.new("TextBox")
							button.Text = v
							button.BackgroundColor3 = Color3.fromRGB(203, 198, 36)
							button.Name = "PlayerNameBox"
						end
						
						button.BackgroundTransparency = 0.500
						button.BorderSizePixel = 0
						button.Size = UDim2.new(0, 200, 0, 50)
						button.Font = Enum.Font.Antique
						button.LineHeight = 1.300
						button.TextColor3 = Color3.fromRGB(255, 249, 180)
						button.TextSize = 23.000
						button.Visible = true
						button.TextScaled = true
						button.TextWrapped = true
						button.Parent = AutoExpGripFarm
						
						if button.ClassName == "TextButton" then
							button.MouseButton1Click:Connect(function()
								for q,r in pairs(playerFarmList) do
									if button.Text == r and button.Text ~= "Start Farm" and button.Text ~= "Stop Farm" then
										for x,y in pairs(PlayerFarmAllowList) do
											if PlayerFarmAllowList[playerFarmDictSort[q]] == true then
												clearList(PlayerFarmAllowList, "playerFarm")
												PlayerFarmAllowList[playerFarmDictSort[q]] = false
												button.BackgroundColor3 = Color3.fromRGB(203, 9, 29)
												break
											elseif PlayerFarmAllowList[playerFarmDictSort[q]] == false then
												clearList(PlayerFarmAllowList, "playerFarm")
												PlayerFarmAllowList[playerFarmDictSort[q]] = true
												button.BackgroundColor3 = Color3.fromRGB(116, 203, 91)
												break
											end
										end
									end
								end	
								if button.Text == "Start Farm" and PlayerFarmAllowList["GripMode"] == true then
									mode = "grippo"
									checkForMainAcc(game.Players.LocalPlayer.Character, game.Players.LocalPlayer.Character.HumanoidRootPart, game.Players.LocalPlayer.Character.Torso)
								elseif button.Text == "Start Farm" and PlayerFarmAllowList["ExpMode"] == true then
									mode = "exp"
									checkForMainAcc(game.Players.LocalPlayer.Character, game.Players.LocalPlayer.Character.HumanoidRootPart, game.Players.LocalPlayer.Character.Torso)
								elseif button.Text == "Start Farm" and PlayerFarmAllowList["BothMode"] == true then
									mode = "both"
									checkForMainAcc(game.Players.LocalPlayer.Character, game.Players.LocalPlayer.Character.HumanoidRootPart, game.Players.LocalPlayer.Character.Torso)
								elseif button.Text == "Stop Farm" then
									mode = ""
									local MainAcc = ""
									local mode = ""
									local partsTable = {}
									clearGripPath()
									game.Workspace.Live:FindFirstChild(game.Players.LocalPlayer.Name).Head:Destroy()
									game.Workspace.Live:FindFirstChild(game.Players.LocalPlayer.Name).Torso.Anchored = false
								end
							end)
						end
					end
				elseif currentPage == "OtherFolder" then
					for i,v in pairs(dayFarmButtonList) do
						local button = Instance.new("TextButton")
						button.Name = "TempButton"
						button.BackgroundColor3 = Color3.fromRGB(140, 88, 35)
						button.BackgroundTransparency = 0.500
						button.BorderSizePixel = 0
						button.Size = UDim2.new(0, 200, 0, 50)
						button.Font = Enum.Font.Antique
						button.LineHeight = 1.300
						button.Text = v
						button.TextColor3 = Color3.fromRGB(255, 249, 180)
						button.TextSize = 23.000
						button.Visible = true
						button.TextScaled = true
						button.TextWrapped = true
						button.Parent = AutoDayFarm
						
						button.MouseButton1Click:Connect(function()
							if button.Text == "Start Farm" and not dayFarming then
								startDayFarming()
							elseif button.Text == "Stop Farm" and dayFarming and #illus == 0 then
								dayFarming = false
								if justIncase ~= nil and game.Players.LocalPlayer.Character then
			                        justIncase:Destroy()
									currentInvisPart.CanCollide = true
									game.Players.LocalPlayer.Character.Torso.Anchored = false
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = previousPos
			                    end
								farmingPos = nil
								justIncase = nil
								currentInvisPart = nil
							end
						end)
					end
				elseif currentPage == "PlayerFolder" then
					for i,v in pairs(playerEspButtonList) do
						local button = Instance.new("TextButton")
						button.Name = "TempButton"
						button.BackgroundColor3 = Color3.fromRGB(140, 88, 35)
						button.BackgroundTransparency = 0.500
						button.BorderSizePixel = 0
						button.Size = UDim2.new(0, 200, 0, 50)
						button.Font = Enum.Font.Antique
						button.LineHeight = 1.300
						button.Text = v
						button.TextColor3 = Color3.fromRGB(255, 249, 180)
						button.TextSize = 23.000
						button.Visible = true
						button.TextScaled = true
						button.TextWrapped = true
						button.Parent = PlayerEsp
						
						button.MouseButton1Click:Connect(function()
							if button.Text == "ESP On" then
								for _,player in pairs(game.Players:GetPlayers()) do
									if player ~= nil then
										addNameEsp(player)
									end
								end
								espEnabled = true
							elseif button.Text == "ESP Off" then
								espEnabled = false
								for _,label in pairs(espGUIList) do
									
									
									if label.Parent.Parent.Parent ~= nil then
										for _,limb in pairs(label.Parent.Parent.Parent:GetChildren()) do
											if table.find(espList, limb.Name) then
												for _,espItem in pairs(limb:GetChildren()) do
													if espItem.Name == "SurfaceGui" then
														espItem:Destroy()
													end
												end
											end
										end
									end
									
									
									label.Parent:Destroy()
									
									
								end
								gameNameList = {}
								playerNameList = {}
								espGUIList = {}
							end
						end)
					end	
				
					for i,v in pairs(leaderboardVisualsList) do
						local button = Instance.new("TextButton")
						button.Name = "TempButton"
						button.BackgroundColor3 = Color3.fromRGB(140, 88, 35)
						button.BackgroundTransparency = 0.500
						button.BorderSizePixel = 0
						button.Size = UDim2.new(0, 200, 0, 50)
						button.Font = Enum.Font.Antique
						button.LineHeight = 1.300
						button.Text = v
						button.TextColor3 = Color3.fromRGB(255, 249, 180)
						button.TextSize = 23.000
						button.Visible = true
						button.TextScaled = true
						button.TextWrapped = true
						button.Parent = LeaderboardVisuals
						
						button.MouseButton1Click:Connect(function()
							if button.Text == "Visuals On" then
								visualsEnabled = true
								spawn(function()
									setupESP()
								end)
								enableLBVisuals(true)
							elseif button.Text == "Visuals Off" then
								visualsEnabled = false
								enableLBVisuals(false)
							end
						end)	
					end
					
					for i,v in pairs(flyingHumanTorchList) do
						local button = Instance.new("TextButton")
						button.Name = "TempButton"
						button.BackgroundColor3 = Color3.fromRGB(140, 88, 35)
						button.BackgroundTransparency = 0.500
						button.BorderSizePixel = 0
						button.Size = UDim2.new(0, 200, 0, 50)
						button.Font = Enum.Font.Antique
						button.LineHeight = 1.300
						button.Text = v
						button.TextColor3 = Color3.fromRGB(255, 249, 180)
						button.TextSize = 23.000
						button.Visible = true
						button.TextScaled = true
						button.TextWrapped = true
						button.Parent = FlyingHumanTorch
						
						button.MouseButton1Click:Connect(function()
							if button.Text == "Fly On" then
								flyEnabled = true
							elseif button.Text == "Fly Off" then
								flyEnabled = false
							end
						end)	
					end
				end
			end
			
			function clearList(givenList, arg)
				for x,y in pairs(givenList) do
					if x ~= "targetName" then
						givenList[x] = false
					end
				end
				
				if arg == "playerFarm" then
					for i,v in pairs(AutoExpGripFarm:GetChildren()) do
						if v.ClassName == "TextButton" and v.Text ~= "Start Farm" and v.Text ~= "Stop Farm" then
							v.BackgroundColor3 = Color3.fromRGB(203, 9, 29)
						end
					end
					for i,v in pairs(AutoExpGripFarm:GetChildren()) do
						if v.ClassName == "TextButton" and v.Text ~= "Start Farm" and v.Text ~= "Stop Farm" then
							v.BackgroundColor3 = Color3.fromRGB(203, 9, 29)
						end
					end
				elseif arg == "trinketEsp" then
					for i,v in pairs(TrinketEsp:GetChildren()) do
						if v.ClassName == "TextButton" and v.Text ~= "Start Farm" and v.Text ~= "Stop Farm" then
							v.BackgroundColor3 = Color3.fromRGB(203, 9, 29)
						end
					end
					for i,v in pairs(TrinketEsp:GetChildren()) do
						if v.ClassName == "TextButton" and v.Text ~= "Start Farm" and v.Text ~= "Stop Farm" then
							v.BackgroundColor3 = Color3.fromRGB(203, 9, 29)
						end
					end
				end
			end
			
			-------------------- Client Artifact Spawner Function --------------------
			
			-------------------- Spawn Lannis Amulet --------------------
			function giveLannis()
				local f = Instance.new("Tool")
				f.Name = "Lannis's Amulet"
				f.GripPos = Vector3.new(-0.05,1.3,0)
				f.GripRight = Vector3.new(0,0,1)
				f.GripForward = Vector3.new(1,0,0)
				f.CanBeDropped = true
				f.Parent = game.Players.LocalPlayer.Backpack
				
				for i = 1,19 do
					local t = Instance.new("Part")
					t.BrickColor = BrickColor.new("Really black")
					t.Material = "SmoothPlastic"
					if i == 1 then
						t.Name = "Handle"
						t.Shape = "Cylinder"
						t.CFrame = posList2[i]
					elseif i == 8 then
						t.Shape = "Cylinder"
						t.Color = Color3.fromRGB(127, 43, 166)
						t.Material = Enum.Material.Neon
					else
						t.Name = "otherPart"
					end
					t.Anchored = false
					t.Archivable = true
					t.CanCollide = false
					t.Locked = false
					t.Massless = false
					if f:FindFirstChild("Handle") ~= nil then
						t.CFrame = CFrame.new(f:FindFirstChild("Handle").Position) * posList2[i]
					end
					t.Size = sizeList2[i]
					t.Parent = f
					local weld = Instance.new("Weld")
					weld.Part0 = f:FindFirstChild("Handle")
					weld.Part1 = t
					weld.C0 = f:FindFirstChild("Handle").CFrame:inverse()
					weld.C1 = t.CFrame:inverse()
					weld.Parent = f:FindFirstChild("Handle")
				end
			end
			
			-------------------- Spawn Night Stone --------------------
			function giveNS()
				local f = Instance.new("Tool")
				f.Name = "Night Stone"
				f.GripPos = Vector3.new(0,0.2,0)
				f.CanBeDropped = true
				f.Parent = game.Players.LocalPlayer.Backpack
				
				for i = 1,7 do
					local t = Instance.new("Part")
					if i == 2 then
						t.Name = "otherPart"
						local pl = Instance.new("PointLight")
						pl.Parent = t
						pl.Brightness = 9
						pl.Color = Color3.fromRGB(97, 45, 118)
						pl.Enabled = true
						pl.Range = 4
						pl.Shadows = false
					elseif i == 1 then
						t.Name = "Handle"
						t.CFrame = posList[i]
					else
						t.Name = "otherPart"
					end
					t.BrickColor = BrickColor.new("Really black")
					t.Material = "SmoothPlastic"
					t.Anchored = false
					t.Archivable = true
					t.CanCollide = false
					t.Locked = false
					t.Massless = false
					if f:FindFirstChild("Handle") ~= nil then
						t.CFrame = CFrame.new(f:FindFirstChild("Handle").Position) * posList[i]
					end
					t.Size = sizeList[i]
					t.Parent = f
					
					local weld = Instance.new("Weld")
					weld.Part0 = f:FindFirstChild("Handle")
					weld.Part1 = t
					weld.C0 = f:FindFirstChild("Handle").CFrame:inverse()
					weld.C1 = t.CFrame:inverse()
					weld.Parent = f:FindFirstChild("Handle")
				end
			end
			
			-------------------- Spawn Fairfrozen --------------------
			function giveFairfrozen()
				local f = Instance.new("Tool")
				f.Name = "Fairfrozen"
				f.GripPos = Vector3.new(0, 0, -0.04)
				f.CanBeDropped = true
				f.Parent = game.Players.LocalPlayer.Backpack
				
				local t = Instance.new("Part")
				t.Name = "Handle"
				t.Color = Color3.fromRGB(134, 171, 173)
				t.Material = "Neon"
				t.Anchored = false
				t.Archivable = true
				t.CanCollide = false
				t.Locked = false
				t.Massless = false
				t.Shape = "Ball"
				t.Size = Vector3.new(0.77, 0.77, 0.77)
				t.Parent = f
			end
			
			-------------------- Spawn Philo Stone --------------------
			function givePhilo()
				local f = Instance.new("Tool")
				f.Name = "Philosopher's Stone"
				f.GripPos = Vector3.new(0,0.2,0)
				f.CanBeDropped = true
				f.Parent = game.Players.LocalPlayer.Backpack
				
				for i = 1,7 do
					local t = Instance.new("Part")
					if i == 2 then
						t.Name = "otherPart"
						local pl = Instance.new("PointLight")
						pl.Parent = t
						pl.Brightness = 8
						pl.Color = Color3.fromRGB(197, 82, 72)
						pl.Enabled = true
						pl.Range = 4
						pl.Shadows = false
					elseif i == 1 then
						t.Name = "Handle"
						t.CFrame = posList[i]
					else
						t.Name = "otherPart"
					end
					t.BrickColor = BrickColor.new("Tr. Red")
					t.Material = "Neon"
					t.Anchored = false
					t.Archivable = true
					t.CanCollide = false
					t.Locked = false
					t.Massless = false
					if f:FindFirstChild("Handle") ~= nil then
						t.CFrame = CFrame.new(f:FindFirstChild("Handle").Position) * posList[i]
					end
					t.Size = sizeList[i]
					t.Parent = f
					
					local weld = Instance.new("Weld")
					weld.Part0 = f:FindFirstChild("Handle")
					weld.Part1 = t
					weld.C0 = f:FindFirstChild("Handle").CFrame:inverse()
					weld.C1 = t.CFrame:inverse()
					weld.Parent = f:FindFirstChild("Handle")
				end
			end
			
			-------------------- Spawn Rift Gem --------------------
			function giveRift() 
				local f = Instance.new("Tool")
				f.Name = "Rift Gem"
				f.CanBeDropped = true
				f.Parent = game.Players.LocalPlayer.Backpack
				
				local t = Instance.new("Part")
				t.Name = "Handle"
				t.BrickColor = BrickColor.new("Hot pink")
				t.Material = "Glass"
				t.Reflectance = 0.15
				t.Anchored = false
				t.Archivable = true
				t.CanCollide = false
				t.Locked = false
				t.Massless = false
				t.Shape = "Block"
				t.Size = Vector3.new(0.491, 0.491, 0.491)
				t.Parent = f
				
				local mesh = Instance.new("SpecialMesh")
				mesh.MeshId = "http://www.roblox.com/asset?id=160003363"
				mesh.MeshType = Enum.MeshType.FileMesh
				mesh.Name = "GemMesh"
				mesh.Scale = Vector3.new(1.508, 1.2, 1.508)
				mesh.Archivable = true
				mesh.Parent = t
				
				local numberKeypoints = {
				NumberSequenceKeypoint.new(0, 0.1);
				NumberSequenceKeypoint.new(0.5, 0.4);
				NumberSequenceKeypoint.new(1, 0.1);
				}
				
				local prtcl = Instance.new("ParticleEmitter")
				prtcl.Color = ColorSequence.new(Color3.fromRGB(255, 51, 245))
				prtcl.LightInfluence = 0
				prtcl.Texture = "rbxasset://textures/particles/sparkles_main.dds"
				prtcl.Size = NumberSequence.new(numberKeypoints)
				prtcl.Archivable = true
				prtcl.Acceleration = Vector3.new(0,0,0)
				prtcl.Lifetime = NumberRange.new(2,2)
				prtcl.Rate = 4
				prtcl.Speed = NumberRange.new(0.05,0.05)
				prtcl.SpreadAngle = Vector2.new(-360,360)
				prtcl.Parent = t
			end
			
			-------------------- Spawn White King Amulet --------------------
			function giveWKA()
				local f = Instance.new("Tool")
				f.Name = "Amulet of the White King"
				f.GripPos = Vector3.new(-0.05,1.3,0)
				f.GripRight = Vector3.new(0,0,1)
				f.GripForward = Vector3.new(1,0,0)
				f.CanBeDropped = true
				f.Parent = game.Players.LocalPlayer.Backpack
				
				for i = 1,19 do
					local t = Instance.new("Part")
					t.BrickColor = BrickColor.new("Medium stone grey")
					t.Material = Enum.Material.Neon
					if i == 1 then
						t.Name = "Handle"
						t.Shape = "Cylinder"
						t.CFrame = posList2[i]
					elseif i == 8 then
						t.Shape = "Cylinder"
						t.Color = Color3.fromRGB(165,165,165)
						t.Material = Enum.Material.Neon
					else
						t.Name = "otherPart"
					end
					t.Anchored = false
					t.Archivable = true
					t.CanCollide = false
					t.Locked = false
					t.Massless = false
					if f:FindFirstChild("Handle") ~= nil then
						t.CFrame = CFrame.new(f:FindFirstChild("Handle").Position) * posList2[i]
					end
					t.Size = sizeList2[i]
					t.Parent = f
					
					local weld = Instance.new("Weld")
					weld.Part0 = f:FindFirstChild("Handle")
					weld.Part1 = t
					weld.C0 = f:FindFirstChild("Handle").CFrame:inverse()
					weld.C1 = t.CFrame:inverse()
					weld.Parent = f:FindFirstChild("Handle")
				end
			end
			
			-------------------- Spawn Fimbul --------------------
			function giveFimb()
				local f = Instance.new("Tool")
				f.Name = "Scroll of Fimbulvetr"
				f.CanBeDropped = true
				f.Parent = game.Players.LocalPlayer.Backpack
			
				local t = Instance.new("Part")
				t.Name = "Handle"
				t.BrickColor = BrickColor.new("Hot pink")
				t.Anchored = false
				t.Archivable = true
				t.CanCollide = false
				t.Locked = false
				t.Massless = false
				t.Size = Vector3.new(0.681, 0.311, 0.711)
				t.Parent = f
				
				local mesh = Instance.new("SpecialMesh")
				mesh.MeshId = "http://www.roblox.com/asset/?id=60791940"
				mesh.TextureId = "http://www.roblox.com/asset/?id=60791957"
				mesh.MeshType = Enum.MeshType.FileMesh
				mesh.Name = "ScrollMesh"
				mesh.Scale = Vector3.new(0.4, 0.4, 0.4)
				mesh.Archivable = true
				mesh.Parent = t
			end
			
			-------------------- Spawn Item Bag --------------------
			function spawnBag(itemName)
				local dupeItemBag = Instance.new("Part")
				dupeItemBag.Name = "FakeArtifactItem"
				dupeItemBag.Orientation = Vector3.new(0, -0.04, 0)
				dupeItemBag.Anchored = false
				dupeItemBag.CanCollide = true
				dupeItemBag.Transparency = 1
				dupeItemBag.Size = Vector3.new(1, 0.81, 1)
				
				local mesh = Instance.new("SpecialMesh")
				mesh.MeshId = "http://www.roblox.com/asset/?id=16657069"
				mesh.MeshType = Enum.MeshType.FileMesh
				mesh.Scale = Vector3.new(0.25, 0.3, 0.25)
				mesh.Parent = dupeItemBag
				
				local dec = Instance.new("Decal")
				dec.Color3 = Color3.fromRGB(148, 148, 148)
				dec.Texture = "rbxassetid://4904930640"
				dec.Parent = dupeItemBag
				spawn(function()
					dec.Transparency = 0.5
					wait(4.3)
					dec.Transparency = 0
				end)
				spawn(function()
					local dGui = game.Players.LocalPlayer.PlayerGui.DangerGui
					dGui.TextLabel.Text = "IN DANGER\nYour life is at risk!"
					dGui.TextLabel.Visible = true
					for i = 1,50 do
						if game.Players.LocalPlayer.Character ~= nil then
						    wait(0.1)
						    dGui.TextLabel.Visible = true
						    dGui.TextLabel.Text = "IN DANGER\nYour life is at risk!"
						end
					end
					dGui.TextLabel.Visible = false
				end)
				
				local bbgui = Instance.new("BillboardGui")
				bbgui.AlwaysOnTop = false
				bbgui.ExtentsOffsetWorldSpace = Vector3.new(0,5,0)
				bbgui.LightInfluence = 0
				bbgui.MaxDistance = 50
				bbgui.Size = UDim2.new(2, 0,1.8, 0)
				bbgui.Parent = dupeItemBag
				
				local frame = Instance.new("Frame")
				frame.BackgroundTransparency = 1
				frame.Size = UDim2.new(1,0,1,0)
				frame.Visible = true
				frame.Parent = bbgui
				
				local textbox = Instance.new("TextBox")
				textbox.BackgroundTransparency = 1
				textbox.Size = UDim2.new(1,0,1,0)
				textbox.Font = Enum.Font.Arial
				textbox.Text = itemName
				textbox.TextColor3 = Color3.fromRGB(255, 254, 244)
				textbox.TextScaled = true
				textbox.TextSize = 35
				textbox.TextStrokeColor3 = Color3.fromRGB(56, 56, 31)
				textbox.TextStrokeTransparency = 0
				textbox.TextWrapped = true
				textbox.Parent = frame
				
				dupeItemBag.Parent = workspace.Thrown
				local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
				dupeItemBag.CFrame = hrp.CFrame*CFrame.new(2.5,-3,-5.5)
				spawn(function()
					dupeItemBag.Touched:Connect(function(part)
						if part.Parent:FindFirstChild("Humanoid") and dupeItemBag:FindFirstChild("Decal").Transparency == 0 then
							dupeItemBag:Destroy()
							if itemName == "Scroll of Fimbulvetr" then
								giveFimb()
							elseif itemName == "Amulet of the White King" then
								giveWKA()
							elseif itemName == "Rift Gem" then
								giveRift()
							elseif itemName == "Philosopher's Stone" then
								givePhilo()
							elseif itemName == "Night Stone" then
								giveNS()
							elseif itemName == "Lannis's Amulet" then
								giveLannis()
							elseif itemName == "Fairfrozen" then
								giveFairfrozen()
							end
						end
					end)
				end)
			end
			
			-------------------- Destoys tool In-Hand --------------------
			workspace.ChildAdded:Connect(function(child)
				if child.Name == "Scroll of Fimbulvetr" or child.Name == "Amulet of the White King" or child.Name == "Rift Gem" 
				or child.Name == "Philosopher's Stone" or child.Name == "Night Stone" or child.Name == "Lannis's Amulet"
				or child.Name == "Fairfrozen" then
					local targetItem = child
					spawnBag(targetItem.Name)
					wait(0.2)
					targetItem:Destroy()
				end
			end)
			
			-------------------- Auto-Pickup Function --------------------
			function autoPickUp()
				local newPickupList = totalArtifacts
				for i,v in pairs(workspace.Thrown:GetChildren()) do
					if v.Name == "MoneyBag" and pickupAllowList["silver"] then
						local properties = setDistMoney()
						if tonumber(v.BillboardGui.Amount.Text) >= properties[2] then
							if properties[1] >= (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Position).magnitude then
								local currentPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
								local currentRot = game.Players.LocalPlayer.Character.HumanoidRootPart.Orientation
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position) * CFrame.Angles(0,math.rad(currentRot.Y),0)
								RunService.Heartbeat:Wait()
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(currentPos) * CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(currentRot.Y),0)
								
							end
						end
						
					elseif v.Name == "ToolBag" then
						for q,r in pairs(newPickupList) do
							if v:FindFirstChild("BillboardGui") ~= nil then
								if v:FindFirstChild("BillboardGui").Tool.Text == r then
									local properties = setDistMoney()
									if properties[1] >= (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-v.Position).magnitude then
										local currentPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
										local currentRot = game.Players.LocalPlayer.Character.HumanoidRootPart.Orientation
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position) * CFrame.Angles(0,math.rad(currentRot.Y),0)
										RunService.Heartbeat:Wait()
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(currentPos) * CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(currentRot.Y),0)
										break
									end
								end
							end
						end
					end
				end
			end
			
			-------------------- Setting Custom Distance/Money Value --------------------
			function setDistMoney()
				local chosenMinDist 
				local chosenMinMoney
				for q,r in pairs(AutoPickup:GetChildren()) do
					if r.Name == "DistanceButton" then
						if r.Text ~= "Max Dist" and tonumber(r.Text) ~= nil then
							chosenMinDist = tonumber(r.Text)
						else
							chosenMinDist = 50
						end
					elseif r.Name == "SilverButton" then
						if r.Text ~= "Min Silver" and tonumber(r.Text) ~= nil then
							chosenMinMoney = tonumber(r.Text)
						else
							chosenMinMoney = 1000
						end
					end
				end
				return {chosenMinDist, chosenMinMoney}
			end
			
			
			-------------------- Anti-Illus --------------------
			local waitingForIllu = {}
			local waitingForSpec = {}
			
			spawn(function()
			    while true do
			        wait()
			        if #illus > 0 then
			            for i,v in pairs(game.Players:GetChildren()) do
			                for q,r in pairs(illus) do
			                    if r == v.Name then
									if table.find(waitingForIllu, v.Name) == nil then
										table.insert(waitingForIllu, v.Name)
										spawn(function()
					                        repeat
					                            wait()
												if v == nil then
													break
												end
					                        until game.Players:FindFirstChild(r).Character:FindFirstChild("Observe") == nil and game.Players:FindFirstChild(r).Backpack.Observe == nil
					                        table.remove(illus, table.find(illus, v.Name))
											table.remove(waitingForIllu, table.find(waitingForIllu, v.Name))
											print("illu removed")
											if #illus == 0 then -- Day-farming
						                        beingObserved = false
											end
											if #illus == 0 and dayFarming then
												startDayFarming()
											end
										end)
									end
			                    end
			                end
			            end
			        end
			    end
			end)
			
			spawn(function()
				while true do
					wait()
					if #currentlySpec > 0 then
			            for i,v in pairs(game.Players:GetChildren()) do
							for q,r in pairs(currentlySpec) do
						    	if r == v.Name then
									if table.find(waitingForSpec, v.Name) == nil then
										table.insert(waitingForSpec, v.Name)
										spawn(function()
											repeat
												wait()
												if v == nil then
													break
												end
											until v.Character:FindFirstChild("Observing") == nil
											table.remove(currentlySpec, table.find(currentlySpec, v.Name))
											table.remove(waitingForSpec, table.find(waitingForSpec, v.Name))
											illuDetect()
										end)
									end
								end
							end
						end
					end
				end
			end)
			
			-------------------- Illusionist Detection & Leaderboard UI --------------------
			function illuDetect()
				spawn(function()
					while true do
						wait(0.2)
						for i,v in pairs(game.Players:GetPlayers()) do
							if v.Character ~= nil then
						        for x,y in pairs(v.Character:GetChildren()) do
									if v.Character ~= nil then
							            if (y.Name == "Observing") then -- Activating the observe tool
							                if not table.find(illus, v.Name) and v.Character then
												table.insert(illus, v.Name)
												addIllus(v.Name)
							                end
							                if dayFarming and not beingObserved and v.Character then -- Day-farming
							                    beingObserved = true
												game.Players.LocalPlayer.Character.Torso.Anchored = false
												if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - previousPos.Position).magnitude <= 20 and v.Character then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = previousPos
													currentInvisPart.CanCollide = true
												end
												
							                    if justIncase ~= nil and v.Character then
							                        justIncase:Destroy()
													currentInvisPart.CanCollide = true
							                    end
											end
											 if not table.find(currentlySpec, v.Name) and v.Character then
												table.insert(currentlySpec, v.Name)
												addSpectating(v.Name)
							                end
							            end
									end
						        end
							end
							if v.Backpack ~= nil then
								for x,y in pairs(v.Backpack:GetChildren()) do
									if v.Character ~= nil then
										if y.Name == "Observe" and v.Backpack then
											if not table.find(illus, v.Name) and v.Backpack then
												table.insert(illus, v.Name)
												addIllus(v.Name)
							                end
										end
									end
								end
							end
						end
					end
				end)
			end
			illuDetect()
			
			function addIllus(name)
				for i,v in pairs(playergui.LeaderboardGui.MainFrame.ScrollingFrame:GetChildren()) do
				    for q,r in pairs(gameNameList) do
				        if r == v.Text and v then
				            if playerNameList[q] and playerNameList[q] == name and v then
								if v:FindFirstChild("SpecLabel") == nil and v:FindFirstChild("IlluLabel") == nil then
									v.Parent.ClipsDescendants = false
									v.Parent.Parent.ClipsDescendants = false
									local ImageButton = Instance.new("ImageButton")
									ImageButton.Parent = v
									ImageButton.Name = "IlluLabel"
									if playerNameList[table.find(gameNameList, ImageButton.Parent.Text)] == game.Players.LocalPlayer.Name then
										ImageButton.ImageColor3 = Color3.fromRGB(112, 255, 129)
									else
										ImageButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
									end
									ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
									ImageButton.BackgroundTransparency = 1.000
									ImageButton.Size = UDim2.new(0, 45, 0, 37)
									ImageButton.AnchorPoint = Vector2.new(0.5,0.5)
									ImageButton.Image = "rbxassetid://4960935780"
									spawn(function()
										while true do
											wait(0.2)
											ImageButton.Position = UDim2.new(0,-24,0,9.1)
										end
									end)
									spawn(function()
										if ImageButton then
											ImageButton.MouseButton1Click:Connect(function()
												if playerNameList[table.find(gameNameList, ImageButton.Parent.Text)] ~= nil then
													game.Workspace.Camera.CameraSubject = game.Players:FindFirstChild(playerNameList[table.find(gameNameList, ImageButton.Parent.Text)]).Character.Humanoid
													for _,limb in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
														if limb.Name == "LeftRuneArm" or limb.Name == "RightRuneArm" then
															for _,rune in pairs(limb:GetChildren()) do
																if rune:FindFirstChild("Decal") ~= nil then
																	rune:FindFirstChild("Decal").Transparency = 1
																end
															end
														end
													end
												end
											end)
										end
									end)
								end
							end
				        end
				    end
				end
			end
			
			function addSpectating(name)
				for i,v in pairs(playergui.LeaderboardGui.MainFrame.ScrollingFrame:GetChildren()) do
				    for q,r in pairs(gameNameList) do
				        if r == v.Text and v then
				            if playerNameList[q] == name and v then
								if v:FindFirstChild("CurrentSpecLabel") == nil then
									local chosenLabel = v
									v.Parent.ClipsDescendants = false
									v.Parent.Parent.ClipsDescendants = false
									local ImageLabel = Instance.new("ImageLabel")
									ImageLabel.Parent = v
									ImageLabel.Name = "CurrentSpecLabel"
									ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
									ImageLabel.BackgroundTransparency = 1.000
									ImageLabel.Size = UDim2.new(0, 90, 0, 37)
									ImageLabel.AnchorPoint = Vector2.new(0.5,0.5)
									ImageLabel.Image = "rbxassetid://4963608320"
									spawn(function()
										while currentlySpec[table.find(currentlySpec, name)] ~= nil do
											wait(0.2)
											ImageLabel.Position = UDim2.new(0,-93,0,9.1)
										end
										ImageLabel:Destroy()
									end)
								end
							end
				        end
				    end
				end
			end
			
			-------------------- Auto-Day Farming --------------------
			function setPosDayFarm()
				if dayFarming then
				    previousPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				    farmingPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame:ToWorldSpace(CFrame.new(0, 0, -12))
				    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame:ToWorldSpace(CFrame.new(0, 0, -12))
				    wait(0.2)
				    justIncase = Instance.new("Part")
				    justIncase.Parent = game.Workspace
				    justIncase.Size = Vector3.new(20,0.05,20)
					justIncase.Transparency = 1
				    justIncase.CanCollide = true
				    justIncase.Anchored = true
				    justIncase.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame:ToWorldSpace(CFrame.new(0, -3, 0))
					if not beingObserved then
				    	game.Players.LocalPlayer.Character.Torso.Anchored = true
					end
				end
			end
			
			function startDayFarming()
				local checkPart = Instance.new("Part")
				checkPart.Transparency = 0
				checkPart.Touched:Connect(function(part)
					checkPart:Destroy()
					if part:GetMass() >= 100000 and part:GetMass() <= 600000000 then
						currentInvisPart = part
					    part.CanCollide = false
					    dayFarming = true
						antiAFK("dayFarming")
					    setPosDayFarm()
					end
				end)
				checkPart.Size = Vector3.new(2,1,4)
				checkPart.CanCollide = true
				checkPart.Anchored = false
				checkPart.Parent = game.Workspace
				checkPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame:ToWorldSpace(CFrame.new(0, 2, -4))
			    wait()
			    checkPart:Destroy()
			end
			
			-------------------- Artifact and Trinket ESP --------------------
			function giveUI(cPart, assetId)
				if not table.find(currentEspItems, cPart) then
					table.insert(currentEspItems, cPart)
					local BillboardGui = Instance.new("BillboardGui")
					local ImageLabel = Instance.new("ImageLabel")
					local TextLabel = Instance.new("TextLabel")
					local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
					BillboardGui.Parent = cPart
					BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
					BillboardGui.Active = true
					BillboardGui.AlwaysOnTop = true
					BillboardGui.ExtentsOffsetWorldSpace = Vector3.new(0, 0, 0)
					BillboardGui.LightInfluence = 0
					BillboardGui.ClipsDescendants = false
					BillboardGui.Size = UDim2.new(4, 30, 4, 30)
					
					ImageLabel.Parent = BillboardGui
					ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ImageLabel.BackgroundTransparency = 1.000
					ImageLabel.Size = UDim2.new(0.5, 0, 0.5, 0)
					ImageLabel.Position = UDim2.new(0.25,0,0,0)
					ImageLabel.Image = assetId
					
					TextLabel.Parent = BillboardGui
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.Position = UDim2.new(0, 0, 0.5, 0)
					TextLabel.Size = UDim2.new(1, 0, 0.5, 0)
					TextLabel.Font = Enum.Font.Arial
					TextLabel.Text = math.floor((game.Players.LocalPlayer.Character.Torso.Position - cPart.Position).magnitude + 0.5)
					TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.TextSize = 100
					TextLabel.TextStrokeTransparency = 0
					
					UITextSizeConstraint.Parent = TextLabel
					UITextSizeConstraint.MaxTextSize = 10
					UITextSizeConstraint.MinTextSize = 10
					
				end
			end
			
			spawn(function()
				while true do
					wait()
					for i,v in pairs(currentEspItems)do
						if i>0 then
							if game.Players.LocalPlayer.Character ~= nil then
								if v:FindFirstChild("BillboardGui") then
									v.BillboardGui.TextLabel.Text = math.floor((game.Players.LocalPlayer.Character.Torso.Position - v.Position).magnitude + 0.5)
								end
							end
						end
					end
				end
			end)
			
			function removeUI(cPart)
				if cPart:FindFirstChild("BillboardGui") then
					table.remove(currentEspItems, table.find(currentEspItems, cPart))
					cPart.BillboardGui:Destroy()
				end
			end
			
			function verifyTrinket(cPart, change)
				if cPart.Name == "Part" or cPart.ClassName == "UnionOperation" and cPart.Transparency ~= 1 then
					if cPart.Position.Y >= -800 and cPart.Position ~= Vector3.new(-405.74, 153.329, 307.483) then
						if cPart:FindFirstChild("Mesh") ~= nil and cPart:FindFirstChild("Mesh").ClassName == "SpecialMesh" then
							if cPart:FindFirstChild("Mesh").MeshId == "rbxassetid://%2060791940%20" and change == "Scrolls" then -- scroll
								if totalTrinketAllowList["Scrolls"] == true then
									giveUI(cPart, "rbxassetid://4946605405")
								elseif totalTrinketAllowList["Scrolls"] == false then
									if cPart:FindFirstChild("BillboardGui") then
										cPart:FindFirstChild("BillboardGui"):Destroy()
									end
								end
							elseif cPart:FindFirstChild("Mesh").MeshId == "rbxassetid://%202877143560%20" and (change == "Ruby" or change == "Emerald" or change == "Diamond" or change == "Sapphire") then -- gem
								if cPart.BrickColor == BrickColor.new("Really red") then -- ruby
									if totalTrinketAllowList["Ruby"] == true then
										giveUI(cPart, "rbxassetid://4946235908")
									else
										removeUI(cPart)
									end
								elseif cPart.BrickColor == BrickColor.new("Sea green") then -- emerald
									if totalTrinketAllowList["Emerald"] == true then
										giveUI(cPart, "rbxassetid://4946235757")
									else
										removeUI(cPart)
									end
									
								elseif cPart.BrickColor == BrickColor.new("Cadet blue") then -- diamond
									if totalTrinketAllowList["Diamond"] == true then
										giveUI(cPart, "rbxassetid://4946235644")
									else
										removeUI(cPart)
									end
								elseif cPart.BrickColor == BrickColor.new("Lapis") then -- sapphire
									if totalTrinketAllowList["Sapphire"] == true then
										giveUI(cPart, "rbxassetid://4946236004")
									else
										removeUI(cPart)
									end
								end
								
							elseif cPart:FindFirstChild("Mesh").MeshId == "rbxassetid://%202637545558%20" and (change == "Ring" or change == "Old Ring") then -- ring
								if cPart.Color.b <= 0.429 then -- new ring
									if totalTrinketAllowList["Ring"] == true then
										giveUI(cPart, "rbxassetid://4946235215")
									else
										removeUI(cPart)
									end
								elseif cPart.Color.b >= 0.507 then -- old ring
									if totalTrinketAllowList["OldRing"] == true then
										giveUI(cPart, "rbxassetid://4946235074")
									else
										removeUI(cPart)
									end
								end
								
							elseif cPart:FindFirstChild("Mesh").MeshId == "rbxassetid://%2013116112%20" and change == "Goblet" then -- goblet
								if totalTrinketAllowList["Goblet"] == true then
									giveUI(cPart, "rbxassetid://4946235482")
								else
									removeUI(cPart)
								end
								
							end
								
						elseif cPart.BrickColor == BrickColor.new("Dark grey") and change == "Idol Forgotten" then -- idol
							if cPart.Material == Enum.Material.Slate then
								if cPart.CollisionGroupId == 2 then
									if totalTrinketAllowList["IdolForgotten"] == true then
										giveUI(cPart, "rbxassetid://4946236109")
									else
										removeUI(cPart)
									end
								end
							end
							
						elseif cPart.Material == Enum.Material.Glass and change == "Opal" then -- opal
							if cPart.CollisionGroupId == 2 then
								if totalTrinketAllowList["Opal"] == true then
									giveUI(cPart, "rbxassetid://4946235366")
								else
									removeUI(cPart)
								end
							end
							
						elseif cPart:GetMass() <= 1 and cPart.CollisionGroupId == 2 and (change == "Amulet" or change == "Old Amulet") then
							if cPart.Material == Enum.Material.SmoothPlastic then -- old amulet
								if totalTrinketAllowList["OldAmulet"] == true then
									giveUI(cPart, "rbxassetid://4946234673")
								else
									removeUI(cPart)
								end
							elseif cPart.Material == Enum.Material.Plastic then -- amulet
								if totalTrinketAllowList["Amulet"] == true then
									giveUI(cPart, "rbxassetid://4946234897")
								else
									removeUI(cPart)
								end
							end
						end
					end
				end
			end
			
			game.Workspace.ChildAdded:Connect(function(child)
			    verifyTrinket(child)
			end)
			
			game.Workspace.ChildRemoved:Connect(function(child)
				if table.find(currentEspItems, child) then
					table.remove(currentEspItems, child)
				end
			end)
			
			-------------------- Anti-Afk --------------------
			function antiAFK(check)
				spawn(function()
					if check == "dayFarming" then
				        while dayFarming do
					        virtualUser:SetKeyDown('0x7a')
					        wait(1)
					        virtualUser:SetKeyUp('0x7a')
				        end
					end
			    end)
			end
			
			-------------------- Lesser Human Torch --------------------
			local moveParts = false
			local Mouse = game.Players.LocalPlayer:GetMouse()
			local revisedDirX
			local Direction = Vector3.new(0,0,0)
			local InterpolatedDir = Direction
			local Tilt = 0
			local InterpolatedTilt = Tilt
			local RunService = game:GetService("RunService")
			local Toggled = false
			local CameraPos = game.Workspace.CurrentCamera.CFrame.Position
			local flyDebounce = false
			
			spawn(function()
				while true do
					wait()
					if game.Players.LocalPlayer then
						if game.Players.LocalPlayer.Character ~= nil then
							if game.Players.LocalPlayer.Character.Humanoid ~= nil then
								if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
									moveParts = false
									Toggled = false
								end
							end
						end
					end
				end
			end)
			
			local Settings = {
				Speed = 23,
				ToggleKey = Enum.KeyCode.T,
				ForwardKey = Enum.KeyCode.W,
				LeftKey = Enum.KeyCode.A,
				BackwardKey = Enum.KeyCode.S,
				RightKey = Enum.KeyCode.D,
			}
			
			function Lerp(a, b, t)
			    return a + (b - a) * t
			end
			local LastPos = nil
			
			function KeyHandler(actionName, userInputState)
				if true and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
					if actionName == "Toggle" and userInputState == Enum.UserInputState.Begin then
						Toggled = not Toggled
						if Toggled then -- enabled
							moveParts = true
							LastPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
							game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true 
							spawnFireSphere()
							makeFlyCharacter()
						else -- disabled
							LastPos = nil
							spawnFireSphere()
							destroyFlyCharacter()
							local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
							hrp.CFrame = CFrame.new(hrp.Position) * CFrame.Angles(0,math.rad(hrp.Orientation.Y),0)
							game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
							spawnPlatformUnderPlayer()
						end
					elseif actionName == "Forward" then
						Tilt = userInputState == Enum.UserInputState.Begin and -60 or 0
						Direction = Vector3.new(Direction.x,Direction.y,userInputState == Enum.UserInputState.Begin and -0.75 or 0)
					elseif actionName == "Left" then
						Direction = Vector3.new(userInputState == Enum.UserInputState.Begin and -0.5 or 0,Direction.y,Direction.z)
					elseif actionName == "Backward" then
						Tilt = userInputState == Enum.UserInputState.Begin and 60 or 0
						Direction = Vector3.new(Direction.x,Direction.y,userInputState == Enum.UserInputState.Begin and 0.75 or 0)
					elseif actionName == "Right" then
						Direction = Vector3.new(userInputState == Enum.UserInputState.Begin and 0.5 or 0,Direction.y,Direction.z)
					end
				end
			end
			
			game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
				if flyEnabled and not gameProcessedEvent then
					if game.Players.LocalPlayer.Character ~= nil then
						if game.Players.LocalPlayer.Character.Humanoid ~= nil then
							if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
								if inputObject.KeyCode == Settings.ToggleKey then
									KeyHandler("Toggle", Enum.UserInputState.Begin, inputObject)
								elseif inputObject.KeyCode == Settings.ForwardKey then
									KeyHandler("Forward", Enum.UserInputState.Begin, inputObject)
								elseif inputObject.KeyCode == Settings.LeftKey then
									KeyHandler("Left", Enum.UserInputState.Begin, inputObject)
								elseif inputObject.KeyCode == Settings.BackwardKey then
									KeyHandler("Backward", Enum.UserInputState.Begin, inputObject)
								elseif inputObject.KeyCode == Settings.RightKey then
									KeyHandler("Right", Enum.UserInputState.Begin, inputObject)
								end
							end
						end
					end
				end
			end)
			
			game:GetService("UserInputService").InputEnded:connect(function(inputObject, gameProcessedEvent)
				if flyEnabled and not gameProcessedEvent then
					if game.Players.LocalPlayer.Character ~= nil then
						if game.Players.LocalPlayer.Character.Humanoid ~= nil then
							if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
								if inputObject.KeyCode == Settings.ToggleKey then
									KeyHandler("Toggle", Enum.UserInputState.End, inputObject)
								elseif inputObject.KeyCode == Settings.ForwardKey then
									KeyHandler("Forward", Enum.UserInputState.End, inputObject)
								elseif inputObject.KeyCode == Settings.LeftKey then
									KeyHandler("Left", Enum.UserInputState.End, inputObject)
								elseif inputObject.KeyCode == Settings.BackwardKey then
									KeyHandler("Backward", Enum.UserInputState.End, inputObject)
								elseif inputObject.KeyCode == Settings.RightKey then
									KeyHandler("Right", Enum.UserInputState.End, inputObject)
								end
							end
						end
					end
				end
			end)
			
			local dir = "up"
			local float = 0
			local flyDebounce = false
			RunService.RenderStepped:Connect(function()
				if Toggled and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
					if flyDebounce == false then
						flyDebounce = true
						spawn(function()
							while Toggled do
								wait(0.2)
								if dir == "up" and float == 5 then
									dir = "down"
									float = float - 1
								elseif float < 5 and dir == "up" then
									float = float + 1
								elseif float > 0 and dir == "down" then
									float = float - 1
								elseif float == 0 and dir == "down" then
									dir = "up"
									float = float + 1
								end
							end
						end)
					end
					for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
						if v:IsA("BasePart") then
							v.Velocity = Vector3.new(0,float,0)
						end
					end
					local RootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
					InterpolatedDir = InterpolatedDir:Lerp((Direction * (Settings.Speed)),.2)
					RootPart.CFrame = RootPart.CFrame:Lerp(CFrame.new(RootPart.Position,RootPart.Position + Mouse.UnitRay.Direction) * CFrame.new(InterpolatedDir)  * CFrame.Angles(0,0,0),.2)
				elseif Toggled and flyEnabled == false then
					Toggled = false
					LastPos = nil
					spawnFireSphere()
					destroyFlyCharacter()
					local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
					hrp.CFrame = CFrame.new(hrp.Position) * CFrame.Angles(0,math.rad(hrp.Orientation.Y),0)
					game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
					spawnPlatformUnderPlayer()
				end	
			end)
			
			function makeFlyCharacter()
				bodyTransparency(game.Players.LocalPlayer.Character.Head, game.Players.LocalPlayer.Character, 1)
				local newH = Instance.new("Part")
				newH.Parent = game.Players.LocalPlayer.Character.Head
				newH.Name = "FireLimb"
				newH.Size = Vector3.new(1, 1, 1)
				newH.Material = Enum.Material.Neon
				newH.Massless = true
				newH.Transparency = 0.05
				newH.Color = Color3.fromRGB(132, 77, 38)
				local headM = Instance.new("Motor6D")
				headM.Parent = game.Players.LocalPlayer.Character.Torso
				headM.Part0 = game.Players.LocalPlayer.Character.Torso
				headM.Part1 = newH
				headM.C0 = CFrame.new(0,1.5,0) * CFrame.Angles(0, 0, 0)
				
				local newT = Instance.new("Part")
				newT.Parent = game.Players.LocalPlayer.Character
				newT.Name = "FireLimb"
				newT.Size = Vector3.new(2, 2, 1)
				newT.Material = Enum.Material.Neon
				newT.Massless = true
				newT.Transparency = 0.05
				newT.Color = Color3.fromRGB(132, 77, 38)
				local torsoM = Instance.new("Motor6D")
				torsoM.Parent = game.Players.LocalPlayer.Character.Torso
				torsoM.Part0 = game.Players.LocalPlayer.Character.Torso
				torsoM.Part1 = newT
				torsoM.C0 = CFrame.new(0,0,0) * CFrame.Angles(0, 0, 0)
				
				local newRL = Instance.new("Part")
				newRL.Parent = game.Players.LocalPlayer.Character
				newRL.Name = "FireLimb"
				newRL.Size = Vector3.new(1, 2, 1)
				newRL.Material = Enum.Material.Neon
				newRL.Massless = true
				newRL.Transparency = 0.05
				newRL.Color = Color3.fromRGB(132, 77, 38)
				local newRLM = Instance.new("Motor6D")
				newRLM.Parent = game.Players.LocalPlayer.Character.Torso
				newRLM.Part0 = game.Players.LocalPlayer.Character.Torso
				newRLM.Part1 = newRL
				newRLM.C0 = CFrame.new(-0.65,-2,0.5) * CFrame.Angles(math.rad(155), 0, math.rad(10))
				
				local newLL = Instance.new("Part")
				newLL.Parent = game.Players.LocalPlayer.Character
				newLL.Name = "FireLimb"
				newLL.Size = Vector3.new(1, 2, 1)
				newLL.Material = Enum.Material.Neon
				newLL.Massless = true
				newLL.Transparency = 0.05
				newLL.Color = Color3.fromRGB(132, 77, 38)
				local newLLM = Instance.new("Motor6D")
				newLLM.Parent = game.Players.LocalPlayer.Character.Torso
				newLLM.Part0 = game.Players.LocalPlayer.Character.Torso
				newLLM.Part1 = newLL
				newLLM.C0 = CFrame.new(0.65,-2,0.5) * CFrame.Angles(math.rad(155), 0, math.rad(-10))
				
				local newLA = Instance.new("Part")
				newLA.Parent = game.Players.LocalPlayer.Character
				newLA.Name = "FireLimb"
				newLA.Size = Vector3.new(1, 2, 1)
				newLA.Material = Enum.Material.Neon
				newLA.Massless = true
				newLA.Transparency = 0.05
				newLA.Color = Color3.fromRGB(132, 77, 38)
				local newLAM = Instance.new("Motor6D")
				newLAM.Parent = game.Players.LocalPlayer.Character.Torso
				newLAM.Part0 = game.Players.LocalPlayer.Character.Torso
				newLAM.Part1 = newLA
				newLAM.C0 = CFrame.new(1.5,0,0.2) * CFrame.Angles(math.rad(135), 0, math.rad(-10))
				
				local newRA = Instance.new("Part")
				newRA.Parent = game.Players.LocalPlayer.Character
				newRA.Name = "FireLimb"
				newRA.Size = Vector3.new(1, 2, 1)
				newRA.Material = Enum.Material.Neon
				newRA.Massless = true
				newRA.Transparency = 0.05
				newRA.Color = Color3.fromRGB(132, 77, 38)
				local newRAM = Instance.new("Motor6D")
				newRAM.Parent = game.Players.LocalPlayer.Character.Torso
				newRAM.Part0 = game.Players.LocalPlayer.Character.Torso
				newRAM.Part1 = newRA
				newRAM.C0 = CFrame.new(-1.5,0,0.2) * CFrame.Angles(math.rad(135), 0, math.rad(10))
				
				local colorKeypoints = {
					ColorSequenceKeypoint.new( 0, Color3.new(1, 1, 1)),  -- At t=0, White
					ColorSequenceKeypoint.new(.5, Color3.new(1, .5, 0)), -- At t=.5, Orange
					ColorSequenceKeypoint.new( 1, Color3.new(1, 0, 0))   -- At t=1, Red
				}
				local sizeKeypoints = {
					NumberSequenceKeypoint.new( 0, 0.5),  -- At t=0, White
					NumberSequenceKeypoint.new(1, 0.0075) -- At t=.5, Orange
				}
				
				local pList = {newRA, newLA}
				
				for i = 1,2 do
					local fire = Instance.new("ParticleEmitter")
					fire.Color = ColorSequence.new(colorKeypoints)
					fire.LightEmission = 0.6
					fire.Size = NumberSequence.new(sizeKeypoints)
					fire.Texture = "rbxassetid://241594419"
					fire.LockedToPart = true
					fire.Lifetime = NumberRange.new(0.3,0.3)
					fire.Rate = 600
					fire.Speed = NumberRange.new(20,20)
					fire.Parent = pList[i]
				end
			end
			
			function destroyFlyCharacter()
				bodyTransparency(game.Players.LocalPlayer.Character.Head, game.Players.LocalPlayer.Character, 0)
				for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v.Name == "FireLimb" then
						v:Destroy()
					end
				end
			end
			
			function bodyTransparency(head, char, value)
				head.Transparency = value
				char:FindFirstChild("Right Leg").Transparency = value
				char:FindFirstChild("Left Leg").Transparency = value
				char:FindFirstChild("Right Arm").Transparency = value
				char:FindFirstChild("Left Arm").Transparency = value
				char:FindFirstChild("Torso").Transparency = value
			
				for i,v in pairs(char:GetChildren()) do
					if v.ClassName == "Accessory" then
						v.Handle.Transparency = value
					end
				end
			end
			
			function spawnFireSphere()
				spawn(function()
					local sphere = Instance.new("Part")
					sphere.Shape = "Ball"
					sphere.Name = "FireLimb"
					sphere.Parent = game.Workspace
					sphere.Anchored = true
					sphere.CanCollide = false
					sphere.Transparency = 0.7
					sphere.Size = Vector3.new(0.05,0.05,0.05)
					sphere.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
					sphere.Color = Color3.fromRGB(170, 85, 0)
					sphere.Material = Enum.Material.Neon
					for i = 1,10 do
						RunService.Heartbeat:Wait()
						sphere.Size = Vector3.new(sphere.Size.X+3,sphere.Size.Y+3,sphere.Size.Z+3)
					end
					wait(0.6)
					for i = 1,10 do
						wait(0.02)
						sphere.Transparency = sphere.Transparency + 0.1
					end
					sphere:Destroy()
				end)
			end
			
			function spawnPlatformUnderPlayer()
				local safetyPlatform = Instance.new("Part")
				safetyPlatform.Color = Color3.fromRGB(158,99,40)
				safetyPlatform.Material = Enum.Material.Neon
				safetyPlatform.Transparency = 0.3
				safetyPlatform.CanCollide = true
				safetyPlatform.Anchored = true
				safetyPlatform.Shape = "Cylinder"
				safetyPlatform.Size = Vector3.new(0.6,22,22)
				safetyPlatform.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position) * CFrame.new(0,-3.6,0)
				safetyPlatform.Parent = game.Workspace
				safetyPlatform.Orientation = Vector3.new(0,0,90)
				spawn(function()
					repeat
					wait()
					until (safetyPlatform.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 30
					safetyPlatform:Destroy()
				end)
			end
			
			-------------------- Check Live Folder --------------------
			
			game.Workspace.Live.ChildAdded:Connect(function(child)
				if child.ClassName == "Model" and child.Name ~= game.Players.LocalPlayer.Name then
					refreshPlayerESP()
				end
			end)
			game.Workspace.Live.ChildRemoved:Connect(function(child)
				if child.ClassName == "Model" and child.Name ~= game.Players.LocalPlayer.Name then
					refreshPlayerESP()
				end
			end)
			
			function checkLive()
				for i,v in pairs(game.Workspace.Live:GetDescendants()) do
				    if v.Name == "FakeHumanoid" then
						if table.find(playerNameList, v.Parent.Parent.Name) == nil then -- changed to v.parent.parent for madrasians
							table.insert(gameNameList, v.Parent.Name)
							table.insert(playerNameList, v.Parent.Parent.Name)
							if espEnabled then
								addNameEsp(game.Players:FindFirstChild(v.Parent.Parent.Name))
							end
						end
				    end
				end
			end

			function refreshPlayerESP()
				gameNameList = {}
				playerNameList = {}
				for _,v in pairs(espGUIList) do
					v.Parent:Destroy()
				end
				espGUIList = {}
				checkLive()
			end
			-------------------- Player ESP --------------------
			function updateESP()
				spawn(function()
					while game.Players.LocalPlayer.Character ~= nil do
						wait(0.05)
						for i,v in pairs(espGUIList) do
							if game.Players:FindFirstChild(v.Parent.Parent.Parent.Name).Character ~= nil then
								local char = game.Players:FindFirstChild(v.Parent.Parent.Parent.Name).Character
								local inGameName = ""
								for x,y in pairs(playergui.LeaderboardGui.MainFrame.ScrollingFrame:GetChildren()) do
									if y.Name == "PlayerLabel" then
									    for q,r in pairs(gameNameList) do
									        if r == y.Text then
												if playerNameList[q] ~= nil then
										            if playerNameList[q] == char.Name then
														inGameName = y.Text
														if char ~= nil then
															v.Text = inGameName .. " | " .. char.Name .. "\n[" .. math.floor((char.Humanoid.Health)+0.5) .. " | " .. math.floor((char.Humanoid.MaxHealth)+0.5) .. "]\n" .. math.floor((char.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude+0.5)
														end
													end
												end
									        end
									    end
									end
								end
							end
						end
					end
				end)
			end
			updateESP()
			
			function addNameEsp(player)
				if player ~= game.Players.LocalPlayer then
					if player.Character ~= nil then
						if player.Character.Head:FindFirstChild("PlayerESP") == nil then
							local BillboardGui = Instance.new("BillboardGui")
							local TextLabel = Instance.new("TextLabel")
							local TextLabel2 = Instance.new("TextLabel")
							local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
							local UITextSizeConstraint2 = Instance.new("UITextSizeConstraint")
							local inGameName = ""
							
							for i,v in pairs(playergui.LeaderboardGui.MainFrame.ScrollingFrame:GetChildren()) do
								if v.Name == "PlayerLabel" then
								    for q,r in pairs(gameNameList) do
								        if r == v.Text then
								            if playerNameList[q] == player.Name then
												inGameName = v.Text
											end
								        end
								    end
								end
							end
							player.Character.Humanoid.DisplayDistanceType = "None"
							BillboardGui.Parent = player.Character.Head
							BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
							BillboardGui.Active = true
							BillboardGui.AlwaysOnTop = true
							BillboardGui.ExtentsOffsetWorldSpace = Vector3.new(0, 5, 0)
							BillboardGui.LightInfluence = 0
							BillboardGui.ClipsDescendants = false
							BillboardGui.Size = UDim2.new(100, 20, 3,2)
							BillboardGui.Name = "PlayerESP"
							BillboardGui.MaxDistance = 10000000
							
							TextLabel.Parent = BillboardGui
							TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							TextLabel.BackgroundTransparency = 1.000
							TextLabel.Position = UDim2.new(0, 0, 0, 0)
							TextLabel.Size = UDim2.new(1, 0, 1, 0)
							TextLabel.Font = Enum.Font.SourceSansBold
							TextLabel.Text = inGameName .. " | " .. player.Name .. "\n[" .. math.floor((player.Character.Humanoid.Health)+0.5) .. " | " .. math.floor((player.Character.Humanoid.MaxHealth)+0.5) .. "]\n" .. math.floor((player.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude+0.5)
							TextLabel.TextColor3 = Color3.fromRGB(255, 152, 35)
							TextLabel.TextSize = 11
							TextLabel.ClipsDescendants = false
							TextLabel.ZIndex = 0
							TextLabel.TextStrokeTransparency = 0
							table.insert(espGUIList, TextLabel)
							
							UITextSizeConstraint.Parent = TextLabel
							UITextSizeConstraint.MaxTextSize = 11
							UITextSizeConstraint.MinTextSize = 11
							for _,limb in pairs(player.Character:GetChildren()) do
								if table.find(espList, limb.Name) then
									if limb:FindFirstChild("SurfaceGui") == nil then
										for i = 1,6 do
											local SurfaceGui = Instance.new("SurfaceGui")
											local ImageLabel = Instance.new("ImageLabel")
											
										    SurfaceGui.Parent = limb
										    SurfaceGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
										    SurfaceGui.AlwaysOnTop = true
										    SurfaceGui.LightInfluence = 0
										    SurfaceGui.Face = bodyAreaList[i]
										    
										    ImageLabel.Parent = SurfaceGui
										    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 152, 35)
										    ImageLabel.Size = UDim2.new(1, 0, 1, 0)
										    ImageLabel.ImageColor3 = Color3.fromRGB(255, 152, 35)
											ImageLabel.BackgroundTransparency = 0.5
										end
									end
								end
							end
						end
					end
				end
			end
			checkLive()
			
			-------------------- Spectate players --------------------
			function setupESP()
				while visualsEnabled do
					wait(0.2)
					for i,v in pairs(playergui.LeaderboardGui.MainFrame.ScrollingFrame:GetChildren()) do
					    if v.Name == "PlayerLabel" and v then
							if v and v:FindFirstChild("SpecLabel") == nil and v:FindFirstChild("IlluLabel") == nil then
								v.Parent.ClipsDescendants = false
								v.Parent.Parent.ClipsDescendants = false
								local ImageButton = Instance.new("ImageButton")
								ImageButton.Parent = v
								ImageButton.Name = "SpecLabel"
								if playerNameList[table.find(gameNameList, ImageButton.Parent.Text)] == game.Players.LocalPlayer.Name then
									ImageButton.ImageColor3 = Color3.fromRGB(112, 255, 129)
								else
									ImageButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
								end
								ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								ImageButton.BackgroundTransparency = 1.000
								ImageButton.Size = UDim2.new(0, 28.9, 0, 19.4)
								ImageButton.AnchorPoint = Vector2.new(0.5,0.5)
								ImageButton.Image = "http://www.roblox.com/asset/?id=4964059685"
								spawn(function()
									while true do
										wait(0.2)
										ImageButton.Position = UDim2.new(0,-24,0,9.1)
									end
								end)
								spawn(function()
									if ImageButton then
										ImageButton.MouseButton1Click:Connect(function()
											if playerNameList[table.find(gameNameList, ImageButton.Parent.Text)] ~= nil then
												game.Workspace.Camera.CameraSubject = game.Players:FindFirstChild(playerNameList[table.find(gameNameList, ImageButton.Parent.Text)]).Character.Humanoid
												for _,limb in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
													if limb.Name == "LeftRuneArm" or limb.Name == "RightRuneArm" then
														for _,rune in pairs(limb:GetChildren()) do
															if rune:FindFirstChild("Decal") ~= nil then
																rune:FindFirstChild("Decal").Transparency = 1
															end
														end
													end
												end
											end
										end)
									end
								end)
							end
						end
					end
				end
			end
			
			-------------------- Leaderboard Visuals --------------------
			function enableLBVisuals(value)
				for i,v in pairs(playergui.LeaderboardGui.MainFrame.ScrollingFrame:GetChildren()) do
					if v.Name == "PlayerLabel" then
						for q,r in pairs(v:GetChildren()) do
							if r.ClassName == "ImageButton" or r.Name == "CurrentSpecLabel" then
								r.Visible = value
							end
						end
					end
				end
			end
			
			-------------------- Remote Event Detection --------------------
			local requiredRemote = ""
			local enabled = {
			    RemoteEvent = true,
			}
			
			local metatable = assert(getrawmetatable, "needs access to function 'getrawmetatable'")(game)
			if setreadonly then
			    setreadonly(metatable, false)
			end
			
			local function CountTable(t)
			    local count, key = 0
			    repeat
			        key = next(t, key)
			        if key ~= nil then
			            count = count + 1
			        end
			    until key == nil
			    return count
			end
			
			local PrintTable
			local function ParseObject(object, spacing, scope, checkedTables)
			    local objectType = type(object)
			    if objectType == "string" then
			        return spacing .. string.format("%q", object)
			    elseif objectType == "nil" then
			        return spacing .. "nil"
			    elseif objectType == "table" then
			        if checkedTables[object] then
			            return spacing .. tostring(object) .. " [recursive table]"
			        else
			            checkedTables[object] = true
			            return spacing .. PrintTable(object, scope + 1, checkedTables)
			        end
			    else
			        return spacing .. tostring(object)
			    end
			end
			function PrintTable(t, scope, checkedTables)
			    checkedTables = checkedTables or {}
			    scope = scope or 1
			    local result = (checkedTables and "{" or "") .. "\n"
			    local spacing = string.rep("\t", scope)
			    local function parse(index, value)
			        result = result .. ParseObject(index, spacing, scope, checkedTables) .. " : " .. ParseObject(value, "", scope, checkedTables) .. "\n"
			    end
			    if CountTable(t) ~= #t then
			        table.foreach(t, parse)
			    else
			        for index = 1, select("#", unpack(t)) do
			            parse(index, t[index])
			        end
			    end
			    return result .. string.sub(spacing, 1, #spacing - 1) .. (checkedTables and "}" or "")
			end
			
			local methods = {
			    RemoteEvent = "FireServer",
			}
			
			local __namecall = __namecall or metatable.__namecall
			local __index = __index or metatable.__index
			if getgenv then
			    if removeSpy then
			        removeSpy()
			    end
			    getgenv().__namecall = __namecall
			    getgenv().__index = __index
			    getgenv().removeSpy = function()
			        getgenv().removeSpy = nil
			        metatable.__namecall = __namecall
			        metatable.__index = __index
			    end
			end
			
			local function RemoteCallback(self, ...)
			    if typeof(self) ~= "Instance" then
			        return error(select(2, pcall(__index, self)))
			    end
			    local arguments = {...}
			    local result = {methods[self.ClassName](self, ...)}
			    local callerScript = rawget(getfenv(0), "script")
			    callerScript = typeof(callerScript) == "Instance" and callerScript or nil
				local requiredString = string.sub(string.format("Path: %s",(not self.Parent and "[NIL]: " or "") .. self:GetFullName()), 34)
				if string.len(requiredString) == 36 and string.sub(requiredString,9,9) == "-" then
					for q,r in pairs(game.Workspace:GetChildren()) do
					    if r.ClassName == "Folder" and r.Name == "NPCs" then
					        for g,h in pairs(r:GetChildren()) do
					            if h.Name == "Monk" then
					    			if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - h.Head.Position).Magnitude <= 13 then
										if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 0 then
					    					requiredRemote = requiredString
										end
					    			end
					    		end
					        end
						end
					end
				end
			    return unpack(result)
			end
			RemoteCallback = newcclosure(RemoteCallback)
			methods.RemoteEvent = hookfunc(Instance.new("RemoteEvent").FireServer, RemoteCallback)
			
			local function IsAuthorized(self, index)
			    return (index == "Fire" or index == "Invoke" or index == "FireServer" or index == "InvokeServer") and (enabled[self.ClassName])
			end
			
			function metatable:__namecall(...)
			    local arguments = {...}
			    local index = table.remove(arguments)
			    if IsAuthorized(self, index) then
			        return RemoteCallback(self, unpack(arguments))
			    end
			    return __namecall(self, ...)
			end
			metatable.__namecall = newcclosure(metatable.__namecall)
			
			-------------------- World Setup + Teleport + Check --------------------
			function teleport(tpPos , newhrp, newtorso)
				if mode ~= "" then
					newtorso.Anchored = false
					game.Workspace.Live:FindFirstChild(game.Players.LocalPlayer.Name).HumanoidRootPart.CFrame = CFrame.new(tpPos) * CFrame.new(0,2,0)
					wait(0.2)
					newtorso.Anchored = true
				end
			end
			
			function clearGripPath()
				for i,v in pairs(pointsFolder:GetChildren()) do
					v:Destroy()
				end
				partsTable = {}
			end
			
			function checkForMainAcc(newchar, newhrp, newtorso)
				--local char = game.Workspace.Live:FindFirstChild(game.Players.LocalPlayer.Name)
				
				--local hrp = char:WaitForChild("HumanoidRootPart")
				--local torso = char:WaitForChild("Torso")
				
				MainAcc = MacroFolder.AutoExpGripFarm:FindFirstChild("PlayerNameBox").Text
				if mode == "both" or mode == "exp" then
					if game.Players:FindFirstChild(MainAcc) then
						lifeCheck(game.Players.LocalPlayer.Character, game.Players.LocalPlayer.Character.HumanoidRootPart, game.Players.LocalPlayer.Character.Torso)
					end
				elseif mode == "grippo" then
					if game.Players:FindFirstChild(MainAcc) then
						lifeCheck(game.Players.LocalPlayer.Character, game.Players.LocalPlayer.Character.HumanoidRootPart, game.Players.LocalPlayer.Character.Torso)
					end
				end
			end
			
			-------------------- Modes --------------------
			function grippo(newhrp, newtorso)
				teleporting = true
				for i,location in pairs(scroomGripPath) do
					teleport(location, newhrp, newtorso)
					wait(waitTime)
				end
				wait(0.1)
				newtorso.Anchored = false
				teleporting = false
				clearGripPath()
			end
			
			function exp(newchar, newhrp, newtorso)
				wait(1)
				local pointA = game.Players.LocalPlayer.Character.Torso.Position
				local pointB = game.Workspace.Live:FindFirstChild(MainAcc).HumanoidRootPart.Position
				local midpoint
				if pointB ~= nil and mode ~= "" then
					if (pointA-pointB).Magnitude/maxTp > 1 then -- Finding Path
						for i = 1,math.floor(((pointA-pointB).Magnitude/maxTp) + 0.5)-1 do
							local multiplier = 1/math.floor(((pointA-pointB).Magnitude/maxTp) + 0.5)
							midpoint = pointA:Lerp(pointB, multiplier*i)
							local p = Instance.new("Part")
							p.Name = "part" .. i
							table.insert(partsTable, p.Name)
							p.Size = Vector3.new(0.5,0.5,0.5)
							p.Anchored = true
							p.Transparency = 1
							p.Material = Enum.Material.Neon
							p.CanCollide = false
							p.CFrame = CFrame.new(midpoint)
							p.Parent = pointsFolder
						end
					end
					teleporting = true
					for i,v in pairs(partsTable) do
						local currentPart = pointsFolder:FindFirstChild(v)
						teleport(currentPart.Position, newhrp, newtorso)
						wait(waitTime)
					end
					teleport(pointB + Vector3.new(0,-2.75,0), newhrp, newtorso)
					wait(0.2)
					game.Workspace.Live:FindFirstChild(game.Players.LocalPlayer.Name).Torso.Anchored = true
					teleporting = false
					clearGripPath()
				end
			end
			
			-------------------- Check Lives --------------------
			function lifeCheck(newchar, newhrp, newtorso)
				if mode ~= "" and MainAcc ~= "" then
					spawn(function()
						while game.Players:FindFirstChild(MainAcc) and mode ~= "" do
							wait(1)
						end
						MainAcc = ""
						MacroFolder.AutoExpGripFarm:FindFirstChild("PlayerNameBox").Text = ""
					end)
					while string.len(requiredRemote) ~= 36 and mode ~= "" and MainAcc ~= "" do
						wait(0.4)
					end
					wait(2)
					local sh
					if game.Workspace.Live:WaitForChild(game.Players.LocalPlayer.Name):FindFirstChild("ScroomHead") then
						sh = game.Workspace.Live:WaitForChild(game.Players.LocalPlayer.Name):FindFirstChild("ScroomHead")
					else
						wait(2)
					end
					local sh = game.Workspace.Live:WaitForChild(game.Players.LocalPlayer.Name):FindFirstChild("ScroomHead")
					if sh ~= nil then
						local life = game.Players.LocalPlayer.PlayerGui:WaitForChild("StatGui"):WaitForChild("Container"):WaitForChild("Health"):WaitForChild("Lives")
						while #life:GetChildren() ~= 5 and mode ~= "" and MainAcc ~= "" do
							wait(0.2)
						end
						for i,v in pairs(life:GetChildren()) do
							if v.Name == "Roller" and i == 2 then
								local letterChar = v:WaitForChild("Char")
								if letterChar ~= nil then
									if tonumber(v:WaitForChild("Char").Text) > 0 then
										autoGripMacro(newchar, newhrp, newtorso)
									elseif tonumber(v:WaitForChild("Char").Text) == 0 then
										while game.Workspace.Live:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart.CFrame ~= CFrame.new(-7136.831, 271, 2771.207) and mode ~= "" and MainAcc ~= "" do
											wait(0.1)
											game.Workspace.Live:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart.CFrame = CFrame.new(-7136.831, 271, 2771.207)
										end
										wait(0.2)
										for q,r in pairs(game.Workspace:GetChildren()) do
										    if r.ClassName == "Folder" and r.Name == "NPCs" then
										        for g,h in pairs(r:GetChildren()) do
										            if h.Name == "Ferryman" then
														local clicker = h.ClickDetector
										    			if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - h.Head.Position).Magnitude <= 13 then
															fireclickdetector(clicker)
															wait(0.8)
															game.ReplicatedStorage.Requests:FindFirstChild(requiredRemote):FireServer({choice = "New Character\n(free)"})
															wait(0.8)
															game.ReplicatedStorage.Requests:FindFirstChild(requiredRemote):FireServer({choice = "My son."})
										    			end
										    		end
										        end
											end
										end
									end
								end
							end
						end
					end
				end
			end
			
			-------------------- Character Respawn --------------------
			game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
				if mode ~= "" then
					local newchar = char
					local newhrp = char:WaitForChild("HumanoidRootPart")
					local newtorso = char:WaitForChild("Torso")
					if newtorso.Position.X > -6000 then
						wait(0.2)
						newtorso.Anchored = true
						wait(1.5)
						newtorso.Anchored = false
					end
					checkForMainAcc(newchar, newhrp, newtorso)
				end
				if espEnabled then
					updateESP()
					
				end
			end)
			
			-------------------- Main Auto-grip/exp Function --------------------
			function autoGripMacro(newchar, newhrp, newtorso)
				spawn(function()
					RunService.RenderStepped:Connect(function()
						if teleporting then
							for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
								if v:IsA("BasePart") then
									v.Velocity = Vector3.new(0,0,0)
								end
							end
						end
					end)
				end)
				newtorso.Anchored = false
				teleporting = true
				
				if mode == "exp" then
					exp(newchar, newhrp, newtorso)
					while game.Workspace.Live:FindFirstChild(game.Players.LocalPlayer.Name).Humanoid.Health > 5 and mode ~= "" and MainAcc ~= "" do
						wait()
					end
					if game.Workspace.Live:FindFirstChild(game.Players.LocalPlayer.Name).Humanoid.Health <= 5 then
						game.Workspace.Live:FindFirstChild(game.Players.LocalPlayer.Name).Head:Destroy()
						game.Workspace.Live:FindFirstChild(game.Players.LocalPlayer.Name).Torso.Anchored = false
					elseif mode ~= "" or MainAcc ~= "" then
						game.Workspace.Live:FindFirstChild(game.Players.LocalPlayer.Name).Head:Destroy()
						game.Workspace.Live:FindFirstChild(game.Players.LocalPlayer.Name).Torso.Anchored = false
					end
				elseif mode == "grippo" then
					grippo(newhrp, newtorso)
				elseif mode == "both" then
					exp(newchar, newhrp, newtorso)
					while newchar.Humanoid.Health > 5 and mode ~= "" and MainAcc ~= "" do
						wait()
					end
					if game.Workspace.Live:FindFirstChild(game.Players.LocalPlayer.Name).Humanoid.Health <= 5 then
						game.Workspace.Live:FindFirstChild(game.Players.LocalPlayer.Name).Torso.Anchored = false
					elseif mode ~= "" or MainAcc ~= "" then
						game.Workspace.Live:FindFirstChild(game.Players.LocalPlayer.Name).Head:Destroy()
					end
				end
			end
		end
	end
end