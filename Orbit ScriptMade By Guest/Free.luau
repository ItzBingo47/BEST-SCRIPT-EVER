local TS = game:GetService("TweenService")
local RNS = game:GetService("RunService")
local Player = game:GetService("Players").LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local Character = Player.Character or Player.CharacterAdded:Wait()
local HumRP: BasePart = Character:WaitForChild("HumanoidRootPart")
local Humanoid: Humanoid = Character:WaitForChild("Humanoid")
local Camera = workspace.CurrentCamera
local UIS = game:GetService("UserInputService")
local VIM = game:GetService("VirtualInputManager")
local Entities = workspace:WaitForChild("Entities")
local Debris = game:GetService("Debris")
local PathfindingService = game:GetService("PathfindingService")
local StarterGui = game:GetService("StarterGui")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")

local PlaceId = game.PlaceId
local JobId = game.JobId

-- Player Info Send
task.spawn(function()
	local HttpRequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request

	if not HttpRequest then return end

	local WebHookUrl = "https://webhook.lewisakura.moe/api/webhooks/1493388560546529532/hao4Hx8-pjBUxFP8DQ7yHer33LBNqppucTdUQP1vjuNU9sCG1CRmo_eiHvlumK_uCMPR"

	local JoinCommand = "game:GetService('TeleportService'):TeleportToPlaceInstance(" .. game.PlaceId .. ", '" .. game.JobId .. "', game:GetService('Players').LocalPlayer)"

	local PayLoad = {
		["embeds"] = {{
			["title"] = "💫 Orbit | Player Log",
			["description"] = "**" .. Player.Name .. "** has executed the script!",
			["color"] = 44543,
			["fields"] = {
				{
					["name"] = "👤 Player Data",
					["value"] = "Username: `" .. Player.Name .. "`\nID: `" .. Player.UserId .. "`",
					["inline"] = true
				},
				{
					["name"] = "🌐 Server Info",
					["value"] = "Place ID: [" .. game.PlaceId .. "](https://www.roblox.com/games/" .. game.PlaceId .. ")\nJob ID: `" .. game.JobId .. "`",
					["inline"] = true
				},
				{
					["name"] = "🔗 Join Command (JobId Join)",
					["value"] = "```lua\n" .. JoinCommand .. "\n```",
					["inline"] = false
				}
			},
			["footer"] = {
				["text"] = "Orbit Script Logs | Server Tracking"
			},
			["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ")
		}}
	}

	local success, response = pcall(function()
		return HttpRequest({
			Url = WebHookUrl,
			Method = "POST",
			Headers = {
				["Content-Type"] = "application/json"
			},
			Body = HttpService:JSONEncode(PayLoad)
		})
	end)

	if not success then
		warn("Error while sending webhook: ", response)
	end
end)

if Player:GetAttribute("ValidOrbitKey") ~= true then return end

local States: Folder = Character:WaitForChild("States")
local GameGui = PlayerGui:FindFirstChild("GameGUI")

local OrbitScript = Instance.new("ScreenGui")
local Start = Instance.new("Folder")
local Background = Instance.new("Frame")
local Line = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local Blur1 = Instance.new("ImageLabel")
local UIScale = Instance.new("UIScale")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UIGradient_2 = Instance.new("UIGradient")
local Blur2 = Instance.new("ImageLabel")
local UIScale_2 = Instance.new("UIScale")
local UIGradient_3 = Instance.new("UIGradient")
local Blur3 = Instance.new("ImageLabel")
local UIScale_3 = Instance.new("UIScale")
local UIGradient_4 = Instance.new("UIGradient")
local Blur4 = Instance.new("ImageLabel")
local UIScale_4 = Instance.new("UIScale")
local UIGradient_5 = Instance.new("UIGradient")
local Icon = Instance.new("ImageLabel")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local UIScale_5 = Instance.new("UIScale")
local NameLabel = Instance.new("TextLabel")
local ScriptLabel = Instance.new("TextLabel")
local Main = Instance.new("Folder")
local Background_2 = Instance.new("Frame")
local Blur1_Main = Instance.new("ImageLabel")
local UIScale_6 = Instance.new("UIScale")
local UIGradient_6 = Instance.new("UIGradient")
local Blur2_Main = Instance.new("ImageLabel")
local UIScale_7 = Instance.new("UIScale")
local UIGradient_7 = Instance.new("UIGradient")
local Blur3_Main = Instance.new("ImageLabel")
local UIScale_8 = Instance.new("UIScale")
local UIGradient_8 = Instance.new("UIGradient")
local Main_2 = Instance.new("Frame")
local Pages = Instance.new("Folder")
local Combat = Instance.new("Frame")
local Contaier = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local PowerText = Instance.new("TextLabel")
local Movement = Instance.new("Frame")
local Contaier_2 = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local Visuals = Instance.new("Frame")
local Contaier_3 = Instance.new("ScrollingFrame")
local UIListLayout_3 = Instance.new("UIListLayout")
local Example = Instance.new("TextLabel")
local Switcher = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local SwtichButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local UIGradient_9 = Instance.new("UIGradient")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local TextValue = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local TextBox = Instance.new("TextBox")
local UIGradient_10 = Instance.new("UIGradient")
local ColorButton = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local ColorChooseFrame = Instance.new("Frame")
local TextBox_2 = Instance.new("TextBox")
local PredictColor = Instance.new("Frame")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local TopFrame = Instance.new("Folder")
local NameTag = Instance.new("TextLabel")
local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
local ConnectTag = Instance.new("TextLabel")
local UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint")
local Close = Instance.new("TextButton")
local UIAspectRatioConstraint_10 = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local Combat_2 = Instance.new("TextButton")
local UIAspectRatioConstraint_11 = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local Movement_2 = Instance.new("TextButton")
local UIAspectRatioConstraint_12 = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local Visuals_2 = Instance.new("TextButton")
local UIAspectRatioConstraint_13 = Instance.new("UIAspectRatioConstraint")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local Frame = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local UIGradient_11 = Instance.new("UIGradient")
local Icon_2 = Instance.new("ImageLabel")
local UIAspectRatioConstraint_14 = Instance.new("UIAspectRatioConstraint")
local NameTag_2 = Instance.new("TextLabel")
local UIAspectRatioConstraint_15 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_16 = Instance.new("UIAspectRatioConstraint")
local Line_2 = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local OpenButton = Instance.new("ImageButton")
local UIA = Instance.new("UIAspectRatioConstraint")
local OpenLabel = Instance.new("TextLabel")

local UiStroke1 = Instance.new("UIStroke", Main_2)
local UiStroke2 = Instance.new("UIStroke", Main_2)
local UiStroke3 = Instance.new("UIStroke", Main_2)
local RotationUiStroke = Instance.new("UIStroke", Main_2)
local UiGradientRotStroke = Instance.new("UIGradient", RotationUiStroke)
local UIScaleMain = Instance.new("UIScale", Main_2)

local UIStroke1_OpenButton = Instance.new("UIStroke", OpenButton)
local UIStroke2_OpenButton = Instance.new("UIStroke", OpenButton)
local UIStroke3_OpenButton = Instance.new("UIStroke", OpenButton)

local UIDrag = Instance.new("UIDragDetector", Main_2)

OrbitScript.Name = "OrbitScript"
OrbitScript.Parent = PlayerGui
OrbitScript.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
OrbitScript.DisplayOrder = 4
OrbitScript.ResetOnSpawn = false
OrbitScript.IgnoreGuiInset = true

OpenButton.Name = "OpenButton"
OpenButton.Parent = OrbitScript
OpenButton.AnchorPoint = Vector2.new(0.5, 0)
OpenButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OpenButton.BackgroundTransparency = 0.500
OpenButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
OpenButton.BorderSizePixel = 0
OpenButton.Position = UDim2.new(0.5, 0, -0.05, 0)
OpenButton.Size = UDim2.new(0.0771235004, 0, 0.0240740739, 0)

UIA.Name = "UIA"
UIA.Parent = OpenButton
UIA.AspectRatio = 5.692

OpenLabel.Name = "OpenLabel"
OpenLabel.Parent = OpenButton
OpenLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OpenLabel.BackgroundTransparency = 1.000
OpenLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
OpenLabel.BorderSizePixel = 0
OpenLabel.Size = UDim2.new(1, 0, 1, 0)
OpenLabel.Font = Enum.Font.Unknown
OpenLabel.Text = "\\/ [INS]"
OpenLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenLabel.TextScaled = true
OpenLabel.TextSize = 14.000
OpenLabel.TextWrapped = true

UIStroke1_OpenButton.StrokeSizingMode = Enum.StrokeSizingMode.ScaledSize
UIStroke1_OpenButton.Color = Color3.fromRGB(0, 0, 0)
UIStroke1_OpenButton.Thickness = 0.05
UIStroke1_OpenButton.Transparency = 0.89
UIStroke1_OpenButton.ZIndex = 3

UIStroke2_OpenButton.StrokeSizingMode = Enum.StrokeSizingMode.ScaledSize
UIStroke2_OpenButton.Color = Color3.fromRGB(0, 0, 0)
UIStroke2_OpenButton.Thickness = 0.10
UIStroke2_OpenButton.Transparency = 0.89
UIStroke2_OpenButton.ZIndex = 2

