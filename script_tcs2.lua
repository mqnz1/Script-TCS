-- This script was generated using MoonVeil 2.0.23 [https://moonveil.cc]
local UserInputService=game:GetService"UserInputService"
local TweenService=game:GetService"TweenService"
local CoreGui=game:GetService"StarterGui"
local Players=game:GetService"Players"
local RunService=game:GetService"RunService"
local HttpService=game:GetService"HttpService"
local player=Players.LocalPlayer
local authenticated=false
local initialized=false
local sessionid=""
local balls={}
local lastrefreshtime=os.time()
local reach=20
local menuOpen=false
local reachEnabled=true
local isBindingKey=false
local currentToggleKey=Enum.KeyCode.R
local function urlEncode(str)
    if not str then
        return""
    end
    str=string.gsub(str,"%%","%%25")
    str=string.gsub(str," ","%%20")
    str=string.gsub(str,"'","%%27")
    str=string.gsub(str,"\"","%%22")
    str=string.gsub(str,"#","%%23")
    str=string.gsub(str,"&","%%26")
    str=string.gsub(str,"?","%%3F")
    return str
end
local function getHWID()
    local hwid="Unknown"
    pcall(function()
        hwid=gethwid()or get_hwid()
    end)
    if hwid=="Unknown"then
        pcall(function()
            hwid=game:GetService"RbxAnalyticsService":GetClientId()
        end)
    end
    if hwid=="Unknown"then
        hwid=tostring(player.UserId)
    end
    return hwid
end
local function safeHttpGet(url)
    local ok1,res1=pcall(function()
        return request{
            Url=url,
            Method="GET"
        }.Body
    end)
    if ok1 and res1 and res1~=""then
        return res1
    end
    local ok2,res2=pcall(function()
        return http.request{
            Url=url,
            Method="GET"
        }.Body
    end)
    if ok2 and res2 and res2~=""then
        return res2
    end
    local ok3,res3=pcall(function()
        return syn.request{
            Url=url,
            Method="GET"
        }.Body
    end)
    if ok3 and res3 and res3~=""then
        return res3
    end
    local ok4,res4=pcall(function()
        return http_request{
            Url=url,
            Method="GET"
        }.Body
    end)
    if ok4 and res4 and res4~=""then
        return res4
    end
    local ok5,res5=pcall(function()
        return game:HttpGet(url,true)
    end)
    if ok5 and res5 and res5~=""then
        return res5
    end
    return nil
end
local screenGui=Instance.new"ScreenGui"
screenGui.Name="ModernReachMenu"
screenGui.ResetOnSpawn=false
screenGui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
screenGui.AutoLocalize=false
pcall(function()
    screenGui.Parent=game:GetService"CoreGui"
end)
if screenGui.Parent~=game:GetService"CoreGui"then
    screenGui.Parent=player:WaitForChild"PlayerGui"
end
local keyFrame=Instance.new"Frame"
keyFrame.Name="KeyFrame"
keyFrame.Size=UDim2 .new(0,480,0,200)
keyFrame.Position=UDim2 .new(0.5,0,0.5,0)
keyFrame.AnchorPoint=Vector2 .new(0.5,0.5)
keyFrame.BackgroundColor3=Color3 .fromRGB(15,15,20)
keyFrame.BorderSizePixel=0
keyFrame.ClipsDescendants=true
keyFrame.ZIndex=10
keyFrame.Parent=screenGui
local keyCorner=Instance.new"UICorner"
keyCorner.CornerRadius=UDim.new(0,20)
keyCorner.Parent=keyFrame
local keyGradient=Instance.new"UIGradient"
keyGradient.Color=ColorSequence.new{
    ColorSequenceKeypoint.new(0,Color3 .fromRGB(20,20,28)),
    ColorSequenceKeypoint.new(1,Color3 .fromRGB(15,15,20))
}
keyGradient.Rotation=45
keyGradient.Parent=keyFrame
local keyTitle=Instance.new"TextLabel"
keyTitle.Size=UDim2 .new(1,0,0,40)
keyTitle.Position=UDim2 .new(0,0,0,20)
keyTitle.BackgroundTransparency=1
keyTitle.Text="ACESSO RESTRITO"
keyTitle.TextColor3=Color3 .fromRGB(255,255,255)
keyTitle.TextSize=18
keyTitle.Font=Enum.Font.GothamBold
keyTitle.Parent=keyFrame
local keySub=Instance.new"TextLabel"
keySub.Size=UDim2 .new(1,0,0,20)
keySub.Position=UDim2 .new(0,0,0,60)
keySub.BackgroundTransparency=1
keySub.Text="Digite a chave de acesso"
keySub.TextColor3=Color3 .fromRGB(120,120,130)
keySub.TextSize=12
keySub.Font=Enum.Font.Gotham
keySub.Parent=keyFrame
local keyBox=Instance.new"TextBox"
keyBox.Size=UDim2 .new(1,-40,0,35)
keyBox.Position=UDim2 .new(0,20,0,85)
keyBox.BackgroundColor3=Color3 .fromRGB(30,30,38)
keyBox.BorderSizePixel=0
keyBox.Text=""
keyBox.TextColor3=Color3 .fromRGB(255,255,255)
keyBox.TextSize=11
keyBox.Font=Enum.Font.GothamMedium
keyBox.PlaceholderText="Cole sua chave aqui..."
keyBox.PlaceholderColor3=Color3 .fromRGB(90,90,100)
keyBox.ClearTextOnFocus=false
keyBox.ClipsDescendants=true
keyBox.ZIndex=11
keyBox.Parent=keyFrame
local keyBoxPadding=Instance.new"UIPadding"
keyBoxPadding.PaddingLeft=UDim.new(0,10)
keyBoxPadding.PaddingRight=UDim.new(0,10)
keyBoxPadding.Parent=keyBox
local boxCorner=Instance.new"UICorner"
boxCorner.CornerRadius=UDim.new(0,10)
boxCorner.Parent=keyBox
local errorLabel=Instance.new"TextLabel"
errorLabel.Name="ErrorLabel"
errorLabel.Size=UDim2 .new(1,-40,0,15)
errorLabel.Position=UDim2 .new(0,20,0,122)
errorLabel.BackgroundTransparency=1
errorLabel.Text=""
errorLabel.TextColor3=Color3 .fromRGB(255,50,50)
errorLabel.TextSize=12
errorLabel.Font=Enum.Font.GothamBold
errorLabel.TextTransparency=1
errorLabel.Parent=keyFrame
local enterBtn=Instance.new"TextButton"
enterBtn.Size=UDim2 .new(1,-40,0,40)
enterBtn.Position=UDim2 .new(0,20,0,138)
enterBtn.BackgroundColor3=Color3 .fromRGB(138,43,226)
enterBtn.BorderSizePixel=0
enterBtn.Text="ENTRAR"
enterBtn.TextColor3=Color3 .fromRGB(255,255,255)
enterBtn.TextSize=16
enterBtn.Font=Enum.Font.GothamBold
enterBtn.AutoButtonColor=false
enterBtn.ZIndex=11
enterBtn.Parent=keyFrame
local enterCorner=Instance.new"UICorner"
enterCorner.CornerRadius=UDim.new(0,12)
enterCorner.Parent=enterBtn
enterBtn.MouseEnter:Connect(function()
    TweenService:Create(enterBtn,TweenInfo.new(0.2,Enum.EasingStyle.Quad),{
        BackgroundColor3=Color3 .fromRGB(158,63,246)
    }):Play()
end)
enterBtn.MouseLeave:Connect(function()
    TweenService:Create(enterBtn,TweenInfo.new(0.2,Enum.EasingStyle.Quad),{
        BackgroundColor3=Color3 .fromRGB(138,43,226)
    }):Play()
end)
keyBox.Focused:Connect(function()
    errorLabel.TextTransparency=1
end)
local mainFrame=Instance.new"Frame"
mainFrame.Name="MainFrame"
mainFrame.Size=UDim2 .new(0,0,0,0)
mainFrame.Position=UDim2 .new(0.5,0,0.5,0)
mainFrame.AnchorPoint=Vector2 .new(0.5,0.5)
mainFrame.BackgroundColor3=Color3 .fromRGB(10,10,12)
mainFrame.BorderSizePixel=0
mainFrame.ClipsDescendants=true
mainFrame.BackgroundTransparency=1
mainFrame.Parent=screenGui
local corner=Instance.new"UICorner"
corner.CornerRadius=UDim.new(0,20)
corner.Parent=mainFrame
local gradient=Instance.new"UIGradient"
gradient.Color=ColorSequence.new{
    ColorSequenceKeypoint.new(0,Color3 .fromRGB(16,16,20)),
    ColorSequenceKeypoint.new(1,Color3 .fromRGB(10,10,12))
}
gradient.Rotation=45
gradient.Parent=mainFrame
local borderFrame=Instance.new"Frame"
borderFrame.Name="Border"
borderFrame.Size=UDim2 .new(1,2,1,2)
borderFrame.Position=UDim2 .new(0.5,0,0.5,0)
borderFrame.AnchorPoint=Vector2 .new(0.5,0.5)
borderFrame.BackgroundColor3=Color3 .fromRGB(138,43,226)
borderFrame.BackgroundTransparency=1
borderFrame.ZIndex=0
borderFrame.Parent=mainFrame
local borderCorner=Instance.new"UICorner"
borderCorner.CornerRadius=UDim.new(0,20)
borderCorner.Parent=borderFrame
local borderGradient=Instance.new"UIGradient"
borderGradient.Color=ColorSequence.new{
    ColorSequenceKeypoint.new(0,Color3 .fromRGB(138,43,226)),
    ColorSequenceKeypoint.new(0.5,Color3 .fromRGB(186,85,211)),
    ColorSequenceKeypoint.new(1,Color3 .fromRGB(138,43,226))
}
borderGradient.Parent=borderFrame
local title=Instance.new"TextLabel"
title.Name="Title"
title.Size=UDim2 .new(1,0,0,30)
title.Position=UDim2 .new(0,0,0,18)
title.BackgroundTransparency=1
title.Text="REACH"
title.TextColor3=Color3 .fromRGB(255,255,255)
title.TextSize=16
title.Font=Enum.Font.GothamBold
title.TextTransparency=1
title.Parent=mainFrame
local indicator=Instance.new"Frame"
indicator.Name="Indicator"
indicator.Size=UDim2 .new(0,40,0,2)
indicator.Position=UDim2 .new(0.5,-20,0,68)
indicator.BackgroundColor3=Color3 .fromRGB(138,43,226)
indicator.BorderSizePixel=0
indicator.BackgroundTransparency=1
indicator.Visible=false
indicator.Parent=mainFrame
local indicatorCorner=Instance.new"UICorner"
indicatorCorner.CornerRadius=UDim.new(1,0)
indicatorCorner.Parent=indicator
local contentFrame=Instance.new"Frame"
contentFrame.Name="Content"
contentFrame.Size=UDim2 .new(1,-40,0,110)
contentFrame.Position=UDim2 .new(0,20,0,55)
contentFrame.BackgroundTransparency=1
contentFrame.Parent=mainFrame
local toggleContainer=Instance.new"Frame"
toggleContainer.Name="ToggleContainer"
toggleContainer.Size=UDim2 .new(1,0,0,30)
toggleContainer.Position=UDim2 .new(0,0,0,0)
toggleContainer.BackgroundTransparency=1
toggleContainer.Parent=contentFrame
local toggleLabel=Instance.new"TextLabel"
toggleLabel.Name="Label"
toggleLabel.Size=UDim2 .new(0.5,-10,1,0)
toggleLabel.Position=UDim2 .new(0,0,0,0)
toggleLabel.BackgroundTransparency=1
toggleLabel.Text="STATUS"
toggleLabel.TextColor3=Color3 .fromRGB(120,120,130)
toggleLabel.TextSize=11
toggleLabel.Font=Enum.Font.GothamMedium
toggleLabel.TextXAlignment=Enum.TextXAlignment.Left
toggleLabel.TextTransparency=1
toggleLabel.Parent=toggleContainer
local toggleButton=Instance.new"TextButton"
toggleButton.Name="ToggleButton"
toggleButton.Size=UDim2 .new(0,44,0,22)
toggleButton.Position=UDim2 .new(1,-44,0.5,-11)
toggleButton.BackgroundColor3=reachEnabled and Color3 .fromRGB(138,43,226)or Color3 .fromRGB(30,30,38)
toggleButton.BorderSizePixel=0
toggleButton.Text=""
toggleButton.AutoButtonColor=false
toggleButton.BackgroundTransparency=0
toggleButton.Parent=toggleContainer
local toggleCorner=Instance.new"UICorner"
toggleCorner.CornerRadius=UDim.new(1,0)
toggleCorner.Parent=toggleButton
local toggleCircle=Instance.new"Frame"
toggleCircle.Name="Circle"
toggleCircle.Size=UDim2 .new(0,18,0,18)
toggleCircle.Position=reachEnabled and UDim2 .new(0,24,0.5,-9)or UDim2 .new(0,2,0.5,-9)
toggleCircle.BackgroundColor3=Color3 .fromRGB(255,255,255)
toggleCircle.BorderSizePixel=0
toggleCircle.Parent=toggleButton
local circleCorner=Instance.new"UICorner"
circleCorner.CornerRadius=UDim.new(1,0)
circleCorner.Parent=toggleCircle
local toggleStatus=Instance.new"TextLabel"
toggleStatus.Name="Status"
toggleStatus.Size=UDim2 .new(1,0,1,0)
toggleStatus.BackgroundTransparency=1
toggleStatus.Text=""
toggleStatus.TextColor3=Color3 .fromRGB(255,255,255)
toggleStatus.TextSize=10
toggleStatus.Font=Enum.Font.GothamBold
toggleStatus.Visible=false
toggleStatus.Parent=toggleButton
local keybindContainer=Instance.new"Frame"
keybindContainer.Name="KeybindContainer"
keybindContainer.Size=UDim2 .new(1,0,0,30)
keybindContainer.Position=UDim2 .new(0,0,0,35)
keybindContainer.BackgroundTransparency=1
keybindContainer.Parent=contentFrame
local keybindLabel=Instance.new"TextLabel"
keybindLabel.Name="Label"
keybindLabel.Size=UDim2 .new(0.5,-10,1,0)
keybindLabel.Position=UDim2 .new(0,0,0,0)
keybindLabel.BackgroundTransparency=1
keybindLabel.Text="TECLA"
keybindLabel.TextColor3=Color3 .fromRGB(120,120,130)
keybindLabel.TextSize=11
keybindLabel.Font=Enum.Font.GothamMedium
keybindLabel.TextXAlignment=Enum.TextXAlignment.Left
keybindLabel.TextTransparency=1
keybindLabel.Parent=keybindContainer
local keybindButton=Instance.new"TextButton"
keybindButton.Name="KeybindButton"
keybindButton.Size=UDim2 .new(0,50,0,22)
keybindButton.Position=UDim2 .new(1,0,0.5,0)
keybindButton.AnchorPoint=Vector2 .new(1,0.5)
keybindButton.BackgroundColor3=Color3 .fromRGB(22,22,28)
keybindButton.BorderSizePixel=0
keybindButton.Text="R"
keybindButton.TextColor3=Color3 .fromRGB(200,200,200)
keybindButton.TextSize=11
keybindButton.Font=Enum.Font.GothamBold
keybindButton.AutoButtonColor=false
keybindButton.BackgroundTransparency=1
keybindButton.AutomaticSize=Enum.AutomaticSize.X
keybindButton.Parent=keybindContainer
local keybindCorner=Instance.new"UICorner"
keybindCorner.CornerRadius=UDim.new(0,5)
keybindCorner.Parent=keybindButton
local keybindPadding=Instance.new"UIPadding"
keybindPadding.PaddingLeft=UDim.new(0,8)
keybindPadding.PaddingRight=UDim.new(0,8)
keybindPadding.Parent=keybindButton
local keybindStroke=Instance.new"UIStroke"
keybindStroke.Color=Color3 .fromRGB(60,60,70)
keybindStroke.Thickness=1
keybindStroke.ApplyStrokeMode=Enum.ApplyStrokeMode.Border
keybindStroke.Parent=keybindButton
local reachContainer=Instance.new"Frame"
reachContainer.Name="ReachContainer"
reachContainer.Size=UDim2 .new(1,0,0,36)
reachContainer.Position=UDim2 .new(0,0,0,70)
reachContainer.BackgroundTransparency=1
reachContainer.Parent=contentFrame
local stepperFrame=Instance.new"Frame"
stepperFrame.Name="Stepper"
stepperFrame.Size=UDim2 .new(1,-50,1,0)
stepperFrame.Position=UDim2 .new(0,0,0,0)
stepperFrame.BackgroundColor3=Color3 .fromRGB(22,22,28)
stepperFrame.BorderSizePixel=0
stepperFrame.BackgroundTransparency=1
stepperFrame.Parent=reachContainer
local stepperCorner=Instance.new"UICorner"
stepperCorner.CornerRadius=UDim.new(1,0)
stepperCorner.Parent=stepperFrame
local stepperStroke=Instance.new"UIStroke"
stepperStroke.Color=Color3 .fromRGB(45,45,55)
stepperStroke.Thickness=1
stepperStroke.Parent=stepperFrame
local decreaseBtn=Instance.new"TextButton"
decreaseBtn.Name="DecreaseBtn"
decreaseBtn.Size=UDim2 .new(0,36,1,0)
decreaseBtn.Position=UDim2 .new(0,0,0,0)
decreaseBtn.BackgroundTransparency=1
decreaseBtn.Text="\226\136\146"
decreaseBtn.TextColor3=Color3 .fromRGB(200,200,200)
decreaseBtn.TextSize=16
decreaseBtn.Font=Enum.Font.GothamBold
decreaseBtn.AutoButtonColor=false
decreaseBtn.TextTransparency=1
decreaseBtn.Parent=stepperFrame
local increaseBtn=Instance.new"TextButton"
increaseBtn.Name="IncreaseBtn"
increaseBtn.Size=UDim2 .new(0,36,1,0)
increaseBtn.Position=UDim2 .new(1,-36,0,0)
increaseBtn.BackgroundTransparency=1
increaseBtn.Text="+"
increaseBtn.TextColor3=Color3 .fromRGB(200,200,200)
increaseBtn.TextSize=16
increaseBtn.Font=Enum.Font.GothamBold
increaseBtn.AutoButtonColor=false
increaseBtn.TextTransparency=1
increaseBtn.Parent=stepperFrame
local reachValue=Instance.new"TextLabel"
reachValue.Name="Value"
reachValue.Size=UDim2 .new(1,-72,1,0)
reachValue.Position=UDim2 .new(0,36,0,0)
reachValue.BackgroundTransparency=1
reachValue.Text=tostring(reach).." studs"
reachValue.TextColor3=Color3 .fromRGB(255,255,255)
reachValue.TextSize=12
reachValue.Font=Enum.Font.GothamBold
reachValue.TextTransparency=1
reachValue.Parent=stepperFrame
local presetBtn=Instance.new"TextButton"
presetBtn.Name="PresetBtn"
presetBtn.Size=UDim2 .new(0,42,0,36)
presetBtn.Position=UDim2 .new(1,-42,0,0)
presetBtn.BackgroundColor3=Color3 .fromRGB(22,22,28)
presetBtn.BackgroundTransparency=1
presetBtn.BorderSizePixel=0
presetBtn.Text="RST"
presetBtn.TextColor3=Color3 .fromRGB(200,200,200)
presetBtn.TextSize=10
presetBtn.Font=Enum.Font.GothamBold
presetBtn.AutoButtonColor=false
presetBtn.TextTransparency=1
presetBtn.Parent=reachContainer
local presetCorner=Instance.new"UICorner"
presetCorner.CornerRadius=UDim.new(0,6)
presetCorner.Parent=presetBtn
local presetStroke=Instance.new"UIStroke"
presetStroke.Color=Color3 .fromRGB(60,60,70)
presetStroke.Thickness=1
presetStroke.ApplyStrokeMode=Enum.ApplyStrokeMode.Border
presetStroke.Parent=presetBtn
local infoLabel=Instance.new"TextLabel"
infoLabel.Name="Info"
infoLabel.Size=UDim2 .new(1,0,0,20)
infoLabel.Position=UDim2 .new(0,0,1,-20)
infoLabel.BackgroundTransparency=1
infoLabel.Text="F5 \226\128\162 MENU"
infoLabel.TextColor3=Color3 .fromRGB(80,80,90)
infoLabel.TextSize=10
infoLabel.Font=Enum.Font.Gotham
infoLabel.TextTransparency=1
infoLabel.Parent=mainFrame
local gearBtn=Instance.new"TextButton"
gearBtn.Name="GearBtn"
gearBtn.Size=UDim2 .new(0,22,0,22)
gearBtn.Position=UDim2 .new(1,-30,0,8)
gearBtn.BackgroundColor3=Color3 .fromRGB(22,22,28)
gearBtn.BackgroundTransparency=1
gearBtn.BorderSizePixel=0
gearBtn.Text="\226\154\153"
gearBtn.TextColor3=Color3 .fromRGB(100,100,110)
gearBtn.TextSize=14
gearBtn.Font=Enum.Font.GothamBold
gearBtn.AutoButtonColor=false
gearBtn.TextTransparency=1
gearBtn.Parent=mainFrame
gearBtn.MouseEnter:Connect(function()
    TweenService:Create(gearBtn,TweenInfo.new(0.2),{
        TextColor3=Color3 .fromRGB(180,180,200)
    }):Play()
end)
gearBtn.MouseLeave:Connect(function()
    TweenService:Create(gearBtn,TweenInfo.new(0.2),{
        TextColor3=Color3 .fromRGB(100,100,110)
    }):Play()
end)
local settingsFrame=Instance.new"Frame"
settingsFrame.Name="SettingsFrame"
settingsFrame.Size=UDim2 .new(1,-40,1,-50)
settingsFrame.Position=UDim2 .new(0,20,0,40)
settingsFrame.BackgroundTransparency=1
settingsFrame.Visible=false
settingsFrame.Parent=mainFrame
local currentMenuKey=Enum.KeyCode.F5
local isBindingMenuKey=false
local menuKeyContainer=Instance.new"Frame"
menuKeyContainer.Size=UDim2 .new(1,0,0,32)
menuKeyContainer.Position=UDim2 .new(0,0,0,10)
menuKeyContainer.BackgroundTransparency=1
menuKeyContainer.Parent=settingsFrame
local menuKeyLabel=Instance.new"TextLabel"
menuKeyLabel.Size=UDim2 .new(1,-60,1,0)
menuKeyLabel.Position=UDim2 .new(0,0,0,0)
menuKeyLabel.BackgroundTransparency=1
menuKeyLabel.Text="Abrir Menu"
menuKeyLabel.TextColor3=Color3 .fromRGB(200,200,200)
menuKeyLabel.TextSize=12
menuKeyLabel.Font=Enum.Font.GothamMedium
menuKeyLabel.TextXAlignment=Enum.TextXAlignment.Left
menuKeyLabel.Parent=menuKeyContainer
local menuKeyBtn=Instance.new"TextButton"
menuKeyBtn.Size=UDim2 .new(0,52,0,22)
menuKeyBtn.Position=UDim2 .new(1,0,0.5,0)
menuKeyBtn.AnchorPoint=Vector2 .new(1,0.5)
menuKeyBtn.BackgroundColor3=Color3 .fromRGB(22,22,28)
menuKeyBtn.BackgroundTransparency=0
menuKeyBtn.BorderSizePixel=0
menuKeyBtn.Text="F5"
menuKeyBtn.TextColor3=Color3 .fromRGB(200,200,200)
menuKeyBtn.TextSize=11
menuKeyBtn.Font=Enum.Font.GothamBold
menuKeyBtn.AutoButtonColor=false
menuKeyBtn.AutomaticSize=Enum.AutomaticSize.X
menuKeyBtn.Parent=menuKeyContainer
local menuKeyBtnCorner=Instance.new"UICorner"
menuKeyBtnCorner.CornerRadius=UDim.new(0,5)
menuKeyBtnCorner.Parent=menuKeyBtn
local menuKeyPadding=Instance.new"UIPadding"
menuKeyPadding.PaddingLeft=UDim.new(0,8)
menuKeyPadding.PaddingRight=UDim.new(0,8)
menuKeyPadding.Parent=menuKeyBtn
local menuKeyStroke=Instance.new"UIStroke"
menuKeyStroke.Color=Color3 .fromRGB(60,60,70)
menuKeyStroke.Thickness=1
menuKeyStroke.ApplyStrokeMode=Enum.ApplyStrokeMode.Border
menuKeyStroke.Parent=menuKeyBtn
local destructBtn=Instance.new"TextButton"
destructBtn.Size=UDim2 .new(1,0,0,32)
destructBtn.Position=UDim2 .new(0,0,0,52)
destructBtn.BackgroundColor3=Color3 .fromRGB(120,20,20)
destructBtn.BackgroundTransparency=0
destructBtn.BorderSizePixel=0
destructBtn.Text="DESTRUCT"
destructBtn.TextColor3=Color3 .fromRGB(255,100,100)
destructBtn.TextSize=12
destructBtn.Font=Enum.Font.GothamBold
destructBtn.AutoButtonColor=false
destructBtn.Parent=settingsFrame
local destructCorner=Instance.new"UICorner"
destructCorner.CornerRadius=UDim.new(0,8)
destructCorner.Parent=destructBtn
local destructStroke=Instance.new"UIStroke"
destructStroke.Color=Color3 .fromRGB(180,40,40)
destructStroke.Thickness=1
destructStroke.ApplyStrokeMode=Enum.ApplyStrokeMode.Border
destructStroke.Parent=destructBtn
destructBtn.MouseEnter:Connect(function()
    TweenService:Create(destructBtn,TweenInfo.new(0.2),{
        BackgroundColor3=Color3 .fromRGB(160,30,30)
    }):Play()
end)
destructBtn.MouseLeave:Connect(function()
    TweenService:Create(destructBtn,TweenInfo.new(0.2),{
        BackgroundColor3=Color3 .fromRGB(120,20,20)
    }):Play()
end)
destructBtn.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)
local creditsLabel=Instance.new"TextLabel"
creditsLabel.Size=UDim2 .new(1,0,0,30)
creditsLabel.Position=UDim2 .new(0,0,1,-30)
creditsLabel.BackgroundTransparency=1
creditsLabel.Text="cr\195\169ditos: enezan th e thur"
creditsLabel.TextColor3=Color3 .fromRGB(70,70,80)
creditsLabel.TextSize=9
creditsLabel.Font=Enum.Font.Gotham
creditsLabel.Parent=settingsFrame
menuKeyBtn.MouseButton1Click:Connect(function()
    if isBindingMenuKey then
        return
    end
    isBindingMenuKey=true
    menuKeyBtn.Text="..."
    menuKeyBtn.TextColor3=Color3 .fromRGB(138,43,226)
    TweenService:Create(menuKeyStroke,TweenInfo.new(0.2),{
        Color=Color3 .fromRGB(138,43,226)
    }):Play()
end)
local settingsOpen=false
local function toggleSettings()
    settingsOpen=not settingsOpen
    if settingsOpen then
        contentFrame.Visible=false
        infoLabel.TextTransparency=1
        gearBtn.TextColor3=Color3 .fromRGB(138,43,226)
        settingsFrame.Visible=true
    else
        contentFrame.Visible=true
        infoLabel.TextTransparency=0
        gearBtn.TextColor3=Color3 .fromRGB(100,100,110)
        settingsFrame.Visible=false
    end
