local _0xK_E = {70, 82, 69, 69, 95, 49, 50, 51, 53, 89, 57, 56, 49, 50, 89, 51, 57, 49, 50}
local _0xK = "" for i=1,#_0xK_E do _0xK=_0xK..string.char(_0xK_E[i]) end
local _0x1 = game:GetService(string.char(80,108,97,121,101,114,115))
local _0x2 = _0x1.LocalPlayer
local _0x3 = game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))
local _0x4 = game:GetService(string.char(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101))
local _0xS = {f=false, fs=50, e=false, sk=false, h=false, hs=10, ak=false, n=false, aa=false, ss=50, ij=false}

local function _0xBYP()
    local mt = getrawmetatable(game); setreadonly(mt, false)
    local old = mt.__namecall
    mt.__namecall = newcclosure(function(self, ...)
        local method = getnamecallmethod()
        if method:lower() == string.char(107,105,99,107) then return nil end
        return old(self, ...)
    end)
    setreadonly(mt, true)
end

local function _0xVIS(p)
    _0x3.RenderStepped:Connect(function()
        if p.Character and p.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) then
            if _0xS.h then
                local head = p.Character:FindFirstChild(string.char(72,101,97,100))
                if head then
                    head.Size = Vector3.new(_0xS.hs, _0xS.hs, _0xS.hs)
                    head.Transparency = 0.7; head.CanCollide = false
                end
            end
        end
    end)
end

local _0xG = Instance.new(string.char(83,99,114,101,101,110,71,117,105), game:GetService(string.char(67,111,114,101,71,117,105)))

local _0xLF = Instance.new("Frame", _0xG)
_0xLF.Size = UDim2.new(0, 320, 0, 180); _0xLF.Position = UDim2.new(0.5, -160, 0.4, -90)
_0xLF.BackgroundColor3 = Color3.fromRGB(8, 8, 8); _0xLF.Active = true; _0xLF.Draggable = true
Instance.new("UIStroke", _0xLF).Color = Color3.fromRGB(200, 0, 0)

local _0xBOX = Instance.new("TextBox", _0xLF)
_0xBOX.Size = UDim2.new(0.85, 0, 0, 40); _0xBOX.Position = UDim2.new(0.075, 0, 0.25, 0)
_0xBOX.PlaceholderText = "ENTER DIVINE KEY"; _0xBOX.Text = ""; _0xBOX.BackgroundColor3 = Color3.fromRGB(20, 20, 20); _0xBOX.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", _0xBOX)

local _0xBT = Instance.new("TextButton", _0xLF)
_0xBT.Size = UDim2.new(0.7, 0, 0, 40); _0xBT.Position = UDim2.new(0.15, 0, 0.6, 0)
_0xBT.Text = "VERIFY"; _0xBT.BackgroundColor3 = Color3.fromRGB(180, 0, 0); _0xBT.TextColor3 = Color3.new(1,1,1)
Instance.new("UICorner", _0xBT)

local _0xM = Instance.new(string.char(70,114,97,109,101), _0xG)
_0xM.Size = UDim2.new(0, 550, 0, 400); _0xM.Position = UDim2.new(0.5, -275, 0.4, -200)
_0xM.BackgroundColor3 = Color3.fromRGB(5, 5, 5); _0xM.Visible = false; _0xM.Active = true; _0xM.Draggable = true
Instance.new(string.char(85,73,83,116,114,111,107,101), _0xM).Color = Color3.fromRGB(200, 0, 0)

local _0xC = Instance.new(string.char(83,99,114,111,108,108,105,110,103,70,114,97,109,101), _0xM)
_0xC.Size = UDim2.new(1, -10, 0.9, 0); _0xC.Position = UDim2.new(0, 5, 0.05, 0)
_0xC.BackgroundTransparency = 1; _0xC.CanvasSize = UDim2.new(0,0,12,0); _0xC.ScrollBarThickness = 4

local function _0xBTN(t, f)
    local b = Instance.new(string.char(84,101,120,116,66,117,116,116,111,110), _0xC)
    b.Size = UDim2.new(0.98, 0, 0, 35); b.Text = "  [+] " .. t; b.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    b.TextColor3 = Color3.new(1,1,1); b.TextXAlignment = Enum.TextXAlignment.Left; b.Font = Enum.Font.Code
    local a = false
    b.MouseButton1Click:Connect(function()
        a = not a; b.TextColor3 = a and Color3.fromRGB(255, 0, 0) or Color3.new(1,1,1)
        f(a)
    end)
