-- _EmBLzjUugyvigY build:6613


local _GhrIeak = game:GetService(string.char(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101))
local _TgwaMQS = game:GetService(string.char(84,119,101,101,110,83,101,114,118,105,99,101))
local _vdwzJJM = game:GetService(string.char(83,116,97,114,116,101,114,71,117,105))
local _tMfphgu = game:GetService(string.char(80,108,97,121,101,114,115))
local _xrjwINt = game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))
local _HsMUCSV = game:GetService(string.char(72,116,116,112,83,101,114,118,105,99,101))

local _wdFNqbD = _tMfphgu.LocalPlayer

local _UMxtECh = string.char(73,105,115,115,55,118,39,115,32,65,112,112,108,105,99,97,116,105,111,110)      local _nqFoaNQ = string.char(102,108,84,56,54,50,49,77,99,65)                local _nkeQxRY = string.char(49,46,48)                        local authenticated = false
local initialized = false
local sessionid = ""

local _pQAdNqZ = {}
local _KIGYIcc = os.time()
local reach = 20
local _NkjUALg = false
local _BohekzN = true
local _uoGGYMU = false
local _AuxuBBa = Enum.KeyCode.R

local function _DXUIqDy(str)
    if not str then return "" end
    str = string.gsub(str, string.char(37,37), string.char(37,37,50,53))
    str = string.gsub(str, " ", string.char(37,37,50,48))
    str = string.gsub(str, "'", string.char(37,37,50,55))
    str = string.gsub(str, '"', string.char(37,37,50,50))
    str = string.gsub(str, "#", string.char(37,37,50,51))
    str = string.gsub(str, "&", string.char(37,37,50,54))
    str = string.gsub(str, "?", string.char(37,37,51,70))
    return str
end

local function _bKbOTaJ()
    local hwid = string.char(85,110,107,110,111,119,110)
    pcall(function()
        hwid = gethwid() or get_hwid()
    end)
    if hwid == string.char(85,110,107,110,111,119,110) then
        pcall(function()
            hwid = game:GetService(string.char(82,98,120,65,110,97,108,121,116,105,99,115,83,101,114,118,105,99,101)):GetClientId()
        end)
    end
    if hwid == string.char(85,110,107,110,111,119,110) then
        hwid = tostring(_wdFNqbD.UserId)
    end
    return hwid
end

local function _okEMszQ(url)
        local _YYEPJrD, res1 = pcall(function()
        return request({ Url = url, Method = string.char(71,69,84) }).Body
    end)
    if _YYEPJrD and res1 and res1 ~= "" then return res1 end

        local _RwzdgaG, res2 = pcall(function()
        return http.request({ Url = url, Method = string.char(71,69,84) }).Body
    end)
    if _RwzdgaG and res2 and res2 ~= "" then return res2 end

        local _AQDgjIL, res3 = pcall(function()
        return syn.request({ Url = url, Method = string.char(71,69,84) }).Body
    end)
    if _AQDgjIL and res3 and res3 ~= "" then return res3 end

        local _JhtNEUH, res4 = pcall(function()
        return http_request({ Url = url, Method = string.char(71,69,84) }).Body
    end)
    if _JhtNEUH and res4 and res4 ~= "" then return res4 end

        local _OxCFHZi, res5 = pcall(function()
        return game:HttpGet(url, true)
    end)
    if _OxCFHZi and res5 and res5 ~= "" then return res5 end

    return nil
end

local _saNlxle = Instance.new(string.char(83,99,114,101,101,110,71,117,105))
local _rSFexe = nil
_saNlxle.Name = string.char(77,111,100,101,114,110,82,101,97,99,104,77,101,110,117)
_saNlxle.ResetOnSpawn = false
_saNlxle.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_saNlxle.AutoLocalize = false

pcall(function()
    _saNlxle.Parent = game:GetService(string.char(67,111,114,101,71,117,105))
end)
if _saNlxle.Parent ~= game:GetService(string.char(67,111,114,101,71,117,105)) then
    _saNlxle.Parent = _wdFNqbD:WaitForChild(string.char(80,108,97,121,101,114,71,117,105))
end

local _AWIeqwi = Instance.new(string.char(70,114,97,109,101))
_AWIeqwi.Name = string.char(75,101,121,70,114,97,109,101)
_AWIeqwi.Size = UDim2.new(0, 480, 0, 200)
_AWIeqwi.Position = UDim2.new(0.5, 0, 0.5, 0)
_AWIeqwi.AnchorPoint = Vector2.new(0.5, 0.5)
_AWIeqwi.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
_AWIeqwi.BorderSizePixel = 0
_AWIeqwi.ClipsDescendants = true
_AWIeqwi.ZIndex = 10
_AWIeqwi.Parent = _saNlxle

local _sasIFIN = Instance.new(string.char(85,73,67,111,114,110,101,114))
_sasIFIN.CornerRadius = UDim.new(0, 20)
_sasIFIN.Parent = _AWIeqwi

local _GDTzIMR = Instance.new(string.char(85,73,71,114,97,100,105,101,110,116))
_GDTzIMR.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 20, 28)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(15, 15, 20))
}
_GDTzIMR.Rotation = 45
_GDTzIMR.Parent = _AWIeqwi

local _pfnZJvl = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_pfnZJvl.Size = UDim2.new(1, 0, 0, 40)
_pfnZJvl.Position = UDim2.new(0, 0, 0, 20)
_pfnZJvl.BackgroundTransparency = 1
_pfnZJvl.Text = string.char(65,67,69,83,83,79,32,82,69,83,84,82,73,84,79)
local _cWPhqz = nil
_pfnZJvl.TextColor3 = Color3.fromRGB(255, 255, 255)
_pfnZJvl.TextSize = 18
_pfnZJvl.Font = Enum.Font.GothamBold
_pfnZJvl.Parent = _AWIeqwi

local _EcFhnrR = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_EcFhnrR.Size = UDim2.new(1, 0, 0, 20)
_EcFhnrR.Position = UDim2.new(0, 0, 0, 60)
_EcFhnrR.BackgroundTransparency = 1
_EcFhnrR.Text = string.char(68,105,103,105,116,101,32,97,32,99,104,97,118,101,32,100,101,32,97,99,101,115,115,111)
_EcFhnrR.TextColor3 = Color3.fromRGB(120, 120, 130)
_EcFhnrR.TextSize = 12
_EcFhnrR.Font = Enum.Font.Gotham
_EcFhnrR.Parent = _AWIeqwi