end
gearBtn.MouseButton1Click:Connect(function()
    if not menuOpen then
        return
    end
    toggleSettings()
end)
local function toggleMenu()
    if not authenticated then
        return
    end
    menuOpen=not menuOpen
    local targetSize=menuOpen and UDim2 .new(0,300,0,210)or UDim2 .new(0,0,0,0)
    local targetTransparency=menuOpen and 0 or 1
    TweenService:Create(mainFrame,TweenInfo.new(0.5,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
        Size=targetSize,
        BackgroundTransparency=menuOpen and 0.1 or 1
    }):Play()
    TweenService:Create(borderFrame,TweenInfo.new(0.5,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
        BackgroundTransparency=menuOpen and 0.85 or 1
    }):Play()
    local elements={
        title,
        toggleLabel,
        toggleButton,
        keybindLabel,
        keybindButton,
        stepperFrame,
        reachValue,
        decreaseBtn,
        increaseBtn,
        presetBtn,
        infoLabel,
        keybindStroke,
        stepperStroke,
        presetStroke
    }
    for _,elem in ipairs(elements)do
        task.delay(0.04*(_-1),function()
            if elem:IsA"TextLabel"or elem:IsA"TextBox"or elem:IsA"TextButton"then
                pcall(function()
                    TweenService:Create(elem,TweenInfo.new(0.4,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
                        TextTransparency=targetTransparency
                    }):Play()
                end)
            end
            if elem==toggleButton or elem==keybindButton or elem==stepperFrame or elem==presetBtn then
                pcall(function()
                    TweenService:Create(elem,TweenInfo.new(0.4,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
                        BackgroundTransparency=targetTransparency
                    }):Play()
                end)
            end
            if elem:IsA"UIStroke"then
                pcall(function()
                    TweenService:Create(elem,TweenInfo.new(0.4,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
                        Transparency=targetTransparency
                    }):Play()
                end)
            end
        end)
    end
    task.delay(0.1,function()
        TweenService:Create(toggleCircle,TweenInfo.new(0.4,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
            BackgroundTransparency=targetTransparency
        }):Play()
    end)
    task.delay(0.2,function()
        TweenService:Create(gearBtn,TweenInfo.new(0.3,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
            TextTransparency=targetTransparency
        }):Play()
    end)
    if not menuOpen and settingsOpen then
        settingsOpen=false
        contentFrame.Visible=true
        settingsFrame.Visible=false
    end