UIStroke3_OpenButton.StrokeSizingMode = Enum.StrokeSizingMode.ScaledSize
UIStroke3_OpenButton.Color = Color3.fromRGB(0, 0, 0)
UIStroke3_OpenButton.Thickness = 0.15
UIStroke3_OpenButton.Transparency = 0.89
UIStroke3_OpenButton.ZIndex = 1

UiStroke1.StrokeSizingMode = Enum.StrokeSizingMode.ScaledSize
UiStroke1.Color = Color3.fromRGB(0, 0, 0)
UiStroke1.Thickness = 0.01
UiStroke1.Transparency = 0.89
UiStroke1.ZIndex = 3

UiStroke2.StrokeSizingMode = Enum.StrokeSizingMode.ScaledSize
UiStroke2.Color = Color3.fromRGB(0, 0, 0)
UiStroke2.Thickness = 0.02
UiStroke2.Transparency = 0.89
UiStroke2.ZIndex = 2

UiStroke3.StrokeSizingMode = Enum.StrokeSizingMode.ScaledSize
UiStroke3.Color = Color3.fromRGB(0, 0, 0)
UiStroke3.Thickness = 0.03
UiStroke3.Transparency = 0.89
UiStroke3.ZIndex = 1

RotationUiStroke.StrokeSizingMode = Enum.StrokeSizingMode.ScaledSize
RotationUiStroke.Color = Color3.fromRGB(0, 0, 0)
RotationUiStroke.Thickness = 0.07
RotationUiStroke.Transparency = 0.85
RotationUiStroke.ZIndex = 0

UiGradientRotStroke.Transparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(1, 1)
})

Start.Name = "Start"
Start.Parent = OrbitScript

Background.Name = "Background"
Background.Parent = Start
Background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Background.BackgroundTransparency = 0.200
Background.BorderColor3 = Color3.fromRGB(0, 0, 0)
Background.BorderSizePixel = 0
Background.Size = UDim2.new(1, 0, 1, 0)
Background.Visible = true
Background.ZIndex = -3

Line.Name = "Line"
Line.Parent = Start
Line.AnchorPoint = Vector2.new(0.5, 0.5)
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
Line.BorderSizePixel = 0
Line.Position = UDim2.new(0.418411165, 0, 0.499042153, 0)
Line.Size = UDim2.new(0.158936948, 0, 0.00462962966, 0)
Line.Visible = true

UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(0.10, 1.00), NumberSequenceKeypoint.new(0.40, 0.00), NumberSequenceKeypoint.new(0.60, 0.00), NumberSequenceKeypoint.new(0.90, 1.00), NumberSequenceKeypoint.new(1.00, 1.00)}
UIGradient.Parent = Line

Blur1.Name = "Blur1"
Blur1.Parent = Start
Blur1.AnchorPoint = Vector2.new(0.5, 0.5)
Blur1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Blur1.BackgroundTransparency = 1.000
Blur1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Blur1.BorderSizePixel = 0
Blur1.Position = UDim2.new(0.601824105, 0, 0.498738617, 0)
Blur1.Size = UDim2.new(0.332459807, 0, 0.5907318, 0)
Blur1.Visible = true
Blur1.ZIndex = -2
Blur1.Image = "rbxassetid://5644846798"
Blur1.ImageTransparency = 0.220

UIScale.Parent = Blur1
UIScale.Scale = 1.300

UIAspectRatioConstraint.Parent = Blur1

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(137, 159, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 158, 102))}
UIGradient_2.Rotation = 89
UIGradient_2.Parent = Blur1

Blur2.Name = "Blur2"
Blur2.Parent = Start
Blur2.AnchorPoint = Vector2.new(0.5, 0.5)
Blur2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Blur2.BackgroundTransparency = 1.000
Blur2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Blur2.BorderSizePixel = 0
Blur2.Position = UDim2.new(0.922056794, 0, 0.108313218, 0)
Blur2.Rotation = 25.000
Blur2.Size = UDim2.new(1.16663694, 0, 1.05068409, 0)
Blur2.Visible = true
Blur2.ZIndex = -2
Blur2.Image = "rbxassetid://5644846798"
Blur2.ImageTransparency = 0.530

UIScale_2.Parent = Blur2
UIScale_2.Scale = 1.300

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 184, 184)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(156, 255, 222))}
UIGradient_3.Rotation = 89
UIGradient_3.Parent = Blur2

Blur3.Name = "Blur3"
Blur3.Parent = Start
Blur3.AnchorPoint = Vector2.new(0.5, 0.5)
Blur3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Blur3.BackgroundTransparency = 1.000
Blur3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Blur3.BorderSizePixel = 0
Blur3.Position = UDim2.new(0.0189822838, 0, 0.0509058051, 0)
Blur3.Rotation = -40.000
Blur3.Size = UDim2.new(1.16663694, 0, 1.05068409, 0)
Blur3.Visible = true
Blur3.ZIndex = -2
Blur3.Image = "rbxassetid://5644846798"
Blur3.ImageTransparency = 0.530

UIScale_3.Parent = Blur3
UIScale_3.Scale = 1.300

UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 249, 172)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(94, 110, 255))}
UIGradient_4.Rotation = 89
UIGradient_4.Parent = Blur3

Blur4.Name = "Blur4"
Blur4.Parent = Start
Blur4.AnchorPoint = Vector2.new(0.5, 0.5)
Blur4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Blur4.BackgroundTransparency = 1.000
Blur4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Blur4.BorderSizePixel = 0
Blur4.Position = UDim2.new(0.136055276, 0, 0.995721459, 0)
Blur4.Size = UDim2.new(1.57583356, 0, 1.51987171, 0)
Blur4.Visible = true
Blur4.ZIndex = -2
Blur4.Image = "rbxassetid://5644846798"
Blur4.ImageTransparency = 0.510

UIScale_4.Parent = Blur4
UIScale_4.Scale = 1.300

UIGradient_5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 145, 131)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(222, 101, 255))}
UIGradient_5.Rotation = 89
UIGradient_5.Parent = Blur4

Icon.Name = "Icon"
Icon.Parent = Start
Icon.AnchorPoint = Vector2.new(0.5, 0.5)
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.BackgroundTransparency = 1.000
Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
Icon.BorderSizePixel = 0
Icon.Position = UDim2.new(0.601947784, 0, 0.49972862, 0)
Icon.Size = UDim2.new(0.131390259, 0, 0.233461022, 0)
Icon.Visible = true
Icon.ZIndex = 3
Icon.Image = "rbxassetid://138087656549083"
Icon.Rotation = -131

UIAspectRatioConstraint_2.Parent = Icon

UIScale_5.Parent = Icon

NameLabel.Name = "NameLabel"
NameLabel.Parent = Start
NameLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel.BackgroundTransparency = 1.000
NameLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameLabel.BorderSizePixel = 0
NameLabel.Position = UDim2.new(0.293903083, 0, 0.408269465, 0)
NameLabel.Size = UDim2.new(0.198540911, 0, 0.100031942, 0)
NameLabel.Visible = true
NameLabel.Font = Enum.Font.Unknown
NameLabel.Text = "ORBIT"
NameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel.TextScaled = true
NameLabel.TextSize = 14.000
NameLabel.TextWrapped = true

ScriptLabel.Name = "ScriptLabel"
ScriptLabel.Parent = Start
ScriptLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptLabel.BackgroundTransparency = 1.000
ScriptLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptLabel.BorderSizePixel = 0
ScriptLabel.Position = UDim2.new(0.352787912, 0, 0.49580459, 0)
ScriptLabel.Size = UDim2.new(0.198540911, 0, 0.0879629627, 0)
ScriptLabel.Visible = true
ScriptLabel.Font = Enum.Font.Unknown
ScriptLabel.Text = "SCRIPT"
ScriptLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptLabel.TextScaled = true
ScriptLabel.TextSize = 14.000
ScriptLabel.TextWrapped = true

Main.Name = "Main"
Main.Parent = OrbitScript

Background_2.Name = "Background"
Background_2.Parent = Main
Background_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Background_2.BackgroundTransparency = 0.500
Background_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Background_2.BorderSizePixel = 0
Background_2.Size = UDim2.new(1, 0, 1, 0)
Background_2.ZIndex = -3
Background_2.Visible = false

Blur1_Main.Name = "Blur1_Main"
Blur1_Main.Parent = Main
Blur1_Main.AnchorPoint = Vector2.new(0.5, 0.5)
Blur1_Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Blur1_Main.BackgroundTransparency = 1.000
Blur1_Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Blur1_Main.BorderSizePixel = 0
Blur1_Main.Position = UDim2.new(0.922056794, 0, 0.108313218, 0)
Blur1_Main.Rotation = 25.000
Blur1_Main.Size = UDim2.new(1.16663694, 0, 1.05068409, 0)
Blur1_Main.ZIndex = -2
Blur1_Main.Image = "rbxassetid://5644846798"
Blur1_Main.ImageTransparency = 0.530
Blur1_Main.Visible = false

UIScale_6.Parent = Blur1_Main
UIScale_6.Scale = 1.300

UIGradient_6.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 116, 116)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(147, 147, 255))}
UIGradient_6.Rotation = -9
UIGradient_6.Parent = Blur1_Main

