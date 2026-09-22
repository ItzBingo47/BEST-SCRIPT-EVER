local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
local Humanoid = Character:WaitForChild("Humanoid")
local CurrentCamera = workspace.CurrentCamera
local UserInputService = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local Entities = workspace:WaitForChild("Entities")
local Debris = game:GetService("Debris")
local PathfindingService = game:GetService("PathfindingService")
local MarketplaceService = game:GetService("MarketplaceService")
local StarterGui = game:GetService("StarterGui")
local TeleportService = game:GetService("TeleportService")

local ScreenGui = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local ConnectFrame = Instance.new("Frame")
local ConnectCorner = Instance.new("UICorner")
local EnterBox = Instance.new("TextBox")
local EnterBoxCorner = Instance.new("UICorner")
local EnterButton = Instance.new("ImageButton")
local EnterButtonStroke = Instance.new("UIStroke", EnterButton)
local EnterButtonText = Instance.new("TextLabel")
local EnterButtonGradient = Instance.new("UIGradient")
local Blur1 = Instance.new("ImageLabel")
local ScaleV = Instance.new("UIScale")
local GradientC = Instance.new("UIGradient")
local Blur2 = Instance.new("ImageLabel")
local ScaleN = Instance.new("UIScale")
local GradientB = Instance.new("UIGradient")
local InfoLabel = Instance.new("TextLabel")
local DiscordButton = Instance.new("ImageButton")
local DiscordCorner = Instance.new("UICorner")
local DiscordStroke = Instance.new("UIStroke", DiscordButton)
local ArrowLabel = Instance.new("TextLabel")
local NameLabel = Instance.new("TextLabel")
local ScriptLabel = Instance.new("TextLabel")
local ChangelogFrame = Instance.new("Frame")
local ChangelogCorner = Instance.new("UICorner")
local ChangelogLabel = Instance.new("TextLabel")
local Container = Instance.new("ScrollingFrame")
local ContainerCorner = Instance.new("UICorner", Container)
local ContainerPadding = Instance.new("UIPadding", Container)
local ExampleEntry = Instance.new("Frame")
local ExampleCorner = Instance.new("UICorner")
local AspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local VersionLabel = Instance.new("TextLabel")
local DateLabel = Instance.new("TextLabel")
local MainLabel = Instance.new("TextLabel")
local UIListLayout = Instance.new("UIListLayout")
local SubChangelogLabel = Instance.new("TextLabel")
local FooterVersionLabel = Instance.new("TextLabel")
local Line = Instance.new("Frame")
local LineGradient = Instance.new("UIGradient")
local Icon = Instance.new("ImageLabel")
local IconAspect = Instance.new("UIAspectRatioConstraint")
local BlurImg1 = Instance.new("ImageLabel")
local ScaleImg1 = Instance.new("UIScale")
local AspectImg1 = Instance.new("UIAspectRatioConstraint")
local GradientImg1 = Instance.new("UIGradient")
local BlurImg2 = Instance.new("ImageLabel")
local ScaleImg2 = Instance.new("UIScale")
local GradientImg2 = Instance.new("UIGradient")
local BlurImg3 = Instance.new("ImageLabel")
local ScaleImg3 = Instance.new("UIScale")
local GradientImg3 = Instance.new("UIGradient")
local IconScale = Instance.new("UIScale", Icon)
local LightingBlur = Instance.new("BlurEffect", game:GetService("Lighting"))

local VersionFrame = Instance.new("Frame")
local VersionCorner = Instance.new("UICorner")
local ChooseVersLabel = Instance.new("TextLabel")
local PremiumButton = Instance.new("ImageButton")
local PremiumButtonText = Instance.new("TextLabel")
local PremiumGradient = Instance.new("UIGradient")
local VersionBlur1 = Instance.new("ImageLabel")
local VersionScaleV = Instance.new("UIScale")
local VersionGradientC = Instance.new("UIGradient")
local VersionBlur2 = Instance.new("ImageLabel")
local VersionScaleN = Instance.new("UIScale")
local VersionGradientB = Instance.new("UIGradient")
local DefaultButton = Instance.new("ImageButton")
local DefaultButtonText = Instance.new("TextLabel")
local DefaultBlur1 = Instance.new("ImageLabel")
local DefaultScaleH = Instance.new("UIScale")
local DefaultBlur2 = Instance.new("ImageLabel")
local DefaultScaleG = Instance.new("UIScale")
local VersionFrameScale = Instance.new("UIScale")
VersionFrameScale.Parent = VersionFrame

local DefaultButtonStroke = Instance.new("UIStroke", DefaultButton)
local PremiumButtonStroke = Instance.new("UIStroke", PremiumButton)

local URL_MAIN_SCRIPT = "https://gist.githubusercontent.com/DeVerGoose/42b2dc5b944535771986cc656220f33f/raw/"
local URL_PREMIUM_SCRIPT = "https://gist.githubusercontent.com/DeVerGoose/c248854d3872023023f0ad9e3de00ee0/raw/"
local URL_KEYS = "https://gist.githubusercontent.com/DeVerGoose/38d660c8a44f6b61307db17f56ea3d3d/raw/"
local URL_CHANGELOG = "https://gist.githubusercontent.com/DeVerGoose/12265063f2f7c2869298c8b5551ca875/raw/"
local URL_SUBSCRIPTIONS = "https://gist.githubusercontent.com/DeVerGoose/c1a231677951ba07cb67ed9329d1c927/raw/"