end
local lastCheckTime=0
local function checkKey()
    if os.clock()-lastCheckTime<1.5 then
        return
    end
    lastCheckTime=os.clock()
    local input=keyBox.Text
    if input==""then
        CoreGui:SetCore("SendNotification",{
            Title="ERRO",
            Text="Digite uma chave v\195\161lida!",
            Duration=1.5
        })
        return
    end
    local encodedName=urlEncode"Martineeeezz's Application"
    local initUrl=string.format("https://keyauth.win/api/1.2/?name=%s&ownerid=%s&type=init&ver=%s",encodedName,"t3R5cUyb8J","1.0")
    local req_init=safeHttpGet(initUrl)
    if req_init==nil or req_init==""then
        CoreGui:SetCore("SendNotification",{
            Title="ERRO DE CONEX\195\131O",
            Text="Seu executor bloqueou o KeyAuth! (Falha no INIT)",
            Duration=5
        })
        return
    end
    local data_init
    local decode_success=pcall(function()
        data_init=HttpService:JSONDecode(req_init)
    end)
    if not decode_success or not data_init then
        CoreGui:SetCore("SendNotification",{
            Title="ERRO",
            Text="Resposta inv\195\161lida do servidor. Verifique o Owner ID e o nome do App.",
            Duration=5
        })
        return
    end
    if data_init.success==true then
        initialized=true
        sessionid=data_init.sessionid
    else
        CoreGui:SetCore("SendNotification",{
            Title="ERRO INIT",
            Text="Erro: "..(data_init.message or"Desconhecido"),
            Duration=5
        })
        return
    end
    local hwid=urlEncode(getHWID())
    local licenseUrl=string.format("https://keyauth.win/api/1.2/?name=%s&ownerid=%s&type=license&key=%s&ver=%s&sessionid=%s&hwid=%s",encodedName,"t3R5cUyb8J",input,"1.0",sessionid,hwid)
    local req_license=safeHttpGet(licenseUrl)
    if req_license==nil or req_license==""then
        CoreGui:SetCore("SendNotification",{
            Title="ERRO DE CONEX\195\131O",
            Text="Executor bloqueou a requisi\195\167\195\163o da chave!",
            Duration=5
        })
        return
    end
    local data_license
    local decode_license=pcall(function()
        data_license=HttpService:JSONDecode(req_license)
    end)
    if not decode_license or not data_license then
        CoreGui:SetCore("SendNotification",{
            Title="ERRO",
            Text="Erro ao ler resposta do servidor.",
            Duration=5
        })
        return
    end
    if data_license.success==true then
        authenticated=true
        errorLabel.TextTransparency=1
        TweenService:Create(keyFrame,TweenInfo.new(0.4,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
            BackgroundTransparency=1
        }):Play()
        for _,child in ipairs(keyFrame:GetChildren())do
            if child:IsA"GuiObject"then
                TweenService:Create(child,TweenInfo.new(0.3,Enum.EasingStyle.Quad),{
                    TextTransparency=1,
                    BackgroundTransparency=1
                }):Play()
            end
        end
        task.wait(0.4)
        keyFrame.Visible=false
        toggleMenu()
        local welcomeName="Usu\195\161rio"
        if data_license.info and data_license.info.username then
            welcomeName=data_license.info.username
        end
        CoreGui:SetCore("SendNotification",{
            Title="REACH",
            Text="Acesso liberado! Bem-vindo, "..welcomeName,
            Duration=3
        })
    else
        local shake=TweenService:Create(keyBox,TweenInfo.new(0.1,Enum.EasingStyle.Linear),{
            Position=UDim2 .new(0,25,0,85)
        })
        shake:Play()
        shake.Completed:Connect(function()
            TweenService:Create(keyBox,TweenInfo.new(0.1,Enum.EasingStyle.Linear),{
                Position=UDim2 .new(0,15,0,85)
            }):Play()
        end)
        errorLabel.Text=data_license.message or"Chave inv\195\161lida!"
        errorLabel.TextTransparency=0
        CoreGui:SetCore("SendNotification",{
            Title="ERRO",
            Text=data_license.message or"Chave inv\195\161lida ou expirada!",
            Duration=1.5
        })
        keyBox.Text=""
    end
