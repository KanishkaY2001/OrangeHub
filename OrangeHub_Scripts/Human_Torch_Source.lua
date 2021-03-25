local x = loadstring(game:HttpGet("https://raw.githubusercontent.com/orangeNspice16/Fail-Safe/master/Auth"))();
if x == "N7#@*()%)(Uiji3nmnfmkOfwf43FNW#%$#YH%&F@(*4e)$(*%()@$*()NOInf0#U09rf2jhf9nwfi023j0r9mfF)Q(N#))(9-hjt943j-f0q2jq" then -- Third fail-safe
	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local ImageLabel = Instance.new("ImageLabel")
	local requiredRemote
	
	ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
	Frame.Parent = ScreenGui
	Frame.AnchorPoint = Vector2.new(0, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(99, 99, 99)
	Frame.BorderColor3 = Color3.fromRGB(21, 56, 255)
	Frame.BorderSizePixel = 2
	Frame.Position = UDim2.new(0.0199999996, 0, 0.5, 0)
	Frame.Size = UDim2.new(0, 20, 0, 250)
	
	ImageLabel.Parent = Frame
	ImageLabel.AnchorPoint = Vector2.new(0, 1)
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 159, 48)
	ImageLabel.BorderSizePixel = 0
	ImageLabel.Position = UDim2.new(0, 0, 1, 0)
	ImageLabel.Size = UDim2.new(1, 0, 1, 0)
	
	local plr = game.Players.LocalPlayer
	--[[
	game:GetService("CoreGui").RobloxGui.TopBarContainer.NameHealthContainer.Username.Text = "Human Torch"
	plr.PlayerGui.DangerGui:Destroy()
	local healthUI = plr.PlayerGui.StatGui.Container.Health
	local newHP = healthUI:Clone()
	newHP.Parent = plr.PlayerGui.StatGui.Container
	newHP.Slider.Size = UDim2.new(1,0,1,0)
	healthUI:Destroy()
	--]]
	local UserInputService = game:GetService("UserInputService")
	local antiAA = false
	local moveParts = false
	local recharging = false
	
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
	
	function findRemote()
		local RLkH = require(game:GetService("ReplicatedStorage").Assets.Modules.KeyHandler)
		local plrName = game.Players.LocalPlayer.Name
		local fE = game:GetService("Workspace").Live[plrName].CharacterHandler.Input
		local RLtable = syn.secure_call(RLkH, fE)
		falldmg = syn.secure_call(RLtable.getKey, fE, "ApplyFallDamage", "plum")
		requiredRemote = falldmg
	end
	
	spawn(function()
		while true do
			RunService.Heartbeat:Wait()
			if game.Players.LocalPlayer then
				if game.Players.LocalPlayer.Character ~= nil then
					if game.Players.LocalPlayer.Character.Humanoid ~= nil then
						if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
							antiAA = false
							moveParts = false
							recharging = false
							requiredRemote = nil
							Toggled = false
						end
					end
				end
			end
		end
	end)
	
	function hurtMe()
		spawn(function()
		    while antiAA do
		        RunService.Heartbeat:Wait()
		        if game.Players.LocalPlayer.Character.Humanoid.Health >= 5 then
		            requiredRemote:FireServer({math.random(),0.2})
		        end
		    end
		end)
		
		spawn(function()
			while antiAA and moveParts do
				RunService.Heartbeat:Wait()
				for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
			        if v.ClassName == "Part" then
			            if v.Name == "Head" then
			                v.CFrame = CFrame.new(hrp.Position.X,10000,hrp.Position.Z)
			            elseif v.Name == "Left Arm" or v.Name == "Right Arm" then
			                v.CFrame = CFrame.new(hrp.Position.X,10000,hrp.Position.Z)
			            elseif v.Name == "Left Leg" or v.Name == "Right Leg" then
			                v.CFrame = CFrame.new(hrp.Position.X,10000,hrp.Position.Z)
			            end
			        end
			    end
			end
		end)
	end
	
	local Settings = {
		Speed = 27,
		ToggleKey = Enum.KeyCode.LeftControl,
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
			if actionName == "Toggle" and userInputState == Enum.UserInputState.Begin and not recharging then
				
				if Toggled and antiAA then
					recharging = true
					antiAA = false
					ImageLabel:TweenSize(
						UDim2.new(1, 0, 0, 0),Enum.EasingDirection.In,Enum.EasingStyle.Sine,10.5,true)
					wait(10.5)
					recharging = false
					moveParts = false
					ImageLabel.Size = UDim2.new(1,0,1,0)
				end
				Toggled = not Toggled
				if Toggled then -- enabled
					antiAA = true
					moveParts = true
					hurtMe()
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
				end
			elseif actionName == "Forward" then
				Tilt = userInputState == Enum.UserInputState.Begin and -90 or 0
				Direction = Vector3.new(Direction.x,Direction.y,userInputState == Enum.UserInputState.Begin and -0.75 or 0)
			elseif actionName == "Left" then
				Direction = Vector3.new(userInputState == Enum.UserInputState.Begin and -0.5 or 0,Direction.y,Direction.z)
			elseif actionName == "Backward" then
				Tilt = userInputState == Enum.UserInputState.Begin and 90 or 0
				Direction = Vector3.new(Direction.x,Direction.y,userInputState == Enum.UserInputState.Begin and 0.75 or 0)
			elseif actionName == "Right" then
				Direction = Vector3.new(userInputState == Enum.UserInputState.Begin and 0.5 or 0,Direction.y,Direction.z)
			end
		end
	end
	
	game:GetService("UserInputService").InputBegan:connect(function(inputObject, gameProcessedEvent)
		if game.Players.LocalPlayer.Character ~= nil then
			if game.Players.LocalPlayer.Character.Humanoid ~= nil then
				if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
					if inputObject.KeyCode == Settings.ToggleKey then
						findRemote()
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
	end)
	
	game:GetService("UserInputService").InputEnded:connect(function(inputObject, gameProcessedEvent)	
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
			--InterpolatedTilt = Lerp(InterpolatedTilt ,Tilt* (1),Tilt == 0 and .2 or .1)
			RootPart.CFrame = RootPart.CFrame:Lerp(CFrame.new(RootPart.Position,RootPart.Position + Mouse.UnitRay.Direction) * CFrame.new(InterpolatedDir)  * CFrame.Angles(0,0,0),.2)
		end	
	end)
	
	function makeFlyCharacter()
		local char = game.Players.LocalPlayer.Character
		local head = char.Head
		local torso = char.Torso
		bodyTransparency(head, char, 1)
		
		
	
		local newH = Instance.new("Part")
		newH.Parent = char
		newH.Name = "newH"
		newH.Size = Vector3.new(1, 1, 1)
		newH.Material = Enum.Material.Neon
		newH.Massless = true
		newH.Transparency = 0.05
		newH.Color = Color3.fromRGB(132, 77, 38)
		local headM = Instance.new("Motor6D")
		headM.Parent = torso
		headM.Part0 = torso
		headM.Part1 = newH
		headM.C0 = CFrame.new(0,0,-1.5) * CFrame.Angles(math.rad(90), 0, 0)
		
		local newT = Instance.new("Part")
		newT.Parent = char
		newT.Name = "newT"
		newT.Size = Vector3.new(2, 2, 1)
		newT.Material = Enum.Material.Neon
		newT.Massless = true
		newT.Transparency = 0.05
		newT.Color = Color3.fromRGB(132, 77, 38)
		local torsoM = Instance.new("Motor6D")
		torsoM.Parent = torso
		torsoM.Part0 = torso
		torsoM.Part1 = newT
		torsoM.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(90), 0, 0)
		
		local newRL = Instance.new("Part")
		newRL.Parent = char
		newRL.Name = "newRL"
		newRL.Size = Vector3.new(1, 2, 1)
		newRL.Material = Enum.Material.Neon
		newRL.Massless = true
		newRL.Transparency = 0.05
		newRL.Color = Color3.fromRGB(132, 77, 38)
		local newRLM = Instance.new("Motor6D")
		newRLM.Parent = torso
		newRLM.Part0 = torso
		newRLM.Part1 = newRL
		newRLM.C0 = CFrame.new(-0.63,0,2) * CFrame.Angles(math.rad(90), 0, math.rad(10))
		
		local newLL = Instance.new("Part")
		newLL.Parent = char
		newLL.Name = "newLL"
		newLL.Size = Vector3.new(1, 2, 1)
		newLL.Material = Enum.Material.Neon
		newLL.Massless = true
		newLL.Transparency = 0.05
		newLL.Color = Color3.fromRGB(132, 77, 38)
		local newLLM = Instance.new("Motor6D")
		newLLM.Parent = torso
		newLLM.Part0 = torso
		newLLM.Part1 = newLL
		newLLM.C0 = CFrame.new(0.63,0,2) * CFrame.Angles(math.rad(90), 0, math.rad(-10))
		
		local newLA = Instance.new("Part")
		newLA.Parent = char
		newLA.Name = "newLA"
		newLA.Size = Vector3.new(1, 2, 1)
		newLA.Material = Enum.Material.Neon
		newLA.Massless = true
		newLA.Transparency = 0.05
		newLA.Color = Color3.fromRGB(132, 77, 38)
		local newLAM = Instance.new("Motor6D")
		newLAM.Parent = torso
		newLAM.Part0 = torso
		newLAM.Part1 = newLA
		newLAM.C0 = CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(90), 0, math.rad(15))
		
		
		local newRA = Instance.new("Part")
		newRA.Parent = char
		newRA.Name = "newRA"
		newRA.Size = Vector3.new(1, 2, 1)
		newRA.Material = Enum.Material.Neon
		newRA.Massless = true
		newRA.Transparency = 0.05
		newRA.Color = Color3.fromRGB(132, 77, 38)
		local newRAM = Instance.new("Motor6D")
		newRAM.Parent = torso
		newRAM.Part0 = torso
		newRAM.Part1 = newRA
		newRAM.C0 = CFrame.new(1.5,0,0) * CFrame.Angles(math.rad(90), 0, math.rad(-15))
		
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
		local char = game.Players.LocalPlayer.Character
		local head = char.Head
		local torso = char.Torso
		bodyTransparency(head, char, 0)
		for i,v in pairs(char:GetChildren()) do
			if v.Name == "newRA" or v.Name == "newLA" or v.Name == "newLL" or v.Name == "newRL" or v.Name == "newH" or v.Name == "newT" then
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
			sphere.Parent = game.Workspace
			sphere.Anchored = true
			sphere.CanCollide = false
			sphere.Transparency = 0.7
			sphere.Size = Vector3.new(0.05,0.05,0.05)
			sphere.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
			sphere.Color = Color3.fromRGB(170, 85, 0)
			sphere.Material = Enum.Material.Neon
			for i = 1,20 do
				RunService.Heartbeat:Wait()
				sphere.Size = Vector3.new(sphere.Size.X+2,sphere.Size.Y+2,sphere.Size.Z+2)
			end
			wait(0.6)
			for i = 1,10 do
				wait(0.02)
				sphere.Transparency = sphere.Transparency + 0.1
			end
		end)
	end
end