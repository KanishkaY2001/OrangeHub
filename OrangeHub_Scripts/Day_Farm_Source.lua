---------- Main Code ----------
----- Anti AFK -----
local virtualUser = game:GetService("VirtualUser")
function antiAfk()
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		virtualUser:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		virtualUser:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
end
antiAfk()

----- Identifier -----
local p = game.Players.LocalPlayer.Character.HumanoidRootPart
local h = game.Players.LocalPlayer.Character.Humanoid
local running = false

----- Day-Farm Gui -----
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local startstop = Instance.new("TextButton")
local Frame_2 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")

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
startstop.Text = "START"
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
TextLabel.Text = "DayFarm Bot"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 22.000

----- Stop/Start Button -----
startstop.MouseButton1Click:Connect(function()
	if running then
		running = false
		startstop.Text = "START"
		startstop.TextColor3 = Color3.fromRGB(13, 195, 70)
		game.Players.LocalPlayer.Character.Head.Anchored = false
		wait(0.1)
		p.CFrame = CFrame.new(p.Position) * CFrame.new(0,33,0)
	else
		running = true
		startstop.Text = "STOP"
		startstop.TextColor3 = Color3.fromRGB(211, 49, 37)
		p.CFrame = CFrame.new(p.Position) * CFrame.new(0,-33,0)
		dayFarm()
	end
end)

----- Day Farm Main -----
function dayFarm()
	spawn(function()
	    while running do
	        wait()
	        for i,v in pairs(game.Players:GetChildren()) do
	            if v.Character ~= nil then
	                local h1 = v.Character:WaitForChild("HumanoidRootPart")
	                if h1 ~= nil and h1 ~= p then
	                    if (p.Position - h1.Position).Magnitude <= 50 then
	                        game:GetService('Players').LocalPlayer:Kick("safety Log")
	                    else
	                        p.CFrame = CFrame.new(p.Position) * CFrame.new(0,0.03,0)
	                    end
	                end
	            end
	        end
	    end
	end)
	wait(5)
	game.Players.LocalPlayer.Character.Head.Anchored = true
end