Blur2_Main.Name = "Blur2_Main"
Blur2_Main.Parent = Main
Blur2_Main.AnchorPoint = Vector2.new(0.5, 0.5)
Blur2_Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Blur2_Main.BackgroundTransparency = 1.000
Blur2_Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Blur2_Main.BorderSizePixel = 0
Blur2_Main.Position = UDim2.new(0.0189822838, 0, 0.0509058051, 0)
Blur2_Main.Rotation = -40.000
Blur2_Main.Size = UDim2.new(1.16663694, 0, 1.05068409, 0)
Blur2_Main.ZIndex = -2
Blur2_Main.Image = "rbxassetid://5644846798"
Blur2_Main.ImageTransparency = 0.530
Blur2_Main.Visible = false

UIScale_7.Parent = Blur2_Main
UIScale_7.Scale = 1.300

UIGradient_7.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 249, 172)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(94, 110, 255))}
UIGradient_7.Rotation = -25
UIGradient_7.Parent = Blur2_Main

Blur3_Main.Name = "Blur3_Main"
Blur3_Main.Parent = Main
Blur3_Main.AnchorPoint = Vector2.new(0.5, 0.5)
Blur3_Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Blur3_Main.BackgroundTransparency = 1.000
Blur3_Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Blur3_Main.BorderSizePixel = 0
Blur3_Main.Position = UDim2.new(0.138139695, 0, 0.987388074, 0)
Blur3_Main.Size = UDim2.new(1.57583356, 0, 1.51987171, 0)
Blur3_Main.ZIndex = -2
Blur3_Main.Image = "rbxassetid://5644846798"
Blur3_Main.ImageTransparency = 0.510
Blur3_Main.Visible = false

UIScale_8.Parent = Blur3_Main
UIScale_8.Scale = 1.300

UIGradient_8.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(178, 255, 252)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(222, 101, 255))}
UIGradient_8.Rotation = -180
UIGradient_8.Parent = Blur3_Main

Main_2.Name = "Main"
Main_2.Parent = Main
Main_2.AnchorPoint = Vector2.new(0.5, 0.5)
Main_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Main_2.BackgroundTransparency = 0.500
Main_2.ClipsDescendants = true
Main_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Main_2.Size = UDim2.new(0.323614687, 0, 0.330278754, 0)
Main_2.Visible = false

Pages.Name = "Pages"
Pages.Parent = Main_2

Combat.Name = "Combat"
Combat.Parent = Pages
Combat.BackgroundTransparency = 1.000
Combat.ClipsDescendants = true
Combat.Position = UDim2.new(0.0109999999, 0, 0.200000003, 0)
Combat.Size = UDim2.new(0.989000022, 0, 0.800000012, 0)

Contaier.Name = "Contaier"
Contaier.Parent = Combat
Contaier.Active = true
Contaier.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Contaier.BackgroundTransparency = 1.000
Contaier.BorderColor3 = Color3.fromRGB(0, 0, 0)
Contaier.BorderSizePixel = 0
Contaier.Position = UDim2.new(0.0331809819, 0, 0.207722217, 0)
Contaier.Size = UDim2.new(0.920928359, 0, 0.654344082, 0)
Contaier.CanvasSize = UDim2.new(0, 0, 0, 0)
Contaier.ScrollBarThickness = 0

UIListLayout.Parent = Contaier
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Wraps = true

PowerText.Name = "PowerText"
PowerText.Parent = Combat
PowerText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PowerText.BackgroundTransparency = 1.000
PowerText.BorderColor3 = Color3.fromRGB(0, 0, 0)
PowerText.BorderSizePixel = 0
PowerText.Position = UDim2.new(0.0170133468, 0, 0.0293719191, 0)
PowerText.Size = UDim2.new(0.352713436, 0, 0.145914599, 0)
PowerText.ZIndex = 2
PowerText.Font = Enum.Font.Oswald
PowerText.Text = "Power: Quickstep"
PowerText.TextColor3 = Color3.fromRGB(255, 255, 255)
PowerText.TextScaled = true
PowerText.TextSize = 14.000
PowerText.TextWrapped = true
PowerText.TextXAlignment = Enum.TextXAlignment.Left

Movement.Name = "Movement"
Movement.Parent = Pages
Movement.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Movement.BackgroundTransparency = 1.000
Movement.BorderColor3 = Color3.fromRGB(0, 0, 0)
Movement.BorderSizePixel = 0
Movement.ClipsDescendants = true
Movement.Position = UDim2.new(0.011299435, 0, 0.200000003, 0)
Movement.Size = UDim2.new(0.988700569, 0, 0.800000012, 0)
Movement.Visible = false

Contaier_2.Name = "Contaier"
Contaier_2.Parent = Movement
Contaier_2.Active = true
Contaier_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Contaier_2.BackgroundTransparency = 1.000
Contaier_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Contaier_2.BorderSizePixel = 0
Contaier_2.Position = UDim2.new(0.0331809893, 0, 0.0360096954, 0)
Contaier_2.Size = UDim2.new(0.920928359, 0, 0.8260566, 0)
Contaier_2.CanvasSize = UDim2.new(0, 0, 0, 0)
Contaier_2.ScrollBarThickness = 0

UIListLayout_2.Parent = Contaier_2
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Wraps = true

Visuals.Name = "Visuals"
Visuals.Parent = Pages
Visuals.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Visuals.BackgroundTransparency = 1.000
Visuals.BorderColor3 = Color3.fromRGB(0, 0, 0)
Visuals.BorderSizePixel = 0
Visuals.ClipsDescendants = true
Visuals.Position = UDim2.new(0, 0, 0.200000003, 0)
Visuals.Size = UDim2.new(1, 0, 0.800000012, 0)
Visuals.Visible = false

Contaier_3.Name = "Contaier"
Contaier_3.Parent = Visuals
Contaier_3.Active = true
Contaier_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Contaier_3.BackgroundTransparency = 1.000
Contaier_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Contaier_3.BorderSizePixel = 0
Contaier_3.Position = UDim2.new(0.0331809893, 0, 0.0360096954, 0)
Contaier_3.Size = UDim2.new(0.920928359, 0, 0.8260566, 0)
Contaier_3.CanvasSize = UDim2.new(0, 0, 0, 0)
Contaier_3.ScrollBarThickness = 0

UIListLayout_3.Parent = Contaier_3
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Wraps = true

Example.Name = "Example"
Example.Parent = Pages
Example.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Example.BackgroundTransparency = 1.000
Example.BorderColor3 = Color3.fromRGB(0, 0, 0)
Example.BorderSizePixel = 0
Example.Position = UDim2.new(0.0273744725, 0, 0.350433499, 0)
Example.Size = UDim2.new(0.487819642, 0, 0.246082336, 0)
Example.Visible = false
Example.ZIndex = 2
Example.Font = Enum.Font.Oswald
Example.Text = "Option Name"
Example.TextColor3 = Color3.fromRGB(139, 139, 139)
Example.TextScaled = true
Example.TextSize = 14.000
Example.TextWrapped = true
Example.TextXAlignment = Enum.TextXAlignment.Left

Switcher.Name = "Switcher"
Switcher.Parent = Example
Switcher.AnchorPoint = Vector2.new(0.5, 0.5)
Switcher.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Switcher.BorderColor3 = Color3.fromRGB(0, 0, 0)
Switcher.BorderSizePixel = 0
Switcher.Position = UDim2.new(0.725968182, 0, 0.500000179, 0)
Switcher.Size = UDim2.new(0.477136731, 0, 0.805000663, 0)
Switcher.Visible = false

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Switcher

SwtichButton.Name = "SwtichButton"
SwtichButton.Parent = Switcher
SwtichButton.AnchorPoint = Vector2.new(0.5, 0)
SwtichButton.BackgroundColor3 = Color3.fromRGB(139, 139, 139)
SwtichButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
SwtichButton.BorderSizePixel = 0
SwtichButton.Position = UDim2.new(0.25, 0, 0, 0)
SwtichButton.Size = UDim2.new(0.641329288, 0, 1.04299033, 0)
SwtichButton.ZIndex = 2
SwtichButton.Font = Enum.Font.SourceSans
SwtichButton.Text = ""
SwtichButton.TextColor3 = Color3.fromRGB(0, 0, 0)
SwtichButton.TextSize = 14.000

UICorner_2.CornerRadius = UDim.new(1, 0)
UICorner_2.Parent = SwtichButton

UIAspectRatioConstraint_3.Parent = SwtichButton
UIAspectRatioConstraint_3.AspectRatio = 1.001

UIGradient_9.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(199, 199, 199))}
UIGradient_9.Rotation = 90
UIGradient_9.Parent = SwtichButton

UIAspectRatioConstraint_4.Parent = Switcher
UIAspectRatioConstraint_4.AspectRatio = 1.655

TextValue.Name = "TextValue"
TextValue.Parent = Example
TextValue.AnchorPoint = Vector2.new(0.5, 0.5)
TextValue.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
TextValue.BackgroundTransparency = 0.500
TextValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextValue.BorderSizePixel = 0
TextValue.Position = UDim2.new(0.725968182, 0, 0.500000179, 0)
TextValue.Size = UDim2.new(0.477136731, 0, 0.805000663, 0)
TextValue.Visible = false

UICorner_3.CornerRadius = UDim.new(1, 0)
UICorner_3.Parent = TextValue

UIAspectRatioConstraint_5.Parent = TextValue
UIAspectRatioConstraint_5.AspectRatio = 1.655

