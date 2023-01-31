local menu = Instance.new("ScreenGui")
menu.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Parent = menu
frame.Size = UDim2.new(0, 200, 0, 300)
frame.Position = UDim2.new(0.5, -100, 0.5, -150)
frame.BackgroundColor3 = Color3.new(1, 1, 1)

local openButton = Instance.new("TextButton")
openButton.Parent = game.Workspace
openButton.Size = UDim2.new(0, 100, 0, 50)
openButton.Text = "Open"
openButton.Position = UDim2.new(0.5, -50, 0, 50)

openButton.MouseButton1Click:Connect(function()
  frame.Visible = true
end)

local closeButton = Instance.new("TextButton")
closeButton.Parent = frame
closeButton.Size = UDim2.new(0, 100, 0, 50)
closeButton.Text = "Close"
closeButton.Position = UDim2.new(0.5, -50, 1, -50)

closeButton.MouseButton1Click:Connect(function()
  frame.Visible = false
end)

local dragBar = Instance.new("Frame")
dragBar.Parent = frame
dragBar.Size = UDim2.new(1, 0, 0, 50)
dragBar.Position = UDim2.new(0, 0, 0, -25)
dragBar.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)

dragBar.MouseEnter:Connect(function()
  dragBar.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
end)

dragBar.MouseLeave:Connect(function()
  dragBar.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
end)

local function startDrag()
  local mouse = game.Players.LocalPlayer:GetMouse()
  local dragStart = mouse.Hit.p
  local startPos = frame.Position

  while mouse.Button1 do
    local delta = mouse.Hit.p - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    wait()
  end
end

dragBar.MouseButton1Down:Connect(function()
  startDrag()
end)
