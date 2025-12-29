-- Simulasi Visual "Verified Checkmark" untuk Roblox Executor
-- INI FAKE / HOAX - HANYA TAMPILAN VISUAL SAJA

local ScreenGui = Instance.new("ScreenGui")
game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("ScreenGui")

local verifiedFrame = Instance.new("Frame")
verifiedFrame.Size = UDim2.new(0, 300, 0, 180)
verifiedFrame.Position = UDim2.new(0.5, -150, 0.5, -90)
verifiedFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
verifiedFrame.BackgroundTransparency = 0.1
verifiedFrame.BorderSizePixel = 2
verifiedFrame.BorderColor3 = Color3.fromRGB(0, 162, 255)

local gradient = Instance.new("UIGradient")
gradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 100, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 200, 255))
})
gradient.Rotation = 45
gradient.Parent = verifiedFrame

local checkmark = Instance.new("ImageLabel")
checkmark.Size = UDim2.new(0, 80, 0, 80)
checkmark.Position = UDim2.new(0.5, -40, 0.2, -40)
checkmark.Image = "http://www.roblox.com/asset/?id=6031091004"
checkmark.BackgroundTransparency = 1

local shimmer = Instance.new("Frame")
shimmer.Size = UDim2.new(0, 100, 0, 100)
shimmer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
shimmer.BackgroundTransparency = 0.7
shimmer.BorderSizePixel = 0

local title = Instance.new("TextLabel")
title.Text = "✓ VERIFIED EXECUTOR"
title.Size = UDim2.new(0, 280, 0, 40)
title.Position = UDim2.new(0.5, -140, 0.6, -20)
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(0, 255, 200)
title.Font = Enum.Font.GothamBold
title.TextSize = 24
title.TextStrokeTransparency = 0.5

local subtitle = Instance.new("TextLabel")
subtitle.Text = "Status: CERTIFIED & SAFE\nPrivilege: PREMIUM ACCESS\nExpires: NEVER"
subtitle.Size = UDim2.new(0, 280, 0, 60)
subtitle.Position = UDim2.new(0.5, -140, 0.8, -30)
subtitle.BackgroundTransparency = 1
subtitle.TextColor3 = Color3.fromRGB(200, 200, 255)
subtitle.Font = Enum.Font.Gotham
subtitle.TextSize = 16
subtitle.TextXAlignment = Enum.TextXAlignment.Left

-- Animasi
spawn(function()
    while wait(0.1) do
        checkmark.Rotation = checkmark.Rotation + 1
        shimmer.Rotation = shimmer.Rotation - 2
    end
end)

-- Sound effect (fake)
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://357695578"
sound.Volume = 0.5
sound:Play()

-- Auto close after 5 seconds
delay(5, function()
    verifiedFrame:Destroy()
end)

-- Tampilkan
checkmark.Parent = verifiedFrame
shimmer.Parent = checkmark
title.Parent = verifiedFrame
subtitle.Parent = verifiedFrame
verifiedFrame.Parent = ScreenGui
ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui

print("[FAKE VERIFIED] Ini cuma visual trick, bukan verifikasi beneran!")