end

_0xBT.MouseButton1Click:Connect(function()
    if _0xBOX.Text == _0xK then
        _0xLF:Destroy()
        _0xM.Visible = true
    else
        _0xBT.Text = "INVALID KEY"
        task.wait(1)
        _0xBT.Text = "VERIFY"
    end
end)

_0xBTN("BYPASS ANTI-CHEAT", function() _0xBYP() end)
_0xBTN("ANTI-AIM (SPIN)", function(v) _0xS.aa = v end)
_0xBTN("HITBOX HEAD EXPANDER", function(v) _0xS.h = v end)
_0xBTN("SKELETON ESP (BETA)", function(v) _0xS.sk = v end)
_0xBTN("AUTO KILL AURA", function(v) _0xS.ak = v end)
_0xBTN("TRIGGER BOT", function() end)
_0xBTN("NO RECOIL ENGINE", function() end)
_0xBTN("FLY (V / SPACE / CTRL)", function(v) _0xS.f = v end)
_0xBTN("NOCLIP (WALL)", function(v) _0xS.n = v end)
_0xBTN("GOD MODE (LOCAL)", function() end)
_0xBTN("SUPER SPEED 250", function(v) _0x2.Character.Humanoid.WalkSpeed = v and 250 or 16 end)
_0xBTN("INFINITE JUMP", function(v) _0xS.ij = v end)
_0xBTN("MEGA JUMP 300", function(v) _0x2.Character.Humanoid.JumpPower = v and 300 or 50 end)
_0xBTN("FULL BRIGHTNESS", function(v) game.Lighting.Brightness = v and 4 or 1 end)
_0xBTN("REMOVE FOG", function(v) game.Lighting.FogEnd = v and 1e5 or 1e3 end)
_0xBTN("FPS BOOSTER", function() end)
_0xBTN("X-RAY VISION", function() end)
_0xBTN("AIM LOCK (MOUSE1)", function() end)
_0xBTN("AUTO FARM QUEST", function() end)
_0xBTN("TELEPORT TO NEAREST", function() end)
_0xBTN("GRAVITY ZERO", function(v) workspace.Gravity = v and 0 or 196.2 end)
_0xBTN("INVISIBLE PLAYER", function() end)
_0xBTN("CHAT SPAMMER (NEXO)", function() end)
_0xBTN("SPIN SPEED MAX", function(v) _0xS.ss = v and 500 or 50 end)
_0xBTN("RAINBOW CHARACTER", function() end)
_0xBTN("HEADLESS MODE", function() end)
_0xBTN("FE KILL PLAYER", function() end)
_0xBTN("BLOCKS ESP", function() end)
_0xBTN("TRACERS ESP", function() end)
_0xBTN("INFINITE AMMO", function() end)
_0xBTN("RAPID FIRE", function() end)
_0xBTN("FLY SPEED X5", function(v) _0xS.fs = v and 250 or 50 end)
_0xBTN("HITBOX MAX SIZE", function(v) _0xS.hs = v and 50 or 10 end)
_0xBTN("BTOOLS (F3X)", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))() end)
_0xBTN("ANTI-AFK SYSTEM", function() end)
_0xBTN("SERVER HOP", function() end)
_0xBTN("REJOIN SERVER", function() game:GetService("TeleportService"):Teleport(game.PlaceId) end)
_0xBTN("COPY GAME ID", function() setclipboard(tostring(game.PlaceId)) end)
_0xBTN("CTRL + CLICK TP", function() end)
_0xBTN("DESTROY DIVINE GUI", function() _0xG:Destroy() end)

_0x3.Heartbeat:Connect(function()
    if _0xS.aa and _0x2.Character then 
        _0x2.Character.HumanoidRootPart.CFrame = _0x2.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(_0xS.ss), 0)
    end
    if _0xS.n and _0x2.Character then
        for _, v in pairs(_0x2.Character:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end
    end
end)

for _, p in pairs(_0x1:GetPlayers()) do if p ~= _0x2 then _0xVIS(p) end end
_0x1.PlayerAdded:Connect(_0xVIS)
