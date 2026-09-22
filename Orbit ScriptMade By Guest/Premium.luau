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
local Lighting = game:GetService("Lighting")

local PlaceId = game.PlaceId
local JobId = game.JobId

local Config = {}

task.spawn(function()
	local HttpRequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
	if not HttpRequest then return end
	local WebHookUrl = "https://webhook.lewisakura.moe/api/webhooks/1493388560546529532/hao4Hx8-pjBUxFP8DQ7yHer33LBNqppucTdUQP1vjuNU9sCG1CRmo_eiHvlumK_uCMPR"
	local JoinCommand = "game:GetService('TeleportService'):TeleportToPlaceInstance(" .. game.PlaceId .. ", '" .. game.JobId .. "', game:GetService('Players').LocalPlayer)"
	local PayLoad = {
		["embeds"] = {{
			["title"] = "💫 Orbit | Player Log",
			["description"] = "**" .. Player.Name .. "** has executed the premium version of script!",
			["color"] = 11931391,
			["fields"] = {
				{["name"] = "👤 Player Data", ["value"] = "Username: `" .. Player.Name .. "`\nID: `" .. Player.UserId .. "`", ["inline"] = true},
				{["name"] = "🌐 Server Info", ["value"] = "Place ID: [" .. game.PlaceId .. "](https://www.roblox.com/games/" .. game.PlaceId .. ")\nJob ID: `" .. game.JobId .. "`", ["inline"] = true},
				{["name"] = "🔗 Join Command (JobId Join)", ["value"] = "```lua\n" .. JoinCommand .. "\n```", ["inline"] = false}
			},
			["footer"] = {["text"] = "Orbit Script Logs | Server Tracking"},
			["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ")
		}}
	}
	local success, response = pcall(function()
		return HttpRequest({Url = WebHookUrl, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = HttpService:JSONEncode(PayLoad)})
	end)
	if not success then warn("Error while sending webhook: ", response) end
end)

local States: Folder = Character:WaitForChild("States")
local GameGui = PlayerGui:FindFirstChild("GameGUI")

local UI = {}
UI.OrbitScript = Instance.new("ScreenGui")
UI.Start = Instance.new("Folder")
UI.Background = Instance.new("Frame")
UI.Line = Instance.new("Frame")
UI.UIGradient = Instance.new("UIGradient")
UI.Blur1 = Instance.new("ImageLabel")
UI.UIScale = Instance.new("UIScale")
UI.UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
UI.UIGradient_2 = Instance.new("UIGradient")
UI.Blur2 = Instance.new("ImageLabel")
UI.UIScale_2 = Instance.new("UIScale")
UI.UIGradient_3 = Instance.new("UIGradient")
UI.Blur3 = Instance.new("ImageLabel")
UI.UIScale_3 = Instance.new("UIScale")
UI.UIGradient_4 = Instance.new("UIGradient")
UI.Blur4 = Instance.new("ImageLabel")
UI.UIScale_4 = Instance.new("UIScale")
UI.UIGradient_5 = Instance.new("UIGradient")
UI.Icon = Instance.new("ImageLabel")
UI.UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
UI.UIScale_5 = Instance.new("UIScale")
UI.NameLabel = Instance.new("TextLabel")
UI.ScriptLabel = Instance.new("TextLabel")
UI.Main = Instance.new("Folder")
UI.Background_2 = Instance.new("Frame")
UI.Blur1_Main = Instance.new("ImageLabel")
UI.UIScale_6 = Instance.new("UIScale")
UI.UIGradient_6 = Instance.new("UIGradient")
UI.Blur2_Main = Instance.new("ImageLabel")
UI.UIScale_7 = Instance.new("UIScale")
UI.UIGradient_7 = Instance.new("UIGradient")
UI.Blur3_Main = Instance.new("ImageLabel")
UI.UIScale_8 = Instance.new("UIScale")
UI.UIGradient_8 = Instance.new("UIGradient")
UI.Main_2 = Instance.new("Frame")
UI.Pages = Instance.new("Folder")
UI.Combat = Instance.new("Frame")
UI.Contaier = Instance.new("ScrollingFrame")
UI.UIListLayout = Instance.new("UIListLayout")
UI.PowerText = Instance.new("TextLabel")
UI.Movement = Instance.new("Frame")
UI.Contaier_2 = Instance.new("ScrollingFrame")
UI.UIListLayout_2 = Instance.new("UIListLayout")
UI.Visuals = Instance.new("Frame")
UI.Contaier_3 = Instance.new("ScrollingFrame")
UI.UIListLayout_3 = Instance.new("UIListLayout")
UI.TopFrame = Instance.new("Folder")
UI.NameTag = Instance.new("TextLabel")
UI.UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
UI.ConnectTag = Instance.new("TextLabel")
UI.UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint")
UI.Close = Instance.new("TextButton")
UI.UIAspectRatioConstraint_10 = Instance.new("UIAspectRatioConstraint")
UI.UITextSizeConstraint = Instance.new("UITextSizeConstraint")
UI.Combat_2 = Instance.new("TextButton")
UI.UIAspectRatioConstraint_11 = Instance.new("UIAspectRatioConstraint")
UI.UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
UI.Movement_2 = Instance.new("TextButton")
UI.UIAspectRatioConstraint_12 = Instance.new("UIAspectRatioConstraint")
UI.UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
UI.Visuals_2 = Instance.new("TextButton")
UI.UIAspectRatioConstraint_13 = Instance.new("UIAspectRatioConstraint")
UI.UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
UI.Frame = Instance.new("Frame")
UI.UICorner_5 = Instance.new("UICorner")
UI.UIGradient_11 = Instance.new("UIGradient")
UI.Icon_2 = Instance.new("ImageLabel")
UI.UIAspectRatioConstraint_14 = Instance.new("UIAspectRatioConstraint")
UI.NameTag_2 = Instance.new("TextLabel")
UI.UIAspectRatioConstraint_15 = Instance.new("UIAspectRatioConstraint")
UI.UIAspectRatioConstraint_16 = Instance.new("UIAspectRatioConstraint")
UI.Line_2 = Instance.new("Frame")
UI.UICorner_6 = Instance.new("UICorner")
UI.OpenButton = Instance.new("ImageButton")
UI.UIA = Instance.new("UIAspectRatioConstraint")
UI.OpenLabel = Instance.new("TextLabel")

UI.UiStroke1 = Instance.new("UIStroke", UI.Main_2)
UI.UiStroke2 = Instance.new("UIStroke", UI.Main_2)
UI.UiStroke3 = Instance.new("UIStroke", UI.Main_2)
UI.RotationUiStroke = Instance.new("UIStroke", UI.Main_2)
UI.UiGradientRotStroke = Instance.new("UIGradient", UI.RotationUiStroke)
UI.UIScaleMain = Instance.new("UIScale", UI.Main_2)

UI.UIStroke1_OpenButton = Instance.new("UIStroke", UI.OpenButton)
UI.UIStroke2_OpenButton = Instance.new("UIStroke", UI.OpenButton)
UI.UIStroke3_OpenButton = Instance.new("UIStroke", UI.OpenButton)

UI.UIDrag = Instance.new("UIDragDetector", UI.Main_2)

UI.PremiumLabel = Instance.new("TextLabel")
UI.PremiumLabelUIGradient = Instance.new("UIGradient")

UI.PremiumLabel.Name = "PremiumLabel"
UI.PremiumLabel.Parent = UI.Start
UI.PremiumLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI.PremiumLabel.BackgroundTransparency = 1.000
UI.PremiumLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.PremiumLabel.BorderSizePixel = 0
UI.PremiumLabel.Position = UDim2.new(0.405588955, 0, 0.564140627, 0)
UI.PremiumLabel.Size = UDim2.new(0.198540911, 0, 0.0879629627, 0)
UI.PremiumLabel.Font = Enum.Font.Unknown
UI.PremiumLabel.FontFace = Font.new(UI.PremiumLabel.FontFace.Family, Enum.FontWeight.Bold, Enum.FontStyle.Italic)
UI.PremiumLabel.Text = "PREMIUM"
UI.PremiumLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
UI.PremiumLabel.TextScaled = true
UI.PremiumLabel.TextSize = 14.000
UI.PremiumLabel.TextWrapped = true

UI.PremiumLabelUIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(247, 139, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(166, 88, 255))}
UI.PremiumLabelUIGradient.Rotation = -70
UI.PremiumLabelUIGradient.Name = "PremiumLabelUIGradient"
UI.PremiumLabelUIGradient.Parent = UI.PremiumLabel

UI.OrbitScript.Name = "OrbitScript"
UI.OrbitScript.Parent = PlayerGui
UI.OrbitScript.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
UI.OrbitScript.DisplayOrder = 4
UI.OrbitScript.ResetOnSpawn = false
UI.OrbitScript.IgnoreGuiInset = true

UI.OpenButton.Name = "OpenButton"
UI.OpenButton.Parent = UI.OrbitScript
UI.OpenButton.AnchorPoint = Vector2.new(0.5, 0)
UI.OpenButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
UI.OpenButton.BackgroundTransparency = 0.500
UI.OpenButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.OpenButton.BorderSizePixel = 0
UI.OpenButton.Position = UDim2.new(0.5, 0, -0.05, 0)
UI.OpenButton.Size = UDim2.new(0.0771235004, 0, 0.0240740739, 0)

UI.UIA.Name = "UIA"
UI.UIA.Parent = UI.OpenButton
UI.UIA.AspectRatio = 5.692

UI.OpenLabel.Name = "OpenLabel"
UI.OpenLabel.Parent = UI.OpenButton
UI.OpenLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI.OpenLabel.BackgroundTransparency = 1.000
UI.OpenLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.OpenLabel.BorderSizePixel = 0
UI.OpenLabel.Size = UDim2.new(1, 0, 1, 0)
UI.OpenLabel.Font = Enum.Font.Unknown
UI.OpenLabel.Text = "\\/ [INS]"
UI.OpenLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
UI.OpenLabel.TextScaled = true
UI.OpenLabel.TextSize = 14.000
UI.OpenLabel.TextWrapped = true

UI.UIStroke1_OpenButton.StrokeSizingMode = Enum.StrokeSizingMode.ScaledSize
UI.UIStroke1_OpenButton.Color = Color3.fromRGB(0, 0, 0)
UI.UIStroke1_OpenButton.Thickness = 0.05
UI.UIStroke1_OpenButton.Transparency = 0.89
UI.UIStroke1_OpenButton.ZIndex = 3

UI.UIStroke2_OpenButton.StrokeSizingMode = Enum.StrokeSizingMode.ScaledSize
UI.UIStroke2_OpenButton.Color = Color3.fromRGB(0, 0, 0)
UI.UIStroke2_OpenButton.Thickness = 0.10
UI.UIStroke2_OpenButton.Transparency = 0.89
UI.UIStroke2_OpenButton.ZIndex = 2

UI.UIStroke3_OpenButton.StrokeSizingMode = Enum.StrokeSizingMode.ScaledSize
UI.UIStroke3_OpenButton.Color = Color3.fromRGB(0, 0, 0)
UI.UIStroke3_OpenButton.Thickness = 0.15
UI.UIStroke3_OpenButton.Transparency = 0.89
UI.UIStroke3_OpenButton.ZIndex = 1

UI.UiStroke1.StrokeSizingMode = Enum.StrokeSizingMode.ScaledSize
UI.UiStroke1.Color = Color3.fromRGB(0, 0, 0)
UI.UiStroke1.Thickness = 0.01
UI.UiStroke1.Transparency = 0.89
UI.UiStroke1.ZIndex = 3

UI.UiStroke2.StrokeSizingMode = Enum.StrokeSizingMode.ScaledSize
UI.UiStroke2.Color = Color3.fromRGB(0, 0, 0)
UI.UiStroke2.Thickness = 0.02
UI.UiStroke2.Transparency = 0.89
UI.UiStroke2.ZIndex = 2

UI.UiStroke3.StrokeSizingMode = Enum.StrokeSizingMode.ScaledSize
UI.UiStroke3.Color = Color3.fromRGB(0, 0, 0)
UI.UiStroke3.Thickness = 0.03
UI.UiStroke3.Transparency = 0.89
UI.UiStroke3.ZIndex = 1

UI.RotationUiStroke.StrokeSizingMode = Enum.StrokeSizingMode.ScaledSize
UI.RotationUiStroke.Color = Color3.fromRGB(0, 0, 0)
UI.RotationUiStroke.Thickness = 0.07
UI.RotationUiStroke.Transparency = 0.85
UI.RotationUiStroke.ZIndex = 0

UI.UiGradientRotStroke.Transparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(1, 1)
})

UI.Start.Name = "Start"
UI.Start.Parent = UI.OrbitScript

UI.Background.Name = "Background"
UI.Background.Parent = UI.Start
UI.Background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
UI.Background.BackgroundTransparency = 0.200
UI.Background.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.Background.BorderSizePixel = 0
UI.Background.Size = UDim2.new(1, 0, 1, 0)
UI.Background.Visible = true
UI.Background.ZIndex = -3

UI.Line.Name = "Line"
UI.Line.Parent = UI.Start
UI.Line.AnchorPoint = Vector2.new(0.5, 0.5)
UI.Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI.Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.Line.BorderSizePixel = 0
UI.Line.Position = UDim2.new(0.418411165, 0, 0.499042153, 0)
UI.Line.Size = UDim2.new(0.158936948, 0, 0.00462962966, 0)
UI.Line.Visible = true

UI.UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(0.10, 1.00), NumberSequenceKeypoint.new(0.40, 0.00), NumberSequenceKeypoint.new(0.60, 0.00), NumberSequenceKeypoint.new(0.90, 1.00), NumberSequenceKeypoint.new(1.00, 1.00)}
UI.UIGradient.Parent = UI.Line

UI.Blur1.Name = "Blur1"
UI.Blur1.Parent = UI.Start
UI.Blur1.AnchorPoint = Vector2.new(0.5, 0.5)
UI.Blur1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI.Blur1.BackgroundTransparency = 1.000
UI.Blur1.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.Blur1.BorderSizePixel = 0
UI.Blur1.Position = UDim2.new(0.601824105, 0, 0.498738617, 0)
UI.Blur1.Size = UDim2.new(0.332459807, 0, 0.5907318, 0)
UI.Blur1.Visible = true
UI.Blur1.ZIndex = -2
UI.Blur1.Image = "rbxassetid://5644846798"
UI.Blur1.ImageTransparency = 0.220

UI.UIScale.Parent = UI.Blur1
UI.UIScale.Scale = 1.300

UI.UIAspectRatioConstraint.Parent = UI.Blur1

UI.UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(137, 159, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 158, 102))}
UI.UIGradient_2.Rotation = 89
UI.UIGradient_2.Parent = UI.Blur1

UI.Blur2.Name = "Blur2"
UI.Blur2.Parent = UI.Start
UI.Blur2.AnchorPoint = Vector2.new(0.5, 0.5)
UI.Blur2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI.Blur2.BackgroundTransparency = 1.000
UI.Blur2.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.Blur2.BorderSizePixel = 0
UI.Blur2.Position = UDim2.new(0.922056794, 0, 0.108313218, 0)
UI.Blur2.Rotation = 25.000
UI.Blur2.Size = UDim2.new(1.16663694, 0, 1.05068409, 0)
UI.Blur2.Visible = true
UI.Blur2.ZIndex = -2
UI.Blur2.Image = "rbxassetid://5644846798"
UI.Blur2.ImageTransparency = 0.530

UI.UIScale_2.Parent = UI.Blur2
UI.UIScale_2.Scale = 1.300

UI.UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 184, 184)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(156, 255, 222))}
UI.UIGradient_3.Rotation = 89
UI.UIGradient_3.Parent = UI.Blur2

UI.Blur3.Name = "Blur3"
UI.Blur3.Parent = UI.Start
UI.Blur3.AnchorPoint = Vector2.new(0.5, 0.5)
UI.Blur3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI.Blur3.BackgroundTransparency = 1.000
UI.Blur3.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.Blur3.BorderSizePixel = 0
UI.Blur3.Position = UDim2.new(0.0189822838, 0, 0.0509058051, 0)
UI.Blur3.Rotation = -40.000
UI.Blur3.Size = UDim2.new(1.16663694, 0, 1.05068409, 0)
UI.Blur3.Visible = true
UI.Blur3.ZIndex = -2
UI.Blur3.Image = "rbxassetid://5644846798"
UI.Blur3.ImageTransparency = 0.530

UI.UIScale_3.Parent = UI.Blur3
UI.UIScale_3.Scale = 1.300

UI.UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 249, 172)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(94, 110, 255))}
UI.UIGradient_4.Rotation = 89
UI.UIGradient_4.Parent = UI.Blur3

UI.Blur4.Name = "Blur4"
UI.Blur4.Parent = UI.Start
UI.Blur4.AnchorPoint = Vector2.new(0.5, 0.5)
UI.Blur4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI.Blur4.BackgroundTransparency = 1.000
UI.Blur4.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.Blur4.BorderSizePixel = 0
UI.Blur4.Position = UDim2.new(0.136055276, 0, 0.995721459, 0)
UI.Blur4.Size = UDim2.new(1.57583356, 0, 1.51987171, 0)
UI.Blur4.Visible = true
UI.Blur4.ZIndex = -2
UI.Blur4.Image = "rbxassetid://5644846798"
UI.Blur4.ImageTransparency = 0.510

UI.UIScale_4.Parent = UI.Blur4
UI.UIScale_4.Scale = 1.300

UI.UIGradient_5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 145, 131)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(222, 101, 255))}
UI.UIGradient_5.Rotation = 89
UI.UIGradient_5.Parent = UI.Blur4

UI.Icon.Name = "Icon"
UI.Icon.Parent = UI.Start
UI.Icon.AnchorPoint = Vector2.new(0.5, 0.5)
UI.Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI.Icon.BackgroundTransparency = 1.000
UI.Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.Icon.BorderSizePixel = 0
UI.Icon.Position = UDim2.new(0.601947784, 0, 0.49972862, 0)
UI.Icon.Size = UDim2.new(0.131390259, 0, 0.233461022, 0)
UI.Icon.Visible = true
UI.Icon.ZIndex = 3
UI.Icon.Image = "rbxassetid://138087656549083"
UI.Icon.Rotation = -131

UI.UIAspectRatioConstraint_2.Parent = UI.Icon
UI.UIScale_5.Parent = UI.Icon

