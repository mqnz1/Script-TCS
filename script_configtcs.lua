local _a = game:GetService(string.char(80,108,97,121,101,114,115))
local _b = game:GetService(string.char(76,105,103,104,116,105,110,103))
local _c = game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))
local _d = game:GetService(string.char(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101))

local _e = _a.LocalPlayer
local _f = workspace:FindFirstChildOfClass(string.char(84,101,114,114,97,105,110))
local _g = workspace.CurrentCamera

local function _h()
    _g = workspace.CurrentCamera
    if _g then
        _g.FieldOfView = 99
    end
end

_h()

workspace:GetPropertyChangedSignal(string.char(67,117,114,114,101,110,116,67,97,109,101,114,97)):Connect(_h)

_c.RenderStepped:Connect(function()
    if _g and _g.FieldOfView ~= 99 then
        _g.FieldOfView = 99
    end
end)

local _d = game:GetService(string.char(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101))
local _a = game:GetService(string.char(80,108,97,121,101,114,115))

local _e = _a.LocalPlayer

_d.InputBegan:Connect(function(_i)
    if _i.KeyCode == Enum.KeyCode.F7 then
        if _e.Character then
            _e.Character:BreakJoints()
        end
    end
end)

_b.GlobalShadows = false
_b.FogEnd = 999999999
_b.Brightness = 0

pcall(function()
    _b.EnvironmentDiffuseScale = 0
    _b.EnvironmentSpecularScale = 0
    _b.Technology = Enum.Technology.Compatibility
end)

if _f then
    _f.WaterWaveSize = 0
    _f.WaterWaveSpeed = 0
    _f.WaterReflectance = 0
    _f.WaterTransparency = 1
end

local function _j(_o)
    if _o:IsA(string.char(66,97,115,101,80,97,114,116)) then
        _o.Material = Enum.Material.SmoothPlastic
        _o.Reflectance = 0
        _o.CastShadow = false
    end

    if _o:IsA(string.char(83,117,114,102,97,99,101,65,112,112,101,97,114,97,110,99,101)) then
        pcall(function()
            _o:Destroy()
        end)
        return
    end

    if _o:IsA(string.char(80,97,114,116,105,99,108,101,69,109,105,116,116,101,114))
        or _o:IsA(string.char(84,114,97,105,108))
        or _o:IsA(string.char(83,109,111,107,101))
        or _o:IsA(string.char(70,105,114,101))
        or _o:IsA(string.char(83,112,97,114,107,108,101,115))
        or _o:IsA(string.char(66,101,97,109)) then

        pcall(function()
            _o:Destroy()
        end)
        return
    end

    if _o:IsA(string.char(80,111,105,110,116,76,105,103,104,116))
        or _o:IsA(string.char(83,112,111,116,76,105,103,104,116))
        or _o:IsA(string.char(83,117,114,102,97,99,101,76,105,103,104,116)) then

        _o.Enabled = false
        return
    end

    if _o:IsA(string.char(66,108,111,111,109,69,102,102,101,99,116))
        or _o:IsA(string.char(66,108,117,114,69,102,102,101,99,116))
        or _o:IsA(string.char(67,111,108,111,114,67,111,114,114,101,99,116,105,111,110,69,102,102,101,99,116))
        or _o:IsA(string.char(68,101,112,116,104,79,102,70,105,101,108,100,69,102,102,101,99,116))
        or _o:IsA(string.char(83,117,110,82,97,121,115,69,102,102,101,99,116)) then

        _o.Enabled = false
        return
    end

    if _o:IsA(string.char(83,107,121)) then
        pcall(function()
            _o:Destroy()
        end)
    end
end

for _, _o in ipairs(workspace:GetDescendants()) do
    pcall(_j, _o)
end

workspace.DescendantAdded:Connect(function(_o)
    pcall(_j, _o)
end)

local function _k(_r)
    local _p = _r:FindFirstChild(string.char(72,101,97,100))

    if not _p then
        return
    end

    for _, _o in ipairs(_p:GetChildren()) do
        if _o:IsA(string.char(68,101,99,97,108)) then
            _o.Transparency = 0
        end
    end
end

for _, _q in ipairs(_a:GetPlayers()) do
    if _q.Character then
        _k(_q.Character)
    end

    _q.CharacterAdded:Connect(function(_r)
        task.wait(0.2)
        _k(_r)
    end)
end

_a.PlayerAdded:Connect(function(_q)
    _q.CharacterAdded:Connect(function(_r)
        task.wait(0.2)
        _k(_r)
    end)
end)

workspace.DescendantAdded:Connect(function(_o)
    if _o:IsA(string.char(68,101,99,97,108))
        and _o.Parent
        and _o.Parent.Name == string.char(72,101,97,100) then

        _o.Transparency = 0
    end
end)

local _a = game:GetService(string.char(80,108,97,121,101,114,115))
local _b = game:GetService(string.char(76,105,103,104,116,105,110,103))
local _c = game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))
local _d = game:GetService(string.char(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101))

local _e = _a.LocalPlayer
local _f = workspace:FindFirstChildOfClass(string.char(84,101,114,114,97,105,110))
local _g = workspace.CurrentCamera

local function _h()
    _g = workspace.CurrentCamera
    if _g then
        _g.FieldOfView = 99
    end