local _wShGgEE = Instance.new(string.char(84,101,120,116,66,111,120))
_wShGgEE.Size = UDim2.new(1, -40, 0, 35)
_wShGgEE.Position = UDim2.new(0, 20, 0, 85)
_wShGgEE.BackgroundColor3 = Color3.fromRGB(30, 30, 38)
_wShGgEE.BorderSizePixel = 0
_wShGgEE.Text = ""
_wShGgEE.TextColor3 = Color3.fromRGB(255, 255, 255)
_wShGgEE.TextSize = 11
_wShGgEE.Font = Enum.Font.GothamMedium
_wShGgEE.PlaceholderText = string.char(67,111,108,101,32,115,117,97,32,99,104,97,118,101,32,97,113,117,105,46,46,46)
_wShGgEE.PlaceholderColor3 = Color3.fromRGB(90, 90, 100)
_wShGgEE.ClearTextOnFocus = false
_wShGgEE.ClipsDescendants = true
_wShGgEE.ZIndex = 11
_wShGgEE.Parent = _AWIeqwi

local _MzeZTmD = Instance.new(string.char(85,73,80,97,100,100,105,110,103))
_MzeZTmD.PaddingLeft = UDim.new(0, 10)
_MzeZTmD.PaddingRight = UDim.new(0, 10)
_MzeZTmD.Parent = _wShGgEE

local _GZAsMNT = Instance.new(string.char(85,73,67,111,114,110,101,114))
_GZAsMNT.CornerRadius = UDim.new(0, 10)
_GZAsMNT.Parent = _wShGgEE

local _XBxNpTT = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_XBxNpTT.Name = string.char(69,114,114,111,114,76,97,98,101,108)
_XBxNpTT.Size = UDim2.new(1, -40, 0, 15)
_XBxNpTT.Position = UDim2.new(0, 20, 0, 122)
_XBxNpTT.BackgroundTransparency = 1
_XBxNpTT.Text = ""
_XBxNpTT.TextColor3 = Color3.fromRGB(255, 50, 50)
_XBxNpTT.TextSize = 12
_XBxNpTT.Font = Enum.Font.GothamBold
_XBxNpTT.TextTransparency = 1
_XBxNpTT.Parent = _AWIeqwi

local _GiVGarM = Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_GiVGarM.Size = UDim2.new(1, -40, 0, 40)
_GiVGarM.Position = UDim2.new(0, 20, 0, 138)
_GiVGarM.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
_GiVGarM.BorderSizePixel = 0
_GiVGarM.Text = string.char(69,78,84,82,65,82)
_GiVGarM.TextColor3 = Color3.fromRGB(255, 255, 255)
_GiVGarM.TextSize = 16
local _dGoYXV = true
_GiVGarM.Font = Enum.Font.GothamBold
_GiVGarM.AutoButtonColor = false
_GiVGarM.ZIndex = 11
_GiVGarM.Parent = _AWIeqwi

local _rFeKvvG = Instance.new(string.char(85,73,67,111,114,110,101,114))
_rFeKvvG.CornerRadius = UDim.new(0, 12)
_rFeKvvG.Parent = _GiVGarM

_GiVGarM.MouseEnter:Connect(function()
    _TgwaMQS:Create(_GiVGarM, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
        BackgroundColor3 = Color3.fromRGB(158, 63, 246)
    }):Play()
end)
_GiVGarM.MouseLeave:Connect(function()
    _TgwaMQS:Create(_GiVGarM, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
        BackgroundColor3 = Color3.fromRGB(138, 43, 226)
    }):Play()
end)

_wShGgEE.Focused:Connect(function()
    _XBxNpTT.TextTransparency = 1
end)

local _IEqEdkO = Instance.new(string.char(70,114,97,109,101))
_IEqEdkO.Name = string.char(77,97,105,110,70,114,97,109,101)
_IEqEdkO.Size = UDim2.new(0, 0, 0, 0)
_IEqEdkO.Position = UDim2.new(0.5, 0, 0.5, 0)
_IEqEdkO.AnchorPoint = Vector2.new(0.5, 0.5)
_IEqEdkO.BackgroundColor3 = Color3.fromRGB(10, 10, 12)
_IEqEdkO.BorderSizePixel = 0
_IEqEdkO.ClipsDescendants = true
_IEqEdkO.BackgroundTransparency = 1
_IEqEdkO.Parent = _saNlxle

local _AjAcRoE = Instance.new(string.char(85,73,67,111,114,110,101,114))
_AjAcRoE.CornerRadius = UDim.new(0, 20)
_AjAcRoE.Parent = _IEqEdkO

local _RGFqAZG = Instance.new(string.char(85,73,71,114,97,100,105,101,110,116))
local _SBDyYU = false
_RGFqAZG.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(16, 16, 20)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 10, 12))
}
_RGFqAZG.Rotation = 45
_RGFqAZG.Parent = _IEqEdkO

local _sYDbjKc = Instance.new(string.char(70,114,97,109,101))
_sYDbjKc.Name = string.char(66,111,114,100,101,114)
_sYDbjKc.Size = UDim2.new(1, 2, 1, 2)
_sYDbjKc.Position = UDim2.new(0.5, 0, 0.5, 0)
_sYDbjKc.AnchorPoint = Vector2.new(0.5, 0.5)
_sYDbjKc.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
_sYDbjKc.BackgroundTransparency = 1
_sYDbjKc.ZIndex = 0
_sYDbjKc.Parent = _IEqEdkO

local _JPGuMEU = Instance.new(string.char(85,73,67,111,114,110,101,114))
_JPGuMEU.CornerRadius = UDim.new(0, 20)
_JPGuMEU.Parent = _sYDbjKc
local _hoyrFp = tostring(50)

local _QwasFAg = Instance.new(string.char(85,73,71,114,97,100,105,101,110,116))
_QwasFAg.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(138, 43, 226)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(186, 85, 211)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(138, 43, 226))
}
_QwasFAg.Parent = _sYDbjKc

local _LRmyNiw = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_LRmyNiw.Name = string.char(84,105,116,108,101)
_LRmyNiw.Size = UDim2.new(1, 0, 0, 30)
_LRmyNiw.Position = UDim2.new(0, 0, 0, 18)
_LRmyNiw.BackgroundTransparency = 1
_LRmyNiw.Text = string.char(82,69,65,67,72)
_LRmyNiw.TextColor3 = Color3.fromRGB(255, 255, 255)
_LRmyNiw.TextSize = 16
_LRmyNiw.Font = Enum.Font.GothamBold
_LRmyNiw.TextTransparency = 1
_LRmyNiw.Parent = _IEqEdkO
local _ETSxMr = true

local _fwRbkaB = Instance.new(string.char(70,114,97,109,101))
_fwRbkaB.Name = string.char(73,110,100,105,99,97,116,111,114)
_fwRbkaB.Size = UDim2.new(0, 40, 0, 2)
_fwRbkaB.Position = UDim2.new(0.5, -20, 0, 68)
_fwRbkaB.BackgroundColor3 = Color3.fromRGB(138, 43, 226)
_fwRbkaB.BorderSizePixel = 0
_fwRbkaB.BackgroundTransparency = 1
_fwRbkaB.Visible = false
_fwRbkaB.Parent = _IEqEdkO

local _zrbzUSF = Instance.new(string.char(85,73,67,111,114,110,101,114))
_zrbzUSF.CornerRadius = UDim.new(1, 0)
_zrbzUSF.Parent = _fwRbkaB