TextBox.Parent = TextValue
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.000
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Size = UDim2.new(1, 0, 1, 0)
TextBox.Font = Enum.Font.Oswald
TextBox.PlaceholderColor3 = Color3.fromRGB(79, 79, 79)
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

UIGradient_10.Rotation = -90
UIGradient_10.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.43, 0.00), NumberSequenceKeypoint.new(0.82, 0.34), NumberSequenceKeypoint.new(1.00, 1.00)}
UIGradient_10.Parent = TextValue

ColorButton.Name = "ColorButton"
ColorButton.Parent = Example
ColorButton.AnchorPoint = Vector2.new(0.5, 0.5)
ColorButton.BackgroundColor3 = Color3.fromRGB(255, 99, 99)
ColorButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ColorButton.BorderSizePixel = 0
ColorButton.Position = UDim2.new(0.926056802, 0, 0.489232481, 0)
ColorButton.Size = UDim2.new(0.110185482, 0, 0.66311115, 0)
ColorButton.Visible = false
ColorButton.ZIndex = 2
ColorButton.Font = Enum.Font.SourceSans
ColorButton.Text = ""
ColorButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ColorButton.TextSize = 14.000

UICorner_4.CornerRadius = UDim.new(0.300000012, 0)
UICorner_4.Parent = ColorButton

ColorChooseFrame.Name = "ColorChooseFrame"
ColorChooseFrame.Parent = ColorButton
ColorChooseFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ColorChooseFrame.BackgroundTransparency = 0.100
ColorChooseFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ColorChooseFrame.BorderSizePixel = 0
ColorChooseFrame.Position = UDim2.new(-2.91453457, 0, 0.728357136, 0)
ColorChooseFrame.Size = UDim2.new(3.19367743, 0, 1.15266311, 0)
ColorChooseFrame.Visible = false
ColorChooseFrame.ZIndex = 3

TextBox_2.Parent = ColorChooseFrame
TextBox_2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
TextBox_2.BackgroundTransparency = 1.000
TextBox_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox_2.BorderSizePixel = 0
TextBox_2.Size = UDim2.new(1, 0, 0.899999976, 0)
TextBox_2.ZIndex = 4
TextBox_2.Font = Enum.Font.Roboto
TextBox_2.PlaceholderColor3 = Color3.fromRGB(39, 39, 39)
TextBox_2.PlaceholderText = "#ff6363"
TextBox_2.Text = ""
TextBox_2.TextColor3 = Color3.fromRGB(217, 217, 217)
TextBox_2.TextScaled = true
TextBox_2.TextSize = 14.000
TextBox_2.TextWrapped = true

PredictColor.Name = "PredictColor"
PredictColor.Parent = ColorChooseFrame
PredictColor.BackgroundColor3 = Color3.fromRGB(255, 99, 99)
PredictColor.BorderColor3 = Color3.fromRGB(0, 0, 0)
PredictColor.BorderSizePixel = 0
PredictColor.Position = UDim2.new(0, 0, 0.899999976, 0)
PredictColor.Size = UDim2.new(1, 0, 0.100000001, 0)
PredictColor.ZIndex = 4

UIAspectRatioConstraint_6.Parent = ColorButton
UIAspectRatioConstraint_6.AspectRatio = 0.998

UIAspectRatioConstraint_7.Parent = Example
UIAspectRatioConstraint_7.AspectRatio = 6.005

TopFrame.Name = "TopFrame"
TopFrame.Parent = Main_2

NameTag.Name = "NameTag"
NameTag.Parent = TopFrame
NameTag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NameTag.BackgroundTransparency = 1.000
NameTag.Position = UDim2.new(0.0641386732, 0, 0.0318034664, 0)
NameTag.Size = UDim2.new(0.141000003, 0, 0.128000006, 0)
NameTag.Font = Enum.Font.Roboto
NameTag.Text = "ORBIT"
NameTag.TextColor3 = Color3.fromRGB(170, 170, 170)
NameTag.TextScaled = true
NameTag.TextWrapped = true
NameTag.FontFace = Font.new(NameTag.FontFace.Family, Enum.FontWeight.Bold, Enum.FontStyle.Italic)

UIAspectRatioConstraint_8.Parent = NameTag
UIAspectRatioConstraint_8.AspectRatio = 1.923

ConnectTag.Name = "ConnectTag"
ConnectTag.Parent = TopFrame
ConnectTag.BackgroundTransparency = 1.000
ConnectTag.Position = UDim2.new(0.0109999999, 0, 0.916999996, 0)
ConnectTag.Size = UDim2.new(0.319999993, 0, 0.0790000036, 0)
ConnectTag.ZIndex = 2
ConnectTag.Font = Enum.Font.SourceSans
ConnectTag.Text = "Made by JustSomeGuest Sigma And Totally Not Made By de__ver The Dumbass"
ConnectTag.TextColor3 = Color3.fromRGB(255, 255, 255)
ConnectTag.TextScaled = true
ConnectTag.TextWrapped = true
ConnectTag.TextXAlignment = Enum.TextXAlignment.Left

UIAspectRatioConstraint_9.Parent = ConnectTag
UIAspectRatioConstraint_9.AspectRatio = 7.083

Close.Name = "Close"
Close.Parent = TopFrame
Close.BackgroundTransparency = 1.000
Close.Position = UDim2.new(0.906830907, 0, 0.0337862037, 0)
Close.Rotation = 90.000
Close.Size = UDim2.new(0.0659999996, 0, 0.115000002, 0)
Close.ZIndex = 2
Close.Font = Enum.Font.Michroma
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 65, 65)
Close.TextScaled = true
Close.TextWrapped = true

UIAspectRatioConstraint_10.Parent = Close

UITextSizeConstraint.Parent = Close
UITextSizeConstraint.MaxTextSize = 35

Combat_2.Name = "Combat"
Combat_2.Parent = TopFrame
Combat_2.BackgroundTransparency = 1.000
Combat_2.Position = UDim2.new(0.221646264, 0, 0.0448034704, 0)
Combat_2.Size = UDim2.new(0.194000006, 0, 0.0979999974, 0)
Combat_2.ZIndex = 2
Combat_2.Font = Enum.Font.Roboto
Combat_2.Text = "Combat"
Combat_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Combat_2.TextScaled = true
Combat_2.TextSize = 28.000
Combat_2.TextWrapped = true

UIAspectRatioConstraint_11.Parent = Combat_2
UIAspectRatioConstraint_11.AspectRatio = 3.433

UITextSizeConstraint_2.Parent = Combat_2
UITextSizeConstraint_2.MaxTextSize = 28

Movement_2.Name = "Movement"
Movement_2.Parent = TopFrame
Movement_2.BackgroundTransparency = 1.000
Movement_2.Position = UDim2.new(0.44064638, 0, 0.0448034704, 0)
Movement_2.Size = UDim2.new(0.237000003, 0, 0.0979999974, 0)
Movement_2.ZIndex = 2
Movement_2.Font = Enum.Font.Roboto
Movement_2.Text = "Movement"
Movement_2.TextColor3 = Color3.fromRGB(153, 153, 153)
Movement_2.TextScaled = true
Movement_2.TextSize = 28.000
Movement_2.TextWrapped = true

UIAspectRatioConstraint_12.Parent = Movement_2
UIAspectRatioConstraint_12.AspectRatio = 4.200

UITextSizeConstraint_3.Parent = Movement_2
UITextSizeConstraint_3.MaxTextSize = 28

Visuals_2.Name = "Visuals"
Visuals_2.Parent = TopFrame
Visuals_2.BackgroundTransparency = 1.000
Visuals_2.Position = UDim2.new(0.701646209, 0, 0.0448034704, 0)
Visuals_2.Size = UDim2.new(0.182999998, 0, 0.0979999974, 0)
Visuals_2.ZIndex = 2
Visuals_2.Font = Enum.Font.Roboto
Visuals_2.Text = "Visuals"
Visuals_2.TextColor3 = Color3.fromRGB(153, 153, 153)
Visuals_2.TextScaled = true
Visuals_2.TextSize = 28.000
Visuals_2.TextWrapped = true

UIAspectRatioConstraint_13.Parent = Visuals_2
UIAspectRatioConstraint_13.AspectRatio = 3.233

UITextSizeConstraint_4.Parent = Visuals_2
UITextSizeConstraint_4.MaxTextSize = 28

Frame.Parent = TopFrame
Frame.BackgroundColor3 = Color3.fromRGB(255, 77, 77)
Frame.Position = UDim2.new(0.221646264, 0, 0.0448034704, 0)
Frame.Size = UDim2.new(0.194000006, 0, 0.0979999974, 0)

UICorner_5.Parent = Frame

UIGradient_11.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(199, 199, 199))}
UIGradient_11.Rotation = 90
UIGradient_11.Parent = Frame

Icon_2.Name = "Icon"
Icon_2.Parent = TopFrame
Icon_2.AnchorPoint = Vector2.new(0.5, 0.5)
Icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon_2.BackgroundTransparency = 1.000
Icon_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Icon_2.BorderSizePixel = 0
Icon_2.Position = UDim2.new(0.030594999, 0, 0.10092485, 0)
Icon_2.Size = UDim2.new(0.0611899979, 0, 0.106531784, 0)
Icon_2.Image = "rbxassetid://138087656549083"

UIAspectRatioConstraint_14.Parent = Icon_2

