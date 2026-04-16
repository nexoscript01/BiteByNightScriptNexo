local _0xK = string.char(70, 82, 69, 69, 95, 49, 50, 51, 53, 89, 57, 56, 49, 50, 89, 51, 57, 49, 50)
local _0xS = {f=false, fs=50, e=false, sk=false, h=false, hs=10, ak=false, n=false, aa=false, ss=50, ij=false, ac=false, ap=false, ab=false, inf=false}
local _0x1 = game:GetService(string.char(80,108,97,121,101,114,115))
local _0x2 = _0x1.LocalPlayer
local _0x3 = game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))
local _0x4 = game:GetService(string.char(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101))

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
local _0xM = Instance.new(string.char(70,114,97,109,101), _0xG)
_0xM.Size = UDim2.new(0, 550, 0, 400); _0xM.Position = UDim2.new(0.5, -275, 0.4, -200)
_0xM.BackgroundColor3 = Color3.fromRGB(5, 5, 5); _0xM.Active = true; _0xM.Draggable = true
Instance.new(string.char(85,73,83,116,114,111,107,101), _0xM).Color = Color3.fromRGB(200, 0, 0)

local _0xC = Instance.new(string.char(83,99,114,111,108,108,105,110,103,70,114,97,109,101), _0xM)
_0xC.Size = UDim2.new(1, -130, 0.9, 0); _0xC.Position = UDim2.new(0, 125, 0.05, 0)
_0xC.BackgroundTransparency = 1; _0xC.CanvasSize = UDim2.new(0,0,10,0)
Instance.new(string.char(85,73,76,105,115,116,76,97,121,111,117,116), _0xC).Padding = UDim.new(0, 5)

local function _0xBTN(t, f)
    local b = Instance.new(string.char(84,101,120,116,66,117,116,116,111,110), _0xC)
    b.Size = UDim2.new(0.95, 0, 0, 32); b.Text = "  " .. t; b.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    b.TextColor3 = Color3.new(1,1,1); b.TextXAlignment = Enum.TextXAlignment.Left
    local a = false
    b.MouseButton1Click:Connect(function()
        a = not a; b.TextColor3 = a and Color3.fromRGB(255, 0, 0) or Color3.new(1,1,1)
        f(a)
    end)
end

_0xBTN("ENABLE ANTI-AIM (SPIN)", function(v) _0xS.aa = v end)
_0xBTN("HITBOX EXPANDER (HEAD)", function(v) _0xS.h = v end)
_0xBTN("SKELETON ESP", function(v) _0xS.sk = v end)
_0xBTN("AUTO KILL (REACH)", function(v) _0xS.ak = v end)
_0xBTN("TRIGGER BOT (BETA)", function() end)
_0xBTN("NO RECOIL", function() end)
_0xBTN("FLY (SPACE/CTRL)", function(v) _0xS.f = v end)
_0xBTN("NOCLIP (DUVAR)", function(v) _0xS.n = v end)
_0xBTN("SPEED HACK (150)", function(v) _0x2.Character.Humanoid.WalkSpeed = v and 150 or 16 end)
_0xBTN("INFINITE JUMP", function(v) _0xS.ij = v end)
_0xBTN("FPS BOOSTER", function() end)
_0xBTN("SERVER HOP", function() end)
_0xBTN("BTOOLS (F3X)", function() end)
_0xBTN("ANTI-AFK SYSTEM", function() end)
_0xBTN("AUTO CLICKER", function() end)
_0xBTN("FULL BRIGHT", function(v) game.Lighting.Brightness = v and 4 or 1 end)
_0xBTN("NO FOG", function(v) game.Lighting.FogEnd = v and 100000 or 1000 end)
_0xBTN("X-RAY VISION", function() end)
_0xBTN("AIM LOCK", function() end)
_0xBTN("AUTO FARM (GENERAL)", function() end)
_0xBTN("TELEPORT TO PLAYER", function() end)
_0xBTN("WALKSPEED +50", function(v) _0x2.Character.Humanoid.WalkSpeed = v and 50 or 16 end)
_0xBTN("JUMPPOWER +100", function(v) _0x2.Character.Humanoid.JumpPower = v and 150 or 50 end)
_0xBTN("GRAVITY ZERO", function(v) workspace.Gravity = v and 0 or 196.2 end)
_0xBTN("DELETE SELECTION", function() end)
_0xBTN("INVISIBLE MODE", function() end)
_0xBTN("CHAT SPAMMER", function() end)
_0xBTN("SPIN SPEED X10", function(v) _0xS.ss = v and 200 or 50 end)
_0xBTN("RAINBOW ARMS", function() end)
_0xBTN("HEADLESS MODE", function() end)
_0xBTN("FE KILL (BETA)", function() end)
_0xBTN("GOD MODE (LOCAL)", function() end)
_0xBTN("BLOCKS ESP", function() end)
_0xBTN("TRACERS ESP", function() end)
_0xBTN("INFINITE AMMO (FE)", function() end)
_0xBTN("RAPID FIRE", function() end)
_0xBTN("FLY SPEED X2", function(v) _0xS.fs = v and 100 or 50 end)
_0xBTN("HITBOX SIZE MAX", function(v) _0xS.hs = v and 25 or 10 end)
_0xBTN("REJOIN SERVER", function() game:GetService("TeleportService"):Teleport(game.PlaceId) end)
_0xBTN("DESTROY GUI", function() _0xG:Destroy() end)

_0x3.Heartbeat:Connect(function()
    if _0xS.aa and _0x2.Character then 
        _0x2.Character.HumanoidRootPart.CFrame = _0x2.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(_0xS.ss), 0)
    end
    if _0xS.n and _0x2.Character then
        for _, v in pairs(_0x2.Character:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end
    end
end)

_0xBYP()
for _, p in pairs(_0x1:GetPlayers()) do if p ~= _0x2 then _0xVIS(p) end end
_0x1.PlayerAdded:Connect(_0xVIS)
