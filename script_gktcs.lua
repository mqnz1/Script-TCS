local _a = game:GetService(string.char(80,108,97,121,101,114,115))
local _b = game:GetService(string.char(87,111,114,107,115,112,97,99,101))
local _c = game:GetService(string.char(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101))
local _d = game:GetService(string.char(67,111,114,101,71,117,105))

local _e = _a.LocalPlayer
local _f = false
local _g = false
local _h = 0

local _i = {
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

local _j
do
    local _k = Instance.new(string.char(83,99,114,101,101,110,71,117,105))
    _k.Name = string.char(82,101,97,99,104,71,85,73)
    _k.ResetOnSpawn = false
    _k.IgnoreGuiInset = true
    _k.DisplayOrder = 999

    local _l = Instance.new(string.char(70,114,97,109,101))
    _l.Size = UDim2.new(0, 220, 0, 30)
    _l.Position = UDim2.new(0.5, -110, 0, 50)
    _l.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    _l.BackgroundTransparency = 0.5
    _l.BorderSizePixel = 0
    _l.Parent = _k

    local _m = Instance.new(string.char(85,73,67,111,114,110,101,114))
    _m.CornerRadius = UDim.new(0, 6)
    _m.Parent = _l

    _j = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
    _j.Size = UDim2.new(1, 0, 1, 0)
    _j.BackgroundTransparency = 1
    _j.Text = "🔴 REACH: OFF"
    _j.TextColor3 = Color3.fromRGB(255, 70, 70)
    _j.TextScaled = true
    _j.Font = Enum.Font.GothamBold
    _j.Parent = _l

    local _n = pcall(function()
        _k.Parent = _d
    end)
    if not _n then
        _k.Parent = _e:WaitForChild(string.char(80,108,97,121,101,114,71,117,105))
    end
end

local function _o()
    if _f then
        _j.Text = "🟢 REACH: ON"
        _j.TextColor3 = Color3.fromRGB(70, 255, 70)
    else
        _j.Text = "🔴 REACH: OFF"
        _j.TextColor3 = Color3.fromRGB(255, 70, 70)
    end
end

local function _p()
    local _q, _r = {}, {}
    for _, _s in pairs(_b:GetDescendants()) do
        if _s:IsA(string.char(66,97,115,101,80,97,114,116)) and _s.Name == string.char(84,80,83) then
            _q[#_q + 1] = _s
            _r[_s] = true
        end
    end
    for _, _s in pairs(_b:GetDescendants()) do
        if not _r[_s] and _s:IsA(string.char(66,97,115,101,80,97,114,116)) and _s.Size == Vector3.new(2.5, 2.5, 2.5) then
            _q[#_q + 1] = _s
            _r[_s] = true
        end
    end
    for _, _s in pairs(_b:GetDescendants()) do
        if not _r[_s] and _s:IsA(string.char(66,97,115,101,80,97,114,116)) then
            local _t = _s.Name:lower()
            if _t:find(string.char(98,97,108,108)) or _t:find(string.char(98,111,108,97)) or _t:find(string.char(102,111,111,116,98,97,108,108)) then
                _q[#_q + 1] = _s
                _r[_s] = true
            end
        end
    end
    return _q
end

local function _u(_v)
    local _w = _p()
    if #_w == 0 then
        return nil, 0, 0
    end
    local _x, _y = nil, math.huge
    for _, _s in pairs(_w) do
        local _z = (_v - _s.Position).Magnitude
        if _z < _y then
            _y = _z
            _x = _s
        end
    end
    return _x, _y, #_w
end

local function _aa(_ab)
    local _ac = _e.Character
    if not _ac then return false end

    local _ad = _ac:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
    if not _ad then return false end

    pcall(function()
        firetouchinterest(_ad, _ab, 0)
    end)

    return true
end

local function _ae()
    if _g then return end
    _g = true

    pcall(function()
        local _ac = _e.Character
        if not _ac then
            print("[Reach] ❌ Sem character")
            return
        end

        local _ad = _ac:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
        if not _ad then
            print("[Reach] ❌ Sem HumanoidRootPart")
            return
        end

        local _ab, _af, _ag = _u(_ad.Position)
        if not _ab then
            print("[Reach] ❌ Nenhuma bola no campo!")
            return
        end

        print("[Reach] 🎯 " .. _ab.Name .. " | " .. math.floor(_af) .. " studs")
        _aa(_ab)
        print("[Reach] ✅ Firetouch enviado (sem mover corpo)")
    end)

    task.wait(0.15)
    _g = false
end

_c.InputBegan:Connect(function(_ah, _ai)
    if _ai then return end
    if _ah.UserInputType ~= Enum.UserInputType.Keyboard then return end

    if _ah.KeyCode == Enum.KeyCode.F6 then
        _f = not _f
        _o()
        print("[Reach] " .. (_f and "🟢 LIGADO" or "🔴 DESLIGADO"))
        return
    end

    if not _f then return end
    if not _i[_ah.KeyCode] then return end

    local _aj = tick()
    if _aj - _h < 0.35 then return end
    _h = _aj

    local _ac = _e.Character
    if not _ac then return end

    local _ak = _ac:FindFirstChildOfClass(string.char(84,111,111,108))
    if not _ak or not _ak.Name:lower():find(string.char(103,107)) then
        print("[Reach] ⚠️ Equipe a tool GK!")
        return
    end

    print("[Reach] 🔑 " .. _ah.KeyCode.Name)
    task.spawn(_ae)
end)

_o()

print("")
print("╔══════════════════════════════════════╗")
print("║  🏐 TPS Ball Reach Expander v21      ║")
print("║  Toggle: F6                         ║")
print("║  Sem tremor, sem teleporte          ║")
print("║  Firetouch limpo (1x)               ║")
print("║  Teclas: F/Q/E/Z/C                  ║")
print("╚══════════════════════════════════════╝")
