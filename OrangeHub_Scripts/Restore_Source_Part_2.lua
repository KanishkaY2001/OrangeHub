local fullRestore = true
local playerName = "meyoit123" -- ROBLOX Name of the died Victim (provided)
local currentRogueName = "" -- Current Rogue Lineage Name
local newRogueName = "Orias Valee" -- Victim's Rogue Name

local accomplice = ""
local fakehackerName = ""
local bodyColor = Color3.fromRGB(66,66,66)
local clothingColor = Color3.fromRGB(236, 108, 108)
local faceType = "dinakeri"
local eyeColor = Color3.fromRGB(255, 0, 0)

local shirtID = "http://www.roblox.com/asset/?id=984739314"
local pantsID = "http://www.roblox.com/asset/?id=984740716"
local liveCount = 0
local dayHundreds = 0
local dayTens = 1
local dayOnes = 1

local facialMarking = true
local metalArm = true
local signetRing = false
local sanctumSpear = false
local fairFrozen = true
local sigilHelm = false
local metalScroom = false

local accessoryList = {
}

--[[
local wFBrick = Instance.new("Part")
wFBrick.Parent = game.Workspace
wFBrick.Size = Vector3.new(21.99, 1, 11.88)
wFBrick.Position = Vector3.new(-396.455, 190.105, 286.893)
wFBrick.Orientation = Vector3.new(0, 0, 0)
wFBrick.Anchored = true
]]

--[[
local playToolList = {
	"Ignis",
	"Gelidus",
	"Verdien",
	"Tenebris",
	"Floresco",
	"Armis",
	"Perflora",
	"Viribus",
	"Manus Dei",
	"Telorum",
	"Fons Vitae",
	"Sigil Helmet",
}
]]

local playToolList = {

}

local immunityList = {
}

for i,v in pairs(game.Workspace:GetChildren()) do
	if v.ClassName == "Folder" then
		if v:FindFirstChild("Bed") ~= nil then
			for q,r in pairs(v:GetChildren()) do
				if r.Name == "Bed" then
					r:Destroy()
				end
			end
		end
	end
end