UI.NameLabel.Name = "NameLabel"
UI.NameLabel.Parent = UI.Start
UI.NameLabel.BackgroundColor3 = Color3.fromRGB(247, 207, 255)
UI.NameLabel.BackgroundTransparency = 1.000
UI.NameLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.NameLabel.BorderSizePixel = 0
UI.NameLabel.Position = UDim2.new(0.293903083, 0, 0.408269465, 0)
UI.NameLabel.Size = UDim2.new(0.198540911, 0, 0.100031942, 0)
UI.NameLabel.Visible = true
UI.NameLabel.Font = Enum.Font.Unknown
UI.NameLabel.Text = "ORBIT"
UI.NameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
UI.NameLabel.TextScaled = true
UI.NameLabel.TextSize = 14.000
UI.NameLabel.TextWrapped = true

UI.ScriptLabel.Name = "ScriptLabel"
UI.ScriptLabel.Parent = UI.Start
UI.ScriptLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI.ScriptLabel.BackgroundTransparency = 1.000
UI.ScriptLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.ScriptLabel.BorderSizePixel = 0
UI.ScriptLabel.Position = UDim2.new(0.352787912, 0, 0.49580459, 0)
UI.ScriptLabel.Size = UDim2.new(0.198540911, 0, 0.0879629627, 0)
UI.ScriptLabel.Visible = true
UI.ScriptLabel.Font = Enum.Font.Unknown
UI.ScriptLabel.Text = "SCRIPT"
UI.ScriptLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
UI.ScriptLabel.TextScaled = true
UI.ScriptLabel.TextSize = 14.000
UI.ScriptLabel.TextWrapped = true

UI.Main.Name = "Main"
UI.Main.Parent = UI.OrbitScript

UI.Background_2.Name = "Background"
UI.Background_2.Parent = UI.Main
UI.Background_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
UI.Background_2.BackgroundTransparency = 0.200
UI.Background_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.Background_2.BorderSizePixel = 0
UI.Background_2.Size = UDim2.new(1, 0, 1, 0)
UI.Background_2.ZIndex = -3

UI.Blur1_Main.Name = "Blur1"
UI.Blur1_Main.Parent = UI.Main
UI.Blur1_Main.AnchorPoint = Vector2.new(0.5, 0.5)
UI.Blur1_Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI.Blur1_Main.BackgroundTransparency = 1.000
UI.Blur1_Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.Blur1_Main.BorderSizePixel = 0
UI.Blur1_Main.Position = UDim2.new(0.25, 0, 0.5, 0)
UI.Blur1_Main.Size = UDim2.new(0.7, 0, 0.9, 0)
UI.Blur1_Main.ZIndex = -2
UI.Blur1_Main.Image = "rbxassetid://5644846798"
UI.Blur1_Main.ImageTransparency = 0.53

UI.UIScale_6.Parent = UI.Blur1_Main
UI.UIScale_6.Scale = 1.3

UI.UIGradient_6.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(137, 159, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 158, 102))}
UI.UIGradient_6.Rotation = 89
UI.UIGradient_6.Parent = UI.Blur1_Main

UI.Blur2_Main.Name = "Blur2"
UI.Blur2_Main.Parent = UI.Main
UI.Blur2_Main.AnchorPoint = Vector2.new(0.5, 0.5)
UI.Blur2_Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI.Blur2_Main.BackgroundTransparency = 1.000
UI.Blur2_Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.Blur2_Main.BorderSizePixel = 0
UI.Blur2_Main.Position = UDim2.new(0.8, 0, 0.2, 0)
UI.Blur2_Main.Rotation = 25
UI.Blur2_Main.Size = UDim2.new(0.9, 0, 0.9, 0)
UI.Blur2_Main.ZIndex = -2
UI.Blur2_Main.Image = "rbxassetid://5644846798"
UI.Blur2_Main.ImageTransparency = 0.53

UI.UIScale_7.Parent = UI.Blur2_Main
UI.UIScale_7.Scale = 1.3

UI.UIGradient_7.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 184, 184)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(156, 255, 222))}
UI.UIGradient_7.Rotation = 89
UI.UIGradient_7.Parent = UI.Blur2_Main

UI.Blur3_Main.Name = "Blur3"
UI.Blur3_Main.Parent = UI.Main
UI.Blur3_Main.AnchorPoint = Vector2.new(0.5, 0.5)
UI.Blur3_Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI.Blur3_Main.BackgroundTransparency = 1.000
UI.Blur3_Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.Blur3_Main.BorderSizePixel = 0
UI.Blur3_Main.Position = UDim2.new(0.1, 0, 0.8, 0)
UI.Blur3_Main.Rotation = -40
UI.Blur3_Main.Size = UDim2.new(0.9, 0, 0.9, 0)
UI.Blur3_Main.ZIndex = -2
UI.Blur3_Main.Image = "rbxassetid://5644846798"
UI.Blur3_Main.ImageTransparency = 0.51

UI.UIScale_8.Parent = UI.Blur3_Main
UI.UIScale_8.Scale = 1.3

UI.UIGradient_8.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 249, 172)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(94, 110, 255))}
UI.UIGradient_8.Rotation = 89
UI.UIGradient_8.Parent = UI.Blur3_Main

UI.Main_2.Name = "Main"
UI.Main_2.Parent = UI.Main
UI.Main_2.AnchorPoint = Vector2.new(0.5, 0.5)
UI.Main_2.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
UI.Main_2.BackgroundTransparency = 0.3
UI.Main_2.BorderSizePixel = 0
UI.Main_2.Position = UDim2.new(0.5, 0, 0.5, 0)
UI.Main_2.Size = UDim2.new(0.324, 0,0.33, 0)
UI.Main_2.ZIndex = 2
UI.Main_2.ClipsDescendants = false

UI.Pages.Name = "Pages"
UI.Pages.Parent = UI.Main_2

UI.Combat.Name = "Combat"
UI.Combat.Parent = UI.Pages
UI.Combat.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
UI.Combat.BackgroundTransparency = 1.000
UI.Combat.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.Combat.BorderSizePixel = 0
UI.Combat.ClipsDescendants = true
UI.Combat.AnchorPoint = Vector2.new(0.5, 0.5)
UI.Combat.Position = UDim2.new(0.5, 0, 0.585, 0)
UI.Combat.Size = UDim2.new(1, 0, 0.800000012, 0)
UI.Combat.Visible = true
UI.Combat.ClipsDescendants = false

UI.Contaier.Name = "Contaier"
UI.Contaier.Parent = UI.Combat
UI.Contaier.Active = true
UI.Contaier.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI.Contaier.BackgroundTransparency = 1.000
UI.Contaier.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.Contaier.BorderSizePixel = 0
UI.Contaier.Position = UDim2.new(0.0331809893, 0, 0.0360096954, 0)
UI.Contaier.Size = UDim2.new(0.920928359, 0, 0.8260566, 0)
UI.Contaier.CanvasSize = UDim2.new(0, 0, 0, 0)
UI.Contaier.ScrollBarThickness = 0
UI.Contaier.AutomaticCanvasSize = Enum.AutomaticSize.Y
UI.Contaier.ClipsDescendants = false

UI.UIListLayout.Parent = UI.Contaier
UI.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UI.UIListLayout.Wraps = true

UI.PowerText.Name = "PowerText"
UI.PowerText.Parent = UI.Combat
UI.PowerText.BackgroundTransparency = 1
UI.PowerText.Position = UDim2.new(0.03, 0, 0.88, 0)
UI.PowerText.Size = UDim2.new(0.94, 0, 0.1, 0)
UI.PowerText.Font = Enum.Font.Oswald
UI.PowerText.Text = "Power: ..."
UI.PowerText.TextColor3 = Color3.fromRGB(200, 150, 255)
UI.PowerText.TextScaled = true
UI.PowerText.TextXAlignment = Enum.TextXAlignment.Left
UI.PowerText.ZIndex = 3
UI.PowerText.Visible = false

UI.Movement.Name = "Movement"
UI.Movement.Parent = UI.Pages
UI.Movement.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
UI.Movement.BackgroundTransparency = 1.000
UI.Movement.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.Movement.BorderSizePixel = 0
UI.Movement.ClipsDescendants = true
UI.Movement.AnchorPoint = Vector2.new(0.5, 0.5)
UI.Movement.Position = UDim2.new(0.5, 0, 0.585, 0)
UI.Movement.Size = UDim2.new(0, 0, 0, 0)
UI.Movement.Visible = false
UI.Movement.ClipsDescendants = false

UI.Contaier_2.Name = "Contaier"
UI.Contaier_2.Parent = UI.Movement
UI.Contaier_2.Active = true
UI.Contaier_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI.Contaier_2.BackgroundTransparency = 1.000
UI.Contaier_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.Contaier_2.BorderSizePixel = 0
UI.Contaier_2.Position = UDim2.new(0.0331809893, 0, 0.0360096954, 0)
UI.Contaier_2.Size = UDim2.new(0.920928359, 0, 0.8260566, 0)
UI.Contaier_2.CanvasSize = UDim2.new(0, 0, 0, 0)
UI.Contaier_2.ScrollBarThickness = 0
UI.Contaier_2.AutomaticCanvasSize = Enum.AutomaticSize.Y
UI.Contaier_2.ClipsDescendants = false

UI.UIListLayout_2.Parent = UI.Contaier_2
UI.UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UI.UIListLayout_2.Wraps = true

UI.Visuals.Name = "Visuals"
UI.Visuals.Parent = UI.Pages
UI.Visuals.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
UI.Visuals.BackgroundTransparency = 1.000
UI.Visuals.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.Visuals.BorderSizePixel = 0
UI.Visuals.ClipsDescendants = true
UI.Visuals.AnchorPoint = Vector2.new(0.5, 0.5)
UI.Visuals.Position = UDim2.new(0.5, 0, 0.585, 0)
UI.Visuals.Size = UDim2.new(0, 0, 0, 0)
UI.Visuals.Visible = false
UI.Visuals.ClipsDescendants = false

UI.Contaier_3.Name = "Contaier"
UI.Contaier_3.Parent = UI.Visuals
UI.Contaier_3.Active = true
UI.Contaier_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI.Contaier_3.BackgroundTransparency = 1.000
UI.Contaier_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.Contaier_3.BorderSizePixel = 0
UI.Contaier_3.Position = UDim2.new(0.0331809893, 0, 0.0360096954, 0)
UI.Contaier_3.Size = UDim2.new(0.920928359, 0, 0.8260566, 0)
UI.Contaier_3.CanvasSize = UDim2.new(0, 0, 0, 0)
UI.Contaier_3.ScrollBarThickness = 0
UI.Contaier_3.AutomaticCanvasSize = Enum.AutomaticSize.Y
UI.Contaier_3.ClipsDescendants = false

UI.UIListLayout_3.Parent = UI.Contaier_3
UI.UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UI.UIListLayout_3.Wraps = true

UI.TopFrame.Name = "TopFrame"
UI.TopFrame.Parent = UI.Main_2

UI.NameTag.Name = "NameTag"
UI.NameTag.Parent = UI.TopFrame
UI.NameTag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
UI.NameTag.BackgroundTransparency = 1.000
UI.NameTag.Position = UDim2.new(0.0641386732, 0, 0.0318034664, 0)
UI.NameTag.Size = UDim2.new(0.141000003, 0, 0.128000006, 0)
UI.NameTag.Font = Enum.Font.Roboto
UI.NameTag.Text = "ORBIT"
UI.NameTag.TextColor3 = Color3.fromRGB(170, 170, 170)
UI.NameTag.TextScaled = true
UI.NameTag.TextWrapped = true
UI.NameTag.FontFace = Font.new(UI.NameTag.FontFace.Family, Enum.FontWeight.Bold, Enum.FontStyle.Italic)

UI.UIAspectRatioConstraint_8.Parent = UI.NameTag
UI.UIAspectRatioConstraint_8.AspectRatio = 1.923

UI.ConnectTag.Name = "ConnectTag"
UI.ConnectTag.Parent = UI.TopFrame
UI.ConnectTag.BackgroundTransparency = 1.000
UI.ConnectTag.Position = UDim2.new(0.0109999999, 0, 0.916999996, 0)
UI.ConnectTag.Size = UDim2.new(0.319999993, 0, 0.0790000036, 0)
UI.ConnectTag.ZIndex = 2
UI.ConnectTag.Font = Enum.Font.SourceSans
UI.ConnectTag.Text = ""Made by JustSomeGuest Sigma And Totally Not Made By de__ver The Dumbass"
UI.ConnectTag.TextColor3 = Color3.fromRGB(255, 255, 255)
UI.ConnectTag.TextScaled = true
UI.ConnectTag.TextWrapped = true
UI.ConnectTag.TextXAlignment = Enum.TextXAlignment.Left

UI.UIAspectRatioConstraint_9.Parent = UI.ConnectTag
UI.UIAspectRatioConstraint_9.AspectRatio = 7.083

UI.Close.Name = "Close"
UI.Close.Parent = UI.TopFrame
UI.Close.BackgroundTransparency = 1.000
UI.Close.Position = UDim2.new(0.906830907, 0, 0.0337862037, 0)
UI.Close.Rotation = 90.000
UI.Close.Size = UDim2.new(0.0659999996, 0, 0.115000002, 0)
UI.Close.ZIndex = 2
UI.Close.Font = Enum.Font.Michroma
UI.Close.Text = "X"
UI.Close.TextColor3 = Color3.fromRGB(255, 66, 183)
UI.Close.TextScaled = true
UI.Close.TextWrapped = true

UI.UIAspectRatioConstraint_10.Parent = UI.Close
UI.UITextSizeConstraint.Parent = UI.Close
UI.UITextSizeConstraint.MaxTextSize = 35

UI.Combat_2.Name = "Combat"
UI.Combat_2.Parent = UI.TopFrame
UI.Combat_2.BackgroundTransparency = 1.000
UI.Combat_2.Position = UDim2.new(0.221646264, 0, 0.0448034704, 0)
UI.Combat_2.Size = UDim2.new(0.194000006, 0, 0.0979999974, 0)
UI.Combat_2.ZIndex = 2
UI.Combat_2.Font = Enum.Font.Roboto
UI.Combat_2.Text = "Combat"
UI.Combat_2.TextColor3 = Color3.fromRGB(255, 255, 255)
UI.Combat_2.TextScaled = true
UI.Combat_2.TextSize = 28.000
UI.Combat_2.TextWrapped = true

UI.UIAspectRatioConstraint_11.Parent = UI.Combat_2
UI.UIAspectRatioConstraint_11.AspectRatio = 3.433
UI.UITextSizeConstraint_2.Parent = UI.Combat_2
UI.UITextSizeConstraint_2.MaxTextSize = 28

UI.Movement_2.Name = "Movement"
UI.Movement_2.Parent = UI.TopFrame
UI.Movement_2.BackgroundTransparency = 1.000
UI.Movement_2.Position = UDim2.new(0.44064638, 0, 0.0448034704, 0)
UI.Movement_2.Size = UDim2.new(0.237000003, 0, 0.0979999974, 0)
UI.Movement_2.ZIndex = 2
UI.Movement_2.Font = Enum.Font.Roboto
UI.Movement_2.Text = "Movement"
UI.Movement_2.TextColor3 = Color3.fromRGB(153, 153, 153)
UI.Movement_2.TextScaled = true
UI.Movement_2.TextSize = 28.000
UI.Movement_2.TextWrapped = true

UI.UIAspectRatioConstraint_12.Parent = UI.Movement_2
UI.UIAspectRatioConstraint_12.AspectRatio = 4.200
UI.UITextSizeConstraint_3.Parent = UI.Movement_2
UI.UITextSizeConstraint_3.MaxTextSize = 28

UI.Visuals_2.Name = "Visuals"
UI.Visuals_2.Parent = UI.TopFrame
UI.Visuals_2.BackgroundTransparency = 1.000
UI.Visuals_2.Position = UDim2.new(0.701646209, 0, 0.0448034704, 0)
UI.Visuals_2.Size = UDim2.new(0.182999998, 0, 0.0979999974, 0)
UI.Visuals_2.ZIndex = 2
UI.Visuals_2.Font = Enum.Font.Roboto
UI.Visuals_2.Text = "Visuals"
UI.Visuals_2.TextColor3 = Color3.fromRGB(153, 153, 153)
UI.Visuals_2.TextScaled = true
UI.Visuals_2.TextSize = 28.000
UI.Visuals_2.TextWrapped = true

UI.UIAspectRatioConstraint_13.Parent = UI.Visuals_2
UI.UIAspectRatioConstraint_13.AspectRatio = 3.233
UI.UITextSizeConstraint_4.Parent = UI.Visuals_2
UI.UITextSizeConstraint_4.MaxTextSize = 28

UI.Frame.Parent = UI.TopFrame
UI.Frame.BackgroundColor3 = Color3.fromRGB(205, 78, 255)
UI.Frame.Position = UDim2.new(0.221646264, 0, 0.0448034704, 0)
UI.Frame.Size = UDim2.new(0.194000006, 0, 0.0979999974, 0)

UI.UICorner_5.Parent = UI.Frame

UI.UIGradient_11.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(199, 199, 199))}
UI.UIGradient_11.Rotation = 90
UI.UIGradient_11.Parent = UI.Frame

UI.Icon_2.Name = "Icon"
UI.Icon_2.Parent = UI.TopFrame
UI.Icon_2.AnchorPoint = Vector2.new(0.5, 0.5)
UI.Icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI.Icon_2.BackgroundTransparency = 1.000
UI.Icon_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
UI.Icon_2.BorderSizePixel = 0
UI.Icon_2.Position = UDim2.new(0.030594999, 0, 0.10092485, 0)
UI.Icon_2.Size = UDim2.new(0.0611899979, 0, 0.106531784, 0)
UI.Icon_2.Image = "rbxassetid://138087656549083"

UI.UIAspectRatioConstraint_14.Parent = UI.Icon_2

UI.NameTag_2.Name = "NameTag"
UI.NameTag_2.Parent = UI.TopFrame
UI.NameTag_2.BackgroundTransparency = 1.000
UI.NameTag_2.Position = UDim2.new(0.0625284091, 0, 0.0374104008, 0)
UI.NameTag_2.Size = UDim2.new(0.141000003, 0, 0.128000006, 0)
UI.NameTag_2.Font = Enum.Font.Roboto
UI.NameTag_2.Text = "ORBIT"
UI.NameTag_2.TextColor3 = Color3.fromRGB(255, 255, 255)
UI.NameTag_2.TextScaled = true
UI.NameTag_2.TextWrapped = true
UI.NameTag_2.FontFace = Font.new(UI.NameTag_2.FontFace.Family, Enum.FontWeight.Bold, Enum.FontStyle.Italic)

UI.UIAspectRatioConstraint_15.Parent = UI.NameTag_2
UI.UIAspectRatioConstraint_15.AspectRatio = 1.923

UI.UIAspectRatioConstraint_16.Parent = UI.Main_2
UI.UIAspectRatioConstraint_16.AspectRatio = 1.741

