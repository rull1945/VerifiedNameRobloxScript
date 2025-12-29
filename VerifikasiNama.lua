-- [X-VOID] FAKE VERIFIED NAME VISUAL - FISHING SIMULATOR / FISH IT
-- INI CUMA VISUAL FAKE DI CLIENT LO DOANG!

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

-- Hapus tag lama jika ada
for _, obj in pairs(Character:GetChildren()) do
    if obj.Name == "VerifiedTag_XVoid" then
        obj:Destroy()
    end
end

-- Buat Billboard GUI di atas kepala
local BillboardGui = Instance.new("BillboardGui")
BillboardGui.Name = "VerifiedTag_XVoid"
BillboardGui.Adornee = HumanoidRootPart
BillboardGui.Size = UDim2.new(0, 200, 0, 100)
BillboardGui.StudsOffset = Vector3.new(0, 3.5, 0)
BillboardGui.AlwaysOnTop = true
BillboardGui.MaxDistance = 100
BillboardGui.ResetOnSpawn = false

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.BackgroundTransparency = 1

-- Nama dengan verified badge
local NameLabel = Instance.new("TextLabel")
NameLabel.Text = LocalPlayer.Name
NameLabel.Size = UDim2.new(1, 0, 0.6, 0)
NameLabel.Position = UDim2.new(0, 0, 0.2, 0)
NameLabel.BackgroundTransparency = 1
NameLabel.TextColor3 = Color3.fromRGB(0, 162, 255)
NameLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
NameLabel.TextStrokeTransparency = 0.5
NameLabel.Font = Enum.Font.GothamBold
NameLabel.TextSize = 18

-- Verified badge emoji di samping nama
local VerifiedBadge = Instance.new("TextLabel")
VerifiedBadge.Text = "✓"
VerifiedBadge.Size = UDim2.new(0, 20, 0, 20)
VerifiedBadge.Position = UDim2.new(1, 5, 0.2, 0)
VerifiedBadge.BackgroundTransparency = 1
VerifiedBadge.TextColor3 = Color3.fromRGB(0, 255, 200)
VerifiedBadge.TextStrokeColor3 = Color3.fromRGB(0, 50, 100)
VerifiedBadge.TextStrokeTransparency = 0.3
VerifiedBadge.Font = Enum.Font.GothamBold
VerifiedBadge.TextSize = 16

-- Subtitle "VERIFIED"
local SubLabel = Instance.new("TextLabel")
SubLabel.Text = "VERIFIED PLAYER"
SubLabel.Size = UDim2.new(1, 0, 0.4, 0)
SubLabel.Position = UDim2.new(0, 0, 0.6, 0)
SubLabel.BackgroundTransparency = 1
SubLabel.TextColor3 = Color3.fromRGB(0, 255, 150)
SubLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
SubLabel.TextStrokeTransparency = 0.5
SubLabel.Font = Enum.Font.Gotham
SubLabel.TextSize = 12

-- Animasi glow
local UIGradient = Instance.new("UIGradient")
UIGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 100, 255)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 100, 255))
})
UIGradient.Rotation = 45

-- Efek sinar
local GlowFrame = Instance.new("Frame")
GlowFrame.Size = UDim2.new(1, 40, 1, 40)
GlowFrame.Position = UDim2.new(0, -20, 0, -20)
GlowFrame.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
GlowFrame.BackgroundTransparency = 0.8
GlowFrame.BorderSizePixel = 0

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 20)

-- Assembly
Frame.Parent = BillboardGui
GlowFrame.Parent = Frame
UICorner.Parent = GlowFrame
NameLabel.Parent = Frame
VerifiedBadge.Parent = NameLabel
SubLabel.Parent = Frame
UIGradient.Parent = SubLabel

-- Koneksi untuk update position saat respawn
LocalPlayer.CharacterAdded:Connect(function(newChar)
    HumanoidRootPart = newChar:WaitForChild("HumanoidRootPart")
    BillboardGui.Adornee = HumanoidRootPart
end)

-- Animasi
spawn(function()
    while BillboardGui.Parent do
        UIGradient.Offset = Vector2.new(math.sin(tick() * 2) * 0.5, 0)
        GlowFrame.BackgroundTransparency = 0.7 + math.sin(tick() * 3) * 0.1
        VerifiedBadge.Rotation = math.sin(tick() * 2) * 5
        wait(0.05)
    end
end)

BillboardGui.Parent = Character

print("[X-VOID] Fake Verified Name Activated - Hanya kamu yang lihat!")
