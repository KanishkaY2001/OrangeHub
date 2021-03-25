--[[
Instructions:
--> Join game, become 1 life
--> go to tomeless room, execute restoration code
--> once setup, execute 3lifestore code and start recording
--> trigger fall damage remote and continue to do the wipe
--> as you die, place top right corner of screen on blue ball to display roblox character name
]]

local requiredRemote = ""
local specFire = game.Workspace:FindFirstChild("SpectralFire")
local specDoor = specFire.FolderCheck.Door
local inWhiteDimension = false
local animList = {
    "rbxassetid://2604559455",
    "rbxassetid://2604558140",
    "rbxassetid://2604558857",
    "rbxassetid://2604557462"
}

----- Remote Grabber -----
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
	local requiredString = string.sub(string.format("Path: %s",(not self.Parent and "[NIL]: " or "") .. self:GetFullName()), -36)
	if string.sub(requiredString,9,9) == "-" and requiredRemote == "" then
		requiredRemote = requiredString
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
print("starting to wait..")
repeat
	wait()
until requiredRemote ~= ""

----- Fill 7/8 Markers -----
spawn(function()
	while game.Players.LocalPlayer.Character.Humanoid.Health > 0 do
		wait()
		game.Players.LocalPlayer.PlayerGui.AreaGui.AreaFrame.Title.Text = "Domain of Light"
		game.Players.LocalPlayer.PlayerGui.AreaGui.AreaFrame.Description.Text = "You feel the weight of your sins drag you down to the floor."
		game.Players.LocalPlayer.PlayerGui.AreaGui.AreaFrame.Description.Shadow.Text = ""
		game.Players.LocalPlayer.PlayerGui.AreaGui.AreaFrame.Title.Shadow.Text = ""
	end
	game.Players.LocalPlayer.PlayerGui.AreaGui.AreaFrame.Title:Destroy()
	game.Players.LocalPlayer.PlayerGui.AreaGui.AreaFrame.Description:Destroy()
end)



for i,v in pairs(specFire.FolderCheck:GetChildren()) do
	if v.ClassName == "BoolValue" and v.Name ~= "Ashiin" then
		v.Marker.Material = Enum.Material.Neon
		v.Marker.PointLight.Enabled = true
	end
end

----- Create Tomeless Dimension -----
workspace.Terrain:Clear()
local room = game:GetObjects("rbxassetid://5330525558")[1]
room.Parent = game.Workspace
room:MoveTo(Vector3.new(-8, 100.579, 324.058))
room.SolanBall.CFrame = CFrame.new(room.SolanBall.Position) * CFrame.new(0,-5,0)
room.SolanSpawn.Transparency = 1

for i,v in pairs(game.Workspace:GetChildren()) do
	if v.Name == "Part" then
		if v.Size == Vector3.new(1677, 49, 1084) then
			v.Material = Enum.Material.Neon
			v.Color = Color3.fromRGB(248, 248, 248)
		end
	end
end

----- Pause -----
wait(7)

----- Simulate 8th Sacrifice -----
local soundPart = Instance.new("Part")
local deathSound = game.Players.LocalPlayer.Character.HumanoidRootPart.Died
local burnSound = game.Players.LocalPlayer.Character.HumanoidRootPart.MonasteryFire
local extinguishSound = game.Players.LocalPlayer.Character.HumanoidRootPart.Extinguish
game.Players.LocalPlayer.Character.HumanoidRootPart.LightFall:Destroy()
soundPart.Parent = game.Workspace
soundPart.Position = Vector3.new(-396.45, 187.594, 286.833)

game.Players.LocalPlayer.Character.HumanoidRootPart.Died.Archivable = true
game.Players.LocalPlayer.Character.HumanoidRootPart.MonasteryFire.Archivable = true
game.Players.LocalPlayer.Character.HumanoidRootPart.Extinguish.Archivable = true

local deathClone = deathSound:Clone()
local burnClone = burnSound:Clone()
local extinguishClone = extinguishSound:Clone()
deathClone.Parent = soundPart
burnClone.Parent = soundPart
extinguishClone.Parent = soundPart

burnClone:Play()
wait(0.2)
specFire.FolderCheck.Ashiin.Marker.Material = Enum.Material.Neon
specFire.FolderCheck.Ashiin.Marker.PointLight.Enabled = true
wait(1.4)
for i,v in pairs(specFire.FolderCheck:GetChildren()) do
	if v.ClassName == "BoolValue" then
		spawn(function()
			for t = 1,50 do
				wait(0.02)
				v.Marker.Transparency = v.Marker.Transparency + 0.02
			end
		end)
	end
