-- This script was generated using MoonVeil 2.0.23 [https://moonveil.cc]
local UserInputService=game:GetService"UserInputService"
local TweenService=game:GetService"TweenService"
local CoreGui=game:GetService"StarterGui"
local Players=game:GetService"Players"
local RunService=game:GetService"RunService"
local player=Players.LocalPlayer
local reach=20
local menuOpen=false
local reachEnabled=true
local isBindingKey=false
local currentToggleKey=Enum.KeyCode.R
local balls={}
local lastrefreshtime=0
local screenGui=Instance.new"ScreenGui"
screenGui.Name="ReachMenu"
screenGui.ResetOnSpawn=false
screenGui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
pcall(function()
    screenGui.Parent=game:GetService"CoreGui"
end)
if screenGui.Parent~=game:GetService"CoreGui"then
    screenGui.Parent=player:WaitForChild"PlayerGui"
end
local mainFrame=Instance.new"Frame"
mainFrame.Size=UDim2 .new(0,0,0,0)
mainFrame.Position=UDim2 .new(0.5,0,0.5,0)
mainFrame.AnchorPoint=Vector2 .new(0.5,0.5)
mainFrame.BackgroundColor3=Color3 .fromRGB(5,5,8)
mainFrame.BorderSizePixel=0
mainFrame.ClipsDescendants=true
mainFrame.BackgroundTransparency=1
mainFrame.Parent=screenGui
local corner=Instance.new"UICorner"
corner.CornerRadius=UDim.new(0,12)
corner.Parent=mainFrame
local title=Instance.new"TextLabel"
title.Size=UDim2 .new(1,0,0,28)
title.Position=UDim2 .new(0,0,0,12)
title.BackgroundTransparency=1
title.Text="reach"
title.TextColor3=Color3 .fromRGB(220,220,230)
title.TextSize=14
title.Font=Enum.Font.GothamBold
title.TextTransparency=1
title.Parent=mainFrame
local contentFrame=Instance.new"Frame"
contentFrame.Size=UDim2 .new(1,-30,0,100)
contentFrame.Position=UDim2 .new(0,15,0,48)
contentFrame.BackgroundTransparency=1
contentFrame.Parent=mainFrame
local toggleContainer=Instance.new"Frame"
toggleContainer.Size=UDim2 .new(1,0,0,28)
toggleContainer.Position=UDim2 .new(0,0,0,0)
toggleContainer.BackgroundTransparency=1
toggleContainer.Parent=contentFrame
local toggleLabel=Instance.new"TextLabel"
toggleLabel.Size=UDim2 .new(0.5,-10,1,0)
toggleLabel.Position=UDim2 .new(0,0,0,0)
toggleLabel.BackgroundTransparency=1
toggleLabel.Text="status"
toggleLabel.TextColor3=Color3 .fromRGB(160,160,170)
toggleLabel.TextSize=11
toggleLabel.Font=Enum.Font.GothamMedium
toggleLabel.TextXAlignment=Enum.TextXAlignment.Left
toggleLabel.TextTransparency=1
toggleLabel.Parent=toggleContainer
local toggleButton=Instance.new"TextButton"
toggleButton.Size=UDim2 .new(0,40,0,20)
toggleButton.Position=UDim2 .new(1,-40,0.5,-10)
toggleButton.BackgroundColor3=reachEnabled and Color3 .fromRGB(80,80,90)or Color3 .fromRGB(40,40,48)
toggleButton.BorderSizePixel=0
toggleButton.Text=""
toggleButton.AutoButtonColor=false
toggleButton.Parent=toggleContainer
local toggleCorner=Instance.new"UICorner"
toggleCorner.CornerRadius=UDim.new(1,0)
toggleCorner.Parent=toggleButton
local toggleCircle=Instance.new"Frame"
toggleCircle.Size=UDim2 .new(0,16,0,16)
toggleCircle.Position=reachEnabled and UDim2 .new(0,22,0.5,-8)or UDim2 .new(0,2,0.5,-8)
toggleCircle.BackgroundColor3=Color3 .fromRGB(255,255,255)
toggleCircle.BorderSizePixel=0
toggleCircle.Parent=toggleButton
local circleCorner=Instance.new"UICorner"
circleCorner.CornerRadius=UDim.new(1,0)
circleCorner.Parent=toggleCircle
local keybindContainer=Instance.new"Frame"
keybindContainer.Size=UDim2 .new(1,0,0,28)
keybindContainer.Position=UDim2 .new(0,0,0,32)
keybindContainer.BackgroundTransparency=1
keybindContainer.Parent=contentFrame
local keybindLabel=Instance.new"TextLabel"
keybindLabel.Size=UDim2 .new(0.5,-10,1,0)
keybindLabel.Position=UDim2 .new(0,0,0,0)
keybindLabel.BackgroundTransparency=1
keybindLabel.Text="tecla"
keybindLabel.TextColor3=Color3 .fromRGB(160,160,170)
keybindLabel.TextSize=11
keybindLabel.Font=Enum.Font.GothamMedium
keybindLabel.TextXAlignment=Enum.TextXAlignment.Left
keybindLabel.TextTransparency=1
keybindLabel.Parent=keybindContainer
local keybindButton=Instance.new"TextButton"
keybindButton.Size=UDim2 .new(0,44,0,20)
keybindButton.Position=UDim2 .new(1,0,0.5,0)
keybindButton.AnchorPoint=Vector2 .new(1,0.5)
keybindButton.BackgroundColor3=Color3 .fromRGB(30,30,36)
keybindButton.BorderSizePixel=0
keybindButton.Text="R"
keybindButton.TextColor3=Color3 .fromRGB(200,200,210)
keybindButton.TextSize=11
keybindButton.Font=Enum.Font.GothamBold
keybindButton.AutoButtonColor=false
keybindButton.AutomaticSize=Enum.AutomaticSize.X
keybindButton.Parent=keybindContainer
local keybindCorner=Instance.new"UICorner"
keybindCorner.CornerRadius=UDim.new(0,4)
keybindCorner.Parent=keybindButton
local keybindPadding=Instance.new"UIPadding"
keybindPadding.PaddingLeft=UDim.new(0,8)
keybindPadding.PaddingRight=UDim.new(0,8)
keybindPadding.Parent=keybindButton
local reachContainer=Instance.new"Frame"
reachContainer.Size=UDim2 .new(1,0,0,32)
reachContainer.Position=UDim2 .new(0,0,0,64)
reachContainer.BackgroundTransparency=1
reachContainer.Parent=contentFrame
local stepperFrame=Instance.new"Frame"
stepperFrame.Size=UDim2 .new(1,0,1,0)
stepperFrame.Position=UDim2 .new(0,0,0,0)
stepperFrame.BackgroundColor3=Color3 .fromRGB(30,30,36)
stepperFrame.BorderSizePixel=0
stepperFrame.Parent=reachContainer
local stepperCorner=Instance.new"UICorner"
stepperCorner.CornerRadius=UDim.new(1,0)
stepperCorner.Parent=stepperFrame
local decreaseBtn=Instance.new"TextButton"
decreaseBtn.Size=UDim2 .new(0,30,1,0)
decreaseBtn.Position=UDim2 .new(0,0,0,0)
decreaseBtn.BackgroundTransparency=1
decreaseBtn.Text="\226\136\146"
decreaseBtn.TextColor3=Color3 .fromRGB(200,200,210)
decreaseBtn.TextSize=16
decreaseBtn.Font=Enum.Font.GothamBold
decreaseBtn.AutoButtonColor=false
decreaseBtn.Parent=stepperFrame
local increaseBtn=Instance.new"TextButton"
increaseBtn.Size=UDim2 .new(0,30,1,0)
increaseBtn.Position=UDim2 .new(1,-30,0,0)
increaseBtn.BackgroundTransparency=1
increaseBtn.Text="+"
increaseBtn.TextColor3=Color3 .fromRGB(200,200,210)
increaseBtn.TextSize=16
increaseBtn.Font=Enum.Font.GothamBold
increaseBtn.AutoButtonColor=false
increaseBtn.Parent=stepperFrame
local reachValue=Instance.new"TextLabel"
reachValue.Size=UDim2 .new(1,-60,1,0)
reachValue.Position=UDim2 .new(0,30,0,0)
reachValue.BackgroundTransparency=1
reachValue.Text=tostring(reach).." studs"
reachValue.TextColor3=Color3 .fromRGB(220,220,230)
reachValue.TextSize=12
reachValue.Font=Enum.Font.GothamMedium
reachValue.Parent=stepperFrame
local infoLabel=Instance.new"TextLabel"
infoLabel.Size=UDim2 .new(1,0,0,18)
infoLabel.Position=UDim2 .new(0,0,1,-18)
infoLabel.BackgroundTransparency=1
infoLabel.Text="F5 \226\128\162 menu"
infoLabel.TextColor3=Color3 .fromRGB(100,100,110)
infoLabel.TextSize=10
infoLabel.Font=Enum.Font.Gotham
infoLabel.TextTransparency=1
infoLabel.Parent=mainFrame
local gearBtn=Instance.new"TextButton"
gearBtn.Size=UDim2 .new(0,22,0,22)
gearBtn.Position=UDim2 .new(1,-28,0,6)
gearBtn.BackgroundTransparency=1
gearBtn.Text="\226\154\153"
gearBtn.TextColor3=Color3 .fromRGB(120,120,130)
gearBtn.TextSize=14
gearBtn.Font=Enum.Font.GothamBold
gearBtn.AutoButtonColor=false
gearBtn.TextTransparency=1
gearBtn.Parent=mainFrame
local settingsFrame=Instance.new"Frame"
settingsFrame.Size=UDim2 .new(1,-30,1,-40)
settingsFrame.Position=UDim2 .new(0,15,0,32)
settingsFrame.BackgroundTransparency=1
settingsFrame.Visible=false
settingsFrame.Parent=mainFrame
local currentMenuKey=Enum.KeyCode.F5
local isBindingMenuKey=false
local menuKeyContainer=Instance.new"Frame"
menuKeyContainer.Size=UDim2 .new(1,0,0,28)
menuKeyContainer.Position=UDim2 .new(0,0,0,8)
menuKeyContainer.BackgroundTransparency=1
menuKeyContainer.Parent=settingsFrame
local menuKeyLabel=Instance.new"TextLabel"
menuKeyLabel.Size=UDim2 .new(1,-60,1,0)
menuKeyLabel.BackgroundTransparency=1
menuKeyLabel.Text="abrir menu"
menuKeyLabel.TextColor3=Color3 .fromRGB(200,200,210)
menuKeyLabel.TextSize=11
menuKeyLabel.Font=Enum.Font.GothamMedium
menuKeyLabel.TextXAlignment=Enum.TextXAlignment.Left
menuKeyLabel.Parent=menuKeyContainer
local menuKeyBtn=Instance.new"TextButton"
menuKeyBtn.Size=UDim2 .new(0,44,0,20)
menuKeyBtn.Position=UDim2 .new(1,0,0.5,0)
menuKeyBtn.AnchorPoint=Vector2 .new(1,0.5)
menuKeyBtn.BackgroundColor3=Color3 .fromRGB(30,30,36)
menuKeyBtn.BackgroundTransparency=0
menuKeyBtn.BorderSizePixel=0
menuKeyBtn.Text="F5"
menuKeyBtn.TextColor3=Color3 .fromRGB(200,200,210)
menuKeyBtn.TextSize=11
menuKeyBtn.Font=Enum.Font.GothamBold
menuKeyBtn.AutoButtonColor=false
menuKeyBtn.AutomaticSize=Enum.AutomaticSize.X
menuKeyBtn.Parent=menuKeyContainer
local menuKeyCorner=Instance.new"UICorner"
menuKeyCorner.CornerRadius=UDim.new(0,4)
menuKeyCorner.Parent=menuKeyBtn
local menuKeyPad=Instance.new"UIPadding"
menuKeyPad.PaddingLeft=UDim.new(0,8)
menuKeyPad.PaddingRight=UDim.new(0,8)
menuKeyPad.Parent=menuKeyBtn
local destructBtn=Instance.new"TextButton"
destructBtn.Size=UDim2 .new(1,0,0,28)
destructBtn.Position=UDim2 .new(0,0,0,44)
destructBtn.BackgroundColor3=Color3 .fromRGB(80,15,15)
destructBtn.BorderSizePixel=0
destructBtn.Text="destruct"
destructBtn.TextColor3=Color3 .fromRGB(255,70,70)
destructBtn.TextSize=11
destructBtn.Font=Enum.Font.GothamBold
destructBtn.AutoButtonColor=false
destructBtn.Parent=settingsFrame
local destructCorner=Instance.new"UICorner"
destructCorner.CornerRadius=UDim.new(0,4)
destructCorner.Parent=destructBtn
destructBtn.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)
local cleanBtn=Instance.new"TextButton"
cleanBtn.Size=UDim2 .new(1,0,0,28)
cleanBtn.Position=UDim2 .new(0,0,0,76)
cleanBtn.BackgroundColor3=Color3 .fromRGB(15,80,15)
cleanBtn.BorderSizePixel=0
cleanBtn.Text="modo clean"
cleanBtn.TextColor3=Color3 .fromRGB(70,255,70)
cleanBtn.TextSize=11
cleanBtn.Font=Enum.Font.GothamBold
cleanBtn.AutoButtonColor=false
cleanBtn.Parent=settingsFrame
local cleanCorner=Instance.new"UICorner"
cleanCorner.CornerRadius=UDim.new(0,4)
cleanCorner.Parent=cleanBtn
cleanBtn.MouseButton1Click:Connect(function()
    CoreGui:SetCore("SendNotification",{
        Title="modo clean",
        Text="modo clean ativado!",
        Duration=3
    })
    loadstring(game:HttpGet"https://raw.githubusercontent.com/mqnz1/Script-TCS/refs/heads/main/script_configtcs.lua")()
end)
local credits=Instance.new"TextLabel"
credits.Size=UDim2 .new(1,0,0,20)
credits.Position=UDim2 .new(0,0,1,-20)
credits.BackgroundTransparency=1
credits.Text="enezan th e thur"
credits.TextColor3=Color3 .fromRGB(70,70,80)
credits.TextSize=9
credits.Font=Enum.Font.Gotham
credits.Parent=settingsFrame
menuKeyBtn.MouseButton1Click:Connect(function()
    if isBindingMenuKey then
        return
    end
    isBindingMenuKey=true
    menuKeyBtn.Text="..."
    menuKeyBtn.TextColor3=Color3 .fromRGB(200,200,255)
end)
local settingsOpen=false
local function toggleSettings()
    settingsOpen=not settingsOpen
    if settingsOpen then
        contentFrame.Visible=false
        infoLabel.TextTransparency=1
        gearBtn.TextColor3=Color3 .fromRGB(200,200,220)
        settingsFrame.Visible=true
    else
        contentFrame.Visible=true
        infoLabel.TextTransparency=0
        gearBtn.TextColor3=Color3 .fromRGB(120,120,130)
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
    menuOpen=not menuOpen
    local targetSize=menuOpen and UDim2 .new(0,240,0,180)or UDim2 .new(0,0,0,0)
    local targetTransparency=menuOpen and 0 or 1
    TweenService:Create(mainFrame,TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{
        Size=targetSize,
        BackgroundTransparency=menuOpen and 0.05 or 1
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
        infoLabel
    }
    for _,elem in ipairs(elements)do
        task.delay(0.03*(_-1),function()
            if elem:IsA"TextLabel"or elem:IsA"TextButton"then
                pcall(function()
                    TweenService:Create(elem,TweenInfo.new(0.3,Enum.EasingStyle.Quad),{
                        TextTransparency=targetTransparency
                    }):Play()
                end)
            end
            if elem==toggleButton or elem==keybindButton or elem==stepperFrame then
                pcall(function()
                    TweenService:Create(elem,TweenInfo.new(0.3,Enum.EasingStyle.Quad),{
                        BackgroundTransparency=targetTransparency
                    }):Play()
                end)
            end
        end)
    end
    task.delay(0.1,function()
        TweenService:Create(toggleCircle,TweenInfo.new(0.3,Enum.EasingStyle.Quad),{
            BackgroundTransparency=targetTransparency
        }):Play()
    end)
    task.delay(0.15,function()
        TweenService:Create(gearBtn,TweenInfo.new(0.3,Enum.EasingStyle.Quad),{
            TextTransparency=targetTransparency
        }):Play()
    end)
    if not menuOpen and settingsOpen then
        settingsOpen=false
        contentFrame.Visible=true
        settingsFrame.Visible=false
    end
end
local function updateToggleVisual()
    local targetPos=reachEnabled and UDim2 .new(0,22,0.5,-8)or UDim2 .new(0,2,0.5,-8)
    local targetColor=reachEnabled and Color3 .fromRGB(80,80,90)or Color3 .fromRGB(40,40,48)
    TweenService:Create(toggleCircle,TweenInfo.new(0.2),{
        Position=targetPos
    }):Play()
    TweenService:Create(toggleButton,TweenInfo.new(0.2),{
        BackgroundColor3=targetColor
    }):Play()
end
local function getKeyName(keyCode)
    local s=tostring(keyCode)
    return s:match"Enum%.KeyCode%.(.+)"or s
end
local function startKeybind()
    isBindingKey=true
    keybindButton.Text="..."
    keybindButton.TextColor3=Color3 .fromRGB(200,200,255)
end
local function endKeybind(keyCode)
    isBindingKey=false
    if keyCode and keyCode~=Enum.KeyCode.Escape and keyCode~=Enum.KeyCode.F5 then
        currentToggleKey=keyCode
        keybindButton.Text=getKeyName(keyCode)
    else
        keybindButton.Text=getKeyName(currentToggleKey)
    end
    keybindButton.TextColor3=Color3 .fromRGB(200,200,210)
end
local function updateReachDisplay()
    reachValue.Text=tostring(reach).." studs"
end
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
toggleButton.MouseButton1Click:Connect(function()
    reachEnabled=not reachEnabled
    updateToggleVisual()
    CoreGui:SetCore("SendNotification",{
        Title="reach",
        Text=reachEnabled and"ativado"or"desativado",
        Duration=1
    })
end)
keybindButton.MouseButton1Click:Connect(function()
    if not isBindingKey then
        startKeybind()
    end
end)
local lastTouch={}
function refreshballs(force)
    if force==false and lastrefreshtime+0.5>os.clock()then
        return
    end
    lastrefreshtime=os.clock()
    table.clear(balls)
    for ball,t in pairs(lastTouch)do
        if os.clock()-t>COOLDOWN then
            lastTouch[ball]=nil
        end
    end
    for _,v in pairs(workspace:GetDescendants())do
        if v.Name=="TPS"or v.Name=="ESA"or v.Name=="MRS"or v.Name=="PRS"or v.Name=="MPS"then
            local part=v:IsA"BasePart"and v or(v:IsA"Model"and(v.PrimaryPart or v:FindFirstChildWhichIsA("BasePart",true)))
            if part then
                table.insert(balls,part)
            elseif DEBUG then
                warn("[reach] bola sem part:",v:GetFullName())
            end
        end
    end
    if DEBUG then
        print("[reach] refresh:",#balls,"bolas encontradas")
    end
end
refreshballs(true)
local function getKickLimb()
    local char=player.Character
    if not char then
        return nil
    end
    return char:FindFirstChild"Right Leg"or char:FindFirstChild"RightFoot"or char:FindFirstChild"RightLowerLeg"
end
local function isPlausibleTouch(ball,limb,dist)
    if dist<8 then
        return true
    end
    local vel=ball.AssemblyLinearVelocity
    if vel.Magnitude<12 then
        return true
    end
    local toLimb=(limb.Position-ball.Position)
    if toLimb.Magnitude<0.1 then
        return true
    end
    return vel.Unit:Dot(toLimb.Unit)>0
end
local function tryReach()
    local limb=getKickLimb()
    if not limb then
        return
    end
    refreshballs(false)
    local touchInterest=limb:FindFirstChildWhichIsA("TouchTransmitter",true)
    if not touchInterest then
        return
    end
    local now=os.clock()
    for _,ball in pairs(balls)do
        if ball.Parent then
            local dist=(ball.Position-limb.Position).magnitude
            if dist<reach then
                if not lastTouch[ball]or now-lastTouch[ball]>0.2 then
                    if isPlausibleTouch(ball,limb,dist)then
                        lastTouch[ball]=now
                        firetouchinterest(ball,touchInterest.Parent,0)
                        firetouchinterest(ball,touchInterest.Parent,1)
                        break
                    elseif false then
                        print"[reach] bloqueado pelo filtro de plausibilidade"
                    end
                elseif false then
                    print"[reach] bloqueado pelo cooldown"
                end
            end
        end
    end
end
UserInputService.InputBegan:Connect(function(i,gameProcessed)
    if isBindingMenuKey then
        local kc=i.KeyCode
        if kc~=Enum.KeyCode.Escape and kc~=Enum.KeyCode.Unknown then
            currentMenuKey=kc
            local keyStr=tostring(kc):match"Enum%.KeyCode%.(.+)"or tostring(kc)
            menuKeyBtn.Text=keyStr
            infoLabel.Text=keyStr.." \226\128\162 menu"
        end
        isBindingMenuKey=false
        menuKeyBtn.TextColor3=Color3 .fromRGB(200,200,210)
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
    if i.KeyCode==currentToggleKey and not gameProcessed then
        reachEnabled=not reachEnabled
        updateToggleVisual()
        CoreGui:SetCore("SendNotification",{
            Title="reach",
            Text=reachEnabled and"ativado"or"desativado",
            Duration=1
        })
        return
    end
    if i.KeyCode==Enum.KeyCode.Comma or i.KeyCode==Enum.KeyCode.Period then
        if not gameProcessed then
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
        end
        return
    end
    if gameProcessed==false and reachEnabled then
        tryReach()
    end
end)
toggleMenu()
