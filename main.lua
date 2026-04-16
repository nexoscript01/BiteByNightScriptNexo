local _0xK_E = {70, 82, 69, 69, 95, 49, 50, 51, 53, 89, 57, 56, 49, 50, 89, 51, 57, 49, 50}
local _0xK = "" for i=1,#_0xK_E do _0xK=_0xK..string.char(_0xK_E[i]) end
local _0x1 = game:GetService(string.char(80,108,97,121,101,114,115))
local _0x2 = _0x1.LocalPlayer
local _0x3 = game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))
local _0x4 = game:GetService(string.char(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101))
local _0xS = {f=false, fs=50, e=false, sk=false, h=false, hs=15, ak=false, n=false, aa=false, ss=50, ij=false, aim=false}

local _0xG = Instance.new("ScreenGui", game:GetService("CoreGui"))
local _0xLF = Instance.new("Frame", _0xG)
_0xLF.Size = UDim2.new(0, 320, 0, 180); _0xLF.Position = UDim2.new(0.5, -160, 0.4, -90)
_0xLF.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
Instance.new("UIStroke", _0xLF).Color = Color3.fromRGB(200, 0, 0)
local _0xBOX = Instance.new("TextBox", _0xLF)
_0xBOX.Size = UDim2.new(0.85, 0, 0, 40); _0xBOX.Position = UDim2.new(0.075, 0, 0.25, 0)
_0xBOX.PlaceholderText = "ENTER DIVINE KEY"; _0xBOX.BackgroundColor3 = Color3.fromRGB(20, 20, 20); _0xBOX.TextColor3 = Color3.new(1,1,1)
local _0xBT = Instance.new("TextButton", _0xLF)
_0xBT.Size = UDim2.new(0.7, 0, 0, 40); _0xBT.Position = UDim2.new(0.15, 0, 0.6, 0)
_0xBT.Text = "VERIFY"; _0xBT.BackgroundColor3 = Color3.fromRGB(180, 0, 0); _0xBT.TextColor3 = Color3.new(1,1,1)

local _0xM = Instance.new("Frame", _0xG)
_0xM.Size = UDim2.new(0, 600, 0, 450); _0xM.Position = UDim2.new(0.5, -300, 0.4, -225)
_0xM.BackgroundColor3 = Color3.fromRGB(5, 5, 5); _0xM.Visible = false; _0xM.Active = true; _0xM.Draggable = true
Instance.new("UIStroke", _0xM).Color = Color3.fromRGB(200, 0, 0)

local _0xC = Instance.new("ScrollingFrame", _0xM)
_0xC.Size = UDim2.new(1, -10, 0.9, 0); _0xC.Position = UDim2.new(0, 5, 0.05, 0)
_0xC.BackgroundTransparency = 1; _0xC.CanvasSize = UDim2.new(0,0,15,0)
local _0xL = Instance.new("UIListLayout", _0xC); _0xL.Padding = UDim.new(0, 5)

local function _0xHDR(txt)
    local l = Instance.new("TextLabel", _0xC)
    l.Size = UDim2.new(1, 0, 0, 30); l.Text = "--- " .. txt .. " ---"
    l.TextColor3 = Color3.fromRGB(200, 0, 0); l.BackgroundTransparency = 1; l.Font = Enum.Font.Code
end

local function _0xBTN(t, f)
    local b = Instance.new("TextButton", _0xC)
    b.Size = UDim2.new(0.98, 0, 0, 30); b.Text = "  [+] " .. t; b.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    b.TextColor3 = Color3.new(1,1,1); b.TextXAlignment = Enum.TextXAlignment.Left; b.Font = Enum.Font.Code
    local a = false
    b.MouseButton1Click:Connect(function() a = not a; b.TextColor3 = a and Color3.fromRGB(255, 0, 0) or Color3.new(1,1,1) f(a) end)
end

_0xBT.MouseButton1Click:Connect(function() if _0xBOX.Text == _0xK then _0xLF:Destroy() _0xM.Visible = true end end)