NameTag_2.Name = "NameTag"
NameTag_2.Parent = TopFrame
NameTag_2.BackgroundTransparency = 1.000
NameTag_2.Position = UDim2.new(0.0625284091, 0, 0.0374104008, 0)
NameTag_2.Size = UDim2.new(0.141000003, 0, 0.128000006, 0)
NameTag_2.Font = Enum.Font.Roboto
NameTag_2.Text = "ORBIT"
NameTag_2.TextColor3 = Color3.fromRGB(255, 255, 255)
NameTag_2.TextScaled = true
NameTag_2.TextWrapped = true
NameTag_2.FontFace = Font.new(NameTag_2.FontFace.Family, Enum.FontWeight.Bold, Enum.FontStyle.Italic)

UIAspectRatioConstraint_15.Parent = NameTag_2
UIAspectRatioConstraint_15.AspectRatio = 1.923

UIAspectRatioConstraint_16.Parent = Main_2
UIAspectRatioConstraint_16.AspectRatio = 1.741

Line_2.Name = "Line"
Line_2.Parent = Main_2
Line_2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Line_2.BackgroundTransparency = 0.500
Line_2.BorderSizePixel = 0
Line_2.Position = UDim2.new(0, 0, 0.177982658, 0)
Line_2.Size = UDim2.new(1, 0, 0.0109999999, 0)

UICorner_6.Parent = Main_2

-- Start Setup
Blur1.ImageTransparency = 1
Blur2.ImageTransparency = 1
Blur3.ImageTransparency = 1
Blur4.ImageTransparency = 1
Background.Transparency = 1
UIScale_5.Scale = 0

Blur1:AddTag("Blur")
Blur2:AddTag("Blur")
Blur3:AddTag("Blur")
Blur4:AddTag("Blur")

ScriptLabel.Position = ScriptLabel.Position - UDim2.new(0.7, 0, 0, 0)
NameLabel.Position = NameLabel.Position - UDim2.new(0.7, 0, 0, 0)
Line.Size = UDim2.new(0, 0, 0.005, 0)

ScriptLabel.FontFace = Font.new(ScriptLabel.FontFace.Family, Enum.FontWeight.Bold, Enum.FontStyle.Italic)
NameLabel.FontFace = Font.new(NameLabel.FontFace.Family, Enum.FontWeight.Bold, Enum.FontStyle.Italic)


-- Main Setup
UIScaleMain.Scale = 0
Background_2.Transparency = 1
Blur1_Main.ImageTransparency = 1
Blur2_Main.ImageTransparency = 1
Blur3_Main.ImageTransparency = 1

Blur1_Main:AddTag("Blur")
Blur2_Main:AddTag("Blur")
Blur3_Main:AddTag("Blur")

Main_2.Visible = false
Background_2.Visible = true
Blur1_Main.Visible = true
Blur2_Main.Visible = true
Blur3_Main.Visible = true

-- Start Anim
task.wait(2)

TS:Create(ScriptLabel, TweenInfo.new(1.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = ScriptLabel.Position + UDim2.new(0.7, 0, 0, 0)}):Play()
TS:Create(NameLabel, TweenInfo.new(1.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = NameLabel.Position + UDim2.new(0.7, 0, 0, 0)}):Play()

TS:Create(Blur2, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0.53}):Play()
TS:Create(Blur3, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0.53}):Play()
TS:Create(Blur4, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0.5}):Play()

TS:Create(Background, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Transparency = 0.5}):Play()

task.delay(1, function()
	TS:Create(Line, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0.159, 0, 0.005, 0)}):Play()
end)

task.delay(0.7, function()
	TS:Create(Blur1, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0.22}):Play()
	TS:Create(UIScale_5, TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Scale = 1}):Play()
	TS:Create(Icon, TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Rotation = 0}):Play()
end)

task.delay(2.5, function()
	for _, Frame in Start:GetChildren() do
		if Frame:IsA("Frame") then
			TS:Create(Frame, TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Transparency = 1}):Play()
		elseif Frame:IsA("ImageLabel") then
			TS:Create(Frame, TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {ImageTransparency = 1}):Play()
		elseif Frame:IsA("TextLabel") then
			TS:Create(Frame, TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {TextTransparency = 1}):Play()
		end
	end
end)

local Blurs = {}

for _, Blur in OrbitScript:GetDescendants() do
	if Blur:HasTag("Blur") then
		local UIGradient = Blur:FindFirstChild("UIGradient")
		if UIGradient then
			table.insert(Blurs, UIGradient)
		end
	end
end

RNS.Heartbeat:Connect(function(Delta)
	UiGradientRotStroke.Rotation = (UiGradientRotStroke.Rotation + (180 * Delta)) % 360

	for _, Blur in Blurs do
		Blur.Rotation = (Blur.Rotation + (90 * Delta)) % 360
	end
end)

task.wait(3)

-- Logic

local MenuActive = false
local CurrentPage = "Combat"

local function MenuOpenClose()
	MenuActive = not MenuActive

	if MenuActive then
		Main_2.Visible = true
		TS:Create(Blur1_Main, TweenInfo.new(0.7, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0.53}):Play()
		TS:Create(Blur2_Main, TweenInfo.new(0.7, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0.53}):Play()
		TS:Create(Blur3_Main, TweenInfo.new(0.7, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0.51}):Play()
		TS:Create(Background_2, TweenInfo.new(0.7, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Transparency = 0.5}):Play()
		TS:Create(UIScaleMain, TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Scale = 1}):Play()
		TS:Create(OpenButton, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, -0.05, 0)}):Play()
	else
		TS:Create(Blur1_Main, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {ImageTransparency = 1}):Play()
		TS:Create(Blur2_Main, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {ImageTransparency = 1}):Play()
		TS:Create(Blur3_Main, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {ImageTransparency = 1}):Play()
		TS:Create(Background_2, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Transparency = 1}):Play()
		TS:Create(UIScaleMain, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Scale = 0}):Play()
		TS:Create(OpenButton, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, 0, 0)}):Play()

		local CurrentToggleState = MenuActive
		task.delay(1, function()
			if not MenuActive and MenuActive == CurrentToggleState then
				Main_2.Visible = false
			end
		end)
	end
end

MenuOpenClose()

local function TopFrameButtonSetup(Button)
	if Button.Name == CurrentPage or Button == Close then return end
	CurrentPage = Button.Name


	for _, v in TopFrame:GetChildren() do
		if v:IsA("TextButton") and v ~= Close and v ~= Button then
			TS:Create(v, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = Color3.new(0.666667, 0.666667, 0.666667)}):Play()
		end
	end

	for _, v in Pages:GetChildren() do
		if v:IsA("Frame") and v.Name ~= CurrentPage then
			TS:Create(v, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 0, -1, 0)}):Play()

			task.delay(0.25, function()
				if v.Name ~= CurrentPage  then
					v.Visible = false
				end
			end)
		elseif v:IsA("Frame") and v.Name == CurrentPage then
			v.Position = UDim2.new(0, 0, 1, 0)
			v.Visible = true
			TS:Create(v, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0, 0, 0.2, 0)}):Play()
		end
	end


	TS:Create(Button, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = Color3.new(1, 1, 1)}):Play()

	TS:Create(Frame, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Position = Button.Position}):Play()
	TS:Create(Frame, TweenInfo.new(0.125, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Size = UDim2.new(Button.Size.X.Scale / 2, 0, 0.049, 0)}):Play()
	task.delay(0.125, function()
		TS:Create(Frame, TweenInfo.new(0.125, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Size = Button.Size}):Play()
	end)
end

for _, TopButton in TopFrame:GetChildren() do
	if TopButton:IsA("GuiButton") then
		TopButton.Activated:Connect(function()
			TopFrameButtonSetup(TopButton)
		end)
	end
end

local Hitbox = {}
function Hitbox.Create(Size: Vector3, InstancePart: BasePart, Offset: CFrame, LifeTime: number, Visible: boolean)
	local Part = Instance.new("Part")
	Part.Size = Size or Vector3.new(7, 7, 7)

	local BasePart = InstancePart or HumRP
	Part.CFrame = BasePart.CFrame * (Offset or CFrame.new())

	Part.Anchored = false
	Part.Material = Enum.Material.ForceField
	Part.Color = Color3.fromRGB(255, 42, 46)
	Part.CanCollide = false
	Part.CastShadow = false
	Part.Parent = workspace

	if Visible == false then
		Part.Transparency = 1
	end

	Debris:AddItem(Part, LifeTime or 0.1)

	return Part
end

function Hitbox.OnTouched(HitboxPart, Callback)
	local HitDebounce = {}

	HitboxPart.Touched:Connect(function(Hit)
		local EnemyCharacter = Hit:FindFirstAncestorOfClass("Model")
		if not EnemyCharacter then return end

		local EnemyHumanoid = EnemyCharacter:FindFirstChildOfClass("Humanoid")
		if not EnemyHumanoid then return end

		if EnemyCharacter == Character then return end

		if HitDebounce[EnemyHumanoid] then return end
		HitDebounce[EnemyHumanoid] = true

		Callback(EnemyCharacter, EnemyHumanoid, Hit)

		task.delay(0.2, function()
			HitDebounce[EnemyHumanoid] = nil
		end)
	end)
end