local _pVDPoGP = Instance.new(string.char(70,114,97,109,101))
_pVDPoGP.Name = string.char(67,111,110,116,101,110,116)
_pVDPoGP.Size = UDim2.new(1, -40, 0, 110)
_pVDPoGP.Position = UDim2.new(0, 20, 0, 55)
_pVDPoGP.BackgroundTransparency = 1
local _zNaSig = true
_pVDPoGP.Parent = _IEqEdkO

local _ansVZGy = Instance.new(string.char(70,114,97,109,101))
_ansVZGy.Name = string.char(84,111,103,103,108,101,67,111,110,116,97,105,110,101,114)
_ansVZGy.Size = UDim2.new(1, 0, 0, 30)
_ansVZGy.Position = UDim2.new(0, 0, 0, 0)
_ansVZGy.BackgroundTransparency = 1
_ansVZGy.Parent = _pVDPoGP

local _tWrfWvc = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_tWrfWvc.Name = string.char(76,97,98,101,108)
_tWrfWvc.Size = UDim2.new(0.5, -10, 1, 0)
_tWrfWvc.Position = UDim2.new(0, 0, 0, 0)
_tWrfWvc.BackgroundTransparency = 1
_tWrfWvc.Text = string.char(83,84,65,84,85,83)
_tWrfWvc.TextColor3 = Color3.fromRGB(120, 120, 130)
_tWrfWvc.TextSize = 11
_tWrfWvc.Font = Enum.Font.GothamMedium
_tWrfWvc.TextXAlignment = Enum.TextXAlignment.Left
_tWrfWvc.TextTransparency = 1
_tWrfWvc.Parent = _ansVZGy

local _QEDVzvF = Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_QEDVzvF.Name = string.char(84,111,103,103,108,101,66,117,116,116,111,110)
_QEDVzvF.Size = UDim2.new(0, 44, 0, 22)
_QEDVzvF.Position = UDim2.new(1, -44, 0.5, -11)
_QEDVzvF.BackgroundColor3 = _BohekzN and Color3.fromRGB(138, 43, 226) or Color3.fromRGB(30, 30, 38)
_QEDVzvF.BorderSizePixel = 0
_QEDVzvF.Text = ""
_QEDVzvF.AutoButtonColor = false
_QEDVzvF.BackgroundTransparency = 0
_QEDVzvF.Parent = _ansVZGy

local _FsZbPeM = Instance.new(string.char(85,73,67,111,114,110,101,114))
_FsZbPeM.CornerRadius = UDim.new(1, 0)
_FsZbPeM.Parent = _QEDVzvF

local _kqmwCsG = Instance.new(string.char(70,114,97,109,101))
_kqmwCsG.Name = string.char(67,105,114,99,108,101)
_kqmwCsG.Size = UDim2.new(0, 18, 0, 18)
_kqmwCsG.Position = _BohekzN and UDim2.new(0, 24, 0.5, -9) or UDim2.new(0, 2, 0.5, -9)
_kqmwCsG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_kqmwCsG.BorderSizePixel = 0
_kqmwCsG.Parent = _QEDVzvF

local _DJXsjuO = Instance.new(string.char(85,73,67,111,114,110,101,114))
_DJXsjuO.CornerRadius = UDim.new(1, 0)
_DJXsjuO.Parent = _kqmwCsG

local _RkerxRy = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_RkerxRy.Name = string.char(83,116,97,116,117,115)
_RkerxRy.Size = UDim2.new(1, 0, 1, 0)
_RkerxRy.BackgroundTransparency = 1
_RkerxRy.Text = ""
_RkerxRy.TextColor3 = Color3.fromRGB(255, 255, 255)
_RkerxRy.TextSize = 10
_RkerxRy.Font = Enum.Font.GothamBold
_RkerxRy.Visible = false
_RkerxRy.Parent = _QEDVzvF

local _gafIUZx = Instance.new(string.char(70,114,97,109,101))
_gafIUZx.Name = string.char(75,101,121,98,105,110,100,67,111,110,116,97,105,110,101,114)
_gafIUZx.Size = UDim2.new(1, 0, 0, 30)
_gafIUZx.Position = UDim2.new(0, 0, 0, 35)
_gafIUZx.BackgroundTransparency = 1
_gafIUZx.Parent = _pVDPoGP

local _wFmIJgu = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_wFmIJgu.Name = string.char(76,97,98,101,108)
_wFmIJgu.Size = UDim2.new(0.5, -10, 1, 0)
_wFmIJgu.Position = UDim2.new(0, 0, 0, 0)
_wFmIJgu.BackgroundTransparency = 1
_wFmIJgu.Text = string.char(84,69,67,76,65)
_wFmIJgu.TextColor3 = Color3.fromRGB(120, 120, 130)
_wFmIJgu.TextSize = 11
_wFmIJgu.Font = Enum.Font.GothamMedium
_wFmIJgu.TextXAlignment = Enum.TextXAlignment.Left
_wFmIJgu.TextTransparency = 1
_wFmIJgu.Parent = _gafIUZx

local _DjYLHeR = Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_DjYLHeR.Name = string.char(75,101,121,98,105,110,100,66,117,116,116,111,110)
_DjYLHeR.Size = UDim2.new(0, 50, 0, 22)
_DjYLHeR.Position = UDim2.new(1, 0, 0.5, 0)
_DjYLHeR.AnchorPoint = Vector2.new(1, 0.5)
_DjYLHeR.BackgroundColor3 = Color3.fromRGB(22, 22, 28)
_DjYLHeR.BorderSizePixel = 0
_DjYLHeR.Text = "R"
_DjYLHeR.TextColor3 = Color3.fromRGB(200, 200, 200)
_DjYLHeR.TextSize = 11
_DjYLHeR.Font = Enum.Font.GothamBold
_DjYLHeR.AutoButtonColor = false
_DjYLHeR.BackgroundTransparency = 1
_DjYLHeR.AutomaticSize = Enum.AutomaticSize.X
_DjYLHeR.Parent = _gafIUZx

local _mDAYucy = Instance.new(string.char(85,73,67,111,114,110,101,114))
_mDAYucy.CornerRadius = UDim.new(0, 5)
_mDAYucy.Parent = _DjYLHeR

local _zhYhMff = Instance.new(string.char(85,73,80,97,100,100,105,110,103))
_zhYhMff.PaddingLeft = UDim.new(0, 8)
_zhYhMff.PaddingRight = UDim.new(0, 8)
_zhYhMff.Parent = _DjYLHeR

local _pRECTEQ = Instance.new(string.char(85,73,83,116,114,111,107,101))
_pRECTEQ.Color = Color3.fromRGB(60, 60, 70)
_pRECTEQ.Thickness = 1
_pRECTEQ.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_pRECTEQ.Parent = _DjYLHeR

