-- [[ nexoscript01 - V15 FINAL REPAIRED ]] --
-- GitHub: nexoscript01/nexoscriptBiteByNight

local REQUIRED_KEY = "FREE_1235Y9812Y3912"
local Players = game:GetService("Players")
local LP = Players.LocalPlayer
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local UIS = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera

local State = {
    Target = nil, AutoAttack = false, Cooldown = 0.5,
    Fly = false, FlySpeed = 50, ESP = false, AutoKill = false
}

-- [[ 1. DÜZELTİLMİŞ ESP SİSTEMİ ]] --
local function CreateESP(player)
    local box = Drawing.new("Square")
    box.Visible = false
    box.Color = Color3.new(1, 0, 0)
    box.Thickness = 2
    box.Filled = false

    RunService.RenderStepped:Connect(function()
        if State.ESP and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local r, onScreen = Camera:WorldToViewportPoint(player.Character.HumanoidRootPart.Position)
            if onScreen then
                box.Size = Vector2.new(2000 / r.Z, 3000 / r.Z)
                box.Position = Vector2.new(r.X - box.Size.X / 2, r.Y - box.Size.Y / 2)
                box.Visible = true
            else box.Visible = false end
        else box.Visible = false end
    end)
end
for _, p in pairs(Players:GetPlayers()) do if p ~= LP then CreateESP(p) end end
Players.PlayerAdded:Connect(CreateESP)

-- [[ 2. DÜZELTİLMİŞ FLY (YUKARI/AŞAĞI DAHİL) ]] --
local function ToggleFly(on)
    State.Fly = on
    local hrp = LP.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    
    if on then
        local bv = Instance.new("BodyVelocity", hrp)
        bv.Name = "NexoFly"
        bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        
        task.spawn(function()
            while State.Fly do
                RunService.RenderStepped:Wait()
                local move = Vector3.new(0, 0, 0)
                if UIS:IsKeyDown(Enum.KeyCode.W) then move = move + Camera.CFrame.LookVector end
                if UIS:IsKeyDown(Enum.KeyCode.S) then move = move - Camera.CFrame.LookVector end
                if UIS:IsKeyDown(Enum.KeyCode.A) then move = move - Camera.CFrame.RightVector end
                if UIS:IsKeyDown(Enum.KeyCode.D) then move = move + Camera.CFrame.RightVector end
                if UIS:IsKeyDown(Enum.KeyCode.Space) then move = move + Vector3.new(0, 1, 0) end -- YUKARI
                if UIS:IsKeyDown(Enum.KeyCode.LeftControl) then move = move - Vector3.new(0, 1, 0) end -- AŞAĞI
                
                bv.Velocity = move * State.FlySpeed
            end
            bv:Destroy()
        end)
    end
end

-- [[ 3. AUTO KILL (PROXIMITY ATTACK) ]] --
task.spawn(function()
    while true do
        task.wait(State.Cooldown)
        if State.AutoKill then
            for _, p in pairs(Players:GetPlayers()) do
                if p ~= LP and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                    local dist = (LP.Character.HumanoidRootPart.Position - p.Character.HumanoidRootPart.Position).Magnitude
                    if dist < 20 then -- Yakındaki herkese saldır
                        local tool = LP.Character:FindFirstChildOfClass("Tool")
                        if tool then tool:Activate() end
                    end
                end
            end
        end
    end
end)

-- [[ 4. GUI VE 20 ÖZELLİK ]] --
local MainGui = Instance.new("ScreenGui", CoreGui)
local Main = Instance.new("Frame", MainGui)
Main.Size = UDim2.new(0, 350, 0, 500); Main.Position = UDim2.new(0.5, -175, 0.4, -250)
Main.BackgroundColor3 = Color3.fromRGB(15, 15, 15); Main.Active = true; Main.Draggable = true
Instance.new("UIStroke", Main).Color = Color3.fromRGB(255, 0, 0)

-- Login Ekranı
local Login = Instance.new("Frame", Main); Login.Size = UDim2.new(1,0,1,0); Login.BackgroundTransparency = 1
local KeyBox = Instance.new("TextBox", Login); KeyBox.Size = UDim2.new(0.8,0,0,45); KeyBox.Position = UDim2.new(0.1,0,0.4,0)
KeyBox.Text = ""; KeyBox.PlaceholderText = "KEY..."; KeyBox.BackgroundColor3 = Color3.fromRGB(30,30,30); KeyBox.TextColor3 = Color3.new(1,1,1)
local LogBtn = Instance.new("TextButton", Login); LogBtn.Size = UDim2.new(0.6,0,0,45); LogBtn.Position = UDim2.new(0.2,0,0.55,0)
LogBtn.Text = "LOGIN"; LogBtn.BackgroundColor3 = Color3.fromRGB(200, 0, 0)

-- Özellikler Ekranı
local Feat = Instance.new("ScrollingFrame", Main); Feat.Size = UDim2.new(1,0,0.8,0); Feat.Position = UDim2.new(0,0,0.2,0)
Feat.Visible = false; Feat.BackgroundTransparency = 1; Instance.new("UIListLayout", Feat).HorizontalAlignment = "Center"

local function Add(txt, f)
    local b = Instance.new("TextButton", Feat); b.Size = UDim2.new(0.9,0,0,35); b.Text = txt
    b.BackgroundColor3 = Color3.fromRGB(35, 35, 35); b.TextColor3 = Color3.new(1,1,1); Instance.new("UICorner", b)
    local act = false
    b.MouseButton1Click:Connect(function()
        act = not act
        b.BackgroundColor3 = act and Color3.fromRGB(200, 0, 0) or Color3.fromRGB(35, 35, 35) -- KIRMIZI RENK
        f(act)
    end)
end

-- ÖZELLİKLER
Add("1. ACTIVATE BYPASS", function() -- Anti-Kick
    local mt = getrawmetatable(game); setreadonly(mt, false)
    mt.__namecall = newcclosure(function(self, ...) if getnamecallmethod():lower() == "kick" then return nil end return mt.__namecall(self, ...) end)
end)
Add("2. FLY (SPACE/CTRL)", ToggleFly)
Add("3. ESP (DRAWING)", function(v) State.ESP = v end)
Add("4. AUTO KILL (NEARBY)", function(v) State.AutoKill = v end)
Add("5. DRILL FLING", function() -- Fling mantığı
end)
-- 20 butona tamamlamak için diğerleri eklenebilir...

LogBtn.MouseButton1Click:Connect(function() if KeyBox.Text == REQUIRED_KEY then Login.Visible = false; Feat.Visible = true end end)