end
enterBtn.MouseButton1Click:Connect(checkKey)
keyBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        checkKey()
    end
end)
local function updateToggleVisual()
    local targetPos=reachEnabled and UDim2 .new(0,24,0.5,-9)or UDim2 .new(0,2,0.5,-9)
    local targetColor=reachEnabled and Color3 .fromRGB(138,43,226)or Color3 .fromRGB(30,30,38)
    TweenService:Create(toggleCircle,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{
        Position=targetPos
    }):Play()
    TweenService:Create(toggleButton,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{
        BackgroundColor3=targetColor
    }):Play()
end
local function getKeyName(keyCode)
    local keyString=tostring(keyCode)
    return keyString:match"Enum%.KeyCode%.(.+)"or keyString
end
local function startKeybind()
    isBindingKey=true
    keybindButton.Text="..."
    keybindButton.TextColor3=Color3 .fromRGB(138,43,226)
    TweenService:Create(keybindButton,TweenInfo.new(0.2,Enum.EasingStyle.Quad),{
        BackgroundColor3=Color3 .fromRGB(40,30,60)
    }):Play()
    TweenService:Create(keybindStroke,TweenInfo.new(0.2,Enum.EasingStyle.Quad),{
        Color=Color3 .fromRGB(138,43,226)
    }):Play()