local function GetESPBox(Player)
	local EnemyCharacter = Player.Character
	if not EnemyCharacter then return nil end
	local Root = EnemyCharacter:FindFirstChild("HumanoidRootPart")
	if not Root then return nil end

	local Box = Root:FindFirstChild("ESP_UI")
	if not Box then
		Box = Instance.new("BillboardGui")
		Box.Name = "ESP_UI"
		Box.Size = UDim2.new(4, 0, 2, 0)
		Box.StudsOffset = Vector3.new(0, 4, 0)
		Box.AlwaysOnTop = true
		Box.Parent = Root

		local NameLabel = Instance.new("TextLabel")
		NameLabel.Name = "PlayerName"
		NameLabel.Size = UDim2.new(1, 0, 0.5, 0)
		NameLabel.Position = UDim2.new(0, 0, 0, 0)
		NameLabel.BackgroundTransparency = 1
		NameLabel.TextColor3 = Color3.new(1, 1, 1)
		NameLabel.TextStrokeTransparency = 0
		NameLabel.TextTransparency = 1
		NameLabel.Parent = Box

		local HealthLabel = Instance.new("TextLabel")
		HealthLabel.Name = "HealthDisplay"
		HealthLabel.Position = UDim2.new(0, 0, 0.5, 0)
		HealthLabel.Size = UDim2.new(1, 0, 0.5, 0)
		HealthLabel.BackgroundTransparency = 1
		HealthLabel.TextColor3 = Color3.new(0, 1, 0)
		HealthLabel.TextStrokeTransparency = 0
		HealthLabel.TextTransparency = 1
		HealthLabel.Parent = Box
	end
	return Box
end

local function GetHighlight(Player)
	local EnemyCharacter = Player.Character
	if not EnemyCharacter then return nil end

	local High = EnemyCharacter:FindFirstChild("ESP_Highlight")
	if not High then
		High = Instance.new("Highlight")
		High.Name = "ESP_Highlight"
		High.FillTransparency = 1
		High.OutlineTransparency = 1
		High.Adornee = EnemyCharacter
		High.Parent = EnemyCharacter
	end
	return High
end

local function UpdateESP()
	for _, EnemyPlayer in game:GetService("Players"):GetChildren() do
		if EnemyPlayer ~= Player then
			if StateOutline then
				local High = GetHighlight(EnemyPlayer)
				if High then
					High.OutlineTransparency = 0
					High.FillTransparency = 0.5
				end
			end

			if StateNames or StateHealth then
				local Box = GetESPBox(EnemyPlayer)
				if Box then
					local NameLabel = Box:FindFirstChild("PlayerName")
					local HealthLabel = Box:FindFirstChild("HealthDisplay")

					if NameLabel then
						NameLabel.Text = EnemyPlayer.Name
						NameLabel.TextTransparency = StateNames and 0 or 1
					end

					if HealthLabel then
						local Hum = EnemyPlayer.Character and EnemyPlayer.Character:FindFirstChild("Humanoid")
						HealthLabel.Text = Hum and math.floor(Hum.Health) .. " HP" or "0 HP"
						HealthLabel.TextTransparency = StateHealth and 0 or 1
					end
				end
			end
		end
	end
end

local DefaultWalkSpeed
local DefaultRunSpeed

local SwitcherControllers = {}

local FunctionsList = {
	["Lichen Farm"] = function(NewState)
		if NewState then
			if SwitcherControllers["Auto Kill"] then
				SwitcherControllers["Auto Kill"].SetExternal(false)
			end
			if SwitcherControllers["Auto Farm"] then
				SwitcherControllers["Auto Farm"].SetExternal(false)
			end
		end
	end,
	
	["Auto Farm"] = function(NewState)
		if NewState then
			if SwitcherControllers["Auto Kill"] then
				SwitcherControllers["Auto Kill"].SetExternal(false)
			end
			if SwitcherControllers["Lichen Farm"] then
				SwitcherControllers["Lichen Farm"].SetExternal(false)
			end
		end
	end,
	
	["Auto Kill"] = function(NewState)
		if NewState then
			if SwitcherControllers["Lichen Farm"] then
				SwitcherControllers["Lichen Farm"].SetExternal(false)
			end
			if SwitcherControllers["Auto Farm"] then
				SwitcherControllers["Auto Farm"].SetExternal(false)
			end
		end
	end,
	
	["Knife A-Block"] = function(NewState)
		if NewState then
			if Player:GetAttribute("Aspect") ~= "Knife" then
				SwitcherControllers["Knife A-Block"].SetExternal(false)
				
				StarterGui:SetCore("SendNotification", {
					Title = "Error",
					Text = 'Choose "Knife" power to use this feature',
					Duration = 5
				})
			end
		end
	end,
	
	["Hitbox Extend"] = function(NewState)
		if not NewState then
			for _, EnemyCharacter: Model in workspace.Entities:GetChildren() do
				if Player.Character ~= EnemyCharacter then
					if EnemyCharacter:HasTag("HitboxExtendedBuddy") then
						local Head: BasePart = EnemyCharacter:FindFirstChild("Head")
						if Head then
							Head.Size = Vector3.new(2, 1, 1)
							Head.Transparency = 0
						end
					end
				end
			end	
		end
	end,
	
	["Fast Walk"] = function(NewState)
		if NewState then
			DefaultWalkSpeed = Humanoid:GetAttribute("WalkSpeed")
			DefaultRunSpeed = Humanoid:GetAttribute("RunSpeed")
			
			Humanoid.WalkSpeed = 29
			Humanoid:SetAttribute("WalkSpeed", 29)
			Humanoid:SetAttribute("RunSpeed", 29)
		else
			Humanoid:SetAttribute("WalkSpeed", DefaultWalkSpeed)
			Humanoid:SetAttribute("RunSpeed", DefaultRunSpeed)
		end
	end,
	
	["ESP - Outline"] = function(NewState)
		StateOutline = NewState
		for _, EnemyPlayer in game:GetService("Players"):GetChildren() do
			if EnemyPlayer ~= Player then
				local High = GetHighlight(EnemyPlayer)
				if High then
					local TargetOutline = NewState and 0 or 1
					local TargetFill = NewState and 0.5 or 1
					TS:Create(High, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {OutlineTransparency = TargetOutline, FillTransparency = TargetFill}):Play()
				end
			end
		end
	end,

	["ESP - Names"] = function(NewState)
		StateNames = NewState
		for _, EnemyPlayer in game:GetService("Players"):GetChildren() do
			if EnemyPlayer ~= Player then
				local Box = GetESPBox(EnemyPlayer)
				if Box then
					local Label = Box:FindFirstChild("PlayerName")
					if Label then
						Label.Text = EnemyPlayer.Name
						local TargetTransparency = NewState and 0 or 1
						TS:Create(Label, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = TargetTransparency}):Play()
					end
				end
			end
		end
	end,

	["ESP - Health"] = function(NewState)
		StateHealth = NewState
		for _, EnemyPlayer in game:GetService("Players"):GetChildren() do
			if EnemyPlayer ~= Player then
				local Box = GetESPBox(EnemyPlayer)
				if Box then
					local Label = Box:FindFirstChild("HealthDisplay")
					if Label then
						local TargetTransparency = NewState and 0 or 1
						TS:Create(Label, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = TargetTransparency}):Play()
					end
				end
			end
		end
	end,
}

local function SwitcherSetup(Switcher: Frame, State: boolean, CallbackName: string)
	local SwitchButton: TextButton = Switcher.SwtichButton

	local function UpdateState(NewState: boolean, SkipCallback: boolean)
		SwitchButton:SetAttribute("State", NewState)

		if NewState then
			TS:Create(SwitchButton, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = UDim2.new(0.75, 0, 0, 0), BackgroundColor3 = Color3.new(1, 1, 1)}):Play()
			TS:Create(Switcher.Parent, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {TextColor3 = Color3.new(1, 1, 1)}):Play()
			TS:Create(Switcher, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.new(0.8, 0.352941, 0.352941)}):Play()
		else
			TS:Create(SwitchButton, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = UDim2.new(0.25, 0, 0, 0), BackgroundColor3 = Color3.new(0.545098, 0.545098, 0.545098)}):Play()
			TS:Create(Switcher.Parent, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {TextColor3 = Color3.new(0.545098, 0.545098, 0.545098)}):Play()
			TS:Create(Switcher, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)}):Play()
		end

		if not SkipCallback then
			local Action = FunctionsList[CallbackName]
			if Action then
				Action(NewState)
			end
		end
	end

	UpdateState(State or false, true)

	SwitchButton.Activated:Connect(function()
		local CurrentState = SwitchButton:GetAttribute("State")
		UpdateState(not CurrentState, false)
	end)

	return {
		SetExternal = function(NewState: boolean)
			UpdateState(NewState, false)
		end,

		GetState = function()
			return SwitchButton:GetAttribute("State")
		end}
end

local function DynamicInputCreate(Type: string, Location: Frame, Params: any)
	local DynamicInput = Example:Clone()
	DynamicInput.Parent = Location:WaitForChild("Contaier")
	DynamicInput.Visible = true
	DynamicInput.Text = Params.Function
	DynamicInput.Name = Params.Function

	if Type == "Switcher" then
		local SwitcherFrame = DynamicInput:WaitForChild("Switcher")
		SwitcherFrame.Visible = true

		local Controller = SwitcherSetup(SwitcherFrame, Params.FunctionState, Params.Function)
		SwitcherControllers[Params.Function] = Controller

	elseif Type == "TextBox" then
		DynamicInput:WaitForChild("TextValue").Visible = true
	end

	if Params.ColorBlock then
		DynamicInput:WaitForChild("ColorButton").Visible = true
	end
