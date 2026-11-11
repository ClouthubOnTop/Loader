
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer

local DISCORD = "https://discord.gg/8C47C3Wetj"

local gui = Instance.new("ScreenGui")
gui.Name = "CloutHubMaintenance"
gui.ResetOnSpawn = false
gui.Parent = game:GetService("CoreGui")

local main = Instance.new("Frame")
main.Size = UDim2.new(0, 340, 0, 225)
main.Position = UDim2.new(0.5, -170, 0.5, -112)
main.BackgroundColor3 = Color3.fromRGB(20, 21, 28)
main.BorderSizePixel = 0
main.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = main

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(65, 67, 80)
stroke.Thickness = 1
stroke.Parent = main

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -30, 0, 35)
title.Position = UDim2.new(0, 15, 0, 15)
title.BackgroundTransparency = 1
title.Text = "CloutHub | Maintenance"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 20
title.Font = Enum.Font.GothamBold
title.Parent = main

local status = Instance.new("TextLabel")
status.Size = UDim2.new(1, -30, 0, 25)
status.Position = UDim2.new(0, 15, 0, 58)
status.BackgroundTransparency = 1
status.Text = "ALL SCRIPTS TEMPORARILY DOWN"
status.TextColor3 = Color3.fromRGB(255, 85, 85)
status.TextSize = 12
status.Font = Enum.Font.GothamBold
status.Parent = main

local desc = Instance.new("TextLabel")
desc.Size = UDim2.new(1, -40, 0, 65)
desc.Position = UDim2.new(0, 20, 0, 90)
desc.BackgroundTransparency = 1
desc.Text = "All CloutHub scripts are currently unavailable due to an internal issue.\n\nPlease join our Discord server for updates and further information."
desc.TextColor3 = Color3.fromRGB(190, 190, 200)
desc.TextSize = 12
desc.Font = Enum.Font.Gotham
desc.TextWrapped = true
desc.Parent = main

local discord = Instance.new("TextButton")
discord.Size = UDim2.new(1, -40, 0, 38)
discord.Position = UDim2.new(0, 20, 1, -52)
discord.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
discord.Text = "JOIN DISCORD"
discord.TextColor3 = Color3.new(1, 1, 1)
discord.TextSize = 13
discord.Font = Enum.Font.GothamBold
discord.AutoButtonColor = true
discord.Parent = main

local btnCorner = Instance.new("UICorner")
btnCorner.CornerRadius = UDim.new(0, 8)
btnCorner.Parent = discord

discord.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(DISCORD)
        discord.Text = "INVITE COPIED!"
        task.wait(2)
        discord.Text = "JOIN DISCORD"
    else
        discord.Text = "COPY NOT SUPPORTED"
        task.wait(2)
        discord.Text = "JOIN DISCORD"
    end
end)

main.Size = UDim2.new(0, 0, 0, 0)
TweenService:Create(main, TweenInfo.new(0.4, Enum.EasingStyle.Back), {
    Size = UDim2.new(0, 340, 0, 225)
}):Play()