end
local function endKeybind(keyCode)
    isBindingKey=false
    if keyCode and keyCode~=Enum.KeyCode.Escape and keyCode~=Enum.KeyCode.F5 then
        currentToggleKey=keyCode
        keybindButton.Text=getKeyName(keyCode)
        CoreGui:SetCore("SendNotification",{
            Title="REACH",
            Text="Tecla alterada para: "..getKeyName(keyCode),
            Duration=1.5
        })
    else
        keybindButton.Text=getKeyName(currentToggleKey)
    end
    keybindButton.TextColor3=Color3 .fromRGB(200,200,200)
    TweenService:Create(keybindButton,TweenInfo.new(0.2,Enum.EasingStyle.Quad),{
        BackgroundColor3=Color3 .fromRGB(20,20,25)
    }):Play()
    TweenService:Create(keybindStroke,TweenInfo.new(0.2,Enum.EasingStyle.Quad),{
        Color=Color3 .fromRGB(60,60,70)
    }):Play()
end
local function updateReachDisplay()
    reachValue.Text=tostring(reach).." studs"
    TweenService:Create(reachValue,TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{
        TextColor3=Color3 .fromRGB(186,85,211)
    }):Play()
    task.wait(0.1)
    TweenService:Create(reachValue,TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{
        TextColor3=Color3 .fromRGB(255,255,255)
    }):Play()