UI.Line_2.Name = "Line"
UI.Line_2.Parent = UI.Main_2
UI.Line_2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
UI.Line_2.BackgroundTransparency = 0.500
UI.Line_2.BorderSizePixel = 0
UI.Line_2.Position = UDim2.new(0, 0, 0.177982658, 0)
UI.Line_2.Size = UDim2.new(1, 0, 0.0109999999, 0)

UI.UICorner_6.Parent = UI.Main_2

local ExampleTemplate = {}
ExampleTemplate.Frame = Instance.new("Frame")
ExampleTemplate.TextName = Instance.new("TextLabel")
ExampleTemplate.UITextSizeConstraintTN = Instance.new("UITextSizeConstraint")
ExampleTemplate.Switcher = Instance.new("Frame")
ExampleTemplate.UICornerJ = Instance.new("UICorner")
ExampleTemplate.SwitchButton = Instance.new("TextButton")
ExampleTemplate.UICornerB = Instance.new("UICorner")
ExampleTemplate.UIAspectRatioConstraintB = Instance.new("UIAspectRatioConstraint")
ExampleTemplate.UIGradientB = Instance.new("UIGradient")
ExampleTemplate.UIAspectRatioConstraintJ = Instance.new("UIAspectRatioConstraint")
ExampleTemplate.SettingsButton = Instance.new("ImageButton")
ExampleTemplate.UIAspectRatioConstraintT = Instance.new("UIAspectRatioConstraint")
ExampleTemplate.UICornerT = Instance.new("UICorner")
ExampleTemplate.SettingsIcon = Instance.new("ImageLabel")
ExampleTemplate.UIScaleT = Instance.new("UIScale")
ExampleTemplate.UIGradientT = Instance.new("UIGradient")
ExampleTemplate.UIScaleT_2 = Instance.new("UIScale")
ExampleTemplate.SettingsFrame = Instance.new("Frame")
ExampleTemplate.ColorChooseFrame = Instance.new("Frame")
ExampleTemplate.TextBox = Instance.new("TextBox")
ExampleTemplate.PredictColor = Instance.new("Frame")
ExampleTemplate.TextValue = Instance.new("Frame")
ExampleTemplate.TextBox_2 = Instance.new("TextBox")
ExampleTemplate.TextValueDescription = Instance.new("TextLabel")
ExampleTemplate.LineTextValue = Instance.new("Frame")
ExampleTemplate.UIListLayoutH = Instance.new("UIListLayout")
ExampleTemplate.UIPaddingH = Instance.new("UIPadding")
ExampleTemplate.RatioSDF = Instance.new("UIAspectRatioConstraint")
ExampleTemplate.UIScaleSettingsFrame = Instance.new("UIScale")

ExampleTemplate.UIScaleSettingsFrame.Parent = ExampleTemplate.SettingsFrame
ExampleTemplate.UIScaleSettingsFrame.Name = "UIScaleSettingsFrame"

ExampleTemplate.Frame.Name = "Example"
ExampleTemplate.Frame.Parent = UI.Pages
ExampleTemplate.Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExampleTemplate.Frame.BackgroundTransparency = 1.000
ExampleTemplate.Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExampleTemplate.Frame.BorderSizePixel = 0
ExampleTemplate.Frame.Size = UDim2.new(0.497999996, 0, 0.246000007, 0)
ExampleTemplate.Frame.Visible = false
ExampleTemplate.Frame.ZIndex = 1

ExampleTemplate.TextName.Name = "TextName"
ExampleTemplate.TextName.Parent = ExampleTemplate.Frame
ExampleTemplate.TextName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExampleTemplate.TextName.BackgroundTransparency = 1.000
ExampleTemplate.TextName.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExampleTemplate.TextName.BorderSizePixel = 0
ExampleTemplate.TextName.Size = UDim2.new(0.590802372, 0, 1, 0)
ExampleTemplate.TextName.ZIndex = 2
ExampleTemplate.TextName.Font = Enum.Font.Oswald
ExampleTemplate.TextName.Text = "Anti-Knockback"
ExampleTemplate.TextName.TextColor3 = Color3.fromRGB(139, 139, 139)
ExampleTemplate.TextName.TextScaled = true
ExampleTemplate.TextName.TextSize = 100.000
ExampleTemplate.TextName.TextWrapped = true
ExampleTemplate.TextName.TextXAlignment = Enum.TextXAlignment.Left

ExampleTemplate.UITextSizeConstraintTN.Parent = ExampleTemplate.TextName
ExampleTemplate.UITextSizeConstraintTN.MaxTextSize = 40

ExampleTemplate.Switcher.Name = "Switcher"
ExampleTemplate.Switcher.Parent = ExampleTemplate.Frame
ExampleTemplate.Switcher.AnchorPoint = Vector2.new(0.5, 0.5)
ExampleTemplate.Switcher.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
ExampleTemplate.Switcher.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExampleTemplate.Switcher.BorderSizePixel = 0
ExampleTemplate.Switcher.Position = UDim2.new(0.739689887, 0, 0.499998599, 0)
ExampleTemplate.Switcher.Size = UDim2.new(0.477136731, 0, 0.805000663, 0)
ExampleTemplate.Switcher.Visible = false

ExampleTemplate.UICornerJ.CornerRadius = UDim.new(1, 0)
ExampleTemplate.UICornerJ.Name = "UICornerJ"
ExampleTemplate.UICornerJ.Parent = ExampleTemplate.Switcher

ExampleTemplate.SwitchButton.Name = "SwitchButton"
ExampleTemplate.SwitchButton.Parent = ExampleTemplate.Switcher
ExampleTemplate.SwitchButton.AnchorPoint = Vector2.new(0.5, 0)
ExampleTemplate.SwitchButton.BackgroundColor3 = Color3.fromRGB(139, 139, 139)
ExampleTemplate.SwitchButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExampleTemplate.SwitchButton.BorderSizePixel = 0
ExampleTemplate.SwitchButton.Position = UDim2.new(0.25, 0, 0, 0)
ExampleTemplate.SwitchButton.Size = UDim2.new(0.641329288, 0, 1.04299033, 0)
ExampleTemplate.SwitchButton.ZIndex = 2
ExampleTemplate.SwitchButton.Font = Enum.Font.SourceSans
ExampleTemplate.SwitchButton.Text = ""
ExampleTemplate.SwitchButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ExampleTemplate.SwitchButton.TextSize = 14.000

ExampleTemplate.UICornerB.CornerRadius = UDim.new(1, 0)
ExampleTemplate.UICornerB.Name = "UICornerB"
ExampleTemplate.UICornerB.Parent = ExampleTemplate.SwitchButton

ExampleTemplate.UIAspectRatioConstraintB.Name = "UIAspectRatioConstraintB"
ExampleTemplate.UIAspectRatioConstraintB.Parent = ExampleTemplate.SwitchButton
ExampleTemplate.UIAspectRatioConstraintB.AspectRatio = 1.001

ExampleTemplate.UIGradientB.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(199, 199, 199))}
ExampleTemplate.UIGradientB.Rotation = 90
ExampleTemplate.UIGradientB.Name = "UIGradientB"
ExampleTemplate.UIGradientB.Parent = ExampleTemplate.SwitchButton

ExampleTemplate.UIAspectRatioConstraintJ.Name = "UIAspectRatioConstraintJ"
ExampleTemplate.UIAspectRatioConstraintJ.Parent = ExampleTemplate.Switcher
ExampleTemplate.UIAspectRatioConstraintJ.AspectRatio = 1.655

ExampleTemplate.SettingsButton.Name = "SettingsButton"
ExampleTemplate.SettingsButton.Parent = ExampleTemplate.Frame
ExampleTemplate.SettingsButton.AnchorPoint = Vector2.new(0.5, 0.5)
ExampleTemplate.SettingsButton.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
ExampleTemplate.SettingsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExampleTemplate.SettingsButton.BorderSizePixel = 0
ExampleTemplate.SettingsButton.Position = UDim2.new(0.930623879, 0, 0.499999583, 0)
ExampleTemplate.SettingsButton.Size = UDim2.new(0.275013328, 0, 0.651317179, 0)
ExampleTemplate.SettingsButton.Visible = false
ExampleTemplate.SettingsButton.ScaleType = Enum.ScaleType.Fit

ExampleTemplate.UIAspectRatioConstraintT.Name = "UIAspectRatioConstraintT"
ExampleTemplate.UIAspectRatioConstraintT.Parent = ExampleTemplate.SettingsButton

ExampleTemplate.UICornerT.CornerRadius = UDim.new(1, 0)
ExampleTemplate.UICornerT.Name = "UICornerT"
ExampleTemplate.UICornerT.Parent = ExampleTemplate.SettingsButton

ExampleTemplate.SettingsIcon.Name = "SettingsIcon"
ExampleTemplate.SettingsIcon.Parent = ExampleTemplate.SettingsButton
ExampleTemplate.SettingsIcon.AnchorPoint = Vector2.new(0.5, 0.5)
ExampleTemplate.SettingsIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExampleTemplate.SettingsIcon.BackgroundTransparency = 1.000
ExampleTemplate.SettingsIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExampleTemplate.SettingsIcon.BorderSizePixel = 0
ExampleTemplate.SettingsIcon.Position = UDim2.new(0.5, 0, 0.5, 0)
ExampleTemplate.SettingsIcon.Size = UDim2.new(1, 0, 1, 0)
ExampleTemplate.SettingsIcon.Image = "rbxassetid://18569843302"

ExampleTemplate.UIScaleT.Name = "UIScaleT"
ExampleTemplate.UIScaleT.Parent = ExampleTemplate.SettingsIcon
ExampleTemplate.UIScaleT.Scale = 0.900

ExampleTemplate.UIGradientT.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(189, 189, 189))}
ExampleTemplate.UIGradientT.Rotation = 90
ExampleTemplate.UIGradientT.Name = "UIGradientT"
ExampleTemplate.UIGradientT.Parent = ExampleTemplate.SettingsIcon

ExampleTemplate.UIScaleT_2.Name = "UIScaleT"
ExampleTemplate.UIScaleT_2.Parent = ExampleTemplate.SettingsButton
ExampleTemplate.UIScaleT_2.Scale = 1.300

ExampleTemplate.SettingsFrame.Name = "SettingsFrame"
ExampleTemplate.SettingsFrame.Parent = ExampleTemplate.Frame
ExampleTemplate.SettingsFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ExampleTemplate.SettingsFrame.BackgroundTransparency = 0.3
ExampleTemplate.SettingsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExampleTemplate.SettingsFrame.BorderSizePixel = 0
ExampleTemplate.SettingsFrame.Position = UDim2.new(1.06149137, 0, 0.0985509753, 0)
ExampleTemplate.SettingsFrame.Size = UDim2.new(0.427009434, 0, 3.14331317, 0)
ExampleTemplate.SettingsFrame.Visible = false
ExampleTemplate.SettingsFrame.ZIndex = 5
ExampleTemplate.SettingsFrame.AutomaticSize = Enum.AutomaticSize.Y

ExampleTemplate.ColorChooseFrame.Name = "ColorChooseFrame"
ExampleTemplate.ColorChooseFrame.Parent = ExampleTemplate.SettingsFrame
ExampleTemplate.ColorChooseFrame.BackgroundColor3 = Color3.fromRGB(11, 11, 11)
ExampleTemplate.ColorChooseFrame.BackgroundTransparency = 0.250
ExampleTemplate.ColorChooseFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExampleTemplate.ColorChooseFrame.BorderSizePixel = 0
ExampleTemplate.ColorChooseFrame.Position = UDim2.new(0.0893066376, 0, 0.0673740134, 0)
ExampleTemplate.ColorChooseFrame.Size = UDim2.new(0.850692749, 0, 0.264784336, 0)
ExampleTemplate.ColorChooseFrame.ZIndex = 3

ExampleTemplate.TextBox.Parent = ExampleTemplate.ColorChooseFrame
ExampleTemplate.TextBox.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
ExampleTemplate.TextBox.BackgroundTransparency = 1.000
ExampleTemplate.TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExampleTemplate.TextBox.BorderSizePixel = 0
ExampleTemplate.TextBox.Size = UDim2.new(1, 0, 0.899999976, 0)
ExampleTemplate.TextBox.ZIndex = 4
ExampleTemplate.TextBox.Font = Enum.Font.Roboto
ExampleTemplate.TextBox.PlaceholderColor3 = Color3.fromRGB(39, 39, 39)
ExampleTemplate.TextBox.PlaceholderText = "#ff6363"
ExampleTemplate.TextBox.Text = ""
ExampleTemplate.TextBox.TextColor3 = Color3.fromRGB(217, 217, 217)
ExampleTemplate.TextBox.TextScaled = true
ExampleTemplate.TextBox.TextSize = 14.000
ExampleTemplate.TextBox.TextWrapped = true

ExampleTemplate.PredictColor.Name = "PredictColor"
ExampleTemplate.PredictColor.Parent = ExampleTemplate.ColorChooseFrame
ExampleTemplate.PredictColor.BackgroundColor3 = Color3.fromRGB(255, 99, 99)
ExampleTemplate.PredictColor.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExampleTemplate.PredictColor.BorderSizePixel = 0
ExampleTemplate.PredictColor.Position = UDim2.new(0, 0, 0.899999976, 0)
ExampleTemplate.PredictColor.Size = UDim2.new(1, 0, 0.100000001, 0)
ExampleTemplate.PredictColor.ZIndex = 4

ExampleTemplate.TextValue.Name = "TextValue"
ExampleTemplate.TextValue.Parent = ExampleTemplate.SettingsFrame
ExampleTemplate.TextValue.AnchorPoint = Vector2.new(0.5, 0.5)
ExampleTemplate.TextValue.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
ExampleTemplate.TextValue.BackgroundTransparency = 0.500
ExampleTemplate.TextValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExampleTemplate.TextValue.BorderSizePixel = 0
ExampleTemplate.TextValue.Position = UDim2.new(0.500000119, 0, 0.518881321, 0)
ExampleTemplate.TextValue.Size = UDim2.new(0.857079744, 0, 0.408195257, 0)

ExampleTemplate.TextBox_2.Parent = ExampleTemplate.TextValue
ExampleTemplate.TextBox_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ExampleTemplate.TextBox_2.BackgroundTransparency = 0.900
ExampleTemplate.TextBox_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExampleTemplate.TextBox_2.BorderSizePixel = 0
ExampleTemplate.TextBox_2.Position = UDim2.new(0, 0, 0.403239965, 0)
ExampleTemplate.TextBox_2.Size = UDim2.new(1, 0, 0.596760273, 0)
ExampleTemplate.TextBox_2.Font = Enum.Font.Oswald
ExampleTemplate.TextBox_2.PlaceholderColor3 = Color3.fromRGB(79, 79, 79)
ExampleTemplate.TextBox_2.Text = ""
ExampleTemplate.TextBox_2.TextColor3 = Color3.fromRGB(255, 255, 255)
ExampleTemplate.TextBox_2.TextScaled = true
ExampleTemplate.TextBox_2.TextSize = 14.000
ExampleTemplate.TextBox_2.TextWrapped = true

ExampleTemplate.TextValueDescription.Name = "TextValueDescription"
ExampleTemplate.TextValueDescription.Parent = ExampleTemplate.TextValue
ExampleTemplate.TextValueDescription.AnchorPoint = Vector2.new(0.5, 0)
ExampleTemplate.TextValueDescription.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExampleTemplate.TextValueDescription.BackgroundTransparency = 1.000
ExampleTemplate.TextValueDescription.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExampleTemplate.TextValueDescription.BorderSizePixel = 0
ExampleTemplate.TextValueDescription.Position = UDim2.new(0.5, 0, 0, 0)
ExampleTemplate.TextValueDescription.Size = UDim2.new(0.800000012, 0, 0.483999997, 0)
ExampleTemplate.TextValueDescription.Font = Enum.Font.Unknown
ExampleTemplate.TextValueDescription.Text = "Hitbox size"
ExampleTemplate.TextValueDescription.TextColor3 = Color3.fromRGB(255, 255, 255)
ExampleTemplate.TextValueDescription.TextScaled = true
ExampleTemplate.TextValueDescription.TextSize = 14.000
ExampleTemplate.TextValueDescription.TextWrapped = true

ExampleTemplate.LineTextValue.Name = "LineTextValue"
ExampleTemplate.LineTextValue.Parent = ExampleTemplate.TextValue
ExampleTemplate.LineTextValue.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ExampleTemplate.LineTextValue.BackgroundTransparency = 0.500
ExampleTemplate.LineTextValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExampleTemplate.LineTextValue.BorderSizePixel = 0
ExampleTemplate.LineTextValue.Position = UDim2.new(0.00372562069, 0, 0.483999908, 0)
ExampleTemplate.LineTextValue.Size = UDim2.new(0.975000024, 0, 0.0599999987, 0)
ExampleTemplate.LineTextValue.ZIndex = 2

ExampleTemplate.UIListLayoutH.Name = "UIListLayoutH"
ExampleTemplate.UIListLayoutH.Parent = ExampleTemplate.SettingsFrame
ExampleTemplate.UIListLayoutH.HorizontalAlignment = Enum.HorizontalAlignment.Center
ExampleTemplate.UIListLayoutH.SortOrder = Enum.SortOrder.LayoutOrder
ExampleTemplate.UIListLayoutH.Padding = UDim.new(0.0500000007, 0)

ExampleTemplate.UIPaddingH.Name = "UIPaddingH"
ExampleTemplate.UIPaddingH.Parent = ExampleTemplate.SettingsFrame
ExampleTemplate.UIPaddingH.PaddingTop = UDim.new(0.0500000007, 0)

ExampleTemplate.RatioSDF.Name = "RatioSDF"
ExampleTemplate.RatioSDF.Parent = ExampleTemplate.Frame
ExampleTemplate.RatioSDF.AspectRatio = 6.132

local Example = ExampleTemplate.Frame
local ColorChooseFrame = ExampleTemplate.ColorChooseFrame
local TextValue = ExampleTemplate.TextValue

UI.Blur1.ImageTransparency = 1
UI.Blur2.ImageTransparency = 1
UI.Blur3.ImageTransparency = 1
UI.Blur4.ImageTransparency = 1
UI.Background.Transparency = 1
UI.UIScale_5.Scale = 0

UI.Blur1:AddTag("Blur")
UI.Blur2:AddTag("Blur")
UI.Blur3:AddTag("Blur")
UI.Blur4:AddTag("Blur")

UI.ScriptLabel.Position = UI.ScriptLabel.Position - UDim2.new(0.7, 0, 0, 0)
UI.NameLabel.Position = UI.NameLabel.Position - UDim2.new(0.7, 0, 0, 0)
UI.PremiumLabel.Position = UI.PremiumLabel.Position - UDim2.new(0.8, 0, 0, 0)
UI.Line.Size = UDim2.new(0, 0, 0.005, 0)

