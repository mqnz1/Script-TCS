--[[
   HackerAI - TPS Ball Reach Expander v21 (F6 Toggle)
   - Toggle: F6
   - NÃO move corpo, sem tremor, sem teleporte
   - Firetouchinterest limpo (1x da HRP)
   - GUI corrigida para mostrar ON/OFF
--]]

local Players = game:GetService("Players")
local LP = Players.LocalPlayer
local Workspace = game:GetService("Workspace")
local UIS = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

local CAPTURE_KEYS = {
    [Enum.KeyCode.F] = true,
    [Enum.KeyCode.Q] = true,
    [Enum.KeyCode.E] = true,
    [Enum.KeyCode.Z] = true,
    [Enum.KeyCode.C] = true,
    [Enum.KeyCode.T] = true,
    [Enum.KeyCode.H] = true,
    [Enum.KeyCode.X] = true,
    [Enum.KeyCode.R] = true,
}

local isEnabled = false
local isMoving = false
local lastKeyTime = 0

--[[ GUI ]]
local statusLabel
do
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "ReachGUI"
    screenGui.ResetOnSpawn = false
    screenGui.IgnoreGuiInset = true
    screenGui.DisplayOrder = 999

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 220, 0, 30)
    frame.Position = UDim2.new(0.5, -110, 0, 50)
    frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    frame.BackgroundTransparency = 0.5
    frame.BorderSizePixel = 0
    frame.Parent = screenGui

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = frame

    statusLabel = Instance.new("TextLabel")
    statusLabel.Size = UDim2.new(1, 0, 1, 0)
    statusLabel.BackgroundTransparency = 1
    statusLabel.Text = "🔴 REACH: OFF"
    statusLabel.TextColor3 = Color3.fromRGB(255, 70, 70)
    statusLabel.TextScaled = true
    statusLabel.Font = Enum.Font.GothamBold
    statusLabel.Parent = frame

    -- Tenta colocar no CoreGui, se falhar usa PlayerGui
    local ok = pcall(function()
        screenGui.Parent = CoreGui
    end)
    if not ok then
        screenGui.Parent = LP:WaitForChild("PlayerGui")
    end
end

local function updateStatus()
    if isEnabled then
        statusLabel.Text = "🟢 REACH: ON"
        statusLabel.TextColor3 = Color3.fromRGB(70, 255, 70)
    else
        statusLabel.Text = "🔴 REACH: OFF"
        statusLabel.TextColor3 = Color3.fromRGB(255, 70, 70)
    end
end

--[[ FIND BALLS ]]
local function findAllBalls()
    local balls, checked = {}, {}
    for _, obj in pairs(Workspace:GetDescendants()) do
        if obj:IsA("BasePart") and obj.Name == "TPS" then
            balls[#balls + 1] = obj
            checked[obj] = true
        end
    end
    for _, obj in pairs(Workspace:GetDescendants()) do
        if not checked[obj] and obj:IsA("BasePart") and obj.Size == Vector3.new(2.5, 2.5, 2.5) then
            balls[#balls + 1] = obj
            checked[obj] = true
        end
    end
    for _, obj in pairs(Workspace:GetDescendants()) do
        if not checked[obj] and obj:IsA("BasePart") then
            local n = obj.Name:lower()
            if n:find("ball") or n:find("bola") or n:find("football") then
                balls[#balls + 1] = obj
                checked[obj] = true
            end
        end
    end
    return balls
end

local function findClosestBall(hrpPos)
    local balls = findAllBalls()
    if #balls == 0 then
        return nil, 0, 0
    end
    local target, minDist = nil, math.huge
    for _, ball in pairs(balls) do
        local d = (hrpPos - ball.Position).Magnitude
        if d < minDist then
            minDist = d
            target = ball
        end
    end
    return target, minDist, #balls
end

--[[ CAPTURA LIMPA ]]
local function captureBall(ball)
    local char = LP.Character
    if not char then return false end

    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hrp then return false end

    pcall(function()
        firetouchinterest(hrp, ball, 0)
    end)

    return true
end

--[[ AÇÃO ]]
local function doCapture()
    if isMoving then return end
    isMoving = true

    pcall(function()
        local char = LP.Character
        if not char then
            print("[Reach] ❌ Sem character")
            return
        end

        local hrp = char:FindFirstChild("HumanoidRootPart")
        if not hrp then
            print("[Reach] ❌ Sem HumanoidRootPart")
            return
        end

        local ball, dist, total = findClosestBall(hrp.Position)
        if not ball then
            print("[Reach] ❌ Nenhuma bola no campo!")
            return
        end

        print("[Reach] 🎯 " .. ball.Name .. " | " .. math.floor(dist) .. " studs")
        captureBall(ball)
        print("[Reach] ✅ Firetouch enviado (sem mover corpo)")
    end)

    task.wait(0.15)
    isMoving = false
end

--[[ INPUT ]]
UIS.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.UserInputType ~= Enum.UserInputType.Keyboard then return end

    -- Toggle com F6
    if input.KeyCode == Enum.KeyCode.F6 then
        isEnabled = not isEnabled
        updateStatus()
        print("[Reach] " .. (isEnabled and "🟢 LIGADO" or "🔴 DESLIGADO"))
        return
    end

    if not isEnabled then return end
    if not CAPTURE_KEYS[input.KeyCode] then return end

    local now = tick()
    if now - lastKeyTime < 0.35 then return end
    lastKeyTime = now

    local char = LP.Character
    if not char then return end

    local tool = char:FindFirstChildOfClass("Tool")
    if not tool or not tool.Name:lower():find("gk") then
        print("[Reach] ⚠️ Equipe a tool GK!")
        return
    end

    print("[Reach] 🔑 " .. input.KeyCode.Name)
    task.spawn(doCapture)
end)

updateStatus()

print("")
print("╔══════════════════════════════════════╗")
print("║  🏐 TPS Ball Reach Expander v21      ║")
print("║  Toggle: F6                         ║")
print("║  Sem tremor, sem teleporte          ║")
print("║  Firetouch limpo (1x)               ║")
print("║  Teclas: F/Q/E/Z/C                  ║")
print("╚══════════════════════════════════════╝")