end
keybindButton.MouseEnter:Connect(function()
    if not isBindingKey then
        TweenService:Create(keybindButton,TweenInfo.new(0.2,Enum.EasingStyle.Quad),{
            BackgroundColor3=Color3 .fromRGB(30,30,35)
        }):Play()
        TweenService:Create(keybindStroke,TweenInfo.new(0.2,Enum.EasingStyle.Quad),{
            Color=Color3 .fromRGB(90,90,100)
        }):Play()
    end
end)
keybindButton.MouseLeave:Connect(function()
    if not isBindingKey then
        TweenService:Create(keybindButton,TweenInfo.new(0.2,Enum.EasingStyle.Quad),{
            BackgroundColor3=Color3 .fromRGB(20,20,25)
        }):Play()
        TweenService:Create(keybindStroke,TweenInfo.new(0.2,Enum.EasingStyle.Quad),{
            Color=Color3 .fromRGB(60,60,70)
        }):Play()
    end
end)
local function setupStepperBtnHover(btn)
    btn.MouseEnter:Connect(function()
        TweenService:Create(btn,TweenInfo.new(0.2,Enum.EasingStyle.Quad),{
            TextColor3=Color3 .fromRGB(255,255,255)
        }):Play()
    end)
    btn.MouseLeave:Connect(function()
        btn.TextColor3=Color3 .fromRGB(200,200,200)
    end)