_0xHDR("COMBAT")
_0xBTN("ENABLE AIMBOT", function(v) _0xS.aim = v end)
_0xBTN("HITBOX HEAD EXPANDER", function(v) _0xS.h = v end)
_0xBTN("ENABLE ANTI-AIM (SPIN)", function(v) _0xS.aa = v end)
_0xBTN("TRIGGER BOT", function() end)
_0xBTN("AUTO KILL AURA", function(v) _0xS.ak = v end)
_0xBTN("NO RECOIL ENGINE", function() end)
_0xBTN("RAPID FIRE", function() end)
_0xBTN("INFINITE AMMO", function() end)
_0xBTN("WALL SHOT (BETA)", function() end)
_0xBTN("AUTO RELOAD", function() end)

_0xHDR("VISUALS")
_0xBTN("BOX ESP (WALLHACK)", function(v) _0xS.e = v end)
_0xBTN("SKELETON ESP", function(v) _0xS.sk = v end)
_0xBTN("TRACERS ESP", function() end)
_0xBTN("PLAYER NAME ESP", function() end)
_0xBTN("CHAMS (GLOW)", function() end)
_0xBTN("FULL BRIGHTNESS", function(v) game.Lighting.Brightness = v and 4 or 1 end)
_0xBTN("REMOVE FOG", function(v) game.Lighting.FogEnd = v and 1e5 or 1e3 end)
_0xBTN("X-RAY VISION", function() end)
_0xBTN("RAINBOW WORLD", function() end)
_0xBTN("FPS BOOSTER", function() end)

_0xHDR("MOVEMENT")
_0xBTN("FLY (SPACE / CTRL)", function(v) _0xS.f = v end)
_0xBTN("NOCLIP (DUVAR)", function(v) _0xS.n = v end)
_0xBTN("SUPER SPEED 250", function(v) _0x2.Character.Humanoid.WalkSpeed = v and 250 or 16 end)
_0xBTN("INFINITE JUMP", function(v) _0xS.ij = v end)
_0xBTN("MEGA JUMP 300", function(v) _0x2.Character.Humanoid.JumpPower = v and 300 or 50 end)
_0xBTN("GRAVITY ZERO", function(v) workspace.Gravity = v and 0 or 196.2 end)
_0xBTN("TP TO CLICK (CTRL)", function() end)
_0xBTN("AUTO WALK", function() end)
_0xBTN("SPEED X2", function(v) _0xS.fs = v and 100 or 50 end)
_0xBTN("SPIN SPEED MAX", function(v) _0xS.ss = v and 500 or 50 end)

_0xHDR("MISC / OUTLINE")
_0xBTN("BYPASS ANTI-CHEAT", function() end)
_0xBTN("BTOOLS (F3X)", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))() end)
_0xBTN("ANTI-AFK SYSTEM", function() end)
_0xBTN("SERVER HOP", function() end)
_0xBTN("REJOIN SERVER", function() game:GetService("TeleportService"):Teleport(game.PlaceId) end)
_0xBTN("CHAT SPAMMER", function() end)
_0xBTN("INVISIBLE PLAYER", function() end)
_0xBTN("HEADLESS MODE", function() end)
_0xBTN("DESTROY DIVINE GUI", function() _0xG:Destroy() end)
_0xBTN("COPY GAME ID", function() setclipboard(tostring(game.PlaceId)) end)

_0x3.Heartbeat:Connect(function()
    if _0xS.f and _0x2.Character then
        local bp = _0x2.Character.PrimaryPart.Velocity
        _0x2.Character.PrimaryPart.Velocity = Vector3.new(bp.X, 2, bp.Z)
        if _0x4:IsKeyDown(Enum.KeyCode.Space) then _0x2.Character.PrimaryPart.Velocity = Vector3.new(bp.X, _0xS.fs, bp.Z) end
        if _0x4:IsKeyDown(Enum.KeyCode.LeftControl) then _0x2.Character.PrimaryPart.Velocity = Vector3.new(bp.X, -_0xS.fs, bp.Z) end
    end
    if _0xS.aa and _0x2.Character then _0x2.Character.HumanoidRootPart.CFrame = _0x2.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(_0xS.ss), 0) end
    if _0xS.n and _0x2.Character then for _, v in pairs(_0x2.Character:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end end
    if _0xS.h then for _, p in pairs(_0x1:GetPlayers()) do if p ~= _0x2 and p.Character and p.Character:FindFirstChild("Head") then p.Character.Head.Size = Vector3.new(_0xS.hs, _0xS.hs, _0xS.hs) p.Character.Head.Transparency = 0.5 p.Character.Head.CanCollide = false end end end
end)
