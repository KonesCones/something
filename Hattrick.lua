local menu = Instance.new("ScreenGui")
menu.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Parent = menu
frame.Size = UDim2.new(0, 200, 0, 300)
frame.Position = UDim2.new(0.5, -100, 0.5, -150)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.Visible = false

local button = Instance.new("ImageButton")
button.Parent = game.Workspace
button.Size = UDim2.new(0, 50, 0, 50)
button.Position = UDim2.new(0, 100, 0, 50)
button.Image = "rbxassetid://<insert image id>"

button.MouseButton1Click:Connect(function()
  frame.Visible = not frame.Visible
end)