local _OOangJY = Instance.new(string.char(70,114,97,109,101))
_OOangJY.Name = string.char(82,101,97,99,104,67,111,110,116,97,105,110,101,114)
_OOangJY.Size = UDim2.new(1, 0, 0, 36)
_OOangJY.Position = UDim2.new(0, 0, 0, 70)
_OOangJY.BackgroundTransparency = 1
_OOangJY.Parent = _pVDPoGP

local _ZJZyNCc = Instance.new(string.char(70,114,97,109,101))
_ZJZyNCc.Name = string.char(83,116,101,112,112,101,114)
local _GaxegV = math.floor(9)
_ZJZyNCc.Size = UDim2.new(1, -50, 1, 0)
_ZJZyNCc.Position = UDim2.new(0, 0, 0, 0)
_ZJZyNCc.BackgroundColor3 = Color3.fromRGB(22, 22, 28)
_ZJZyNCc.BorderSizePixel = 0
_ZJZyNCc.BackgroundTransparency = 1
_ZJZyNCc.Parent = _OOangJY

local _qiASSQi = Instance.new(string.char(85,73,67,111,114,110,101,114))
_qiASSQi.CornerRadius = UDim.new(1, 0)
_qiASSQi.Parent = _ZJZyNCc

local _OkUavsn = Instance.new(string.char(85,73,83,116,114,111,107,101))
_OkUavsn.Color = Color3.fromRGB(45, 45, 55)
_OkUavsn.Thickness = 1
_OkUavsn.Parent = _ZJZyNCc

local _mAdxpsp = Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_mAdxpsp.Name = string.char(68,101,99,114,101,97,115,101,66,116,110)
_mAdxpsp.Size = UDim2.new(0, 36, 1, 0)
_mAdxpsp.Position = UDim2.new(0, 0, 0, 0)
local _gxFOYB = true
_mAdxpsp.BackgroundTransparency = 1
_mAdxpsp.Text = "−"
_mAdxpsp.TextColor3 = Color3.fromRGB(200, 200, 200)
_mAdxpsp.TextSize = 16
_mAdxpsp.Font = Enum.Font.GothamBold
_mAdxpsp.AutoButtonColor = false
_mAdxpsp.TextTransparency = 1
_mAdxpsp.Parent = _ZJZyNCc

local _JAKDUrN = Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_JAKDUrN.Name = string.char(73,110,99,114,101,97,115,101,66,116,110)
_JAKDUrN.Size = UDim2.new(0, 36, 1, 0)
_JAKDUrN.Position = UDim2.new(1, -36, 0, 0)
_JAKDUrN.BackgroundTransparency = 1
_JAKDUrN.Text = "+"
_JAKDUrN.TextColor3 = Color3.fromRGB(200, 200, 200)
_JAKDUrN.TextSize = 16
_JAKDUrN.Font = Enum.Font.GothamBold
_JAKDUrN.AutoButtonColor = false
_JAKDUrN.TextTransparency = 1
_JAKDUrN.Parent = _ZJZyNCc

local _MVJeMwt = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_MVJeMwt.Name = string.char(86,97,108,117,101)
_MVJeMwt.Size = UDim2.new(1, -72, 1, 0)
_MVJeMwt.Position = UDim2.new(0, 36, 0, 0)
_MVJeMwt.BackgroundTransparency = 1
_MVJeMwt.Text = tostring(reach) .. string.char(32,115,116,117,100,115)
_MVJeMwt.TextColor3 = Color3.fromRGB(255, 255, 255)
_MVJeMwt.TextSize = 12
_MVJeMwt.Font = Enum.Font.GothamBold
_MVJeMwt.TextTransparency = 1
_MVJeMwt.Parent = _ZJZyNCc

local _pivRmgg = Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_pivRmgg.Name = string.char(80,114,101,115,101,116,66,116,110)
_pivRmgg.Size = UDim2.new(0, 42, 0, 36)
_pivRmgg.Position = UDim2.new(1, -42, 0, 0)
_pivRmgg.BackgroundColor3 = Color3.fromRGB(22, 22, 28)
_pivRmgg.BackgroundTransparency = 1
_pivRmgg.BorderSizePixel = 0
_pivRmgg.Text = string.char(82,83,84)
_pivRmgg.TextColor3 = Color3.fromRGB(200, 200, 200)
_pivRmgg.TextSize = 10
_pivRmgg.Font = Enum.Font.GothamBold
_pivRmgg.AutoButtonColor = false
_pivRmgg.TextTransparency = 1
_pivRmgg.Parent = _OOangJY

local _uSvzNyP = Instance.new(string.char(85,73,67,111,114,110,101,114))
_uSvzNyP.CornerRadius = UDim.new(0, 6)
_uSvzNyP.Parent = _pivRmgg

local _lUqjasR = Instance.new(string.char(85,73,83,116,114,111,107,101))
_lUqjasR.Color = Color3.fromRGB(60, 60, 70)
_lUqjasR.Thickness = 1
_lUqjasR.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_lUqjasR.Parent = _pivRmgg

local _XFRATtF = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
local _eVNAvI = math.floor(42)
_XFRATtF.Name = string.char(73,110,102,111)
_XFRATtF.Size = UDim2.new(1, 0, 0, 20)
_XFRATtF.Position = UDim2.new(0, 0, 1, -20)
_XFRATtF.BackgroundTransparency = 1
_XFRATtF.Text = string.char(70,53,32,226,128,162,32,77,69,78,85)
_XFRATtF.TextColor3 = Color3.fromRGB(80, 80, 90)
_XFRATtF.TextSize = 10
_XFRATtF.Font = Enum.Font.Gotham
_XFRATtF.TextTransparency = 1
_XFRATtF.Parent = _IEqEdkO

local _svHkqYL = Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_svHkqYL.Name = string.char(71,101,97,114,66,116,110)
_svHkqYL.Size = UDim2.new(0, 22, 0, 22)
_svHkqYL.Position = UDim2.new(1, -30, 0, 8)
_svHkqYL.BackgroundColor3 = Color3.fromRGB(22, 22, 28)
_svHkqYL.BackgroundTransparency = 1
_svHkqYL.BorderSizePixel = 0
_svHkqYL.Text = "⚙"
_svHkqYL.TextColor3 = Color3.fromRGB(100, 100, 110)
_svHkqYL.TextSize = 14
_svHkqYL.Font = Enum.Font.GothamBold
_svHkqYL.AutoButtonColor = false
_svHkqYL.TextTransparency = 1
_svHkqYL.Parent = _IEqEdkO

_svHkqYL.MouseEnter:Connect(function()
    _TgwaMQS:Create(_svHkqYL, TweenInfo.new(0.2), {
        TextColor3 = Color3.fromRGB(180, 180, 200)
    }):Play()
end)
_svHkqYL.MouseLeave:Connect(function()
    _TgwaMQS:Create(_svHkqYL, TweenInfo.new(0.2), {
        TextColor3 = Color3.fromRGB(100, 100, 110)
    }):Play()
end)