function fakeEvidence(situation)
	---- Character Spawning ----
	repeat
		wait()
	until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.PlayerGui.StatGui.Container ~= nil
	repeat
		wait()
	until game.Players.LocalPlayer.PlayerGui.StatGui.Container.Health.Constitution.Back.Toxicity ~= nil
	game.Players.LocalPlayer.PlayerGui.StatGui.Container.Health.Constitution.Back.Toxicity.Size = UDim2.new(0,0,0,0)
	wait(0.3)
	local player = game.Players.LocalPlayer
	local character = player.Character
	local torso = character:WaitForChild("Torso")
	local hrp = character:WaitForChild("HumanoidRootPart")
	local rArm = character:FindFirstChild("Right Arm")
	
	---- Update GUI Stats ----
	if situation == "killed" then
		liveCount = liveCount - 1
	elseif situation == "wiped" then
		liveCount = 0
	end
	spawn(function()
		wait(0.2)
		for i,v in pairs (game.Players.LocalPlayer.PlayerGui.StatGui.Container.Health.Lives:GetChildren()) do
			if i == 2 then
				v.Char.Text = liveCount
			elseif i == 3 then
				v.Char.Text = dayHundreds
			elseif i == 4 then
				v.Char.Text = dayTens
			elseif i == 5 then
				v.Char.Text = dayOnes
			end
		end
	end)
	
	if game.Players.LocalPlayer.PlayerGui.StatGui:WaitForChild("Container"):WaitForChild("CharacterName"):FindFirstChild("Shadow") ~= nil then
		game.Players.LocalPlayer.PlayerGui.StatGui.Container.CharacterName:FindFirstChild("Shadow"):Destroy()
	end
	game.Players.LocalPlayer.PlayerGui.StatGui.LeftContainer.Visible = true
	
	---- Backpack Handler ----
	for i,v in pairs (player.Backpack:GetChildren()) do
		for q,r in pairs(immunityList) do
			if v.Name ~= r then
				v:Destroy()
			end
		end
		if #immunityList == 0 then
			for q,r in pairs (player.Backpack:GetChildren()) do
				r:Destroy()
			end
		end
	end
	
	if situation == "killed" or situation == "wiped" then
		for i,v in pairs(immunityList) do
			local tool = Instance.new("Tool")
			tool.Name = v
			tool.Parent = player.Backpack
		end
		if #immunityList == 0 then
			for q,r in pairs (player.Backpack:GetChildren()) do
				r:Destroy()
			end
		end
	else 
		for i,v in pairs(playToolList) do
			local tool = Instance.new("Tool")
			tool.Name = v
			tool.Parent = player.Backpack
		end
	end
	wait(0.3)
	
	---- Metal Arm ----
	if metalArm then
		hrp.CFrame = CFrame.new(hrp.Position) * CFrame.Angles(0,0,0)
		local mArm = game:GetObjects("rbxassetid://5236722042")[1]
		mArm.CFrame = CFrame.new(character:FindFirstChild("Left Arm").Position)
		mArm.Orientation = character:FindFirstChild("Left Arm").Orientation
		mArm.CanCollide = false
		mArm.Parent = character
		mArm.Color = Color3.fromRGB(220,220,220)
		local weld_1 = Instance.new("WeldConstraint")
		weld_1.Parent = character:FindFirstChild("Left Arm")
		weld_1.Part0 = character:FindFirstChild("Left Arm")
		weld_1.Part1 = mArm
		local attach = game:GetObjects("rbxassetid://5236771332")[1]
		attach.CFrame = CFrame.new(torso.Position.X-0.7,torso.Position.Y+0.5,torso.Position.Z)
		attach.Orientation = character:FindFirstChild("Torso").Orientation + Vector3.new(0,180,0)
		attach.CanCollide = false
		attach.Parent = character
		attach.Color = Color3.fromRGB(230,230,230)
		local weld_2 = Instance.new("WeldConstraint")
		weld_2.Parent = character:FindFirstChild("Torso")
		weld_2.Part0 = character:FindFirstChild("Torso")
		weld_2.Part1 = attach
	end
	
	if metalScroom then
		game.Players.LocalPlayer.Character.Head.Transparency = 1
		if game.Players.LocalPlayer.Character:FindFirstChild("ScroomHead") then
			game.Players.LocalPlayer.Character.ScroomHead:Destroy()
		end
		hrp.CFrame = CFrame.new(hrp.Position) * CFrame.Angles(0,0,0)
		local mHead = game:GetObjects("rbxassetid://5447796437")[1]
		mHead.Massless = true
		mHead.CFrame = CFrame.new(character.Head.Position) * CFrame.new(0,0.15,0) * CFrame.Angles(0,math.rad(-90),0)
		mHead.CanCollide = false
		mHead.Parent = character
		local weld_1 = Instance.new("WeldConstraint")
		weld_1.Parent = character:FindFirstChild("Head")
		weld_1.Part0 = character:FindFirstChild("Head")
		weld_1.Part1 = mHead
	end
	
	---- Sanctum Spear ----
	if sanctumSpear then
		hrp.CFrame = CFrame.new(hrp.Position) * CFrame.Angles(0,0,0)
		local sSpear = game:GetObjects("rbxassetid://5246320835")[1]
		sSpear.CFrame = CFrame.new(torso.Position.X,torso.Position.Y+0.4,torso.Position.Z+0.5) * CFrame.Angles(math.rad(90),math.rad(-54),0)
		sSpear.CanCollide = false
		sSpear.Parent = game.Players.LocalPlayer.Character
		sSpear.Color = Color3.fromRGB(255,255,255)
		print(sSpear.ParticleEmitter.Color)
		local weld_1 = Instance.new("WeldConstraint")
		weld_1.Parent = character:FindFirstChild("Torso")
		weld_1.Part0 = character:FindFirstChild("Torso")
		weld_1.Part1 = sSpear
		spawn(function()
			wait(0.7)
			hrp.CFrame = CFrame.new(hrp.Position) * CFrame.Angles(0,0,0)
			local attachPart = Instance.new("Part")
			attachPart.Parent = character
			attachPart.CanCollide = false
			attachPart.Transparency = 1
			attachPart.Size = Vector3.new(0,0,0)
			sSpear.Attachment2.Parent = attachPart
			attachPart.Attachment2.Position = Vector3.new(0,0,0)
			attachPart.CFrame = CFrame.new(rArm.Position.X, rArm.Position.Y-1, rArm.Position.Z)
			
			local weld_2 = Instance.new("WeldConstraint")
			weld_2.Parent = character:FindFirstChild("Right Arm")
			weld_2.Part0 = character:FindFirstChild("Right Arm")
			weld_2.Part1 = attachPart
		end)
	end
	
	---- Sigil Helmet ----
	if sigilHelm then
		hrp.CFrame = CFrame.new(hrp.Position) * CFrame.Angles(0,0,0)
		local sHelm = game:GetObjects("rbxassetid://5298708309")[1].Handle
		sHelm.Massless = true
		sHelm.CFrame = CFrame.new(character.Head.Position) * CFrame.new(0,0.3,0.212)
		sHelm.CanCollide = false
		sHelm.Parent = character
		local weld_1 = Instance.new("WeldConstraint")
		weld_1.Parent = character:FindFirstChild("Head")
		weld_1.Part0 = character:FindFirstChild("Head")
		weld_1.Part1 = sHelm
		sigilHelm = false
	end
	
	if fairFrozen then
		hrp.CFrame = CFrame.new(hrp.Position) * CFrame.Angles(0,0,0)
		local sSpear = game:GetObjects("rbxassetid://5290820953")[1]
		sSpear.Color = Color3.fromRGB(222, 255, 251)
		sSpear.CFrame = CFrame.new(torso.Position.X,torso.Position.Y+0.4,torso.Position.Z+0.5) * CFrame.Angles(math.rad(90),math.rad(-54),0)
		sSpear.CanCollide = false
		sSpear.Parent = character
		local weld_1 = Instance.new("WeldConstraint")
		weld_1.Parent = character:FindFirstChild("Torso")
		weld_1.Part0 = character:FindFirstChild("Torso")
		weld_1.Part1 = sSpear
	end
	
	---- Signet Ring ----
	if signetRing then
		spawn(function()
			wait(0.7)
			hrp.CFrame = CFrame.new(hrp.Position) * CFrame.Angles(0,0,0)
			local ring = game:GetObjects("rbxassetid://5246846638")[1]
			ring.CFrame = CFrame.new(rArm.Position.X+0.38,rArm.Position.Y-0.66,rArm.Position.Z-0.13) * CFrame.Angles(0,math.rad(-90),math.rad(0))
			ring.CanCollide = false
			ring.Parent = character
			local weld_1 = Instance.new("WeldConstraint")
			weld_1.Parent = character:FindFirstChild("Right Arm")
			weld_1.Part0 = character:FindFirstChild("Right Arm")
			weld_1.Part1 = ring
		end)
	end
	---- Body Configuration ----
    for i = 1,10 do
        wait(0.03)
		for i,v in pairs(character:GetChildren()) do
			game.Players.LocalPlayer.PlayerGui.StatGui.Container.CharacterName.Text = string.upper(newRogueName)
			if v.Name == "Clothing" then
				v:Destroy()
			end
            if v.Name == "Head" then
                if v:FindFirstChildOfClass("Decal") then
                    v:FindFirstChildOfClass("Decal"):Destroy()
                end
                if v:FindFirstChild("FacialMarking") then
                    v:FindFirstChild("FacialMarking"):Destroy()
                end
            end
			if v.ClassName == "Accessory" or v.ClassName == "Hat" then
				v:Destroy()
			end            
			if v.Name == "Head" or v.Name == "Torso" or v.Name == "Left Leg" or v.Name == "Right Leg" or v.Name == "Right Arm" or v.Name == "Left Arm" then
    	        v.Color = bodyColor
    	    end
    	end
	end
	
	---- Loading Accessories ----
	for i,id in pairs(accessoryList) do
		local acc = Instance.new("Accessory")
		local h = Instance.new("Part")
		local m = Instance.new("SpecialMesh")
		local weld = Instance.new("WeldConstraint")
		acc.Name = "acc" .. i
		h.Name = "Handle"
		h.Parent = acc
		h.CanCollide = false
		h.Size = Vector3.new(1,1,1)
		h.Color = Color3.fromRGB(80, 48, 10)
		h.CFrame = CFrame.new(game.Players.LocalPlayer.Character.Head.Position) * CFrame.new(0,0,0.34)
		m.Parent = h
		m.MeshId = id
		--m.TextureId = "http://www.roblox.com/asset/?id=4545052407"
		m.Scale = Vector3.new(0.98,0.98,0.98)
		acc.Parent = game.Players.LocalPlayer.Character
		weld.Parent = game.Players.LocalPlayer.Character.Head
		weld.Part0 = game.Players.LocalPlayer.Character.Head
		weld.Part1 = h
	end
	
	local pants = Instance.new("Pants")
	local shirt = Instance.new("Shirt")
	pants.Parent = character
	shirt.Parent = character
	pants.PantsTemplate = pantsID
	shirt.ShirtTemplate = shirtID
	pants.Color3 = clothingColor
	shirt.Color3 = clothingColor
	
	---- Facial Changes ----
	if facialMarking then
		local mark = Instance.new("Decal")
		mark.Parent = character.Head
		mark.Texture = "rbxassetid://2596889184"
		mark.Color3 = Color3.fromRGB(255, 251, 248)
		mark.Transparency = 0.2
	end
	
	local face = Instance.new("Decal")
	face.Parent = character.Head
	face.Color3 = eyeColor
	if faceType == "navaran" then
		face.Texture = "rbxassetid://3954235786"
	elseif faceType == "friendly" then
		face.Texture = "rbxassetid://2597489726"
	elseif faceType == "dinakeri" then
		face.Texture = "rbxassetid://3345555230"
	elseif faceType == "kasparan" then
		face.Texture = "rbxassetid://2728925388"
	elseif faceType == "determined" then
		face.Texture = "rbxassetid://2597273735"
	elseif faceType == "rigan" then
		face.Texture = "rbxassetid://2790792643"
	elseif faceType == "faceless" then
		face.Texture = ""
	end
	game.Players.LocalPlayer.PlayerGui.StatGui.LeftContainer.Visible = true
	repeat
    	wait()
	until game.Players.LocalPlayer.PlayerGui.StatGui:FindFirstChildOfClass("TextLabel") ~= nil
	game.Players.LocalPlayer.PlayerGui.StatGui:FindFirstChildOfClass("TextLabel").Text = playerName
	
	---- Kill Gui Fake Message ----
	if accomplice ~= "" then
		repeat
			wait()
		until game.Players.LocalPlayer.PlayerGui:FindFirstChild("KillGUI") ~= nil
		for q,r in pairs(game.Players.LocalPlayer.PlayerGui:FindFirstChild("KillGUI"):GetDescendants()) do
			if r.ClassName == "TextLabel" then
				print(r.Text)
				if r.Text == "( " .. accomplice .. " )" then
					r.Text = "( " .. fakehackerName .. " )"
				end
			end
		end
	end
	
	if fullRestore then
		repeat
			wait()
		until game.Players.LocalPlayer.Character.Humanoid.Health == 0
		game.Workspace.Gravity = 10000
		for i,v in pairs (player.Backpack:GetChildren()) do
			if #immunityList == 0 then
				v:Destroy()
			end
			for q,r in pairs(immunityList) do
				if v.Name ~= r and v ~= nil then
					v:Destroy()
				end
			end
		end
		
		for i,v in pairs (game.Players.LocalPlayer.PlayerGui.StatGui.Container.Health.Lives:GetChildren()) do
			if i == 2 then
				v.Char.Text = 3
				v.Char.Position = UDim2.new(0,0,0,8)
				for i = 1,4 do
					v.Char.Position = v.Char.Position - UDim2.new(0,0,0,4)
					wait()
					if i == 3 then
						v.Char.Text = 2
					end
				end
				
				v.Char.Text = 2
				for q = 2,1,-1 do
					v.Char.Position = UDim2.new(0,0,0,24)
					v.Char.Text = q
					for i = 1,8 do
					    v.Char.Position = v.Char.Position - UDim2.new(0,0,0,4)
					    wait()
					end
				end
				
				v.Char.Position = UDim2.new(0,0,0,24)
				v.Char.Text = 0
				for i = 1,4 do
				    v.Char.Position = v.Char.Position - UDim2.new(0,0,0,4)
				    wait()
			    end
			end
		end
	end
	print("end")
end

game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
	wait(0.1)
	fakeEvidence("wiped")
end)

local lb = game.Players.LocalPlayer.PlayerGui.LeaderboardGui.MainFrame.ScrollingFrame
for i,v in pairs(lb:GetChildren()) do
	if v.Text == currentRogueName then
		v.Text = newRogueName
	end
end
fakeEvidence()