UI.ScriptLabel.FontFace = Font.new(UI.ScriptLabel.FontFace.Family, Enum.FontWeight.Bold, Enum.FontStyle.Italic)
UI.NameLabel.FontFace = Font.new(UI.NameLabel.FontFace.Family, Enum.FontWeight.Bold, Enum.FontStyle.Italic)
UI.PremiumLabel.FontFace = Font.new(UI.PremiumLabel.FontFace.Family, Enum.FontWeight.Bold, Enum.FontStyle.Italic)

UI.UIScaleMain.Scale = 0
UI.Background_2.Transparency = 1
UI.Blur1_Main.ImageTransparency = 1
UI.Blur2_Main.ImageTransparency = 1
UI.Blur3_Main.ImageTransparency = 1

UI.Blur1_Main:AddTag("Blur")
UI.Blur2_Main:AddTag("Blur")
UI.Blur3_Main:AddTag("Blur")

UI.Main_2.Visible = false
UI.Background_2.Visible = true
UI.Blur1_Main.Visible = true
UI.Blur2_Main.Visible = true
UI.Blur3_Main.Visible = true

task.wait(2)

TS:Create(UI.ScriptLabel, TweenInfo.new(1.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UI.ScriptLabel.Position + UDim2.new(0.7, 0, 0, 0)}):Play()
TS:Create(UI.NameLabel, TweenInfo.new(1.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UI.NameLabel.Position + UDim2.new(0.7, 0, 0, 0)}):Play()
TS:Create(UI.PremiumLabel, TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UI.PremiumLabel.Position + UDim2.new(0.8, 0, 0, 0)}):Play()

TS:Create(UI.Blur2, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0.53}):Play()
TS:Create(UI.Blur3, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0.53}):Play()
TS:Create(UI.Blur4, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0.5}):Play()
TS:Create(UI.Background, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Transparency = 0.5}):Play()

task.delay(1, function()
	TS:Create(UI.Line, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0.159, 0, 0.005, 0)}):Play()
end)

task.delay(0.7, function()
	TS:Create(UI.Blur1, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0.22}):Play()
	TS:Create(UI.UIScale_5, TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Scale = 1}):Play()
	TS:Create(UI.Icon, TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Rotation = 0}):Play()
end)

task.delay(2.5, function()
	for _, F in UI.Start:GetChildren() do
		if F:IsA("Frame") then
			TS:Create(F, TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Transparency = 1}):Play()
		elseif F:IsA("ImageLabel") then
			TS:Create(F, TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {ImageTransparency = 1}):Play()
		elseif F:IsA("TextLabel") then
			TS:Create(F, TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {TextTransparency = 1}):Play()
		end
	end
end)

local Blurs = {}
for _, B in UI.OrbitScript:GetDescendants() do
	if B:HasTag("Blur") then
		local UIG = B:FindFirstChild("UIGradient")
		if UIG then
			table.insert(Blurs, UIG)
		end
	end
end

RNS.Heartbeat:Connect(function(Delta)
	UI.UiGradientRotStroke.Rotation = (UI.UiGradientRotStroke.Rotation + (180 * Delta)) % 360
	for _, B in Blurs do
		B.Rotation = (B.Rotation + (90 * Delta)) % 360
	end
end)

task.wait(3)

local MenuActive = false
local CurrentPage = "Combat"

local ConfigButton = Instance.new("ImageButton")
ConfigButton.Name = "ConfigButton"
ConfigButton.Parent = UI.OrbitScript
ConfigButton.AnchorPoint = Vector2.new(1, 1)
ConfigButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ConfigButton.BackgroundTransparency = 0.5
ConfigButton.BorderSizePixel = 0
ConfigButton.Position = UDim2.new(1, -12, 1, -12)
ConfigButton.Size = UDim2.new(0.042, 0, 0.065, 0)
ConfigButton.ZIndex = 10

local UICornerConfig = Instance.new("UICorner")
UICornerConfig.CornerRadius = UDim.new(0.15, 0)
UICornerConfig.Parent = ConfigButton

local UIAspectConfig = Instance.new("UIAspectRatioConstraint")
UIAspectConfig.AspectRatio = 1
UIAspectConfig.Parent = ConfigButton

local ConfigIcon = Instance.new("TextLabel")
ConfigIcon.BackgroundTransparency = 1
ConfigIcon.Size = UDim2.new(1, 0, 1, 0)
ConfigIcon.Font = Enum.Font.GothamBold
ConfigIcon.Text = "CFG"
ConfigIcon.TextColor3 = Color3.fromRGB(255, 255, 255)
ConfigIcon.TextScaled = true
ConfigIcon.ZIndex = 11
ConfigIcon.Parent = ConfigButton
ConfigIcon.FontFace = Font.new(ConfigIcon.FontFace.Family, Enum.FontWeight.Bold, Enum.FontStyle.Italic)

local UIStrokeConfig1 = Instance.new("UIStroke")
UIStrokeConfig1.StrokeSizingMode = Enum.StrokeSizingMode.ScaledSize
UIStrokeConfig1.Color = Color3.fromRGB(0, 0, 0)
UIStrokeConfig1.Thickness = 0.05
UIStrokeConfig1.Transparency = 0.85
UIStrokeConfig1.ZIndex = 3
UIStrokeConfig1.Parent = ConfigButton
local UIScaleConfig = Instance.new("UIScale", ConfigButton)
UIScaleConfig.Scale = 0


local SlowTime = false
local ViewportCharacter = nil
Character.Archivable = true

local DebrisFolder = Instance.new("Folder", workspace)

local CurrentCamera = workspace.CurrentCamera
local ScreenGui = Instance.new("ScreenGui", PlayerGui)
local Frame = Instance.new("Frame", ScreenGui)
local Viewport = Instance.new("ViewportFrame", ScreenGui)
local WorldModel = Instance.new("WorldModel", Viewport)

ScreenGui.IgnoreGuiInset = true
Viewport.Size = UDim2.new(1, 0, 1 ,0)
Viewport.BackgroundTransparency = 1
Viewport.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.BackgroundTransparency = 1

local ViewportCamera = Instance.new("Camera")
Viewport.CurrentCamera = ViewportCamera
ViewportCamera.Parent = Viewport

for _, Part in Character:GetDescendants() do
	if Part:IsA("BasePart") then
		Part.CollisionGroup = "Player"
	end
end

RNS.RenderStepped:Connect(function()
	if SlowTime and ViewportCharacter then
		ViewportCamera.CFrame = CurrentCamera.CFrame
		ViewportCamera.FieldOfView = CurrentCamera.FieldOfView

		for _, VpPart: BasePart in ViewportCharacter:GetDescendants() do
			if VpPart:IsA("BasePart") then
				if VpPart.Parent:IsA("Accessory") then
					for _, v in VpPart.Parent:GetChildren() do
						if v:IsA("Weld") or v:IsA("WeldConstraint") then
							v:Destroy()
						end
					end
				end

				local ParentName = VpPart.Parent.Name
				local RealPart = nil

				if VpPart.Parent:IsA("Accessory") then
					local RealAccessory = Character:FindFirstChild(ParentName)
					if RealAccessory then
						RealPart = RealAccessory:FindFirstChild(VpPart.Name)
					end
				else
					RealPart = Character:FindFirstChild(VpPart.Name)
				end

				if RealPart and RealPart:IsA("BasePart") then
					VpPart.CFrame = RealPart.CFrame
				end
			end
		end
	end
end) 

local SlowTimeSound = Instance.new("Sound")
SlowTimeSound.Parent = ScreenGui
SlowTimeSound.SoundId = "rbxassetid://118534165523355"
local function SlowTimeFunc()
	if SlowTime == true then
		SlowTime = false
		Viewport.Visible = false

		ScreenGui.Frame.BackgroundTransparency = 0
		TS:Create(ScreenGui.Frame, TweenInfo.new(0.2, Enum.EasingStyle.Sine), {BackgroundTransparency = 1}):Play()

		if ViewportCharacter then ViewportCharacter:Destroy() end
		if Lighting:FindFirstChild("SandeCC") then Lighting.SandeCC:Destroy() end
		for _, v in DebrisFolder:GetChildren() do v:Destroy() end
	else
		SlowTime = true

		SlowTimeSound:Play()

		ScreenGui.Frame.BackgroundTransparency = 0
		TS:Create(ScreenGui.Frame, TweenInfo.new(0.2, Enum.EasingStyle.Sine), {BackgroundTransparency = 1}):Play()

		local CC = Instance.new("ColorCorrectionEffect")
		CC.Name = "SandeCC"
		CC.TintColor = Color3.fromRGB(50, 255, 100)
		CC.Saturation = 2
		CC.Parent = Lighting

		ViewportCharacter = Character:Clone()
		for _, v in ViewportCharacter:GetDescendants() do
			if v:IsA("LuaSourceContainer") or v:IsA("Sound") then 
				v:Destroy() 
			elseif v:IsA("BasePart") then
				v.Anchored = true
				v.CanCollide = false

				for _, CharPart in Character:GetDescendants() do
					if v == CharPart then
						v.CFrame = CharPart.CFrame
					end
				end
			end
		end

		local WorldModel = Viewport:WaitForChild("WorldModel")
		ViewportCharacter.Parent = WorldModel
		Viewport.Visible = true

		task.spawn(function()
			local Hue = 0 
			while SlowTime == true do
				Hue = (Hue + 0.025) % 1 
				local SandevistanColor = Color3.fromHSV(Hue, 1, 1)

				local FadeCharacter = Character:Clone()
				FadeCharacter.Parent = DebrisFolder

				local Hum = FadeCharacter:FindFirstChildOfClass("Humanoid")
				if Hum then Hum.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None end

				local Highlight = Instance.new("Highlight")
				Highlight.Parent = FadeCharacter
				Highlight.OutlineTransparency = 1
				Highlight.FillTransparency = 0.5
				Highlight.FillColor = SandevistanColor 

				for _, Part in FadeCharacter:GetDescendants() do
					if Part:IsA("BasePart") or Part:IsA("MeshPart") or Part:IsA("UnionOperation") then
						Part.CanCollide = false
						Part.CanQuery = false
						Part.CanTouch = false
						Part.Anchored = true
						Part.Transparency = 1
						Part.CastShadow = false

						if Part.Name ~= "HumanoidRootPart" then
							TS:Create(Part, TweenInfo.new(0.2), {Transparency = 0.01}):Play()
						end

						task.delay(2, function()
							if Part and Part.Parent then
								TS:Create(Part, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Transparency = 1}):Play()
							end
						end)
					elseif Part:IsA("Script") or Part:IsA("LocalScript") or Part:IsA("Sound") or Part:IsA("Decal") then
						Part:Destroy()
					end

					if Part:IsA("Highlight") then
						Part.FillTransparency = 1
						TS:Create(Part, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {FillTransparency = 0.5}):Play()

						task.delay(2, function()
							TS:Create(Part, TweenInfo.new(0.7, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {FillTransparency = 1}):Play()
							task.delay(1, function()
								Part:Destroy()
							end)
						end)
					end 
				end

				task.delay(3, function()
					FadeCharacter:Destroy()
				end)

				task.wait(0.05)
			end
		end)
	end
end

local function MenuOpenClose()
	MenuActive = not MenuActive
	if MenuActive then
		UI.Main_2.Visible = true
		TS:Create(UI.Blur1_Main, TweenInfo.new(0.7, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0.53}):Play()
		TS:Create(UI.Blur2_Main, TweenInfo.new(0.7, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0.53}):Play()
		TS:Create(UI.Blur3_Main, TweenInfo.new(0.7, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 0.51}):Play()
		TS:Create(UI.Background_2, TweenInfo.new(0.7, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Transparency = 0.5}):Play()
		TS:Create(UI.UIScaleMain, TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Scale = 1}):Play()
		TS:Create(UI.OpenButton, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, -0.05, 0)}):Play()
		ConfigButton.Visible = true
		TS:Create(UIScaleConfig, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Scale = 1}):Play()
	else
		TS:Create(UI.Blur1_Main, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {ImageTransparency = 1}):Play()
		TS:Create(UI.Blur2_Main, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {ImageTransparency = 1}):Play()
		TS:Create(UI.Blur3_Main, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {ImageTransparency = 1}):Play()
		TS:Create(UI.Background_2, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Transparency = 1}):Play()
		TS:Create(UI.UIScaleMain, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Scale = 0}):Play()
		TS:Create(UI.OpenButton, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, 0, 0)}):Play()
		TS:Create(UIScaleConfig, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.In), {Scale = 0}):Play()
		task.delay(0.3, function()
			ConfigButton.Visible = false
		end)
		local CurrentToggleState = MenuActive
		task.delay(1, function()
			if not MenuActive and MenuActive == CurrentToggleState then
				UI.Main_2.Visible = false
			end
		end)
	end
end

MenuOpenClose()

local function TopFrameButtonSetup(Button)
	if Button.Name == CurrentPage or Button == UI.Close then return end
	CurrentPage = Button.Name

	for _, v in UI.TopFrame:GetChildren() do
		if v:IsA("TextButton") and v ~= UI.Close and v ~= Button then
			TS:Create(v, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = Color3.new(0.666667, 0.666667, 0.666667)}):Play()
		end
	end

	for _, v in UI.Pages:GetChildren() do
		if v:IsA("Frame") and v.Name ~= CurrentPage then
			TS:Create(v, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Size = UDim2.new(0, 0, 0, 0)}):Play()
			task.delay(0.25, function()
				if v.Name ~= CurrentPage then
					v.Visible = false
				end
			end)
		elseif v:IsA("Frame") and v.Name == CurrentPage then
			v.Visible = true
			TS:Create(v, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(1, 0, 0.8, 0)}):Play()
		end
	end

	TS:Create(Button, TweenInfo.new(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = Color3.new(1, 1, 1)}):Play()
	TS:Create(UI.Frame, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {Position = Button.Position}):Play()
	TS:Create(UI.Frame, TweenInfo.new(0.125, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Size = UDim2.new(Button.Size.X.Scale / 2, 0, 0.049, 0)}):Play()
	task.delay(0.125, function()
		TS:Create(UI.Frame, TweenInfo.new(0.125, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Size = Button.Size}):Play()
	end)
end

for _, TopButton in UI.TopFrame:GetChildren() do
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
	Part.Color = Color3.fromRGB(212, 39, 255)
	Part.CanCollide = false
	Part.CastShadow = false
	Part.Parent = workspace
	if Visible == false then Part.Transparency = 1 end
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

local function GetESPBox(EPlayer)
	local EnemyCharacter = EPlayer.Character
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

		local NL = Instance.new("TextLabel")
		NL.Name = "PlayerName"
		NL.Size = UDim2.new(1, 0, 0.5, 0)
		NL.Position = UDim2.new(0, 0, 0, 0)
		NL.BackgroundTransparency = 1
		NL.TextColor3 = Color3.new(1, 1, 1)
		NL.TextStrokeTransparency = 0
		NL.TextTransparency = 1
		NL.Parent = Box

		local HL = Instance.new("TextLabel")
		HL.Name = "HealthDisplay"
		HL.Position = UDim2.new(0, 0, 0.5, 0)
		HL.Size = UDim2.new(1, 0, 0.5, 0)
		HL.BackgroundTransparency = 1
		HL.TextColor3 = Color3.new(0, 1, 0)
		HL.TextStrokeTransparency = 0
		HL.TextTransparency = 1
		HL.Parent = Box
	end
	return Box
end

local function GetHighlight(EPlayer)
	local EnemyCharacter = EPlayer.Character
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

local StateOutline = false
local StateNames = false
local StateHealth = false

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
					local NL = Box:FindFirstChild("PlayerName")
					local HL = Box:FindFirstChild("HealthDisplay")
					if NL then
						NL.Text = EnemyPlayer.Name
						NL.TextTransparency = StateNames and 0 or 1
					end
					if HL then
						local Hum = EnemyPlayer.Character and EnemyPlayer.Character:FindFirstChild("Humanoid")
						HL.Text = Hum and math.floor(Hum.Health) .. " HP" or "0 HP"
						HL.TextTransparency = StateHealth and 0 or 1
					end
				end
			end
		end
	end
end

local DefaultWalkSpeed
local DefaultRunSpeed

local SwitcherControllers = {}

local TargetMode = "Auto"
local ManualTargetName = ""

local function GetBestTarget()
	local BestTarget = nil
	local BestScore = math.huge

	if TargetMode == "Manual" and ManualTargetName ~= "" then
		for _, Target in Entities:GetChildren() do
			if Target:IsA("Model") and Target.Name == ManualTargetName then
				local TargetHRP = Target:FindFirstChild("HumanoidRootPart")
				local TargetHumanoid = Target:FindFirstChild("Humanoid")
				if TargetHRP and TargetHumanoid and TargetHumanoid.Health > 0 then
					local Dist = (HumRP.Position - TargetHRP.Position).Magnitude
					if Dist <= 300 then
						return TargetHRP
					end
				end
			end
		end
		return nil
	end

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
								if Distance <= 300 then
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
	end

	return BestTarget