local _jUfreIx = Instance.new(string.char(70,114,97,109,101))
_jUfreIx.Name = string.char(83,101,116,116,105,110,103,115,70,114,97,109,101)
_jUfreIx.Size = UDim2.new(1, -40, 1, -50)
_jUfreIx.Position = UDim2.new(0, 20, 0, 40)
_jUfreIx.BackgroundTransparency = 1
_jUfreIx.Visible = false
_jUfreIx.Parent = _IEqEdkO

local _rrYncgX = Enum.KeyCode.F5
local _CeYzddm = false

local _Ntkgego = Instance.new(string.char(70,114,97,109,101))
_Ntkgego.Size = UDim2.new(1, 0, 0, 32)
_Ntkgego.Position = UDim2.new(0, 0, 0, 10)
_Ntkgego.BackgroundTransparency = 1
_Ntkgego.Parent = _jUfreIx

local _rrJnvzF = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_rrJnvzF.Size = UDim2.new(1, -60, 1, 0)
_rrJnvzF.Position = UDim2.new(0, 0, 0, 0)
_rrJnvzF.BackgroundTransparency = 1
_rrJnvzF.Text = string.char(65,98,114,105,114,32,77,101,110,117)
_rrJnvzF.TextColor3 = Color3.fromRGB(200, 200, 200)
local _utAVSD = tostring(98)
_rrJnvzF.TextSize = 12
_rrJnvzF.Font = Enum.Font.GothamMedium
_rrJnvzF.TextXAlignment = Enum.TextXAlignment.Left
_rrJnvzF.Parent = _Ntkgego

local _VRYqnLj = Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_VRYqnLj.Size = UDim2.new(0, 52, 0, 22)
_VRYqnLj.Position = UDim2.new(1, 0, 0.5, 0)
_VRYqnLj.AnchorPoint = Vector2.new(1, 0.5)
_VRYqnLj.BackgroundColor3 = Color3.fromRGB(22, 22, 28)
_VRYqnLj.BackgroundTransparency = 0
_VRYqnLj.BorderSizePixel = 0
_VRYqnLj.Text = string.char(70,53)
_VRYqnLj.TextColor3 = Color3.fromRGB(200, 200, 200)
_VRYqnLj.TextSize = 11
_VRYqnLj.Font = Enum.Font.GothamBold
_VRYqnLj.AutoButtonColor = false
_VRYqnLj.AutomaticSize = Enum.AutomaticSize.X
_VRYqnLj.Parent = _Ntkgego

local _aWzATK = tostring(79)
local _SQdtDDU = Instance.new(string.char(85,73,67,111,114,110,101,114))
_SQdtDDU.CornerRadius = UDim.new(0, 5)
_SQdtDDU.Parent = _VRYqnLj

local _aiOspit = Instance.new(string.char(85,73,80,97,100,100,105,110,103))
_aiOspit.PaddingLeft = UDim.new(0, 8)
_aiOspit.PaddingRight = UDim.new(0, 8)
_aiOspit.Parent = _VRYqnLj

local _SuQRJMa = Instance.new(string.char(85,73,83,116,114,111,107,101))
_SuQRJMa.Color = Color3.fromRGB(60, 60, 70)
_SuQRJMa.Thickness = 1
_SuQRJMa.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_SuQRJMa.Parent = _VRYqnLj

local _HhZfyMq = Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_HhZfyMq.Size = UDim2.new(1, 0, 0, 32)
_HhZfyMq.Position = UDim2.new(0, 0, 0, 52)
_HhZfyMq.BackgroundColor3 = Color3.fromRGB(120, 20, 20)
_HhZfyMq.BackgroundTransparency = 0
local _SsfoXM = math.floor(2)
_HhZfyMq.BorderSizePixel = 0
_HhZfyMq.Text = string.char(68,69,83,84,82,85,67,84)
_HhZfyMq.TextColor3 = Color3.fromRGB(255, 100, 100)
_HhZfyMq.TextSize = 12
_HhZfyMq.Font = Enum.Font.GothamBold
_HhZfyMq.AutoButtonColor = false
_HhZfyMq.Parent = _jUfreIx

local _SZvSMQX = Instance.new(string.char(85,73,67,111,114,110,101,114))
_SZvSMQX.CornerRadius = UDim.new(0, 8)
_SZvSMQX.Parent = _HhZfyMq

local _JbkJdFA = Instance.new(string.char(85,73,83,116,114,111,107,101))
_JbkJdFA.Color = Color3.fromRGB(180, 40, 40)
_JbkJdFA.Thickness = 1
_JbkJdFA.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_JbkJdFA.Parent = _HhZfyMq

_HhZfyMq.MouseEnter:Connect(function()
    _TgwaMQS:Create(_HhZfyMq, TweenInfo.new(0.2), {
        BackgroundColor3 = Color3.fromRGB(160, 30, 30)
    }):Play()
end)
_HhZfyMq.MouseLeave:Connect(function()
    _TgwaMQS:Create(_HhZfyMq, TweenInfo.new(0.2), {
        BackgroundColor3 = Color3.fromRGB(120, 20, 20)
    }):Play()
end)
_HhZfyMq.MouseButton1Click:Connect(function()
    _saNlxle:Destroy()
end)

local _gquZjXo = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_gquZjXo.Size = UDim2.new(1, 0, 0, 30)
_gquZjXo.Position = UDim2.new(0, 0, 1, -30)
_gquZjXo.BackgroundTransparency = 1
_gquZjXo.Text = string.char(99,114,195,169,100,105,116,111,115,58,32,101,110,101,122,97,110,32,116,104,32,101,32,116,104,117,114)
_gquZjXo.TextColor3 = Color3.fromRGB(70, 70, 80)
_gquZjXo.TextSize = 9
_gquZjXo.Font = Enum.Font.Gotham
_gquZjXo.Parent = _jUfreIx

_VRYqnLj.MouseButton1Click:Connect(function()
    if _CeYzddm then return end
    _CeYzddm = true
    _VRYqnLj.Text = string.char(46,46,46)
    _VRYqnLj.TextColor3 = Color3.fromRGB(138, 43, 226)
    _TgwaMQS:Create(_SuQRJMa, TweenInfo.new(0.2), {
        Color = Color3.fromRGB(138, 43, 226)
    }):Play()
end)

local _Kjjozoc = false

local function _afGmLgo()
    _Kjjozoc = not _Kjjozoc

    if _Kjjozoc then
                _pVDPoGP.Visible = false
        _XFRATtF.TextTransparency = 1
        _svHkqYL.TextColor3 = Color3.fromRGB(138, 43, 226)
        _jUfreIx.Visible = true
    else
                _pVDPoGP.Visible = true
        _XFRATtF.TextTransparency = 0
        _svHkqYL.TextColor3 = Color3.fromRGB(100, 100, 110)
        _jUfreIx.Visible = false
    end
end

_svHkqYL.MouseButton1Click:Connect(function()
    if not _NkjUALg then return end
    _afGmLgo()
end)