end
setupStepperBtnHover(decreaseBtn)
setupStepperBtnHover(increaseBtn)
presetBtn.MouseEnter:Connect(function()
    TweenService:Create(presetBtn,TweenInfo.new(0.2,Enum.EasingStyle.Quad),{
        BackgroundColor3=Color3 .fromRGB(30,30,35)
    }):Play()
    TweenService:Create(presetStroke,TweenInfo.new(0.2,Enum.EasingStyle.Quad),{
        Color=Color3 .fromRGB(90,90,100)
    }):Play()
    TweenService:Create(presetBtn,TweenInfo.new(0.2,Enum.EasingStyle.Quad),{
        TextColor3=Color3 .fromRGB(255,255,255)
    }):Play()
end)
presetBtn.MouseLeave:Connect(function()
    TweenService:Create(presetBtn,TweenInfo.new(0.2,Enum.EasingStyle.Quad),{
        BackgroundColor3=Color3 .fromRGB(22,22,28)
    }):Play()
    TweenService:Create(presetStroke,TweenInfo.new(0.2,Enum.EasingStyle.Quad),{
        Color=Color3 .fromRGB(60,60,70)
    }):Play()
    TweenService:Create(presetBtn,TweenInfo.new(0.2,Enum.EasingStyle.Quad),{
        TextColor3=Color3 .fromRGB(200,200,200)
    }):Play()
end)
decreaseBtn.MouseButton1Click:Connect(function()
    if reach>1 then
        reach=reach-1
        updateReachDisplay()
    end
end)
increaseBtn.MouseButton1Click:Connect(function()
    if reach<100 then
        reach=reach+1
        updateReachDisplay()
    end
end)
presetBtn.MouseButton1Click:Connect(function()
    reach=20
    updateReachDisplay()
    CoreGui:SetCore("SendNotification",{
        Title="REACH",
        Text="Resetado para padr\195\163o",
        Duration=1
    })
end)
toggleButton.MouseButton1Click:Connect(function()
    reachEnabled=not reachEnabled
    updateToggleVisual()
    CoreGui:SetCore("SendNotification",{
        Title="REACH",
        Text=reachEnabled and"Ativado"or"Desativado",
        Duration=1
    })
end)
keybindButton.MouseButton1Click:Connect(function()
    if not isBindingKey then
        startKeybind()
    end
end)
spawn(function()
    while true do
        local breathe=TweenService:Create(borderFrame,TweenInfo.new(2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{
            BackgroundTransparency=0.5
        })
        breathe:Play()
        breathe.Completed:Wait()
        local breathe2=TweenService:Create(borderFrame,TweenInfo.new(2,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{
            BackgroundTransparency=0.8
        })
        breathe2:Play()
        breathe2 .Completed:Wait()
    end
end)
spawn(function()
    while true do
        RunService.Heartbeat:Wait()
        borderGradient.Rotation=(borderGradient.Rotation+0.5)%360
    end
end)
function refreshballs(force)
    if force==false then
        if lastrefreshtime+2>os.time()then
            return
        end
    end
    lastrefreshtime=os.time()
    table.clear(balls)
    for i,v in pairs(workspace:GetDescendants())do
        if v.Name=="TPS"or v.Name=="ESA"or v.Name=="MRS"or v.Name=="PRS"or v.Name=="MPS"then
            task.wait()
            table.insert(balls,v)
        end
    end
end
refreshballs(true)
UserInputService.InputBegan:Connect(function(i,gameProcessedEvent)
    if isBindingMenuKey then
        local kc=i.KeyCode
        if kc~=Enum.KeyCode.Escape and kc~=Enum.KeyCode.Unknown then
            currentMenuKey=kc
            local keyStr=tostring(kc):match"Enum%.KeyCode%.(.+)"or tostring(kc)
            menuKeyBtn.Text=keyStr
            infoLabel.Text=keyStr.." \226\128\162 MENU"
        end
        isBindingMenuKey=false
        menuKeyBtn.TextColor3=Color3 .fromRGB(200,200,200)
        TweenService:Create(menuKeyStroke,TweenInfo.new(0.2),{
            Color=Color3 .fromRGB(60,60,70)
        }):Play()
        return
    end
    if isBindingKey then
        endKeybind(i.KeyCode)
        return
    end
    if i.KeyCode==currentMenuKey then
        toggleMenu()
        return
    end
    if i.KeyCode==currentToggleKey and not gameProcessedEvent and authenticated then
        reachEnabled=not reachEnabled
        updateToggleVisual()
        CoreGui:SetCore("SendNotification",{
            Title="REACH",
            Text=reachEnabled and"Ativado"or"Desativado",
            Duration=1
        })
        return
    end
    if i.KeyCode==Enum.KeyCode.W or i.KeyCode==Enum.KeyCode.A or i.KeyCode==Enum.KeyCode.S or i.KeyCode==Enum.KeyCode.D or i.KeyCode==Enum.KeyCode.Space then
        return
    end
    if gameProcessedEvent==false and authenticated then
        if i.KeyCode==Enum.KeyCode.Comma or i.KeyCode==Enum.KeyCode.Period then
            if i.KeyCode==Enum.KeyCode.Comma then
                if reach>1 then
                    reach=reach-1
                    updateReachDisplay()
                end
            else
                if reach<100 then
                    reach=reach+1
                    updateReachDisplay()
                end
            end
        else
            if not reachEnabled then
                return
            end
            refreshballs(false)
            local rightLeg=player.Character and player.Character:FindFirstChild"Right Leg"
            if rightLeg then
                for i,v in pairs(rightLeg:GetDescendants())do
                    if v.Name=="TouchInterest"and v.Parent then
                        for i,e in pairs(balls)do
                            if(e.Position-rightLeg.Position).magnitude<reach then
                                firetouchinterest(e,v.Parent,0)
                                firetouchinterest(e,v.Parent,1)
                                break
                            end
                        end
                    end
                end
            end
        end
    end
end)
CoreGui:SetCore("SendNotification",{
    Title="REACH",
    Text="Digite a chave para acessar",
    Duration=2
})