end
wait(1)
local doorClone = specDoor:Clone()
doorClone.Parent = game.Workspace
doorClone.CFrame = specDoor.CFrame
doorClone.Material = Enum.Material.Neon
doorClone.Color = Color3.fromRGB(118, 169, 216)
doorClone.CFrame = CFrame.new(doorClone.Position) * CFrame.new(0,0,-0.55)

wait(0.2)
burnClone:Stop()
deathClone:Play()
extinguishClone:Play()

wait(0.75)
spawn(function()
	while specDoor.Position.Y >= 157 do
		wait()
		specDoor.CFrame = CFrame.new(specDoor.Position) * CFrame.new(0,-0.3,0)
	end
end)

game.Players.LocalPlayer.CharacterAdded:Connect(function()
	print("d")
	repeat
		wait()
	until game.Players.LocalPlayer.PlayerGui:FindFirstChild("AreaGui"):FindFirstChild("AreaFrame"):FindFirstChild("Title"):FindFirstChild("Shadow") ~= nil
	print("dd")
	while true do
		wait()
		game.Players.LocalPlayer.PlayerGui.AreaGui.AreaFrame.Title.Text = "The House of Purgatory"
		game.Players.LocalPlayer.PlayerGui.AreaGui.AreaFrame.Description.Text = "Where it all began, and where it shall all end."
		game.Players.LocalPlayer.PlayerGui.AreaGui.AreaFrame.Description.Shadow.Text = ""
		game.Players.LocalPlayer.PlayerGui.AreaGui.AreaFrame.Title.Shadow.Text = ""
	end
end)


doorClone.Touched:Connect(function()
	if not inWhiteDimension then
		inWhiteDimension = true
		local dangerClone = game.Players.LocalPlayer.PlayerGui.DangerGui:Clone()
		game.Players.LocalPlayer.PlayerGui.DangerGui:Destroy()
		dangerClone.Parent = game.Players.LocalPlayer.PlayerGui
		dangerClone:FindFirstChild("DangerClient"):Destroy()
		spawn(function()
			while game.Players.LocalPlayer.Character.Humanoid.Health > 0 do
				wait()
				dangerClone.TextLabel.Text = "MORTAL DANGER!\nDeath is at your heels!"
				dangerClone.TextLabel.Visible = true
			end
		end)
		
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-184,188,231)
		wait(0.70)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(room.SolanSpawn.Position)
		spawn(function()
			while true do
				wait()
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 11
			end
		end)
		burnSound:Play()
		burnSound.Looped = true
		local flame = game:GetObjects("rbxassetid://5347002831")[1]
		local blackFlame = game:GetObjects("rbxassetid://5348307151")[1]
		local hum = game.Players.LocalPlayer.Character.Humanoid
		local hrp = game.Players.LocalPlayer.Character.Torso
		local anim = Instance.new("Animation")
		flame.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		blackFlame.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		while game.Players.LocalPlayer.Character.Humanoid.Health >= 7 do
		    wait(0.17)
		    anim.AnimationId = animList[math.random(1,4)]
		    local animationTrack = hum:LoadAnimation(anim)
		    hum.WalkSpeed = 0

			local currentHp = game.Players.LocalPlayer.Character.Humanoid.Health
			game.Players.LocalPlayer.Character.CharacterHandler.Remotes:FindFirstChild(requiredRemote):FireServer({0.04,0.05})
			repeat
				wait()
			until game.Players.LocalPlayer.Character.Humanoid.Health < currentHp
			animationTrack:Play()
			
		    for i = 1,11 do
		        wait()
		        hum.WalkSpeed = 0
		    end
		    wait(0.05)
		end
		for i = 1,3 do
			game.Players.LocalPlayer.Character.CharacterHandler.Remotes:FindFirstChild(requiredRemote):FireServer({0.04,0.05})
			wait(0.1)
		end
		wait(1.9)
		game.Players.LocalPlayer.Character:BreakJoints()
		burnSound.Looped = false
		burnSound:Stop()
		extinguishSound:Play()
		spawn(function()
			blackFlame.Enabled = true
			wait(0.6)
			blackFlame.Enabled = false
		end)
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v.Name == "Clothing" then
				v:Destroy()
			end
			if v.Name == "Torso" or v.Name == "Left Leg" or v.Name == "Right Leg" or v.Name == "Right Arm" or v.Name == "Left Arm" or v.Name == "Head" then
				if v.Name ~= "Head" then
					v.Material = Enum.Material.Slate
				end
				spawn(function()
					for i = 1,150 do
						wait()
						v.Size = Vector3.new(v.Size.X*0.985, v.Size.Y*0.985, v.Size.Z*0.985)
					end
				end)
			end
		end
	end
end)