local function _nHJZJxL()
    if not authenticated then return end
    _NkjUALg = not _NkjUALg
    local _jQoWpgR = _NkjUALg and UDim2.new(0, 300, 0, 210) or UDim2.new(0, 0, 0, 0)
    local _cfHTsOO = _NkjUALg and 0 or 1

    _TgwaMQS:Create(_IEqEdkO, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
        Size = _jQoWpgR,
        BackgroundTransparency = _NkjUALg and 0.1 or 1
    }):Play()
    _TgwaMQS:Create(_sYDbjKc, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
        BackgroundTransparency = _NkjUALg and 0.85 or 1
    }):Play()

    local _MEVsmfM = {
        _LRmyNiw, _tWrfWvc, _QEDVzvF,
        _wFmIJgu, _DjYLHeR, _ZJZyNCc, _MVJeMwt,
        _mAdxpsp, _JAKDUrN, _pivRmgg, _XFRATtF, _pRECTEQ, _OkUavsn, _lUqjasR
    }

    for _, elem in ipairs(_MEVsmfM) do
        task.delay(0.04 * (_ - 1), function()
                        if elem:IsA(string.char(84,101,120,116,76,97,98,101,108)) or elem:IsA(string.char(84,101,120,116,66,111,120)) or elem:IsA(string.char(84,101,120,116,66,117,116,116,111,110)) then
                pcall(function()
                    _TgwaMQS:Create(elem, TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                        TextTransparency = _cfHTsOO
                    }):Play()
                end)
            end
            
                        if elem == _QEDVzvF or elem == _DjYLHeR or elem == _ZJZyNCc or elem == _pivRmgg then
                pcall(function()
                    _TgwaMQS:Create(elem, TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                        BackgroundTransparency = _cfHTsOO
                    }):Play()
                end)
            end

                        if elem:IsA(string.char(85,73,83,116,114,111,107,101)) then
                pcall(function()
                    _TgwaMQS:Create(elem, TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                        Transparency = _cfHTsOO
                    }):Play()
                end)
            end
        end)
    end

    task.delay(0.1, function()
        _TgwaMQS:Create(_kqmwCsG, TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
            BackgroundTransparency = _cfHTsOO
        }):Play()
    end)

        task.delay(0.2, function()
        _TgwaMQS:Create(_svHkqYL, TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
            TextTransparency = _cfHTsOO
        }):Play()
    end)

        if not _NkjUALg and _Kjjozoc then
        _Kjjozoc = false
        _pVDPoGP.Visible = true
        _jUfreIx.Visible = false
    end
end

local _MNjLgIa = 0
local function _mcvAUyh()
    if os.clock() - _MNjLgIa < 1.5 then return end
    _MNjLgIa = os.clock()
    local input = _wShGgEE.Text
    if input == "" then
        _vdwzJJM:SetCore(string.char(83,101,110,100,78,111,116,105,102,105,99,97,116,105,111,110), {
            Title = string.char(69,82,82,79),
            Text = string.char(68,105,103,105,116,101,32,117,109,97,32,99,104,97,118,101,32,118,195,161,108,105,100,97,33),
            Duration = 1.5
        })
        return
    end

        if _UMxtECh == "" or _nqFoaNQ == "" then
        _vdwzJJM:SetCore(string.char(83,101,110,100,78,111,116,105,102,105,99,97,116,105,111,110), {
            Title = string.char(69,82,82,79),
            Text = string.char(67,111,110,102,105,103,117,114,97,195,167,195,181,101,115,32,100,111,32,75,101,121,65,117,116,104,32,101,115,116,195,163,111,32,118,97,122,105,97,115,33),
            Duration = 3
        })
        return
    end

        local encodedName = _DXUIqDy(_UMxtECh)
    
        local initUrl = string.format('https://keyauth.win/api/1.2/?name=%s&ownerid=%s&type=init&ver=%s', 
                                  encodedName, _nqFoaNQ, _nkeQxRY)
    
    
    local req_init = _okEMszQ(initUrl)

    if req_init == nil or req_init == "" then
        _vdwzJJM:SetCore(string.char(83,101,110,100,78,111,116,105,102,105,99,97,116,105,111,110), {
            Title = string.char(69,82,82,79,32,68,69,32,67,79,78,69,88,195,131,79),
            Text = string.char(83,101,117,32,101,120,101,99,117,116,111,114,32,98,108,111,113,117,101,111,117,32,111,32,75,101,121,65,117,116,104,33,32,40,70,97,108,104,97,32,110,111,32,73,78,73,84,41),
            Duration = 5
        })
        return
    end


    local data_init
    local decode_success = pcall(function()
        data_init = _HsMUCSV:JSONDecode(req_init)
    end)

    if not decode_success or not data_init then
        _vdwzJJM:SetCore(string.char(83,101,110,100,78,111,116,105,102,105,99,97,116,105,111,110), {
            Title = string.char(69,82,82,79),
            Text = string.char(82,101,115,112,111,115,116,97,32,105,110,118,195,161,108,105,100,97,32,100,111,32,115,101,114,118,105,100,111,114,46,32,86,101,114,105,102,105,113,117,101,32,111,32,79,119,110,101,114,32,73,68,32,101,32,111,32,110,111,109,101,32,100,111,32,65,112,112,46),
            Duration = 5
        })
        return
    end

    if data_init.success == true then
        initialized = true
        sessionid = data_init.sessionid
    else
        _vdwzJJM:SetCore(string.char(83,101,110,100,78,111,116,105,102,105,99,97,116,105,111,110), {
            Title = string.char(69,82,82,79,32,73,78,73,84),
            Text = string.char(69,114,114,111,58,32) .. (data_init.message or string.char(68,101,115,99,111,110,104,101,99,105,100,111)),
            Duration = 5
        })
        return
    end

        local hwid = _DXUIqDy(_bKbOTaJ())
    local licenseUrl = string.format('https://keyauth.win/api/1.2/?name=%s&ownerid=%s&type=license&key=%s&ver=%s&sessionid=%s&hwid=%s', 
                                     encodedName, _nqFoaNQ, input, _nkeQxRY, sessionid, hwid)
    
    local req_license = _okEMszQ(licenseUrl)

    if req_license == nil or req_license == "" then
        _vdwzJJM:SetCore(string.char(83,101,110,100,78,111,116,105,102,105,99,97,116,105,111,110), {
            Title = string.char(69,82,82,79,32,68,69,32,67,79,78,69,88,195,131,79),
            Text = string.char(69,120,101,99,117,116,111,114,32,98,108,111,113,117,101,111,117,32,97,32,114,101,113,117,105,115,105,195,167,195,163,111,32,100,97,32,99,104,97,118,101,33),
            Duration = 5
        })
        return
    end

    local data_license
    local decode_license = pcall(function()
        data_license = _HsMUCSV:JSONDecode(req_license)
    end)

    if not decode_license or not data_license then
        _vdwzJJM:SetCore(string.char(83,101,110,100,78,111,116,105,102,105,99,97,116,105,111,110), {
            Title = string.char(69,82,82,79),
            Text = string.char(69,114,114,111,32,97,111,32,108,101,114,32,114,101,115,112,111,115,116,97,32,100,111,32,115,101,114,118,105,100,111,114,46),
            Duration = 5
        })
        return
    end

    if data_license.success == true then
        authenticated = true
        _XBxNpTT.TextTransparency = 1
        
                _TgwaMQS:Create(_AWIeqwi, TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
            BackgroundTransparency = 1
        }):Play()
        for _, child in ipairs(_AWIeqwi:GetChildren()) do
            if child:IsA(string.char(71,117,105,79,98,106,101,99,116)) then
                _TgwaMQS:Create(child, TweenInfo.new(0.3, Enum.EasingStyle.Quad), {
                    TextTransparency = 1,
                    BackgroundTransparency = 1
                }):Play()
            end
        end
        task.wait(0.4)
        _AWIeqwi.Visible = false

                _nHJZJxL()

        local welcomeName = string.char(85,115,117,195,161,114,105,111)
        if data_license.info and data_license.info.username then
            welcomeName = data_license.info.username
        end

        _vdwzJJM:SetCore(string.char(83,101,110,100,78,111,116,105,102,105,99,97,116,105,111,110), {
            Title = string.char(82,69,65,67,72),
            Text = string.char(65,99,101,115,115,111,32,108,105,98,101,114,97,100,111,33,32,66,101,109,45,118,105,110,100,111,44,32) .. welcomeName,
            Duration = 3
        })
    else
                local _yWXaYhq = _TgwaMQS:Create(_wShGgEE, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {
            Position = UDim2.new(0, 25, 0, 85)
        })
        _yWXaYhq:Play()
        _yWXaYhq.Completed:Connect(function()
            _TgwaMQS:Create(_wShGgEE, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {
                Position = UDim2.new(0, 15, 0, 85)
            }):Play()
        end)
        
        _XBxNpTT.Text = data_license.message or string.char(67,104,97,118,101,32,105,110,118,195,161,108,105,100,97,33)
        _XBxNpTT.TextTransparency = 0
        
        _vdwzJJM:SetCore(string.char(83,101,110,100,78,111,116,105,102,105,99,97,116,105,111,110), {
            Title = string.char(69,82,82,79),
            Text = data_license.message or string.char(67,104,97,118,101,32,105,110,118,195,161,108,105,100,97,32,111,117,32,101,120,112,105,114,97,100,97,33),
            Duration = 1.5
        })
        _wShGgEE.Text = ""
    end
