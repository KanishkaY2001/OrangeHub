local currentHook = "" -- Webhook
local discID = 000000
local kicked = false
if game.Workspace:FindFirstChild("UsedGachaBot") == nil then
	local folder = Instance.new("Folder")
	folder.Parent = game.Workspace
	folder.Name = "UsedGachaBot"
	----- Authentication -----
	local http_request = http_request;
	local authenticated = false
	if syn then
		http_request = syn.request
	end
	local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
	local decoded = game:GetService('HttpService'):JSONDecode(body)
	local hwid_list = {"Syn-Fingerprint"};
	local hwid = "";
	for i, v in next, hwid_list do
		if decoded.headers[v] then
			hwid = decoded.headers[v];
			break
		end
	end
	
	----- Webhook Setup -----
	local http_request = http_request;
	if syn then
		http_request = syn.request
	end
	
	if (not http_request) then
		return game:GetService('Players').LocalPlayer:Kick('You have been kicked:\nAuthentication Failure')
	end
	local accessGranted = false
	local Avatar = 'https://cdn.discordapp.com/embed/avatars/4.png';
	
	local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
	local decoded = game:GetService('HttpService'):JSONDecode(body)
	local newItem = ""
	local goodScrolls = {
		"Scroll of Hoppa",
		"Scroll of Fimbulvetr",
		"Scroll of Manus Dei",
		"Scroll of Percutiens",
		"Scroll of Snarvindur"
	}
	
	game.Players.LocalPlayer.Backpack.ChildAdded:Connect(function(child)
		newItem = tostring(child)
		if string.match(newItem, "Scroll of") or string.match(newItem, "Ice Essence") then
			if game.Players.LocalPlayer.Character.HumanoidRootPart ~= nil then
				for q,r in pairs(game.Workspace:GetChildren()) do
				    if r.ClassName == "Folder" and r.Name == "NPCs" then
				        for g,h in pairs(r:GetChildren()) do
							if h.Name == "Xenyari" then
								if (h.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
									webhookCall(newItem)
								end
							end
						end	
					end
				end
			end
		end
	end)
	
	----- Get Day Count -----
	function getDayCount()
		local hundreds = ""
		local tens = ""
		local ones = ""
		for i,v in pairs (game.Players.LocalPlayer.PlayerGui.StatGui.Container.Health.Lives:GetChildren()) do
			if i == 3 then
				hundreds = v.Char.Text
			elseif i == 4 then
				tens = v.Char.Text
			elseif i == 5 then
				ones = v.Char.Text
			end
		end
		return (hundreds .. tens .. ones)
	end
	
	----- Call To Webhook -----
	function webhookCall(item)
		local dayCount = getDayCount()
		if currentHook ~= "" then
			local Embed = {
			    title = discID;
			    color = '200';
				footer = { text = game.Players.LocalPlayer.Name .. " : " .. game.Players.LocalPlayer.UserId };
			    author = {
			        name = '- Successful Roll -';
			        url = 'https://www.roblox.com/users/' .. game.Players.LocalPlayer.UserId .. '/profile';
			    };
			    fields = {
			        {
			            name = "Rolled at day " .. dayCount .. ":";
			            value = item;
			        }
			    };
			};
			(syn and syn.request or http_request) {
			    Url = currentHook;
			    Method = 'POST';
			    Headers = {
			        ['Content-Type'] = 'application/json';
			    };
			    Body = game:GetService'HttpService':JSONEncode( { content = Content; embeds = { Embed } } );
			};
		end
		
		for i,v in pairs(goodScrolls) do
			if item == v then
				local dgui = game.Players.LocalPlayer.PlayerGui.DangerGui.TextLabel
				repeat
				    wait()
				until dgui.Visible == false
				game:GetService('Players').LocalPlayer:Kick("Congratulations, you rolled " .. item)
			end
		end
	end
	print("Authenticated")
	
	---------- Main Code ----------
	----- Identifier -----
	local virtualUser = game:GetService("VirtualUser")
	local currencyGui = game.Players.LocalPlayer.PlayerGui.CurrencyGui
	local dgui = game.Players.LocalPlayer.PlayerGui.DangerGui.TextLabel
	local player = game.Players.LocalPlayer
	local statGui = player.PlayerGui.StatGui
	local safePos = Vector3.new(1067.58, 3665.84, 192.36)
	local buyPos = Vector3.new(1007.5,3777,212.5)
	local stopPos = Vector3.new(867.5, 3695.4, 202)
	local killer = ""
	
	----- Gacha Gui -----
	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local startstop = Instance.new("TextButton")
	local Frame_2 = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local Frame2 = Instance.new("Frame")
	local kicklabel = Instance.new("TextLabel")
	local Frame1 = Instance.new("Frame")
	local silverkick = Instance.new("TextButton")
	local Frame4 = Instance.new("Frame")
	local tpout = Instance.new("TextButton")
	local Frame3 = Instance.new("Frame")
	local teleporter = Instance.new("TextLabel")
	local Frame6 = Instance.new("Frame")
	local timer = Instance.new("TextLabel")
	local Frame5 = Instance.new("Frame")
	local timedisplay = Instance.new("TextButton")
	local bar = Instance.new("Frame")
	local slider = Instance.new("ImageButton")
	local Frame9 = Instance.new("Frame")
	local autologlabel = Instance.new("TextButton")
	local held = false
	local autoLogDistance = 0
	local running = false
	local active = false
	local timerCount = 0
	local silverKick = true
	local firstRoll = true
	local requiredRemote = ""

	ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
	Frame.Parent = ScreenGui
	Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BackgroundTransparency = 0.600
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(1, -140, 1, -70)
	Frame.Size = UDim2.new(0, 120, 0, 50)
	
	startstop.Name = "startstop"
	startstop.Parent = Frame
	startstop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	startstop.BackgroundTransparency = 1.000
	startstop.Size = UDim2.new(1, 0, 1, 0)
	startstop.Font = Enum.Font.SourceSans
	startstop.Text = "IDLE"
	startstop.TextColor3 = Color3.fromRGB(13, 195, 70)
	startstop.TextSize = 28.000
	startstop.TextStrokeTransparency = 20.000
	startstop.TextWrapped = true
	
	Frame_2.Parent = ScreenGui
	Frame_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame_2.BackgroundTransparency = 0.600
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDim2.new(1, -140, 1, -100)
	Frame_2.Size = UDim2.new(0, 120, 0, 25)
	
	TextLabel.Parent = Frame_2
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = "Gacha Bot"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 22.000
	
	Frame2.Name = "Frame2"
	Frame2.Parent = ScreenGui
	Frame2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame2.BackgroundTransparency = 0.600
	Frame2.BorderSizePixel = 0
	Frame2.Position = UDim2.new(1, -275, 1, -100)
	Frame2.Size = UDim2.new(0, 120, 0, 25)
	
	kicklabel.Name = "kicklabel"
	kicklabel.Parent = Frame2
	kicklabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	kicklabel.BackgroundTransparency = 1.000
	kicklabel.Size = UDim2.new(1, 0, 1, 0)
	kicklabel.Font = Enum.Font.SourceSans
	kicklabel.Text = "Silver Kick"
	kicklabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	kicklabel.TextSize = 22.000
	
	Frame1.Name = "Frame1"
	Frame1.Parent = ScreenGui
	Frame1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame1.BackgroundTransparency = 0.600
	Frame1.BorderSizePixel = 0
	Frame1.Position = UDim2.new(1, -275, 1, -70)
	Frame1.Size = UDim2.new(0, 120, 0, 50)
	
	silverkick.Name = "silverkick"
	silverkick.Parent = Frame1
	silverkick.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	silverkick.BackgroundTransparency = 1.000
	silverkick.Size = UDim2.new(1, 0, 1, 0)
	silverkick.Font = Enum.Font.SourceSans
	silverkick.Text = "ACTIVE"
	silverkick.TextColor3 = Color3.fromRGB(13, 195, 70)
	silverkick.TextSize = 28.000
	silverkick.TextStrokeTransparency = 20.000
	silverkick.TextWrapped = true
	
	Frame4.Name = "Frame4"
	Frame4.Parent = ScreenGui
	Frame4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame4.BackgroundTransparency = 0.600
	Frame4.BorderSizePixel = 0
	Frame4.Position = UDim2.new(1, -140, 1, -155)
	Frame4.Size = UDim2.new(0, 120, 0, 50)
	
	tpout.Name = "tpout"
	tpout.Parent = Frame4
	tpout.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tpout.BackgroundTransparency = 1.000
	tpout.Size = UDim2.new(1, 0, 1, 0)
	tpout.Font = Enum.Font.SourceSans
	tpout.Text = "TP OUT"
	tpout.TextColor3 = Color3.fromRGB(195, 190, 28)
	tpout.TextSize = 28.000
	tpout.TextStrokeTransparency = 20.000
	tpout.TextWrapped = true
	
	Frame3.Name = "Frame3"
	Frame3.Parent = ScreenGui
	Frame3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame3.BackgroundTransparency = 0.600
	Frame3.BorderSizePixel = 0
	Frame3.Position = UDim2.new(1, -140, 1, -185)
	Frame3.Size = UDim2.new(0, 120, 0, 25)
	
	teleporter.Name = "teleporter"
	teleporter.Parent = Frame3
	teleporter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	teleporter.BackgroundTransparency = 1.000
	teleporter.Size = UDim2.new(1, 0, 1, 0)
	teleporter.Font = Enum.Font.SourceSans
	teleporter.Text = "Teleporter"
	teleporter.TextColor3 = Color3.fromRGB(255, 255, 255)
	teleporter.TextSize = 22.000
	
	Frame6.Name = "Frame6"
	Frame6.Parent = ScreenGui
	Frame6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame6.BackgroundTransparency = 0.600
	Frame6.BorderSizePixel = 0
	Frame6.Position = UDim2.new(1, -275, 1, -185)
	Frame6.Size = UDim2.new(0, 120, 0, 25)
	
	timer.Name = "timer"
	timer.Parent = Frame6
	timer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	timer.BackgroundTransparency = 1.000
	timer.Size = UDim2.new(1, 0, 1, 0)
	timer.Font = Enum.Font.SourceSans
	timer.Text = "Next Farm in"
	timer.TextColor3 = Color3.fromRGB(255, 255, 255)
	timer.TextSize = 22.000
	
	Frame5.Name = "Frame5"
	Frame5.Parent = ScreenGui
	Frame5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame5.BackgroundTransparency = 0.600
	Frame5.BorderSizePixel = 0
	Frame5.Position = UDim2.new(1, -275, 1, -155)
	Frame5.Size = UDim2.new(0, 120, 0, 50)
	
	timedisplay.Name = "timedisplay"
	timedisplay.Parent = Frame5
	timedisplay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	timedisplay.BackgroundTransparency = 1.000
	timedisplay.Size = UDim2.new(1, 0, 1, 0)
	timedisplay.Font = Enum.Font.SourceSans
	timedisplay.Text = tostring(timerCount) .. " Secs"
	timedisplay.TextColor3 = Color3.fromRGB(195, 190, 28)
	timedisplay.TextSize = 28.000
	timedisplay.TextStrokeTransparency = 20.000
	timedisplay.TextWrapped = true
	
	bar.Name = "bar"
	bar.Parent = ScreenGui
	bar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	bar.BackgroundTransparency = 0.600
	bar.BorderSizePixel = 0
	bar.Position = UDim2.new(1, -275, 1, -210)
	bar.Size = UDim2.new(0, 255, 0, 15)
	
	slider.Name = "slider"
	slider.Parent = bar
	slider.BackgroundColor3 = Color3.fromRGB(255, 255, 153)
	slider.BackgroundTransparency = 0.300
	slider.Position = UDim2.new(0, 0, 0, -5)
	slider.Size = UDim2.new(0.0399999991, 0, 1, 10)
	
	Frame9.Name = "Frame9"
	Frame9.Parent = ScreenGui
	Frame9.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame9.BackgroundTransparency = 0.600
	Frame9.BorderSizePixel = 0
	Frame9.Position = UDim2.new(1, -275, 1, -250)
	Frame9.Size = UDim2.new(0, 255, 0, 30)
	
	autologlabel.Name = "autologlabel"
	autologlabel.Parent = Frame9
	autologlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	autologlabel.BackgroundTransparency = 1.000
	autologlabel.Size = UDim2.new(1, 0, 1, 0)
	autologlabel.Font = Enum.Font.SourceSans
	autologlabel.Text = "Auto Log Radius: " .. autoLogDistance
	autologlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	autologlabel.TextSize = 28.000
	autologlabel.TextStrokeTransparency = 20.000
	autologlabel.TextWrapped = true
	autologlabel.TextYAlignment = Enum.TextYAlignment.Top
	
	----- Slider Config -----
	slider.MouseButton1Down:Connect(function()
		held = true
	end)
	
	local RunService = game:GetService("RunService")
	local UIS = game:GetService("UserInputService")
	UIS.InputEnded:Connect(function(input, processed)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			held = false
		end
	end)
	
	UIS.InputBegan:Connect(function(input,processed)
    	local KeyCode = input.KeyCode
		if KeyCode == Enum.KeyCode.P then
			ScreenGui.Enabled = not ScreenGui.Enabled
		end
	end)
	
	RunService.RenderStepped:Connect(function(step)
		if held then
			local mousePos = UIS:GetMouseLocation()
			local Pos = mousePos - bar.AbsolutePosition
			local btnPos = slider.Position
			slider.Position = UDim2.new(0,math.clamp(Pos.X,0,bar.AbsoluteSize.X-10),btnPos.Y.Scale, btnPos.Y.Offset)
			autoLogDistance = (300/245)*slider.Position.X.Offset
			autologlabel.Text = "Auto Log Radius: " .. math.floor(autoLogDistance)
		end
	end)
	
	----- Stop/Start Button -----
	startstop.MouseButton1Click:Connect(function()
		if running then
			firstRoll = true
			running = false
			active = false
			requiredRemote = ""
			startstop.Text = "IDLE"
			startstop.TextColor3 = Color3.fromRGB(13, 195, 70)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(stopPos)
			gachaFarm()
		end
	end)
	
	----- Insufficient Silver Kick Button -----
	silverkick.MouseButton1Click:Connect(function()
		if silverKick then
			silverKick = false
			silverkick.TextColor3 = Color3.fromRGB(211, 49, 37)
			silverkick.Text = "INACTIVE"
		else
			silverKick = true
			silverkick.TextColor3 = Color3.fromRGB(13, 195, 70)
			silverkick.Text = "ACTIVE"
		end
	end)
	
	----- Teleport Out -----
	tpout.MouseButton1Click:Connect(function()
		if game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y > 3000 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1053.787, 3785.507, 246.615)
		end
	end)
	
	----- Anti AFK -----
	function antiAfk()
		game:GetService("Players").LocalPlayer.Idled:connect(function()
			virtualUser:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			wait(1)
			virtualUser:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
	end
	antiAfk()
	
	for i,v in pairs (game.Players.LocalPlayer.PlayerGui.StatGui.Container.Health.Lives:GetChildren()) do
		if i == 3 then
			v.Char:GetPropertyChangedSignal("Text"):Connect(function()
				rollGacha()
			end)
		elseif i == 4 then
			v.Char:GetPropertyChangedSignal("Text"):Connect(function()
				rollGacha()
			end)
		elseif i == 5 then
			v.Char:GetPropertyChangedSignal("Text"):Connect(function()
				rollGacha()
			end)
		end
	end
	
	----- Gacha Farmer -----
	function gachaFarm()
		repeat
			wait(0.2)
		until active
		running = true
		startstop.Text = "STOP"
		startstop.TextColor3 = Color3.fromRGB(211, 49, 37)
		rollGacha()
		
		spawn(function()
			while game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored == false do
				wait(2)
				checkNearby("SafetyLog")
			end
		end)
	end
	
	----- Roll Gacha -----
	function rollGacha()
		if running and active then
			local currentSilver = currencyGui.Silver:FindFirstChild("Value").Text
			local cS = string.gsub(currentSilver, ",", "")
			if tonumber(cS) >= 0 then
				local hrp = player.Character.HumanoidRootPart
				for q,r in pairs(game.Workspace:GetChildren()) do
				    if r.ClassName == "Folder" and r.Name == "NPCs" then
				        for g,h in pairs(r:GetChildren()) do
							if h.Name == "Xenyari" then
								local clicker = h.ClickDetector
								local dayCount = getDayCount()
								if firstRoll == false then
									checkNearby("SafeToRollCheck")
								else
									local Embed = {
									    title = discID;
									    color = '200';
										footer = { text = game.Players.LocalPlayer.Name .. " : " .. game.Players.LocalPlayer.UserId };
									    author = {
									        name = '- Starting Gacha Bot -';
									        url = 'https://www.roblox.com/users/' .. game.Players.LocalPlayer.UserId .. '/profile';
									    };
									    fields = {
									        {
									            name = "Started on day " .. dayCount .. ":";
									            value = "Goodluck Rolling!";
									        }
									    };
									};
									(syn and syn.request or http_request) {
									    Url = currentHook;
									    Method = 'POST';
									    Headers = {
									        ['Content-Type'] = 'application/json';
									    };
									    Body = game:GetService'HttpService':JSONEncode( { content = Content; embeds = { Embed } } );
									};
									firstRoll = false
								end
								hrp.CFrame = CFrame.new(buyPos)
								wait(1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
								wait(1)
								fireclickdetector(clicker)
								wait(0.5)
								game.ReplicatedStorage.Requests:FindFirstChild(requiredRemote):FireServer({choice = "I'll pay."})
								wait(0.5)
								game.ReplicatedStorage.Requests:FindFirstChild(requiredRemote):FireServer({exit = true})
								game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
								wait(2)
								hrp.CFrame = CFrame.new(safePos)
								wait(0.5)
								if tonumber(cS) < 250 and silverKick == true then
									insufficient()
								end
							end
						end
					end
				end
			end
		end
	end
	
	----- Insufficient silver Kick -----
	function insufficient()
		repeat
		    wait()
		until dgui.Visible == false
		wait(1)
		local Embed = {
		    title = discID;
		    color = '200';
			footer = { text = game.Players.LocalPlayer.Name .. " : " .. game.Players.LocalPlayer.UserId };
		    author = {
		        name = '- Safety Log -';
		        url = 'https://www.roblox.com/users/' .. game.Players.LocalPlayer.UserId .. '/profile';
		    };
		    fields = {
		        {
		            name = "Reason:";
		            value = "Insufficient Silver";
		        }
		    };
		};
		(syn and syn.request or http_request) {
		    Url = currentHook;
		    Method = 'POST';
		    Headers = {
		        ['Content-Type'] = 'application/json';
		    };
		    Body = game:GetService'HttpService':JSONEncode( { content = Content; embeds = { Embed } } );
		};
		game:GetService('Players').LocalPlayer:Kick("Insufficient Silver, Safety Log")
	end
	
	----- Check If Nearby Players -----
	function checkNearby(condition)
		for i,v in pairs(game.Players:GetChildren()) do
			if v.Name ~= game.Players.LocalPlayer.Name then
				if v.Character ~= nil then
					if v.Character.HumanoidRootPart ~= nil and game.Players.LocalPlayer.Character.HumanoidRootPart ~= nil then
						if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= autoLogDistance and condition == "SafetyLog" then
							repeat
							    wait()
							until dgui.Visible == false
							wait(0.5)
							if kicked == false then
								local Embed = {
								    title = discID;
								    color = '200';
									footer = { text = game.Players.LocalPlayer.Name .. " : " .. game.Players.LocalPlayer.UserId };
								    author = {
								        name = '- Safety Log -';
								        url = 'https://www.roblox.com/users/' .. game.Players.LocalPlayer.UserId .. '/profile';
								    };
								    fields = {
								        {
								            name = "Reason:";
								            value = "Players Nearby";
								        }
								    };
								};
								(syn and syn.request or http_request) {
								    Url = currentHook;
								    Method = 'POST';
								    Headers = {
								        ['Content-Type'] = 'application/json';
								    };
								    Body = game:GetService'HttpService':JSONEncode( { content = Content; embeds = { Embed } } );
								};
							end
							kicked = true
							game:GetService('Players').LocalPlayer:Kick("Players Nearby, Safety Log")
						elseif condition == "SafeToRollCheck" then
							repeat
								wait()
							until v == nil or v.Character == nil or (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 300
							for i,v in pairs(game.Players:GetChildren()) do
								if v.Character ~= nil then
									for q,r in pairs(v.Character:GetChildren()) do
										if r.Name == "Observing" then
											repeat
												wait()
											until v == nil or r.Parent ~= v.Character
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
	
	----- Killed Collect Name -----
	game.Players.LocalPlayer.Character.Humanoid.HealthChanged:Connect(function(health)
	    if health == 0 then
	        repeat
	    		wait()
	    	until game.Players.LocalPlayer.PlayerGui:FindFirstChild("KillGUI") ~= nil
	    	for q,r in pairs(game.Players.LocalPlayer.PlayerGui:FindFirstChild("KillGUI"):GetDescendants()) do
	    		if r.ClassName == "TextLabel" and q == 4 then
	    			local str = r.Text
	    			local enemyRblxName = string.sub(string.sub(str, 3),1,string.sub(str, 3).len(string.sub(str, 3))-2)
	                local enemyID = game.Players:FindFirstChild(enemyRblxName).UserId
	    		    killer = "[ " .. enemyRblxName .. " : " .. enemyID .. " ]"
	    		end
	    	end
	    end
	end)

	----- Kick on Killed -----
	game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
		wait(2)
		if killer == "" then
			killer = "Other Reason"
		end
		local Embed = {
		    title = discID;
		    color = '200';
			footer = { text = game.Players.LocalPlayer.Name .. " : " .. game.Players.LocalPlayer.UserId };
		    author = {
		        name = '- Safety Log -';
		        url = 'https://www.roblox.com/users/' .. game.Players.LocalPlayer.UserId .. '/profile';
		    };
		    fields = {
		        {
		            name = "Reason:";
		            value = "Got Killed by: " .. killer;
		        }
		    };
		};
		(syn and syn.request or http_request) {
		    Url = currentHook;
		    Method = 'POST';
		    Headers = {
		        ['Content-Type'] = 'application/json';
		    };
		    Body = game:GetService'HttpService':JSONEncode( { content = Content; embeds = { Embed } } );
		};
		game:GetService('Players').LocalPlayer:Kick("Got Killed, Safety Log")
	end)
	
	----- Remote Grabber -----
	function getRemote()
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
				for q,r in pairs(game.Workspace:GetChildren()) do
				    if r.ClassName == "Folder" and r.Name == "NPCs" then
				        for g,h in pairs(r:GetChildren()) do
				            if h.Name == "Xenyari" then
								if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == 0 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - h.Head.Position).Magnitude <= 10 then
									requiredRemote = requiredString
									active = true
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
	end
	getRemote()
	gachaFarm()
end