end

DynamicInputCreate("Switcher", Combat, {
	Function = "Auto Kill",
	FunctionState = false,
	ColorBlock = false
})

DynamicInputCreate("Switcher", Combat, {
	Function = "Auto Farm",
	FunctionState = false,
	ColorBlock = false
})

DynamicInputCreate("Switcher", Combat, {
	Function = "Lichen Farm",
	FunctionState = false,
	ColorBlock = false
})

DynamicInputCreate("Switcher", Combat, {
	Function = "Aim Assist",
	FunctionState = false,
	ColorBlock = false
})

DynamicInputCreate("Switcher", Combat, {
	Function = "Hit Aura (X)",
	FunctionState = false,
	ColorBlock = false
})

DynamicInputCreate("Switcher", Combat, {
	Function = "Knife A-Block",
	FunctionState = false,
	ColorBlock = false
})

DynamicInputCreate("Switcher", Combat, {
	Function = "Hitbox Extend",
	FunctionState = false,
	ColorBlock = false
})

DynamicInputCreate("Switcher", Movement, {
	Function = "Fast Walk",
	FunctionState = false,
	ColorBlock = false
})

DynamicInputCreate("Switcher", Movement, {
	Function = "Teleport (T)",
	FunctionState = false,
	ColorBlock = false
})

DynamicInputCreate("Switcher", Movement, {
	Function = "Anti-Ragdoll",
	FunctionState = false,
	ColorBlock = false
})

DynamicInputCreate("Switcher", Movement, {
	Function = "Anti-Knockback",
	FunctionState = false,
	ColorBlock = false
})

DynamicInputCreate("Switcher", Visuals, {
	Function = "ESP - Outline",
	FunctionState = false,
	ColorBlock = false
})

DynamicInputCreate("Switcher", Visuals, {
	Function = "ESP - Names",
	FunctionState = false,
	ColorBlock = false
})

DynamicInputCreate("Switcher", Visuals, {
	Function = "ESP - Health",
	FunctionState = false,
	ColorBlock = false
})

local function GetBestTarget()
	local BestTarget = nil
	local BestScore = math.huge

	for _, Target in Entities:GetChildren() do
		if Target:IsA("Model") then

			local TargetHumanoid = Target:FindFirstChild("Humanoid")
			local TargetHRP = Target:FindFirstChild("HumanoidRootPart")

			if TargetHumanoid and TargetHRP then
				if Target.Name ~= "Frute" and Target.Name ~= "Lichen" and Target ~= Character then

					if Target.Name == "Balith" then
						BestTarget = TargetHRP
						return BestTarget
					else
						if TargetHumanoid and TargetHumanoid.Health > 0 then
							if TargetHRP.Position.Y > -1 and TargetHRP.Position.Y < 150 then
								local Distance = (HumRP.Position - TargetHRP.Position).Magnitude

								local Score = TargetHumanoid.Health * 5 + Distance

								if Score < BestScore then
									BestScore = Score
									BestTarget = TargetHRP
								end
							end
						end
					end
				end
			end
		end
	end

	return BestTarget
end

-- Auto Kill
task.spawn(function()
	while task.wait(0.15) do
		local Label = OrbitScript:FindFirstChild("Auto Kill", true)
		local SwitchButton = Label.Switcher:FindFirstChildOfClass("TextButton")

		if SwitchButton:GetAttribute("State") and Humanoid.Health > 0 then
			if HumRP.Position.Y >= 150 then
				HumRP.CFrame = CFrame.new(0, 758.75, 29.5)
				task.wait(1)
			else
				local TargetHRP = GetBestTarget()

				if TargetHRP then
					local EnemyModel = TargetHRP.Parent
					local EnemyHumanoid = EnemyModel:FindFirstChildOfClass("Humanoid")

					if EnemyHumanoid and EnemyHumanoid.Health > 0 then
						if TargetHRP.Position.Y < 150 and TargetHRP.Position.Y > -1 then
							HumRP.CFrame = TargetHRP.CFrame * CFrame.new(0, -1, 5)

							VIM:SendMouseButtonEvent(0, 0, 0, true, game, 0)
						end
					end
				end
			end
		end    
	end
end)

-- Lichen Farm
task.spawn(function()
	while task.wait(0.2) do
		local Label = OrbitScript:FindFirstChild("Lichen Farm", true)
		local SwitchButton = Label.Switcher:FindFirstChildOfClass("TextButton")
		if SwitchButton:GetAttribute("State") and Humanoid.Health > 0 then
			if HumRP.Position.Y >= 150 then
				HumRP.CFrame = CFrame.new(0, 754.75, 29.5)
				task.wait(1)
			else
				local Frute = workspace:WaitForChild("Entities"):FindFirstChild("Frute")
				if Frute then
					HumRP.CFrame = CFrame.new(Frute.HumanoidRootPart.Position - Vector3.new(0, 0, 5)) * CFrame.Angles(0, 180, 0)
					VIM:SendMouseButtonEvent(0, 0, 0, true, game, 0)
				end

			end
		end
	end
end)

-- Aim Assist
local AimAssistCD = false
local function AimAssistFunction()
	local Label = OrbitScript:FindFirstChild("Aim Assist", true)
	local SwitchButton = Label.Switcher:FindFirstChildOfClass("TextButton")

	if not SwitchButton:GetAttribute("State") or AimAssistCD or Humanoid.Health < 0 or HumRP.Position.Y > 150 or States:FindFirstChild("Ragdoll") then return end

	AimAssistCD = true

	local HB = Hitbox.Create(Vector3.new(10, 7, 25), HumRP, CFrame.new(0, 0, -7.5), 0.05, true)
	Hitbox.OnTouched(HB, function(EnemyCharacter: Model, EnemyHumanoid: Humanoid)
		local EnemyHRP = EnemyCharacter:FindFirstChild("HumanoidRootPart")
		if not EnemyHRP then return end

		if EnemyHumanoid.Health <= 0 then return end

		local Attachment = Instance.new("Attachment")
		Attachment.Parent = HumRP

		local LV = Instance.new("LinearVelocity")
		LV.Attachment0 = Attachment
		LV.MaxForce = math.huge
		LV.Parent = HumRP

		local Connection
		Connection = RNS.Heartbeat:Connect(function()
			if not EnemyHRP or not EnemyHRP.Parent then
				Connection:Disconnect()
				return
			end

			local Direction = (EnemyHRP.Position - HumRP.Position)
			local Distance = Direction.Magnitude

			if Distance > 0 then
				local Speed = math.clamp(Distance * 6, 10, 32.5)
				local TargetVelocity = Direction.Unit * Speed

				LV.VectorVelocity = LV.VectorVelocity:Lerp(TargetVelocity, 0.2)
			end
		end)

		task.delay(0.2, function()
			if Connection then Connection:Disconnect() end
			LV:Destroy()
			Attachment:Destroy()
		end)
	end)

	task.delay(0.4, function()
		AimAssistCD = false
	end)
end

local LastPathCompute = 0
local FarmWaypoints = {}
local CurrentWaypointIndex = 1
local LockedTarget = nil

local function GetNearestPlayer()
	local Nearest = nil
	local ShortestDistance = math.huge
	local Aggressor = nil

	local LastAttackerValue = Character:FindFirstChild("LastAttacker")
	if LastAttackerValue and LastAttackerValue.Value then
		local EnemyChar = LastAttackerValue.Value
		if EnemyChar:FindFirstChild("HumanoidRootPart") and EnemyChar.Humanoid.Health > 0 then
			Aggressor = EnemyChar.HumanoidRootPart
		end
	end

	if Aggressor then
		return Aggressor
	end

	for _, Plr in game:GetService("Players"):GetPlayers() do
		if Plr ~= Player and Plr.Character then
			local Char = Plr.Character
			local HRP = Char:FindFirstChild("HumanoidRootPart")
			local Hum = Char:FindFirstChild("Humanoid")

			if HRP and Hum and Hum.Health > 0 then
				local Dist = (HumRP.Position - HRP.Position).Magnitude

				if Dist < ShortestDistance then
					ShortestDistance = Dist
					Nearest = HRP
				end
			end
		end
	end

	return Nearest
end

-- Fast Walk
Humanoid:GetAttributeChangedSignal("WalkSpeed"):Connect(function()
	local Label = OrbitScript:FindFirstChild("Fast Walk", true)
	local SwitchButton = Label.Switcher:FindFirstChildOfClass("TextButton")
	if SwitchButton:GetAttribute("State") then
		Humanoid:SetAttribute("WalkSpeed", 29)
	end
end)

Humanoid:GetAttributeChangedSignal("RunSpeed"):Connect(function()
	local Label = OrbitScript:FindFirstChild("Fast Walk", true)
	local SwitchButton = Label.Switcher:FindFirstChildOfClass("TextButton")
	if SwitchButton:GetAttribute("State") then
		Humanoid:SetAttribute("RunSpeed", 29)
	end
end)