end

_GiVGarM.MouseButton1Click:Connect(_mcvAUyh)
_wShGgEE.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        _mcvAUyh()
    end
end)

local function _tikELjX()
    local _gYYvFVU = _BohekzN and UDim2.new(0, 24, 0.5, -9) or UDim2.new(0, 2, 0.5, -9)
    local _eHpsNde = _BohekzN and Color3.fromRGB(138, 43, 226) or Color3.fromRGB(30, 30, 38)

    _TgwaMQS:Create(_kqmwCsG, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Position = _gYYvFVU
    }):Play()
    _TgwaMQS:Create(_QEDVzvF, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundColor3 = _eHpsNde
    }):Play()
end

local function _RmVUEPS(keyCode)
    local _RaENPwO = tostring(keyCode)
    return _RaENPwO:match(string.char(69,110,117,109,37,46,75,101,121,67,111,100,101,37,46,40,46,43,41)) or _RaENPwO
end

local function _jmkOntV()
    _uoGGYMU = true
    _DjYLHeR.Text = string.char(46,46,46)
    _DjYLHeR.TextColor3 = Color3.fromRGB(138, 43, 226)
    _TgwaMQS:Create(_DjYLHeR, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
        BackgroundColor3 = Color3.fromRGB(40, 30, 60)
    }):Play()
    _TgwaMQS:Create(_pRECTEQ, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
        Color = Color3.fromRGB(138, 43, 226)
    }):Play()
end

local function _OZZsdDO(keyCode)
    _uoGGYMU = false
    if keyCode and keyCode ~= Enum.KeyCode.Escape and keyCode ~= Enum.KeyCode.F5 then
        _AuxuBBa = keyCode
        _DjYLHeR.Text = _RmVUEPS(keyCode)
        _vdwzJJM:SetCore(string.char(83,101,110,100,78,111,116,105,102,105,99,97,116,105,111,110), {
            Title = string.char(82,69,65,67,72),
            Text = string.char(84,101,99,108,97,32,97,108,116,101,114,97,100,97,32,112,97,114,97,58,32) .. getKeyName(keyCode),
            Duration = 1.5
        })
    else
        _DjYLHeR.Text = _RmVUEPS(_AuxuBBa)
    end
    _DjYLHeR.TextColor3 = Color3.fromRGB(200, 200, 200)
    _TgwaMQS:Create(_DjYLHeR, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
        BackgroundColor3 = Color3.fromRGB(20, 20, 25)
    }):Play()
    _TgwaMQS:Create(_pRECTEQ, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
        Color = Color3.fromRGB(60, 60, 70)
    }):Play()
end

local function _oeviYnC()
    _MVJeMwt.Text = tostring(reach) .. string.char(32,115,116,117,100,115)
    _TgwaMQS:Create(_MVJeMwt, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        TextColor3 = Color3.fromRGB(186, 85, 211)
    }):Play()
    task.wait(0.1)
    _TgwaMQS:Create(_MVJeMwt, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        TextColor3 = Color3.fromRGB(255, 255, 255)
    }):Play()
end

_DjYLHeR.MouseEnter:Connect(function()
    if not _uoGGYMU then
        _TgwaMQS:Create(_DjYLHeR, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
            BackgroundColor3 = Color3.fromRGB(30, 30, 35)
        }):Play()
        _TgwaMQS:Create(_pRECTEQ, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
            Color = Color3.fromRGB(90, 90, 100)
        }):Play()
    end
end)
_DjYLHeR.MouseLeave:Connect(function()
    if not _uoGGYMU then
        _TgwaMQS:Create(_DjYLHeR, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
            BackgroundColor3 = Color3.fromRGB(20, 20, 25)
        }):Play()
        _TgwaMQS:Create(_pRECTEQ, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
            Color = Color3.fromRGB(60, 60, 70)
        }):Play()
    end
end)

local function _IbjFrFc(btn)
    btn.MouseEnter:Connect(function()
        _TgwaMQS:Create(btn, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
            TextColor3 = Color3.fromRGB(255, 255, 255)
        }):Play()
    end)
    btn.MouseLeave:Connect(function()
        btn.TextColor3 = Color3.fromRGB(200, 200, 200)
    end)
end
_IbjFrFc(_mAdxpsp)
_IbjFrFc(_JAKDUrN)