end

_h()

workspace:GetPropertyChangedSignal(string.char(67,117,114,114,101,110,116,67,97,109,101,114,97)):Connect(_h)

_c.RenderStepped:Connect(function()
    if _g and _g.FieldOfView ~= 99 then
        _g.FieldOfView = 99
    end
end)

local _d = game:GetService(string.char(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101))
local _a = game:GetService(string.char(80,108,97,121,101,114,115))

local _e = _a.LocalPlayer

_d.InputBegan:Connect(function(_i)
    if _i.KeyCode == Enum.KeyCode.F7 then
        if _e.Character then
            _e.Character:BreakJoints()
        end
    end
end)

_b.GlobalShadows = false
_b.FogEnd = 999999999
_b.Brightness = 0

pcall(function()
    _b.EnvironmentDiffuseScale = 0
    _b.EnvironmentSpecularScale = 0
    _b.Technology = Enum.Technology.Compatibility
end)

if _f then
    _f.WaterWaveSize = 0
    _f.WaterWaveSpeed = 0
    _f.WaterReflectance = 0
    _f.WaterTransparency = 1
end

local function _j(_o)
    if _o:IsA(string.char(66,97,115,101,80,97,114,116)) then
        _o.Material = Enum.Material.SmoothPlastic
        _o.Reflectance = 0
        _o.CastShadow = false
    end

    if _o:IsA(string.char(83,117,114,102,97,99,101,65,112,112,101,97,114,97,110,99,101)) then
        pcall(function()
            _o:Destroy()
        end)
        return
    end

    if _o:IsA(string.char(80,97,114,116,105,99,108,101,69,109,105,116,116,101,114))
        or _o:IsA(string.char(84,114,97,105,108))
        or _o:IsA(string.char(83,109,111,107,101))
        or _o:IsA(string.char(70,105,114,101))
        or _o:IsA(string.char(83,112,97,114,107,108,101,115))
        or _o:IsA(string.char(66,101,97,109)) then

        pcall(function()
            _o:Destroy()
        end)
        return
    end

    if _o:IsA(string.char(80,111,105,110,116,76,105,103,104,116))
        or _o:IsA(string.char(83,112,111,116,76,105,103,104,116))
        or _o:IsA(string.char(83,117,114,102,97,99,101,76,105,103,104,116)) then

        _o.Enabled = false
        return
    end

    if _o:IsA(string.char(66,108,111,111,109,69,102,102,101,99,116))
        or _o:IsA(string.char(66,108,117,114,69,102,102,101,99,116))
        or _o:IsA(string.char(67,111,108,111,114,67,111,114,114,101,99,116,105,111,110,69,102,102,101,99,116))
        or _o:IsA(string.char(68,101,112,116,104,79,102,70,105,101,108,100,69,102,102,101,99,116))
        or _o:IsA(string.char(83,117,110,82,97,121,115,69,102,102,101,99,116)) then

        _o.Enabled = false
        return
    end

    if _o:IsA(string.char(83,107,121)) then
        pcall(function()
            _o:Destroy()
        end)
    end
end

for _, _o in ipairs(workspace:GetDescendants()) do
    pcall(_j, _o)
end

workspace.DescendantAdded:Connect(function(_o)
    pcall(_j, _o)
end)

local function _k(_r)
    local _p = _r:FindFirstChild(string.char(72,101,97,100))

    if not _p then
        return
    end

    for _, _o in ipairs(_p:GetChildren()) do
        if _o:IsA(string.char(68,101,99,97,108)) then
            _o.Transparency = 0
        end
    end
end

for _, _q in ipairs(_a:GetPlayers()) do
    if _q.Character then
        _k(_q.Character)
    end

    _q.CharacterAdded:Connect(function(_r)
        task.wait(0.2)
        _k(_r)
    end)
end

_a.PlayerAdded:Connect(function(_q)
    _q.CharacterAdded:Connect(function(_r)
        task.wait(0.2)
        _k(_r)
    end)
end)

workspace.DescendantAdded:Connect(function(_o)
    if _o:IsA(string.char(68,101,99,97,108))
        and _o.Parent
        and _o.Parent.Name == string.char(72,101,97,100) then

        _o.Transparency = 0
    end
end)

local _c = game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))
local _w = game.Workspace

local function _m(_n)
    _c.Heartbeat:Connect(function()
        if not _n or not _n.Parent then return end

        local _u = (tick() * 0.25) % 1
        local _v = Color3.fromHSV(_u, 1, 1)

        if _n:IsA(string.char(66,97,115,101,80,97,114,116)) then
            _n.Color = _v
        end

        for _, _x in ipairs(_n:GetDescendants()) do
            if _x:IsA(string.char(66,97,115,101,80,97,114,116)) then
                _x.Color = _v
            elseif _x:IsA(string.char(68,101,99,97,108)) then
                _x.Color3 = _v
            elseif _x:IsA(string.char(84,101,120,116,117,114,101)) then
                _x.Color3 = _v
            end
        end
    end)
end

local _l = _w:FindFirstChild(string.char(84,80,83))
if _l then
    _m(_l)
end

_w.ChildAdded:Connect(function(_o)
    if _o.Name == string.char(84,80,83) then
        task.wait(0.1)
        _m(_o)
    end
end)