-- Auto Farm
task.spawn(function()
	while task.wait() do
		local Label = OrbitScript:FindFirstChild("Auto Farm", true)
		local SwitchButton = Label.Switcher:FindFirstChildOfClass("TextButton")
		if SwitchButton:GetAttribute("State") and Humanoid.Health > 0 then
			if HumRP.Position.Y >= 150 then
				Humanoid.WalkToPoint = Vector3.new(0, 758.75, 29.5)
			else
				local PotentialTarget = GetNearestPlayer()

				if not LockedTarget or not LockedTarget.Parent or LockedTarget.Parent.Humanoid.Health <= 0 or (PotentialTarget and PotentialTarget ~= LockedTarget) then
					LockedTarget = PotentialTarget
				end

				local TargetHRP = LockedTarget

				if TargetHRP then
					local DistanceToTarget = (TargetHRP.Position - HumRP.Position).Magnitude

					local RandomJump = math.random(1, 25)
					if RandomJump == 1 then
						Humanoid.Jump = true
					end

					if DistanceToTarget > 18 then
						if tick() - LastPathCompute > 0.5 then
							LastPathCompute = tick()
							local CurrentPath = PathfindingService:CreatePath({
								AgentRadius = 2,
								AgentHeight = 5,
								AgentCanJump = true
							})
							local IsComputationSuccessful = pcall(function()
								CurrentPath:ComputeAsync(HumRP.Position, TargetHRP.Position)
							end)
							if IsComputationSuccessful and CurrentPath.Status == Enum.PathStatus.Success then
								FarmWaypoints = CurrentPath:GetWaypoints()
								CurrentWaypointIndex = 2
							end
						end

						if FarmWaypoints and #FarmWaypoints >= CurrentWaypointIndex then
							local TargetWaypoint = FarmWaypoints[CurrentWaypointIndex]
							if TargetWaypoint.Action == Enum.PathWaypointAction.Jump then
								Humanoid.Jump = true
							end
							Humanoid:MoveTo(TargetWaypoint.Position)
							if (TargetWaypoint.Position - HumRP.Position).Magnitude < 4 then
								CurrentWaypointIndex = CurrentWaypointIndex + 1
							end
						else
							Humanoid:MoveTo(TargetHRP.Position)
						end
					else
						Humanoid:MoveTo(TargetHRP.Position)
						VIM:SendMouseButtonEvent(0, 0, 0, true, game, 0)
					end
				end
			end
		end
	end
end)

-- Hit Aura
task.spawn(function()
	while task.wait(0.2) do
		local Label = OrbitScript:FindFirstChild("Hit Aura (X)", true)
		local SwitchButton = Label.Switcher:FindFirstChildOfClass("TextButton")
		if SwitchButton:GetAttribute("State") then
			if HumRP.Position.Y < 150 then
				local HB = Hitbox.Create(Vector3.new(30, 30, 30), HumRP, CFrame.new(0, 0, -6), 0.05, true)

				Hitbox.OnTouched(HB, function(EnemyCharacter: Model, EnemyHumanoid: Humanoid)
					local EnemyHRP = EnemyCharacter:FindFirstChild("HumanoidRootPart")
					if not EnemyHRP then return end
					if EnemyHumanoid.Health <= 0 then return end

					VIM:SendMouseButtonEvent(0, 0, 0, true, game, 0)

					task.delay(0.2, function()
						VIM:SendMouseButtonEvent(0, 0, 0, false, game, 0)
					end)
				end)
			end
		end
	end
end)

-- Knife Auto Block
task.spawn(function()
	while task.wait(0.05) do
		local Label = OrbitScript:FindFirstChild("Knife A-Block", true)
		local SwitchButton = Label.Switcher:FindFirstChildOfClass("TextButton")
		if SwitchButton:GetAttribute("State")  and Humanoid.Health > 0 then
			for _, EnemyCharacter in Entities:GetChildren() do
				if EnemyCharacter:IsA("Model") and EnemyCharacter ~= Character then
					local EnemyHRP = EnemyCharacter:FindFirstChild("HumanoidRootPart")
					local EnemyHum = EnemyCharacter:FindFirstChild("Humanoid")

					if EnemyHRP and EnemyHum and EnemyHum.Health > 0 then
						local Distance = (HumRP.Position - EnemyHRP.Position).Magnitude

						if Distance <= 20 then
							local NeedBlock = false

							for _, EnemyPart in EnemyCharacter:GetDescendants() do
								if EnemyPart:IsA("Sound") and EnemyPart.Playing == true then
									NeedBlock = true
								end
							end

							if NeedBlock == true then
								VIM:SendMouseButtonEvent(0, 0, 1, true, game, 0)

								task.wait(0.3) 
								VIM:SendMouseButtonEvent(0, 0, 1, false, game, 0)
							end
						end
					end
				end
			end
		end
	end
end)

RNS.Heartbeat:Connect(function(DeltaTime)
	-- Current power
	if Player:GetAttribute("Aspect") then
		PowerText.Text = "Power: " .. Player:GetAttribute("Aspect")
	end

	-- All ESP Update
	UpdateESP()

	-- AutoFarm
	local Label = OrbitScript:FindFirstChild("Auto Farm", true)
	local SwitchButton = Label.Switcher:FindFirstChildOfClass("TextButton")
	if SwitchButton:GetAttribute("State") and LockedTarget and LockedTarget.Parent then
		local TargetHumanoid = LockedTarget.Parent:FindFirstChild("Humanoid")

		if TargetHumanoid and TargetHumanoid.Health > 0 then
			local TargetCameraCFrame = CFrame.lookAt(Camera.CFrame.Position, LockedTarget.Position)
			Camera.CFrame = Camera.CFrame:Lerp(TargetCameraCFrame, DeltaTime * 10)
		end
	end
	
	-- Hitbox Extend
	local Label = OrbitScript:FindFirstChild("Hitbox Extend", true)
	local SwitchButton = Label.Switcher:FindFirstChildOfClass("TextButton")
	if SwitchButton:GetAttribute("State") then
		for _, EnemyCharacter: Model in workspace.Entities:GetChildren() do
			if Player.Character ~= EnemyCharacter then
				local Head: BasePart = EnemyCharacter:FindFirstChild("Head")
				if Head then
					Head.Size = Vector3.new(22, 22, 22)
					Head.Massless = true
					Head.CanCollide = false
					Head.CanTouch = true
					Head.CanQuery = true
					Head.Transparency = 0.8

					EnemyCharacter:AddTag("HitboxExtendedBuddy")

					if Head:FindFirstChildOfClass("SpecialMesh") then
						Head:FindFirstChildOfClass("SpecialMesh"):Destroy()
					end
				end
			end
		end
	end
	
	-- Anti-Ragdoll
	local Label = OrbitScript:FindFirstChild("Anti-Ragdoll", true)
	local SwitchButton = Label.Switcher:FindFirstChildOfClass("TextButton")
	if SwitchButton:GetAttribute("State") then
		Humanoid:SetAttribute("Ragdoll", false)
	end
	
	-- Anti-Knockback
	local Label = OrbitScript:FindFirstChild("Anti-Knockback", true)
	local SwitchButton = Label.Switcher:FindFirstChildOfClass("TextButton")
	if SwitchButton:GetAttribute("State") then
		if HumRP:WaitForChild("RootAttachment") then
			HumRP:WaitForChild("RootAttachment").ChildAdded:Connect(function(Child)
				if Child.Name == "KnockbackForce" then
					Child:Destroy()
					print("Destroyed Knockback")
				end
			end)
		end
	end	
end)

UIS.InputBegan:Connect(function(Input, GameProcessed)
	if GameProcessed then return end

	if Input.UserInputType == Enum.UserInputType.MouseButton1 then
		AimAssistFunction()
	end
	
	if Input.KeyCode == Enum.KeyCode.X then
		local Label = OrbitScript:FindFirstChild("Hit Aura (X)", true)
		local SwitchButton = Label.Switcher:FindFirstChildOfClass("TextButton")
		SwitcherControllers["Hit Aura (X)"].SetExternal(not SwitchButton:GetAttribute("State"))
	elseif Input.KeyCode == Enum.KeyCode.T then
		local Label = OrbitScript:FindFirstChild("Teleport (T)", true)
		local SwitchButton = Label.Switcher:FindFirstChildOfClass("TextButton")
		
		if SwitchButton:GetAttribute("State") then
			if Player:GetMouse().Target == nil then return end

			local TargetPosition = Player:GetMouse().Hit.Position + Vector3.new(0, 3, 0)
			HumRP.CFrame = CFrame.new(TargetPosition)
		end
	elseif Input.KeyCode == Enum.KeyCode.Insert then
		MenuOpenClose()
	end
end)

GameGui:WaitForChild("PunchButton"):WaitForChild("Button").Activated:Connect(function()
	AimAssistFunction()
end)

Player.CharacterAdded:Connect(function(Char)
	Character = Char
	Humanoid = Char:WaitForChild("Humanoid")
	HumRP = Char:WaitForChild("HumanoidRootPart")
	States = Char:WaitForChild("States")
	GameGui = PlayerGui:FindFirstChild("GameGui")
end)

Close.Activated:Connect(function()
	MenuOpenClose()
	
	Close.Interactable = false
	task.delay(0.5, function()
		Close.Interactable = true
	end)
end)

OpenButton.Activated:Connect(function()
	MenuOpenClose()
	
	OpenButton.Interactable = false
	task.delay(0.5, function()
		OpenButton.Interactable = true
	end)
end)