_pivRmgg.MouseEnter:Connect(function()
    _TgwaMQS:Create(_pivRmgg, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
        BackgroundColor3 = Color3.fromRGB(30, 30, 35)
    }):Play()
    _TgwaMQS:Create(_lUqjasR, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
        Color = Color3.fromRGB(90, 90, 100)
    }):Play()
    _TgwaMQS:Create(_pivRmgg, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
        TextColor3 = Color3.fromRGB(255, 255, 255)
    }):Play()
end)
_pivRmgg.MouseLeave:Connect(function()
    _TgwaMQS:Create(_pivRmgg, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
        BackgroundColor3 = Color3.fromRGB(22, 22, 28)
    }):Play()
    _TgwaMQS:Create(_lUqjasR, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
        Color = Color3.fromRGB(60, 60, 70)
    }):Play()
    _TgwaMQS:Create(_pivRmgg, TweenInfo.new(0.2, Enum.EasingStyle.Quad), {
        TextColor3 = Color3.fromRGB(200, 200, 200)
    }):Play()
end)

_mAdxpsp.MouseButton1Click:Connect(function()
    if reach > 1 then
        reach = reach - 1
        _oeviYnC()
    end
end)

_JAKDUrN.MouseButton1Click:Connect(function()
    if reach < 100 then
        reach = reach + 1
        _oeviYnC()
    end
end)

_pivRmgg.MouseButton1Click:Connect(function()
    reach = 20
    _oeviYnC()
    _vdwzJJM:SetCore(string.char(83,101,110,100,78,111,116,105,102,105,99,97,116,105,111,110), {
        Title = string.char(82,69,65,67,72),
        Text = string.char(82,101,115,101,116,97,100,111,32,112,97,114,97,32,112,97,100,114,195,163,111),
        Duration = 1
    })
end)

_QEDVzvF.MouseButton1Click:Connect(function()
    _BohekzN = not _BohekzN
    _tikELjX()
    _vdwzJJM:SetCore(string.char(83,101,110,100,78,111,116,105,102,105,99,97,116,105,111,110), {
        Title = string.char(82,69,65,67,72),
        Text = _BohekzN and string.char(65,116,105,118,97,100,111) or string.char(68,101,115,97,116,105,118,97,100,111),
        Duration = 1
    })
end)

_DjYLHeR.MouseButton1Click:Connect(function()
    if not _uoGGYMU then
        _jmkOntV()
    end
end)

spawn(function()
    while true do
        local _kVEwXUP = _TgwaMQS:Create(_sYDbjKc, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
            BackgroundTransparency = 0.5
        })
        _kVEwXUP:Play()
        _kVEwXUP.Completed:Wait()
        local _NGbHVEV = _TgwaMQS:Create(_sYDbjKc, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
            BackgroundTransparency = 0.8
        })
        _NGbHVEV:Play()
        _NGbHVEV.Completed:Wait()
    end
end)

spawn(function()
    while true do
        _xrjwINt.Heartbeat:Wait()
        _QwasFAg.Rotation = (_QwasFAg.Rotation + 0.5) % 360
    end
end)

function refreshballs(force)
    if force == false then
        if _KIGYIcc + 2 > os.time() then
            return
        end
    end
    _KIGYIcc = os.time()
    table.clear(_pQAdNqZ)
    for i, v in pairs(workspace:GetDescendants()) do
        if v.Name == string.char(84,80,83) or v.Name == string.char(69,83,65) or v.Name == string.char(77,82,83) or v.Name == string.char(80,82,83) or v.Name == string.char(77,80,83) then
            task.wait()
            table.insert(_pQAdNqZ, v)
        end
    end
end
refreshballs(true)

_GhrIeak.InputBegan:Connect(function(i, gameProcessedEvent)
        if _CeYzddm then
        local _wZYfWtY = i.KeyCode
        if _wZYfWtY ~= Enum.KeyCode.Escape and _wZYfWtY ~= Enum.KeyCode.Unknown then
            _rrYncgX = _wZYfWtY
            local _jElUIrI = tostring(_wZYfWtY):match(string.char(69,110,117,109,37,46,75,101,121,67,111,100,101,37,46,40,46,43,41)) or tostring(_wZYfWtY)
            _VRYqnLj.Text = _jElUIrI
            _XFRATtF.Text = _jElUIrI .. string.char(32,226,128,162,32,77,69,78,85)
        end
        _CeYzddm = false
        _VRYqnLj.TextColor3 = Color3.fromRGB(200, 200, 200)
        _TgwaMQS:Create(_SuQRJMa, TweenInfo.new(0.2), {
            Color = Color3.fromRGB(60, 60, 70)
        }):Play()
        return
    end

    if _uoGGYMU then
        _OZZsdDO(i.KeyCode)
        return
    end

    if i.KeyCode == _rrYncgX then
        _nHJZJxL()
        return
    end

    if i.KeyCode == _AuxuBBa and not gameProcessedEvent and authenticated then
        _BohekzN = not _BohekzN
        _tikELjX()
        _vdwzJJM:SetCore(string.char(83,101,110,100,78,111,116,105,102,105,99,97,116,105,111,110), {
            Title = string.char(82,69,65,67,72),
            Text = _BohekzN and string.char(65,116,105,118,97,100,111) or string.char(68,101,115,97,116,105,118,97,100,111),
            Duration = 1
        })
        return
    end

    if i.KeyCode == Enum.KeyCode.W or i.KeyCode == Enum.KeyCode.A or i.KeyCode == Enum.KeyCode.S or i.KeyCode == Enum.KeyCode.D or i.KeyCode == Enum.KeyCode.Space then
        return
    end

    if gameProcessedEvent == false and authenticated then
        if i.KeyCode == Enum.KeyCode.Comma or i.KeyCode == Enum.KeyCode.Period then
            if i.KeyCode == Enum.KeyCode.Comma then
                if reach > 1 then
                    reach = reach - 1
                    _oeviYnC()
                end
            else
                if reach < 100 then
                    reach = reach + 1
                    _oeviYnC()
                end
            end
        else
            if not _BohekzN then return end
            refreshballs(false)
            local _OpOSNrH = _wdFNqbD.Character and _wdFNqbD.Character:FindFirstChild(string.char(82,105,103,104,116,32,76,101,103))
            if _OpOSNrH then
                for i, v in pairs(_OpOSNrH:GetDescendants()) do
                    if v.Name == string.char(84,111,117,99,104,73,110,116,101,114,101,115,116) and v.Parent then
                        for i, e in pairs(_pQAdNqZ) do
                            if (e.Position - _OpOSNrH.Position).magnitude < reach then
                                firetouchinterest(e, v.Parent, 0)
                                firetouchinterest(e, v.Parent, 1)
                                break
                            end
                        end
                    end
                end
            end
        end
    end
end)

_vdwzJJM:SetCore(string.char(83,101,110,100,78,111,116,105,102,105,99,97,116,105,111,110), {
    Title = string.char(82,69,65,67,72),
    Text = string.char(68,105,103,105,116,101,32,97,32,99,104,97,118,101,32,112,97,114,97,32,97,99,101,115,115,97,114),
    Duration = 2
})