DefaultButtonStroke.Color = Color3.fromRGB(0, 0, 0)
DefaultButtonStroke.StrokeSizingMode = Enum.StrokeSizingMode.ScaledSize
DefaultButtonStroke.BorderStrokePosition = Enum.BorderStrokePosition.Center
DefaultButtonStroke.Thickness = 0.1
DefaultButtonStroke.Transparency = 1

VersionFrame.Visible = false
VersionFrameScale.Scale = 0
PremiumButtonStroke.Color = Color3.fromRGB(0, 0, 0)
PremiumButtonStroke.StrokeSizingMode = Enum.StrokeSizingMode.ScaledSize
PremiumButtonStroke.BorderStrokePosition = Enum.BorderStrokePosition.Center
PremiumButtonStroke.Thickness = 0.1
PremiumButtonStroke.Transparency = 0.5

VersionFrame.Name = "VersionFrame"
VersionFrame.Parent = ScreenGui
VersionFrame.AnchorPoint = Vector2.new(0.5, 0.5)
VersionFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
VersionFrame.BackgroundTransparency = 0.3
VersionFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
VersionFrame.BorderSizePixel = 0
VersionFrame.Position = UDim2.new(0.5, 0, 0.563, 0)
VersionFrame.Size = UDim2.new(0.256, 0, 0.15, 0)
VersionFrame.ZIndex = 5

VersionCorner.CornerRadius = UDim.new(0.05, 0)
VersionCorner.Name = "UICornerz"
VersionCorner.Parent = VersionFrame

ChooseVersLabel.Name = "ChooseVersLabel"
ChooseVersLabel.Parent = VersionFrame
ChooseVersLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ChooseVersLabel.BackgroundTransparency = 1
ChooseVersLabel.BorderSizePixel = 0
ChooseVersLabel.Position = UDim2.new(0.067, 0, 0.061, 0)
ChooseVersLabel.Size = UDim2.new(0.864, 0, 0.323, 0)
ChooseVersLabel.Font = Enum.Font.Unknown
ChooseVersLabel.Text = "CHOOSE VERSION OF SCRIPT"
ChooseVersLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
ChooseVersLabel.TextScaled = true
ChooseVersLabel.TextSize = 14
ChooseVersLabel.TextWrapped = true

PremiumButton.Name = "PremiumButton"
PremiumButton.Parent = VersionFrame
PremiumButton.AnchorPoint = Vector2.new(0.5, 0.5)
PremiumButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PremiumButton.BackgroundTransparency = 0.75
PremiumButton.BorderSizePixel = 0
PremiumButton.ClipsDescendants = true
PremiumButton.Position = UDim2.new(0.746, 0, 0.721, 0)
PremiumButton.Size = UDim2.new(0.39, 0, 0.38, 0)

PremiumButtonText.Name = "ButtonText"
PremiumButtonText.Parent = PremiumButton
PremiumButtonText.BackgroundTransparency = 1
PremiumButtonText.Size = UDim2.new(1, 0, 1, 0)
PremiumButtonText.Font = Enum.Font.Unknown
PremiumButtonText.Text = "PREMIUM"
PremiumButtonText.TextColor3 = Color3.fromRGB(255, 255, 255)
PremiumButtonText.TextScaled = true
PremiumButtonText.TextSize = 14
PremiumButtonText.TextWrapped = true

ScreenGui.Name = "StartGui"
ScreenGui.Parent = PlayerGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.DisplayOrder = 5
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false

EnterButton.MouseButton1Click:Connect(function()
    local enteredKey = EnterBox.Text
    if enteredKey == "" then
        StarterGui:SetCore("SendNotification", {Title = "Error", Text = "Enter the key", Duration = 5})
        return
    end

    local keyFetchSuccess, keyListResponse = pcall(function()
        return game:HttpGet(URL_KEYS)
    end)

    if not keyFetchSuccess or not keyListResponse then
        StarterGui:SetCore("SendNotification", {Title = "Error", Text = "No response from server", Duration = 5})
        return
    end

    local keyFound = false
    for validKey in string.gmatch(keyListResponse, "[^\r\n]+") do
        if validKey == enteredKey then
            keyFound = true
            break
        end
    end

    local ownsGamePass = false
    local gpSuccess, gpResult = pcall(function()
        return MarketplaceService:UserOwnsGamePassAsync(LocalPlayer.UserId, 1837446026)
    end)
    if gpSuccess then
        ownsGamePass = gpResult
    end

    local isAuthorized = ownsGamePass or keyFound
    if isAuthorized then
        StarterGui:SetCore("SendNotification", {Title = "Success", Text = "Key accepted...", Duration = 5})
        LocalPlayer:SetAttribute("ValidOrbitKey", true)
    else
        StarterGui:SetCore("SendNotification", {Title = "Error", Text = "Invalid key", Duration = 5})
    end
end)