end
local FeatureSettings = {}
local FunctionsList = {
	["Lichen Farm"] = function(NewState)
		if NewState then
			if SwitcherControllers["Auto Kill"] then SwitcherControllers["Auto Kill"].SetExternal(false) end
			if SwitcherControllers["Auto Farm"] then SwitcherControllers["Auto Farm"].SetExternal(false) end
		end
	end,

	["Auto Farm"] = function(NewState)
		if NewState then
			if SwitcherControllers["Auto Kill"] then SwitcherControllers["Auto Kill"].SetExternal(false) end
			if SwitcherControllers["Lichen Farm"] then SwitcherControllers["Lichen Farm"].SetExternal(false) end
		end
	end,

	["Auto Kill"] = function(NewState)
		if NewState then
			if SwitcherControllers["Lichen Farm"] then SwitcherControllers["Lichen Farm"].SetExternal(false) end
			if SwitcherControllers["Auto Farm"] then SwitcherControllers["Auto Farm"].SetExternal(false) end
		end
	end,

	["Auto Balith"] = function(NewState)
		if NewState then
			if SwitcherControllers["Auto Farm"] then SwitcherControllers["Auto Farm"].SetExternal(false) end
			if SwitcherControllers["Lichen Farm"] then SwitcherControllers["Lichen Farm"].SetExternal(false) end
		end
	end,

	["Knife A-Block"] = function(NewState)
		if NewState then
			if Player:GetAttribute("Aspect") ~= "Knife" then
				SwitcherControllers["Knife A-Block"].SetExternal(false)
				StarterGui:SetCore("SendNotification", {Title = "Error", Text = 'Choose "Knife" power to use this feature', Duration = 5})
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
			task.defer(function()
				local SandCtrl = SwitcherControllers["Sandevistan (Fast Walk)"]
				if SandCtrl and SandCtrl.GetState() and not SlowTime then
					SlowTimeFunc()
				end
			end)

			local Speed = (FeatureSettings["Fast Walk"] and FeatureSettings["Fast Walk"].Speed) or 29
			Humanoid.WalkSpeed = Speed
			Humanoid:SetAttribute("WalkSpeed", Speed)
			Humanoid:SetAttribute("RunSpeed", Speed)

		else
			if DefaultWalkSpeed then
				Humanoid:SetAttribute("WalkSpeed", DefaultWalkSpeed)
				Humanoid:SetAttribute("RunSpeed", DefaultRunSpeed)
				Humanoid.WalkSpeed = DefaultWalkSpeed
			end
			if SlowTime then SlowTimeFunc() end
		end
	end,

	["Sandevistan (Fast Walk)"] = function(NewState)
		local LabelFW = UI.OrbitScript:FindFirstChild("Fast Walk", true)
		local SwitchFW = LabelFW and LabelFW.Switcher:FindFirstChildOfClass("TextButton")
		local FastWalkActive = SwitchFW and SwitchFW:GetAttribute("State")

		if NewState then
			if FastWalkActive and not SlowTime then
				SlowTimeFunc()
			end
		else
			if SlowTime then
				SlowTimeFunc()
			end
		end
	end,

	["Infinite Jump"] = function(NewState)
	end,

	["BunnyHop"] = function(NewState)
	end,

	["NoClip"] = function(NewState)
	end,

	["ESP - Outline"] = function(NewState)
		StateOutline = NewState
		local S = FeatureSettings["ESP - Outline"] or {}
		for _, EnemyPlayer in game:GetService("Players"):GetChildren() do
			if EnemyPlayer ~= Player then
				local High = GetHighlight(EnemyPlayer)
				if High then
					if NewState then
						High.OutlineColor = S.OutlineColor or Color3.fromRGB(255, 255, 255)
						High.FillColor = S.FillColor or Color3.fromRGB(255, 255, 255)
					end
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

	["Time Changer"] = function(NewState)
		if not NewState then Lighting.ClockTime = 14 end
	end,

	["Sky"] = function(NewState)
		if not NewState then
			local ExistingSky = Lighting:FindFirstChildOfClass("Sky")
			if ExistingSky and ExistingSky:GetAttribute("OrbitSky") then ExistingSky:Destroy() end
		end
	end,

	["Health Bar"] = function(NewState)
		local HealthBarGui = PlayerGui:FindFirstChild("OrbitHealthBar")
		if HealthBarGui then HealthBarGui.Enabled = NewState end
	end,
}

local function SwitcherSetup(SwitcherFrame: Frame, State: boolean, CallbackName: string)
	local SwitchBtn: TextButton = SwitcherFrame.SwitchButton

	local function UpdateState(NewState: boolean, SkipCallback: boolean)
		SwitchBtn:SetAttribute("State", NewState)
		if NewState then
			TS:Create(SwitchBtn, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = UDim2.new(0.75, 0, 0, 0), BackgroundColor3 = Color3.new(1, 1, 1)}):Play()
			TS:Create(SwitcherFrame.Parent.TextName, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {TextColor3 = Color3.new(1, 1, 1)}):Play()
			TS:Create(SwitcherFrame, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.new(0.733333, 0.364706, 0.8)}):Play()
		else
			TS:Create(SwitchBtn, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = UDim2.new(0.25, 0, 0, 0), BackgroundColor3 = Color3.new(0.545098, 0.545098, 0.545098)}):Play()
			TS:Create(SwitcherFrame.Parent.TextName, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {TextColor3 = Color3.new(0.545098, 0.545098, 0.545098)}):Play()
			TS:Create(SwitcherFrame, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)}):Play()
		end
		if not SkipCallback then
			local Action = FunctionsList[CallbackName]
			if Action then Action(NewState) end
		end
	end

	UpdateState(State or false, true)

	SwitchBtn.Activated:Connect(function()
		local CurrentState = SwitchBtn:GetAttribute("State")
		UpdateState(not CurrentState, false)
	end)

	return {
		SetExternal = function(NewState: boolean)
			UpdateState(NewState, false)
		end,
		GetState = function()
			return SwitchBtn:GetAttribute("State")
		end
	}
end

local KeyBindRegistry = {}
local ActiveSettingsFrame = nil

local function HexToColor3(Hex)
	Hex = Hex:gsub("#", "")
	if #Hex ~= 6 then return nil end
	local R = tonumber(Hex:sub(1, 2), 16)
	local G = tonumber(Hex:sub(3, 4), 16)
	local B = tonumber(Hex:sub(5, 6), 16)
	if not R or not G or not B then return nil end
	return Color3.fromRGB(R, G, B)
end

local function Color3ToHex(C)
	return string.format("#%02x%02x%02x", math.floor(C.R * 255), math.floor(C.G * 255), math.floor(C.B * 255))
end

local function AddColorSetting(SettingsFrameInst, LabelText, DefaultColor, OnChanged)
	local Row = ColorChooseFrame:Clone()
	Row.Parent = SettingsFrameInst
	Row.Visible = true
	Row.Position = UDim2.new(0.089, 0, 0, 0)
	Row.Size = UDim2.new(0.85, 0, 0.22, 0)

	local Input = Row:FindFirstChildOfClass("TextBox")
	local Preview = Row:FindFirstChild("PredictColor")

	local DescLabel = Instance.new("TextLabel")
	DescLabel.BackgroundTransparency = 1
	DescLabel.Size = UDim2.new(1, 0, 0.6, 0)
	DescLabel.Position = UDim2.new(0, 0, -0.28, 0)
	DescLabel.Font = Enum.Font.Oswald
	DescLabel.Text = LabelText
	DescLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
	DescLabel.TextScaled = true
	DescLabel.TextXAlignment = Enum.TextXAlignment.Left
	DescLabel.ZIndex = 5
	DescLabel.Parent = Row

	if Input then
		Input.Text = Color3ToHex(DefaultColor)
		Input.PlaceholderText = Color3ToHex(DefaultColor)
		if Preview then Preview.BackgroundColor3 = DefaultColor end
		Input.FocusLost:Connect(function()
			local NewColor = HexToColor3(Input.Text)
			if NewColor then
				if Preview then Preview.BackgroundColor3 = NewColor end
				OnChanged(NewColor)
			else
				Input.Text = Input.PlaceholderText
			end
		end)
	end

	return Row, Preview, Input
end

local function AddNumberSetting(SettingsFrameInst, LabelText, DefaultValue, MinVal, MaxVal, OnChanged)
	local Row = TextValue:Clone()
	Row.Parent = SettingsFrameInst
	Row.Visible = true
	Row.AnchorPoint = Vector2.new(0.5, 0)
	Row.Position = UDim2.new(0.5, 0, 0, 0)
	Row.Size = UDim2.new(0.857, 0, 0.32, 0)

	local Desc = Row:FindFirstChild("TextValueDescription")
	local Input = Row:FindFirstChildOfClass("TextBox")

	if Desc then Desc.Text = LabelText end
	if Input then
		Input.Text = tostring(DefaultValue)
		Input.PlaceholderText = tostring(DefaultValue)
		Input.FocusLost:Connect(function()
			local Num = tonumber(Input.Text)
			if Num then
				Num = math.clamp(Num, MinVal, MaxVal)
				Input.Text = tostring(Num)
				OnChanged(Num)
			else
				Input.Text = tostring(DefaultValue)
			end
		end)
	end

	return Row
end

local function AddKeyBindSetting(SettingsFrameInst, LabelText, FeatureName, DefaultKey, OnChanged)
	local Row = TextValue:Clone()
	Row.Parent = SettingsFrameInst
	Row.Visible = true
	Row.AnchorPoint = Vector2.new(0.5, 0)
	Row.Position = UDim2.new(0.5, 0, 0, 0)
	Row.Size = UDim2.new(0.857, 0, 0.32, 0)

	local Desc = Row:FindFirstChild("TextValueDescription")
	if Desc then Desc.Text = LabelText end

	local Input = Row:FindFirstChildOfClass("TextBox")
	if Input then Input:Destroy() end

	local KeyBtn = Instance.new("TextButton")
	KeyBtn.Name = "KeyBindButton_" .. FeatureName
	KeyBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	KeyBtn.BackgroundTransparency = 0.5
	KeyBtn.BorderSizePixel = 0
	KeyBtn.Size = UDim2.new(1, 0, 0.55, 0)
	KeyBtn.Position = UDim2.new(0, 0, 0.45, 0)
	KeyBtn.Font = Enum.Font.Oswald
	KeyBtn.Text = DefaultKey or "None"
	KeyBtn.TextColor3 = Color3.fromRGB(255, 220, 80)
	KeyBtn.TextScaled = true
	KeyBtn.ZIndex = 6
	KeyBtn.Parent = Row

	local UICornerKB = Instance.new("UICorner")
	UICornerKB.CornerRadius = UDim.new(0, 4)
	UICornerKB.Parent = KeyBtn

	local IsListening = false

	KeyBtn.Activated:Connect(function()
		if IsListening then return end
		IsListening = true
		KeyBtn.Text = "..."
		KeyBtn.TextColor3 = Color3.fromRGB(255, 80, 80)

		local Conn
		Conn = UIS.InputBegan:Connect(function(Input, GameProcessed)
			if Input.UserInputType ~= Enum.UserInputType.Keyboard then return end
			Conn:Disconnect()
			IsListening = false

			local NewKeyName = Input.KeyCode.Name
			local ConflictFeature = nil

			for OtherFeature, OtherKey in KeyBindRegistry do
				if OtherKey == NewKeyName and OtherFeature ~= FeatureName then
					ConflictFeature = OtherFeature
					break
				end
			end

			if ConflictFeature then
				KeyBtn.Text = KeyBindRegistry[FeatureName] or DefaultKey or "None"
				KeyBtn.TextColor3 = Color3.fromRGB(255, 220, 80)
				StarterGui:SetCore("SendNotification", {Title = "⚠ KeyBind Conflict", Text = 'Key "' .. NewKeyName .. '" already used by "' .. ConflictFeature .. '"', Duration = 5})
			else
				KeyBindRegistry[FeatureName] = NewKeyName
				KeyBtn.Text = NewKeyName
				KeyBtn.TextColor3 = Color3.fromRGB(255, 220, 80)
				OnChanged(NewKeyName)
			end
		end)
	end)

	if DefaultKey then KeyBindRegistry[FeatureName] = DefaultKey end

	return Row, KeyBtn
end

local function AddDropdownSetting(SettingsFrameInst, LabelText, Options, DefaultOption, OnChanged)
	local Container = Instance.new("Frame")
	Container.BackgroundTransparency = 1
	Container.Size = UDim2.new(0.857, 0, 0.35, 0)
	Container.AnchorPoint = Vector2.new(0.5, 0)
	Container.Position = UDim2.new(0.5, 0, 0, 0)
	Container.Parent = SettingsFrameInst

	local Label = Instance.new("TextLabel")
	Label.BackgroundTransparency = 1
	Label.Size = UDim2.new(1, 0, 0.45, 0)
	Label.Font = Enum.Font.Oswald
	Label.Text = LabelText
	Label.TextColor3 = Color3.fromRGB(200, 200, 200)
	Label.TextScaled = true
	Label.TextXAlignment = Enum.TextXAlignment.Left
	Label.ZIndex = 6
	Label.Parent = Container

	local Current = DefaultOption
	local BtnIndex = 0
	local BtnList = {}

	for _, Opt in Options do
		BtnIndex = BtnIndex + 1
		local Btn = Instance.new("TextButton")
		Btn.Size = UDim2.new(1 / #Options, -2, 0.5, 0)
		Btn.Position = UDim2.new((BtnIndex - 1) / #Options, 1, 0.5, 0)
		Btn.BackgroundColor3 = Opt == DefaultOption and Color3.fromRGB(140, 60, 200) or Color3.fromRGB(30, 30, 30)
		Btn.BackgroundTransparency = 0.3
		Btn.BorderSizePixel = 0
		Btn.Font = Enum.Font.Oswald
		Btn.Text = Opt
		Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
		Btn.TextScaled = true
		Btn.ZIndex = 6
		Btn.Parent = Container

		local UICornerOpt = Instance.new("UICorner")
		UICornerOpt.CornerRadius = UDim.new(0.15, 0)
		UICornerOpt.Parent = Btn

		table.insert(BtnList, Btn)

		Btn.Activated:Connect(function()
			Current = Opt
			for _, B in BtnList do
				TS:Create(B, TweenInfo.new(0.15, Enum.EasingStyle.Quad), {BackgroundColor3 = Color3.fromRGB(30, 30, 30)}):Play()
			end
			TS:Create(Btn, TweenInfo.new(0.15, Enum.EasingStyle.Quad), {BackgroundColor3 = Color3.fromRGB(140, 60, 200)}):Play()
			OnChanged(Opt)
		end)
	end

	return Container
end

local function BuildSettingsFor(SettingsFrameInst, FeatureName)
	for _, Child in SettingsFrameInst:GetChildren() do
		if not Child:IsA("UIListLayout") and not Child:IsA("UIPadding") and not Child:IsA("UIScale") then
			Child:Destroy()
		end
	end

	local UIListInst = SettingsFrameInst:FindFirstChildOfClass("UIListLayout")
	if not UIListInst then
		UIListInst = Instance.new("UIListLayout")
		UIListInst.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListInst.SortOrder = Enum.SortOrder.LayoutOrder
		UIListInst.Padding = UDim.new(0.04, 0)
		UIListInst.Parent = SettingsFrameInst
	end

	local UIPadInst = SettingsFrameInst:FindFirstChildOfClass("UIPadding")
	if not UIPadInst then
		UIPadInst = Instance.new("UIPadding")
		UIPadInst.PaddingTop = UDim.new(0.04, 0)
		UIPadInst.Parent = SettingsFrameInst
	end

	FeatureSettings[FeatureName] = FeatureSettings[FeatureName] or {}
	local S = FeatureSettings[FeatureName]

	if FeatureName == "Auto Kill" then
		S.KeyBind = S.KeyBind or "None"
		AddKeyBindSetting(SettingsFrameInst, "KeyBind", FeatureName, S.KeyBind, function(K) S.KeyBind = K end)
		AddDropdownSetting(SettingsFrameInst, "Target Mode", {"Auto", "Manual"}, TargetMode, function(V) TargetMode = V end)

		local NickContainer = Instance.new("Frame")
		NickContainer.BackgroundTransparency = 1
		NickContainer.Size = UDim2.new(0.857, 0, 0.45, 0)
		NickContainer.AnchorPoint = Vector2.new(0.5, 0)
		NickContainer.Position = UDim2.new(0.5, 0, 0, 0)
		NickContainer.Parent = SettingsFrameInst

		local NickLabel = Instance.new("TextLabel")
		NickLabel.BackgroundTransparency = 1
		NickLabel.Size = UDim2.new(1, 0, 0.35, 0)
		NickLabel.Font = Enum.Font.Oswald
		NickLabel.Text = "Target Nick (Manual)"
		NickLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
		NickLabel.TextScaled = true
		NickLabel.TextXAlignment = Enum.TextXAlignment.Left
		NickLabel.ZIndex = 6
		NickLabel.Parent = NickContainer

		local NickBox = Instance.new("TextBox")
		NickBox.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
		NickBox.BackgroundTransparency = 0.3
		NickBox.BorderSizePixel = 0
		NickBox.Size = UDim2.new(1, 0, 0.55, 0)
		NickBox.Position = UDim2.new(0, 0, 0.4, 0)
		NickBox.Font = Enum.Font.Oswald
		NickBox.PlaceholderText = "Enter username..."
		NickBox.PlaceholderColor3 = Color3.fromRGB(80, 80, 80)
		NickBox.Text = ManualTargetName
		NickBox.TextColor3 = Color3.fromRGB(255, 220, 80)
		NickBox.TextScaled = true
		NickBox.ClearTextOnFocus = false
		NickBox.ZIndex = 6
		NickBox.Parent = NickContainer

		local UICornerNick = Instance.new("UICorner")
		UICornerNick.CornerRadius = UDim.new(0.1, 0)
		UICornerNick.Parent = NickBox

		local PlayersLabel = Instance.new("TextLabel")
		PlayersLabel.BackgroundTransparency = 1
		PlayersLabel.Size = UDim2.new(0.857, 0, 0.1, 0)
		PlayersLabel.AnchorPoint = Vector2.new(0.5, 0)
		PlayersLabel.Position = UDim2.new(0.5, 0, 0, 0)
		PlayersLabel.Font = Enum.Font.Oswald
		PlayersLabel.Text = "Players in server:"
		PlayersLabel.TextColor3 = Color3.fromRGB(160, 160, 160)
		PlayersLabel.TextScaled = true
		PlayersLabel.TextXAlignment = Enum.TextXAlignment.Left
		PlayersLabel.ZIndex = 6
		PlayersLabel.Parent = SettingsFrameInst

		local PlayerScrollFrame = Instance.new("ScrollingFrame")
		PlayerScrollFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
		PlayerScrollFrame.BackgroundTransparency = 0.4
		PlayerScrollFrame.BorderSizePixel = 0
		PlayerScrollFrame.Size = UDim2.new(0.857, 0, 0.55, 0)
		PlayerScrollFrame.AnchorPoint = Vector2.new(0.5, 0)
		PlayerScrollFrame.Position = UDim2.new(0.5, 0, 0, 0)
		PlayerScrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
		PlayerScrollFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
		PlayerScrollFrame.ScrollBarThickness = 3
		PlayerScrollFrame.ScrollBarImageColor3 = Color3.fromRGB(140, 60, 200)
		PlayerScrollFrame.ZIndex = 6
		PlayerScrollFrame.Parent = SettingsFrameInst

		local UICornerScroll = Instance.new("UICorner")
		UICornerScroll.CornerRadius = UDim.new(0.05, 0)
		UICornerScroll.Parent = PlayerScrollFrame

		local UIListScroll = Instance.new("UIListLayout")
		UIListScroll.SortOrder = Enum.SortOrder.Name
		UIListScroll.Padding = UDim.new(0.03, 0)
		UIListScroll.Parent = PlayerScrollFrame

		local UIPadScroll = Instance.new("UIPadding")
		UIPadScroll.PaddingTop = UDim.new(0.03, 0)
		UIPadScroll.PaddingLeft = UDim.new(0.04, 0)
		UIPadScroll.PaddingRight = UDim.new(0.04, 0)
		UIPadScroll.Parent = PlayerScrollFrame

		local function RefreshPlayerList()
			for _, Child in PlayerScrollFrame:GetChildren() do
				if Child:IsA("TextButton") then Child:Destroy() end
			end
			for _, Plr in game:GetService("Players"):GetPlayers() do
				if Plr ~= Player then
					local Btn = Instance.new("TextButton")
					Btn.BackgroundColor3 = ManualTargetName == Plr.Name
						and Color3.fromRGB(140, 60, 200)
						or Color3.fromRGB(25, 25, 25)
					Btn.BackgroundTransparency = 0.3
					Btn.BorderSizePixel = 0
					Btn.Size = UDim2.new(1, 0, 0, 22)
					Btn.Font = Enum.Font.Oswald
					Btn.Text = Plr.Name
					Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
					Btn.TextScaled = true
					Btn.ZIndex = 7
					Btn.Name = Plr.Name
					Btn.Parent = PlayerScrollFrame

					local UICornerBtn = Instance.new("UICorner")
					UICornerBtn.CornerRadius = UDim.new(0.15, 0)
					UICornerBtn.Parent = Btn

					Btn.Activated:Connect(function()
						ManualTargetName = Plr.Name
						NickBox.Text = Plr.Name
						for _, B in PlayerScrollFrame:GetChildren() do
							if B:IsA("TextButton") then
								TS:Create(B, TweenInfo.new(0.15, Enum.EasingStyle.Quad), {
									BackgroundColor3 = B.Name == Plr.Name
										and Color3.fromRGB(140, 60, 200)
										or Color3.fromRGB(25, 25, 25)
								}):Play()
							end
						end
					end)
				end
			end
		end

		NickBox.FocusLost:Connect(function()
			ManualTargetName = NickBox.Text
		end)

		RefreshPlayerList()
		game:GetService("Players").PlayerAdded:Connect(RefreshPlayerList)
		game:GetService("Players").PlayerRemoving:Connect(function()
			task.wait(0.1)
			RefreshPlayerList()
		end)

	elseif FeatureName == "Auto Balith" then
		S.KeyBind = S.KeyBind or "None"
		AddKeyBindSetting(SettingsFrameInst, "KeyBind", FeatureName, S.KeyBind, function(K) S.KeyBind = K end)

	elseif FeatureName == "Auto Farm" then
		S.KeyBind = S.KeyBind or "None"
		AddKeyBindSetting(SettingsFrameInst, "KeyBind", FeatureName, S.KeyBind, function(K) S.KeyBind = K end)

	elseif FeatureName == "Lichen Farm" then
		S.KeyBind = S.KeyBind or "None"
		AddKeyBindSetting(SettingsFrameInst, "KeyBind", FeatureName, S.KeyBind, function(K) S.KeyBind = K end)
	elseif FeatureName == "Aim Assist" then
		S.KeyBind = S.KeyBind or "None"
		S.Velocity = S.Velocity or 32.5
		S.Duration = S.Duration or 0.2
		S.LerpSpeed = S.LerpSpeed or 0.2
		AddKeyBindSetting(SettingsFrameInst, "KeyBind", FeatureName, S.KeyBind, function(K) S.KeyBind = K end)
		AddNumberSetting(SettingsFrameInst, "Max Velocity", S.Velocity, 5, 100, function(Num) S.Velocity = Num end)
		AddNumberSetting(SettingsFrameInst, "Duration (ms x10)", math.floor(S.Duration * 100), 5, 100, function(Num) S.Duration = Num / 100 end)
		AddNumberSetting(SettingsFrameInst, "Lerp Speed %", math.floor(S.LerpSpeed * 100), 1, 100, function(Num) S.LerpSpeed = Num / 100 end)

		S.HitboxX = S.HitboxX or 10
		S.HitboxY = S.HitboxY or 7
		S.HitboxZ = S.HitboxZ or 25
		S.HitboxOffsetZ = S.HitboxOffsetZ or 7.5
		AddNumberSetting(SettingsFrameInst, "Hitbox Width (X)", S.HitboxX, 1, 40, function(Num) S.HitboxX = Num end)
		AddNumberSetting(SettingsFrameInst, "Hitbox Height (Y)", S.HitboxY, 1, 40, function(Num) S.HitboxY = Num end)
		AddNumberSetting(SettingsFrameInst, "Hitbox Depth (Z)", S.HitboxZ, 1, 60, function(Num) S.HitboxZ = Num end)
		AddNumberSetting(SettingsFrameInst, "Hitbox Offset (Z)", S.HitboxOffsetZ, 1, 30, function(Num) S.HitboxOffsetZ = Num end)

	elseif FeatureName == "Hit Aura (X)" then
		S.KeyBind = S.KeyBind or "X"
		S.AuraSize = S.AuraSize or 30
		S.AuraDelay = S.AuraDelay or 0.15
		AddKeyBindSetting(SettingsFrameInst, "KeyBind", FeatureName, S.KeyBind, function(K) S.KeyBind = K end)
		AddNumberSetting(SettingsFrameInst, "Aura Size", S.AuraSize, 5, 80, function(Num) S.AuraSize = Num end)
		AddNumberSetting(SettingsFrameInst, "Attack Speed (sec)", math.floor(S.AuraDelay * 100) / 100, 5, 100, function(Num) S.AuraDelay = Num / 100 end)

	elseif FeatureName == "Knife A-Block" then
		S.KeyBind = S.KeyBind or "None"
		AddKeyBindSetting(SettingsFrameInst, "KeyBind", FeatureName, S.KeyBind, function(K) S.KeyBind = K end)

	elseif FeatureName == "Hitbox Extend" then
		S.Size = S.Size or 22
		AddNumberSetting(SettingsFrameInst, "Hitbox Size", S.Size, 3, 30, function(Num) S.Size = Num end)
		S.KeyBind = S.KeyBind or "None"
		AddKeyBindSetting(SettingsFrameInst, "KeyBind", FeatureName, S.KeyBind, function(K) S.KeyBind = K end)

	elseif FeatureName == "Fast Walk" then
		S.Speed = S.Speed or 29
		AddNumberSetting(SettingsFrameInst, "Walk Speed", S.Speed, 1, 29, function(Num)
			S.Speed = Num
			local LabelF = UI.OrbitScript:FindFirstChild("Fast Walk", true)
			local SwitchBtnF = LabelF and LabelF.Switcher:FindFirstChildOfClass("TextButton")
			if SwitchBtnF and SwitchBtnF:GetAttribute("State") then
				Humanoid.WalkSpeed = Num
				Humanoid:SetAttribute("WalkSpeed", Num)
				Humanoid:SetAttribute("RunSpeed", Num)
			end
		end)

		S.KeyBind = S.KeyBind or "None"
		AddKeyBindSetting(SettingsFrameInst, "KeyBind", FeatureName, S.KeyBind, function(K) S.KeyBind = K end)

	elseif FeatureName == "Infinite Jump" then
		S.KeyBind = S.KeyBind or "None"
		AddKeyBindSetting(SettingsFrameInst, "KeyBind", FeatureName, S.KeyBind, function(K) S.KeyBind = K end)

	elseif FeatureName == "BunnyHop" then
		S.KeyBind = S.KeyBind or "None"
		S.BoostSpeed = S.BoostSpeed or 5
		AddKeyBindSetting(SettingsFrameInst, "KeyBind", FeatureName, S.KeyBind, function(K) S.KeyBind = K end)
		AddNumberSetting(SettingsFrameInst, "Boost Per Hop", S.BoostSpeed, 1, 50, function(Num) S.BoostSpeed = Num end)

	elseif FeatureName == "NoClip" then
		S.KeyBind = S.KeyBind or "None"
		AddKeyBindSetting(SettingsFrameInst, "KeyBind", FeatureName, S.KeyBind, function(K) S.KeyBind = K end)

	elseif FeatureName == "Teleport (T)" then
		S.KeyBind = S.KeyBind or "T"
		AddKeyBindSetting(SettingsFrameInst, "KeyBind", FeatureName, S.KeyBind, function(K) S.KeyBind = K end)

	elseif FeatureName == "Anti-Ragdoll" then
		S.KeyBind = S.KeyBind or "None"
		AddKeyBindSetting(SettingsFrameInst, "KeyBind", FeatureName, S.KeyBind, function(K) S.KeyBind = K end)

	elseif FeatureName == "Anti-Knockback" then
		S.KeyBind = S.KeyBind or "None"
		AddKeyBindSetting(SettingsFrameInst, "KeyBind", FeatureName, S.KeyBind, function(K) S.KeyBind = K end)

	elseif FeatureName == "ESP - Outline" then
		S.OutlineColor = S.OutlineColor or Color3.fromRGB(255, 255, 255)
		S.FillColor = S.FillColor or Color3.fromRGB(255, 255, 255)
		S.KeyBind = S.KeyBind or "None"
		AddColorSetting(SettingsFrameInst, "Outline Color", S.OutlineColor, function(C)
			S.OutlineColor = C
			for _, EnemyPlayer in game:GetService("Players"):GetChildren() do
				if EnemyPlayer ~= Player then
					local High = GetHighlight(EnemyPlayer)
					if High then High.OutlineColor = C end
				end
			end
		end)
		AddColorSetting(SettingsFrameInst, "Fill Color", S.FillColor, function(C)
			S.FillColor = C
			for _, EnemyPlayer in game:GetService("Players"):GetChildren() do
				if EnemyPlayer ~= Player then
					local High = GetHighlight(EnemyPlayer)
					if High then High.FillColor = C end
				end
			end
		end)
		AddKeyBindSetting(SettingsFrameInst, "KeyBind", FeatureName, S.KeyBind, function(K) S.KeyBind = K end)

	elseif FeatureName == "ESP - Names" then
		S.TextColor = S.TextColor or Color3.fromRGB(255, 255, 255)
		S.KeyBind = S.KeyBind or "None"
		AddColorSetting(SettingsFrameInst, "Name Color", S.TextColor, function(C)
			S.TextColor = C
			for _, EnemyPlayer in game:GetService("Players"):GetChildren() do
				if EnemyPlayer ~= Player then
					local Box = GetESPBox(EnemyPlayer)
					if Box then
						local Lbl = Box:FindFirstChild("PlayerName")
						if Lbl then Lbl.TextColor3 = C end
					end
				end
			end
		end)
		AddKeyBindSetting(SettingsFrameInst, "KeyBind", FeatureName, S.KeyBind, function(K) S.KeyBind = K end)

	elseif FeatureName == "ESP - Health" then
		S.TextColor = S.TextColor or Color3.fromRGB(0, 255, 0)
		S.KeyBind = S.KeyBind or "None"
		AddColorSetting(SettingsFrameInst, "Health Color", S.TextColor, function(C)
			S.TextColor = C
			for _, EnemyPlayer in game:GetService("Players"):GetChildren() do
				if EnemyPlayer ~= Player then
					local Box = GetESPBox(EnemyPlayer)
					if Box then
						local Lbl = Box:FindFirstChild("HealthDisplay")
						if Lbl then Lbl.TextColor3 = C end
					end
				end
			end
		end)
		AddKeyBindSetting(SettingsFrameInst, "KeyBind", FeatureName, S.KeyBind, function(K) S.KeyBind = K end)
	elseif FeatureName == "Time Changer" then
		S.TimeValue = S.TimeValue or 14
		S.KeyBind = S.KeyBind or "None"
		AddNumberSetting(SettingsFrameInst, "Time (0-24)", S.TimeValue, 0, 24, function(Num)
			S.TimeValue = Num
			local LabelF = UI.OrbitScript:FindFirstChild("Time Changer", true)
			local SwitchBtnF = LabelF and LabelF.Switcher:FindFirstChildOfClass("TextButton")
			if SwitchBtnF and SwitchBtnF:GetAttribute("State") then Lighting.ClockTime = Num end
		end)
		AddKeyBindSetting(SettingsFrameInst, "KeyBind", FeatureName, S.KeyBind, function(K) S.KeyBind = K end)

	elseif FeatureName == "Sky" then
		S.SkyPreset = S.SkyPreset or "Default"
		S.KeyBind = S.KeyBind or "None"
		AddDropdownSetting(SettingsFrameInst, "Sky Preset", {"Default", "Night", "Sunset", "Space", "Storm"}, S.SkyPreset, function(V)
			S.SkyPreset = V
			local LabelF = UI.OrbitScript:FindFirstChild("Sky", true)
			local SwitchBtnF = LabelF and LabelF.Switcher:FindFirstChildOfClass("TextButton")
			if not (SwitchBtnF and SwitchBtnF:GetAttribute("State")) then return end
			local ExistingSky = Lighting:FindFirstChildOfClass("Sky")
			if ExistingSky and ExistingSky:GetAttribute("OrbitSky") then ExistingSky:Destroy() end
			if V ~= "Default" then
				local NewSky = Instance.new("Sky")
				NewSky:SetAttribute("OrbitSky", true)
				NewSky.Parent = Lighting
				if V == "Night" then
					Lighting.ClockTime = 0
					Lighting.Ambient = Color3.fromRGB(10, 10, 30)
					NewSky.SkyboxBk = "rbxassetid://1050459693"
					NewSky.SkyboxDn = "rbxassetid://1050459693"
					NewSky.SkyboxFt = "rbxassetid://1050459693"
					NewSky.SkyboxLf = "rbxassetid://1050459693"
					NewSky.SkyboxRt = "rbxassetid://1050459693"
					NewSky.SkyboxUp = "rbxassetid://1050459693"
				elseif V == "Sunset" then
					Lighting.ClockTime = 18.5
					Lighting.Ambient = Color3.fromRGB(60, 30, 10)
				elseif V == "Space" then
					Lighting.ClockTime = 0
					Lighting.Ambient = Color3.fromRGB(0, 0, 0)
					Lighting.Brightness = 0
				elseif V == "Storm" then
					Lighting.ClockTime = 12
					Lighting.Ambient = Color3.fromRGB(40, 40, 50)
					Lighting.Brightness = 0.3
				end
			else
				Lighting.ClockTime = 14
				Lighting.Ambient = Color3.fromRGB(70, 70, 70)
				Lighting.Brightness = 1
			end
		end)
		AddKeyBindSetting(SettingsFrameInst, "KeyBind", FeatureName, S.KeyBind, function(K) S.KeyBind = K end)
	elseif FeatureName == "Health Bar" then
		S.BarColor = S.BarColor or Color3.fromRGB(180, 60, 255)
		S.BGTransparency = S.BGTransparency or 0.4
		S.KeyBind = S.KeyBind or "None"
		AddColorSetting(SettingsFrameInst, "Bar Color", S.BarColor, function(C)
			S.BarColor = C
			local HBGui = PlayerGui:FindFirstChild("OrbitHealthBar")
			if not HBGui then return end
			local Fill = HBGui:FindFirstChild("BarFill", true)
			local GlowFrame = HBGui:FindFirstChild("HBGlow", true)
			local StrokeInst = HBGui:FindFirstChild("HealthBarBG", true)
			local StrokeChild = StrokeInst and StrokeInst:FindFirstChildOfClass("UIStroke")
			if Fill then
				Fill.BackgroundColor3 = C
				local FillGrad = Fill:FindFirstChildOfClass("UIGradient")
				if FillGrad then
					local R, G, B = C.R, C.G, C.B
					FillGrad.Color = ColorSequence.new{
						ColorSequenceKeypoint.new(0, Color3.new(
							math.clamp(R * 1.2, 0, 1),
							math.clamp(G * 1.2, 0, 1),
							math.clamp(B * 1.2, 0, 1)
							)),
						ColorSequenceKeypoint.new(1, Color3.new(
							math.clamp(R * 0.5, 0, 1),
							math.clamp(G * 0.5, 0, 1),
							math.clamp(B * 0.5, 0, 1)
							))
					}
				end
			end
			if GlowFrame then GlowFrame.BackgroundColor3 = C end
			if StrokeChild then StrokeChild.Color = C end
		end)
		AddNumberSetting(SettingsFrameInst, "BG Opacity %", math.floor((1 - S.BGTransparency) * 100), 0, 100, function(Num)
			S.BGTransparency = 1 - (Num / 100)
			local HBGui = PlayerGui:FindFirstChild("OrbitHealthBar")
			if not HBGui then return end
			local BG = HBGui:FindFirstChild("HealthBarBG", true)
			if BG then BG.BackgroundTransparency = S.BGTransparency end
		end)
		AddKeyBindSetting(SettingsFrameInst, "KeyBind", FeatureName, S.KeyBind, function(K) S.KeyBind = K end)
	end
end

local function DynamicInputCreate(Type: string, Location: Frame, Params: any)
	local DynamicInput: Frame = Example:Clone()

	DynamicInput.Parent = Location:WaitForChild("Contaier")
	DynamicInput.Visible = true
	DynamicInput.TextName.Text = Params.Function
	DynamicInput.Name = Params.Function
	DynamicInput.ZIndex = Params.Order

	if Type == "Switcher" then
		local SwitcherFrame = DynamicInput:WaitForChild("Switcher")
		SwitcherFrame.Visible = true
		local Controller = SwitcherSetup(SwitcherFrame, Params.FunctionState, Params.Function)
		SwitcherControllers[Params.Function] = Controller
	end

	local SettingsBtnInst = DynamicInput:FindFirstChild("SettingsButton")
	local SettingsFrameInst = DynamicInput:FindFirstChild("SettingsFrame")
	local UIScaleInst = SettingsFrameInst:FindFirstChild("UIScaleSettingsFrame")

	if Params.Settings == nil or Params.Settings == true then
		SettingsBtnInst.Visible = true
	else
		SettingsBtnInst.Visible = false
	end

	UIScaleInst.Scale = 0

	SettingsBtnInst.Activated:Connect(function()
		if ActiveSettingsFrame and ActiveSettingsFrame ~= SettingsFrameInst then
			local Prev = ActiveSettingsFrame
			local PrevScale = Prev:FindFirstChild("UIScaleSettingsFrame")
			if PrevScale then
				TS:Create(PrevScale, TweenInfo.new(0.15, Enum.EasingStyle.Back, Enum.EasingDirection.In), {Scale = 0}):Play()
			end
			task.delay(0.15, function() Prev.Visible = false end)
			ActiveSettingsFrame = nil
		end

		if SettingsFrameInst.Visible then
			local ScaleInst = SettingsFrameInst:FindFirstChild("UIScaleSettingsFrame")
			if ScaleInst then
				TS:Create(ScaleInst, TweenInfo.new(0.15, Enum.EasingStyle.Back, Enum.EasingDirection.In), {Scale = 0}):Play()
			end
			task.delay(0.15, function() SettingsFrameInst.Visible = false end)
			ActiveSettingsFrame = nil
		else
			BuildSettingsFor(SettingsFrameInst, Params.Function)
			local ScaleInst = SettingsFrameInst:FindFirstChild("UIScaleSettingsFrame")
			if ScaleInst then ScaleInst.Scale = 0 end
			SettingsFrameInst.Visible = true
			if ScaleInst then
				TS:Create(ScaleInst, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Scale = 1}):Play()
			end
			ActiveSettingsFrame = SettingsFrameInst
		end
	end)
end

KeyBindRegistry["Hit Aura (X)"] = "X"
KeyBindRegistry["Teleport (T)"] = "T"

DynamicInputCreate("Switcher", UI.Combat, {Function = "Auto Kill", FunctionState = false, Order = 100})
DynamicInputCreate("Switcher", UI.Combat, {Function = "Auto Farm", FunctionState = false, Order = 99})
DynamicInputCreate("Switcher", UI.Combat, {Function = "Auto Balith", FunctionState = false, Order = 98})
DynamicInputCreate("Switcher", UI.Combat, {Function = "Lichen Farm", FunctionState = false, Order = 97})
DynamicInputCreate("Switcher", UI.Combat, {Function = "Aim Assist", FunctionState = false, Order = 96})
DynamicInputCreate("Switcher", UI.Combat, {Function = "Hit Aura (X)", FunctionState = false, Order = 95})
DynamicInputCreate("Switcher", UI.Combat, {Function = "Knife A-Block", FunctionState = false, Order = 94})
DynamicInputCreate("Switcher", UI.Combat, {Function = "Hitbox Extend", FunctionState = false, Order = 93})

DynamicInputCreate("Switcher", UI.Movement, {Function = "Fast Walk", FunctionState = false, Order = 100})
DynamicInputCreate("Switcher", UI.Movement, {Function = "Teleport (T)", FunctionState = false, Order = 99})
DynamicInputCreate("Switcher", UI.Movement, {Function = "Anti-Ragdoll", FunctionState = false, Order = 98})
DynamicInputCreate("Switcher", UI.Movement, {Function = "Anti-Knockback", FunctionState = false, Order = 97})
DynamicInputCreate("Switcher", UI.Movement, {Function = "Infinite Jump", FunctionState = false, Order = 96})
DynamicInputCreate("Switcher", UI.Movement, {Function = "BunnyHop", FunctionState = false, Order = 95})
DynamicInputCreate("Switcher", UI.Movement, {Function = "NoClip", FunctionState = false, Order = 94})

DynamicInputCreate("Switcher", UI.Visuals, {Function = "ESP - Outline", FunctionState = false, Order = 100})
DynamicInputCreate("Switcher", UI.Visuals, {Function = "ESP - Names", FunctionState = false, Order = 99})
DynamicInputCreate("Switcher", UI.Visuals, {Function = "ESP - Health", FunctionState = false, Order = 98})
DynamicInputCreate("Switcher", UI.Visuals, {Function = "Time Changer", FunctionState = false, Order = 97})
DynamicInputCreate("Switcher", UI.Visuals, {Function = "Sky", FunctionState = false, Order = 96})
DynamicInputCreate("Switcher", UI.Visuals, {Function = "Health Bar", FunctionState = false, Order = 95})
DynamicInputCreate("Switcher", UI.Visuals, {Function = "Sandevistan (Fast Walk)", FunctionState = false, Order = 94, Settings = false})

local AntiKnockbackConnection = nil

local function SetupAntiKnockback()
	if AntiKnockbackConnection then
		AntiKnockbackConnection:Disconnect()
		AntiKnockbackConnection = nil
	end
	local RootAttachment = HumRP:FindFirstChild("RootAttachment")
	if not RootAttachment then return end
	AntiKnockbackConnection = RootAttachment.ChildAdded:Connect(function(Child)
		local Label = UI.OrbitScript:FindFirstChild("Anti-Knockback", true)
		if not Label then return end
		local SwitchBtn = Label.Switcher:FindFirstChildOfClass("TextButton")
		if SwitchBtn and SwitchBtn:GetAttribute("State") then
			if Child.Name == "KnockbackForce" or Child:IsA("LinearVelocity") or Child:IsA("VectorForce") then
				Child:Destroy()
			end
		end
	end)
end

SetupAntiKnockback()

local AimAssistCD = false
local function AimAssistFunction()
	local Label = UI.OrbitScript:FindFirstChild("Aim Assist", true)
	local SwitchButton = Label.Switcher:FindFirstChildOfClass("TextButton")

	if not SwitchButton:GetAttribute("State") or AimAssistCD or Humanoid.Health < 0 or HumRP.Position.Y > 150 or States:FindFirstChild("Ragdoll") then return end

	AimAssistCD = true

	local S = FeatureSettings["Aim Assist"] or {}
	local HB = Hitbox.Create(
		Vector3.new(S.HitboxX or 10, S.HitboxY or 7, S.HitboxZ or 25),
		HumRP,
		CFrame.new(0, 0, -(S.HitboxOffsetZ or 7.5)),
		0.05,
		true
	)
	Hitbox.OnTouched(HB, function(EnemyCharacter: Model, EnemyHumanoid: Humanoid)
		local EnemyHRP = EnemyCharacter:FindFirstChild("HumanoidRootPart")
		if not EnemyHRP then return end
		if EnemyHumanoid.Health <= 0 then return end

		local MaxVelocity = S.Velocity or 32.5
		local Duration = S.Duration or 0.2
		local LerpSpeed = S.LerpSpeed or 0.2

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
				local Speed = math.clamp(Distance * 6, 10, MaxVelocity)
				local TargetVelocity = Direction.Unit * Speed
				LV.VectorVelocity = LV.VectorVelocity:Lerp(TargetVelocity, LerpSpeed)
			end
		end)

		task.delay(Duration, function()
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

	if Aggressor then return Aggressor end

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

Humanoid:GetAttributeChangedSignal("WalkSpeed"):Connect(function()
	local Label = UI.OrbitScript:FindFirstChild("Fast Walk", true)
	local SwitchButton = Label.Switcher:FindFirstChildOfClass("TextButton")
	if SwitchButton:GetAttribute("State") then
		local Speed = (FeatureSettings["Fast Walk"] and FeatureSettings["Fast Walk"].Speed) or 29
		Humanoid:SetAttribute("WalkSpeed", Speed)
	end
end)

Humanoid:GetAttributeChangedSignal("RunSpeed"):Connect(function()
	local Label = UI.OrbitScript:FindFirstChild("Fast Walk", true)
	local SwitchButton = Label.Switcher:FindFirstChildOfClass("TextButton")
	if SwitchButton:GetAttribute("State") then
		local Speed = (FeatureSettings["Fast Walk"] and FeatureSettings["Fast Walk"].Speed) or 29
		Humanoid:SetAttribute("RunSpeed", Speed)
	end
end)

task.spawn(function()
	while task.wait(0.15) do
		local Label = UI.OrbitScript:FindFirstChild("Auto Kill", true)
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

task.spawn(function()
	while task.wait(0.12) do
		local Label = UI.OrbitScript:FindFirstChild("Auto Balith", true)
		local SwitchButton = Label.Switcher:FindFirstChildOfClass("TextButton")
		if SwitchButton:GetAttribute("State") and Humanoid.Health > 0 then
			local BalithTarget = nil
			for _, Target in Entities:GetChildren() do
				if Target:IsA("Model") and Target.Name == "Balith" then
					local TargetHRP = Target:FindFirstChild("HumanoidRootPart")
					local TargetHum = Target:FindFirstChild("Humanoid")
					if TargetHRP and TargetHum and TargetHum.Health > 0 then
						BalithTarget = TargetHRP
						break
					end
				end
			end
			if BalithTarget then
				if HumRP.Position.Y >= 150 then
					HumRP.CFrame = CFrame.new(0, 758.75, 29.5)
					task.wait(1)
				else
					HumRP.CFrame = BalithTarget.CFrame * CFrame.new(0, -1, 4)
					VIM:SendMouseButtonEvent(0, 0, 0, true, game, 0)
				end
			else
				StarterGui:SetCore("SendNotification", {Title = "Auto Balith", Text = "Balith not found in Entities", Duration = 3})
				SwitcherControllers["Auto Balith"].SetExternal(false)
			end
		end
	end
end)

task.spawn(function()
	while task.wait(0.2) do
		local Label = UI.OrbitScript:FindFirstChild("Lichen Farm", true)
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

task.spawn(function()
	while task.wait() do
		local Label = UI.OrbitScript:FindFirstChild("Auto Farm", true)
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
					if RandomJump == 1 then Humanoid.Jump = true end
					if DistanceToTarget > 18 then
						if tick() - LastPathCompute > 0.5 then
							LastPathCompute = tick()
							local CurrentPath = PathfindingService:CreatePath({AgentRadius = 2, AgentHeight = 5, AgentCanJump = true})
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
							if TargetWaypoint.Action == Enum.PathWaypointAction.Jump then Humanoid.Jump = true end
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

local HitAuraLastAttack = 0
task.spawn(function()
	while task.wait(0.05) do
		local Label = UI.OrbitScript:FindFirstChild("Hit Aura (X)", true)
		local SwitchButton = Label.Switcher:FindFirstChildOfClass("TextButton")
		if SwitchButton:GetAttribute("State") then
			if HumRP.Position.Y < 150 and Humanoid.Health > 0 then
				local S = FeatureSettings["Hit Aura (X)"] or {}
				local AuraSize = S.AuraSize or 30
				local AuraDelay = S.AuraDelay or 0.15
				local Now = tick()
				if Now - HitAuraLastAttack < AuraDelay then continue end
				local BestEnemy = nil
				local BestDist = math.huge
				for _, EnemyCharacter in Entities:GetChildren() do
					if EnemyCharacter:IsA("Model") and EnemyCharacter ~= Character then
						local EnemyHRP = EnemyCharacter:FindFirstChild("HumanoidRootPart")
						local EnemyHum = EnemyCharacter:FindFirstChild("Humanoid")
						if EnemyHRP and EnemyHum and EnemyHum.Health > 0 then
							local Dist = (HumRP.Position - EnemyHRP.Position).Magnitude
							if Dist < AuraSize and Dist < BestDist then
								BestDist = Dist
								BestEnemy = EnemyHRP
							end
						end
					end
				end
				if BestEnemy then
					HitAuraLastAttack = Now
					HumRP.CFrame = CFrame.lookAt(HumRP.Position, Vector3.new(BestEnemy.Position.X, HumRP.Position.Y, BestEnemy.Position.Z))
					VIM:SendMouseButtonEvent(0, 0, 0, true, game, 0)
					task.delay(0.05, function()
						VIM:SendMouseButtonEvent(0, 0, 0, false, game, 0)
					end)
				end
			end
		end
	end
end)

task.spawn(function()
	while task.wait(0.05) do
		local Label = UI.OrbitScript:FindFirstChild("Knife A-Block", true)
		local SwitchButton = Label.Switcher:FindFirstChildOfClass("TextButton")
		if SwitchButton:GetAttribute("State") and Humanoid.Health > 0 then
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

local InfiniteJumpConn = nil
UIS.JumpRequest:Connect(function()
	local Label = UI.OrbitScript:FindFirstChild("Infinite Jump", true)
	if not Label then return end
	local SwitchButton = Label.Switcher:FindFirstChildOfClass("TextButton")
	if SwitchButton and SwitchButton:GetAttribute("State") then
		Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end
end)

task.spawn(function()
	while task.wait(0.05) do
		local LabelNC = UI.OrbitScript:FindFirstChild("NoClip", true)
		local SwitchNC = LabelNC and LabelNC.Switcher:FindFirstChildOfClass("TextButton")
		if SwitchNC and SwitchNC:GetAttribute("State") then
			for _, Part in Character:GetDescendants() do
				if Part:IsA("BasePart") then
					Part.CanCollide = false
				end
			end
		end
	end
end)

local BHopLastJump = 0
UIS.InputBegan:Connect(function(Input, GP)
	if GP then return end
	if Input.KeyCode == Enum.KeyCode.Space then
		local LabelBH = UI.OrbitScript:FindFirstChild("BunnyHop", true)
		local SwitchBH = LabelBH and LabelBH.Switcher:FindFirstChildOfClass("TextButton")
		if SwitchBH and SwitchBH:GetAttribute("State") then
			local Now = tick()
			if Humanoid.FloorMaterial ~= Enum.Material.Air and Now - BHopLastJump > 0.3 then
				BHopLastJump = Now
				local S = FeatureSettings["BunnyHop"] or {}
				local Boost = S.BoostSpeed or 5
				Humanoid.Jump = true

				local CurrentVelocity = HumRP.AssemblyLinearVelocity
				local Direction = HumRP.CFrame.LookVector
				HumRP.AssemblyLinearVelocity = Vector3.new(
					CurrentVelocity.X + (Direction.X * Boost),
					CurrentVelocity.Y,
					CurrentVelocity.Z + (Direction.Z * Boost)
				)
			end
		end
	end
end)

local HealthBarGui = Instance.new("ScreenGui")
HealthBarGui.Name = "OrbitHealthBar"
HealthBarGui.Parent = PlayerGui
HealthBarGui.ResetOnSpawn = false
HealthBarGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
HealthBarGui.DisplayOrder = 5
HealthBarGui.Enabled = false

local HealthBarBG = Instance.new("Frame")
HealthBarBG.Name = "HealthBarBG"
HealthBarBG.Parent = HealthBarGui
HealthBarBG.AnchorPoint = Vector2.new(0.5, 1)
HealthBarBG.Position = UDim2.new(0.5, 0, 1, -18)
HealthBarBG.Size = UDim2.new(0.22, 0, 0.028, 0)
HealthBarBG.BackgroundColor3 = Color3.fromRGB(8, 0, 15)
HealthBarBG.BackgroundTransparency = 0.4
HealthBarBG.BorderSizePixel = 0
HealthBarBG.ZIndex = 10

local HBCorner = Instance.new("UICorner")
HBCorner.CornerRadius = UDim.new(1, 0)
HBCorner.Parent = HealthBarBG

local HBStroke = Instance.new("UIStroke")
HBStroke.Color = Color3.fromRGB(180, 60, 255)
HBStroke.Thickness = 1.5
HBStroke.Transparency = 0.3
HBStroke.Parent = HealthBarBG

local BarFill = Instance.new("Frame")
BarFill.Name = "BarFill"
BarFill.Parent = HealthBarBG
BarFill.AnchorPoint = Vector2.new(0, 0.5)
BarFill.Position = UDim2.new(0.01, 0, 0.5, 0)
BarFill.Size = UDim2.new(0.98, 0, 0.7, 0)
BarFill.BackgroundColor3 = Color3.fromRGB(180, 60, 255)
BarFill.BorderSizePixel = 0
BarFill.ZIndex = 11

local BarFillGradient = Instance.new("UIGradient")
BarFillGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(124, 124, 124))
}
BarFillGradient.Rotation = 0
BarFillGradient.Parent = BarFill

local BarFillCorner = Instance.new("UICorner")
BarFillCorner.CornerRadius = UDim.new(1, 0)
BarFillCorner.Parent = BarFill

local HBGlow = Instance.new("Frame")
HBGlow.Name = "HBGlow"
HBGlow.Parent = HealthBarBG
HBGlow.AnchorPoint = Vector2.new(0, 0.5)
HBGlow.Position = UDim2.new(0.01, 0, 0.5, 0)
HBGlow.Size = UDim2.new(0.98, 0, 1.4, 0)
HBGlow.BackgroundColor3 = Color3.fromRGB(180, 60, 255)
HBGlow.BackgroundTransparency = 0.82
HBGlow.BorderSizePixel = 0
HBGlow.ZIndex = 9

local HBGlowCorner = Instance.new("UICorner")
HBGlowCorner.CornerRadius = UDim.new(1, 0)
HBGlowCorner.Parent = HBGlow

local HPLabel = Instance.new("TextLabel")
HPLabel.Name = "HPLabel"
HPLabel.Parent = HealthBarBG
HPLabel.BackgroundTransparency = 1
HPLabel.Size = UDim2.new(1, 0, 1, 0)
HPLabel.ZIndex = 12
HPLabel.Font = Enum.Font.GothamBold
HPLabel.Text = "100 HP"
HPLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
HPLabel.TextScaled = true
HPLabel.FontFace = Font.new(HPLabel.FontFace.Family, Enum.FontWeight.Bold, Enum.FontStyle.Normal)

local UITextSizeHP = Instance.new("UITextSizeConstraint")
UITextSizeHP.MaxTextSize = 14
UITextSizeHP.Parent = HPLabel

local HBAspect = Instance.new("UIAspectRatioConstraint")
HBAspect.AspectRatio = 10
HBAspect.Parent = HealthBarBG

local WasInAir = false
RNS.Heartbeat:Connect(function(DeltaTime)
	if Player:GetAttribute("Aspect") then
		UI.PowerText.Text = "Power: " .. Player:GetAttribute("Aspect")
	end

	UpdateESP()

	local LabelF = UI.OrbitScript:FindFirstChild("Fast Walk", true)
	local SwitchBtnF = LabelF and LabelF.Switcher:FindFirstChildOfClass("TextButton")
	if SwitchBtnF and SwitchBtnF:GetAttribute("State") then
		Humanoid.WalkSpeed = (FeatureSettings["Fast Walk"] and FeatureSettings["Fast Walk"].Speed) or 29
	end

	if HealthBarGui.Enabled then
		local HP = Humanoid.Health
		local MaxHP = Humanoid.MaxHealth
		local Ratio = math.clamp(HP / MaxHP, 0, 1)
		local TargetSize = UDim2.new(0.01 + 0.97 * Ratio, 0, 0.7, 0)
		BarFill.Size = BarFill.Size:Lerp(TargetSize, 0.15)
		HBGlow.Size = UDim2.new(0.01 + 0.97 * Ratio, 0, 1.4, 0)
		HPLabel.Text = math.floor(HP) .. " HP"
		local R = 1 - Ratio
		local G = Ratio
		BarFill.BackgroundColor3 = (FeatureSettings["Health Bar"] and FeatureSettings["Health Bar"].BarColor) or Color3.fromRGB(180, 60, 255)
	end

	local LabelAutoFarm = UI.OrbitScript:FindFirstChild("Auto Farm", true)
	local SwitchAutoFarm = LabelAutoFarm.Switcher:FindFirstChildOfClass("TextButton")
	if SwitchAutoFarm:GetAttribute("State") and LockedTarget and LockedTarget.Parent then
		local TargetHumanoid = LockedTarget.Parent:FindFirstChild("Humanoid")
		if TargetHumanoid and TargetHumanoid.Health > 0 then
			local TargetCameraCFrame = CFrame.lookAt(Camera.CFrame.Position, LockedTarget.Position)
			Camera.CFrame = Camera.CFrame:Lerp(TargetCameraCFrame, DeltaTime * 10)
		end
	end

	local LabelHB = UI.OrbitScript:FindFirstChild("Hitbox Extend", true)
	local SwitchHB = LabelHB.Switcher:FindFirstChildOfClass("TextButton")
	if SwitchHB:GetAttribute("State") then
		local HitboxSize = (FeatureSettings["Hitbox Extend"] and FeatureSettings["Hitbox Extend"].Size) or 22
		for _, EnemyCharacter: Model in workspace.Entities:GetChildren() do
			if Player.Character ~= EnemyCharacter then
				local Head: BasePart = EnemyCharacter:FindFirstChild("Head")
				if Head then
					Head.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
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

	local LabelRag = UI.OrbitScript:FindFirstChild("Anti-Ragdoll", true)
	local SwitchRag = LabelRag.Switcher:FindFirstChildOfClass("TextButton")
	if SwitchRag:GetAttribute("State") then
		Humanoid:SetAttribute("Ragdoll", false)
	end

	local LabelTC = UI.OrbitScript:FindFirstChild("Time Changer", true)
	local SwitchTC = LabelTC.Switcher:FindFirstChildOfClass("TextButton")
	if SwitchTC:GetAttribute("State") then
		local TimeVal = (FeatureSettings["Time Changer"] and FeatureSettings["Time Changer"].TimeValue) or 14
		Lighting.ClockTime = TimeVal
	end
end)

UIS.InputBegan:Connect(function(Input, GameProcessed)
	if GameProcessed then return end

	if Input.UserInputType == Enum.UserInputType.MouseButton1 then
		AimAssistFunction()
	end

	if Input.UserInputType ~= Enum.UserInputType.Keyboard then return end

	local KeyName = Input.KeyCode.Name

	if Input.KeyCode == Enum.KeyCode.Insert then
		MenuOpenClose()
		return
	end

	for FeatureName, BoundKey in KeyBindRegistry do
		if BoundKey == KeyName and BoundKey ~= "None" then
			if FeatureName == "Hit Aura (X)" then
				local Label = UI.OrbitScript:FindFirstChild("Hit Aura (X)", true)
				if Label then
					local SwitchBtn = Label.Switcher:FindFirstChildOfClass("TextButton")
					SwitcherControllers["Hit Aura (X)"].SetExternal(not SwitchBtn:GetAttribute("State"))
				end
			elseif FeatureName == "Teleport (T)" then
				local Label = UI.OrbitScript:FindFirstChild("Teleport (T)", true)
				if Label then
					local SwitchBtn = Label.Switcher:FindFirstChildOfClass("TextButton")
					if SwitchBtn:GetAttribute("State") then
						if Player:GetMouse().Target == nil then return end
						local TargetPosition = Player:GetMouse().Hit.Position + Vector3.new(0, 3, 0)
						HumRP.CFrame = CFrame.new(TargetPosition)
					end
				end
			else
				if SwitcherControllers[FeatureName] then
					local CurrentState = SwitcherControllers[FeatureName].GetState()
					SwitcherControllers[FeatureName].SetExternal(not CurrentState)
				end
			end
		end
	end
end)

local function SerializeConfig()
	local Out = {}
	for FN, S in FeatureSettings do
		local Entry = {}
		if S.KeyBind then Entry.KeyBind = S.KeyBind end
		if S.Size then Entry.Size = S.Size end
		if S.Speed then Entry.Speed = S.Speed end
		if S.AuraSize then Entry.AuraSize = S.AuraSize end
		if S.AuraDelay then Entry.AuraDelay = S.AuraDelay end
		if S.TimeValue then Entry.TimeValue = S.TimeValue end
		if S.SkyPreset then Entry.SkyPreset = S.SkyPreset end
		if S.FillTransparency then Entry.FillTransparency = S.FillTransparency end
		if S.Velocity then Entry.Velocity = S.Velocity end
		if S.Duration then Entry.Duration = S.Duration end
		if S.LerpSpeed then Entry.LerpSpeed = S.LerpSpeed end
		if S.Intensity then Entry.Intensity = S.Intensity end
		if S.Segments then Entry.Segments = S.Segments end
		if S.CurveHeight then Entry.CurveHeight = S.CurveHeight end
		if S.BGTransparency then Entry.BGTransparency = S.BGTransparency end
		if S.BoostSpeed then Entry.BoostSpeed = S.BoostSpeed end
		if S.StepHeight then Entry.StepHeight = S.StepHeight end
		if S.Friction then Entry.Friction = S.Friction end
		if S.OutlineColor then Entry.OutlineColor = Color3ToHex(S.OutlineColor) end
		if S.FillColor then Entry.FillColor = Color3ToHex(S.FillColor) end
		if S.TextColor then Entry.TextColor = Color3ToHex(S.TextColor) end
		if S.BarColor then Entry.BarColor = Color3ToHex(S.BarColor) end
		if S.HitboxX then Entry.HitboxX = S.HitboxX end
		if S.HitboxY then Entry.HitboxY = S.HitboxY end
		if S.HitboxZ then Entry.HitboxZ = S.HitboxZ end
		if S.HitboxOffsetZ then Entry.HitboxOffsetZ = S.HitboxOffsetZ end
		Out[FN] = Entry
	end
	for FN, Controller in SwitcherControllers do
		Out[FN] = Out[FN] or {}
		Out[FN].State = Controller.GetState()
	end
	return HttpService:JSONEncode(Out)
end

local function UpdateColorSettingUI(FeatureName, ColorKey, NewColor)
	local FeatureLabel = UI.OrbitScript:FindFirstChild(FeatureName, true)
	if not FeatureLabel then return end
	local SFInst = FeatureLabel:FindFirstChild("SettingsFrame")
	if not SFInst or not SFInst.Visible then return end
	for _, Child in SFInst:GetChildren() do
		if Child.Name == "ColorChooseFrame" then
			local DescLabel = Child:FindFirstChildOfClass("TextLabel")
			if DescLabel and DescLabel.Text == ColorKey then
				local Preview = Child:FindFirstChild("PredictColor")
				local Input = Child:FindFirstChildOfClass("TextBox")
				if Preview then Preview.BackgroundColor3 = NewColor end
				if Input then Input.Text = Color3ToHex(NewColor) end
			end
		end
	end
end

local function UpdateKeyBindUI(FeatureName, NewKey)
	local FeatureLabel = UI.OrbitScript:FindFirstChild(FeatureName, true)
	if not FeatureLabel then return end
	local SFInst = FeatureLabel:FindFirstChild("SettingsFrame")
	if not SFInst then return end
	for _, Child in SFInst:GetDescendants() do
		if Child:IsA("TextButton") and Child.Name == "KeyBindButton_" .. FeatureName then
			Child.Text = NewKey
		end
	end
end

local function DeserializeConfig(JsonStr)
	local Success, Decoded = pcall(function()
		return HttpService:JSONDecode(JsonStr)
	end)
	if not Success or type(Decoded) ~= "table" then
		StarterGui:SetCore("SendNotification", {Title = "⚠ Config Error", Text = "Invalid config format", Duration = 4})
		return
	end

	for FN, Entry in Decoded do
		FeatureSettings[FN] = FeatureSettings[FN] or {}
		local S = FeatureSettings[FN]
		if Entry.KeyBind then S.KeyBind = Entry.KeyBind; KeyBindRegistry[FN] = Entry.KeyBind; UpdateKeyBindUI(FN, Entry.KeyBind) end
		if Entry.Size then S.Size = Entry.Size end
		if Entry.Speed then S.Speed = Entry.Speed end
		if Entry.AuraSize then S.AuraSize = Entry.AuraSize end
		if Entry.AuraDelay then S.AuraDelay = Entry.AuraDelay end
		if Entry.TimeValue then S.TimeValue = Entry.TimeValue end
		if Entry.SkyPreset then S.SkyPreset = Entry.SkyPreset end
		if Entry.FillTransparency then S.FillTransparency = Entry.FillTransparency end
		if Entry.Velocity then S.Velocity = Entry.Velocity end
		if Entry.Duration then S.Duration = Entry.Duration end
		if Entry.LerpSpeed then S.LerpSpeed = Entry.LerpSpeed end
		if Entry.Intensity then S.Intensity = Entry.Intensity end
		if Entry.Segments then S.Segments = Entry.Segments end
		if Entry.CurveHeight then S.CurveHeight = Entry.CurveHeight end
		if Entry.BGTransparency then S.BGTransparency = Entry.BGTransparency end
		if Entry.BoostSpeed then S.BoostSpeed = Entry.BoostSpeed end
		if Entry.StepHeight then S.StepHeight = Entry.StepHeight end
		if Entry.Friction then S.Friction = Entry.Friction end
		if Entry.OutlineColor then local C = HexToColor3(Entry.OutlineColor); if C then S.OutlineColor = C; UpdateColorSettingUI(FN, "Outline Color", C) end end
		if Entry.FillColor then local C = HexToColor3(Entry.FillColor); if C then S.FillColor = C; UpdateColorSettingUI(FN, "Fill Color", C) end end
		if Entry.TextColor then local C = HexToColor3(Entry.TextColor); if C then S.TextColor = C; UpdateColorSettingUI(FN, "Name Color", C); UpdateColorSettingUI(FN, "Health Color", C) end end
		if Entry.BarColor then local C = HexToColor3(Entry.BarColor); if C then S.BarColor = C; UpdateColorSettingUI(FN, "Bar Color", C) end end
		if Entry.State ~= nil and SwitcherControllers[FN] then SwitcherControllers[FN].SetExternal(Entry.State) end
		if Entry.HitboxX then S.HitboxX = Entry.HitboxX end
		if Entry.HitboxY then S.HitboxY = Entry.HitboxY end
		if Entry.HitboxZ then S.HitboxZ = Entry.HitboxZ end
		if Entry.HitboxOffsetZ then S.HitboxOffsetZ = Entry.HitboxOffsetZ end
	end

	StarterGui:SetCore("SendNotification", {Title = "Config Loaded", Text = "Settings applied successfully", Duration = 3})
end

local ConfigPanel = Instance.new("Frame")
ConfigPanel.Name = "ConfigPanel"
ConfigPanel.Parent = UI.OrbitScript
ConfigPanel.AnchorPoint = Vector2.new(1, 1)
ConfigPanel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ConfigPanel.BackgroundTransparency = 0.35
ConfigPanel.BorderSizePixel = 0
ConfigPanel.Position = UDim2.new(1, -12, 1, -82)
ConfigPanel.Size = UDim2.new(0.22, 0, 0.32, 0)
ConfigPanel.Visible = false
ConfigPanel.ZIndex = 10
ConfigPanel.ClipsDescendants = true

local UICornerPanel = Instance.new("UICorner")
UICornerPanel.CornerRadius = UDim.new(0.04, 0)
UICornerPanel.Parent = ConfigPanel

local UIScalePanel = Instance.new("UIScale")
UIScalePanel.Scale = 0
UIScalePanel.Parent = ConfigPanel

local PanelTitle = Instance.new("TextLabel")
PanelTitle.BackgroundTransparency = 1
PanelTitle.Size = UDim2.new(1, 0, 0.12, 0)
PanelTitle.Position = UDim2.new(0, 0, 0.01, 0)
PanelTitle.Font = Enum.Font.GothamBold
PanelTitle.Text = "CONFIG"
PanelTitle.TextColor3 = Color3.fromRGB(200, 150, 255)
PanelTitle.TextScaled = true
PanelTitle.ZIndex = 11
PanelTitle.Parent = ConfigPanel

local PanelLine = Instance.new("Frame")
PanelLine.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
PanelLine.BorderSizePixel = 0
PanelLine.Position = UDim2.new(0.05, 0, 0.14, 0)
PanelLine.Size = UDim2.new(0.9, 0, 0.005, 0)
PanelLine.ZIndex = 11
PanelLine.Parent = ConfigPanel

local ExportLabel = Instance.new("TextLabel")
ExportLabel.BackgroundTransparency = 1
ExportLabel.Size = UDim2.new(0.9, 0, 0.08, 0)
ExportLabel.Position = UDim2.new(0.05, 0, 0.16, 0)
ExportLabel.Font = Enum.Font.Oswald
ExportLabel.Text = "Export"
ExportLabel.TextColor3 = Color3.fromRGB(160, 160, 160)
ExportLabel.TextScaled = true
ExportLabel.TextXAlignment = Enum.TextXAlignment.Left
ExportLabel.ZIndex = 11
ExportLabel.Parent = ConfigPanel

local ExportBox = Instance.new("TextBox")
ExportBox.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
ExportBox.BackgroundTransparency = 0.2
ExportBox.BorderSizePixel = 0
ExportBox.Position = UDim2.new(0.05, 0, 0.25, 0)
ExportBox.Size = UDim2.new(0.9, 0, 0.2, 0)
ExportBox.Font = Enum.Font.Roboto
ExportBox.Text = ""
ExportBox.PlaceholderText = "Click Export to generate..."
ExportBox.PlaceholderColor3 = Color3.fromRGB(80, 80, 80)
ExportBox.TextColor3 = Color3.fromRGB(200, 200, 200)
ExportBox.TextScaled = true
ExportBox.TextWrapped = true
ExportBox.ClearTextOnFocus = false
ExportBox.MultiLine = true
ExportBox.ZIndex = 11
ExportBox.Parent = ConfigPanel

local UICornerExport = Instance.new("UICorner")
UICornerExport.CornerRadius = UDim.new(0.05, 0)
UICornerExport.Parent = ExportBox

local ExportBtn = Instance.new("TextButton")
ExportBtn.BackgroundColor3 = Color3.fromRGB(140, 60, 200)
ExportBtn.BackgroundTransparency = 0.3
ExportBtn.BorderSizePixel = 0
ExportBtn.Position = UDim2.new(0.05, 0, 0.47, 0)
ExportBtn.Size = UDim2.new(0.9, 0, 0.12, 0)
ExportBtn.Font = Enum.Font.GothamBold
ExportBtn.Text = "Export Config"
ExportBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ExportBtn.TextScaled = true
ExportBtn.ZIndex = 11
ExportBtn.Parent = ConfigPanel
ExportBtn.FontFace = Font.new(ExportBtn.FontFace.Family, Enum.FontWeight.Bold, Enum.FontStyle.Italic)

local UICornerExportBtn = Instance.new("UICorner")
UICornerExportBtn.CornerRadius = UDim.new(0.2, 0)
UICornerExportBtn.Parent = ExportBtn

local ImportLabel = Instance.new("TextLabel")
ImportLabel.BackgroundTransparency = 1
ImportLabel.Size = UDim2.new(0.9, 0, 0.08, 0)
ImportLabel.Position = UDim2.new(0.05, 0, 0.62, 0)
ImportLabel.Font = Enum.Font.Oswald
ImportLabel.Text = "Import"
ImportLabel.TextColor3 = Color3.fromRGB(160, 160, 160)
ImportLabel.TextScaled = true
ImportLabel.TextXAlignment = Enum.TextXAlignment.Left
ImportLabel.ZIndex = 11
ImportLabel.Parent = ConfigPanel

local ImportBox = Instance.new("TextBox")
ImportBox.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
ImportBox.BackgroundTransparency = 0.2
ImportBox.BorderSizePixel = 0
ImportBox.Position = UDim2.new(0.05, 0, 0.71, 0)
ImportBox.Size = UDim2.new(0.9, 0, 0.14, 0)
ImportBox.Font = Enum.Font.Roboto
ImportBox.Text = ""
ImportBox.PlaceholderText = "Paste config here..."
ImportBox.PlaceholderColor3 = Color3.fromRGB(80, 80, 80)
ImportBox.TextColor3 = Color3.fromRGB(200, 200, 200)
ImportBox.TextScaled = true
ImportBox.TextWrapped = true
ImportBox.MultiLine = true
ImportBox.ZIndex = 11
ImportBox.Parent = ConfigPanel

local UICornerImport = Instance.new("UICorner")
UICornerImport.CornerRadius = UDim.new(0.05, 0)
UICornerImport.Parent = ImportBox

local ImportBtn = Instance.new("TextButton")
ImportBtn.BackgroundColor3 = Color3.fromRGB(60, 140, 80)
ImportBtn.BackgroundTransparency = 0.3
ImportBtn.BorderSizePixel = 0
ImportBtn.Position = UDim2.new(0.05, 0, 0.87, 0)
ImportBtn.Size = UDim2.new(0.9, 0, 0.12, 0)
ImportBtn.Font = Enum.Font.GothamBold
ImportBtn.Text = "Load Config"
ImportBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ImportBtn.TextScaled = true
ImportBtn.ZIndex = 11
ImportBtn.Parent = ConfigPanel

local UICornerImportBtn = Instance.new("UICorner")
UICornerImportBtn.CornerRadius = UDim.new(0.2, 0)
UICornerImportBtn.Parent = ImportBtn

local ConfigPanelOpen = false

ConfigButton.Activated:Connect(function()
	ConfigPanelOpen = not ConfigPanelOpen
	if ConfigPanelOpen then
		ConfigPanel.Visible = true
		TS:Create(UIScalePanel, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Scale = 1}):Play()
	else
		TS:Create(UIScalePanel, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.In), {Scale = 0}):Play()
		task.delay(0.2, function() ConfigPanel.Visible = false end)
	end
end)

ExportBtn.Activated:Connect(function()
	local Json = SerializeConfig()
	ExportBox.Text = Json
	StarterGui:SetCore("SendNotification", {Title = "📋 Config Exported", Text = "Copy the text from the box", Duration = 3})
end)

ImportBtn.Activated:Connect(function()
	local JsonStr = ImportBox.Text
	if JsonStr == "" then
		StarterGui:SetCore("SendNotification", {Title = "⚠ Import Error", Text = "Paste a config first", Duration = 3})
		return
	end
	DeserializeConfig(JsonStr)
	ImportBox.Text = ""
end)

task.spawn(function()
	GameGui:WaitForChild("PunchButton"):WaitForChild("Button").Activated:Connect(function()
		AimAssistFunction()
	end)
end)

UI.Close.Activated:Connect(function()
	MenuOpenClose()
	UI.Close.Interactable = false
	task.delay(0.5, function() UI.Close.Interactable = true end)
end)

UI.OpenButton.Activated:Connect(function()
	MenuOpenClose()
	UI.OpenButton.Interactable = false
	task.delay(0.5, function() UI.OpenButton.Interactable = true end)
end)

Player.CharacterAdded:Connect(function(Char)
	Character = Char
	Humanoid = Char:WaitForChild("Humanoid")
	HumRP = Char:WaitForChild("HumanoidRootPart")
	States = Char:WaitForChild("States")
	GameGui = PlayerGui:FindFirstChild("GameGui")
	Character.Archivable = true

	task.wait(1)
	SetupAntiKnockback()
end)