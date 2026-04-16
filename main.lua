local _0xK_E = {70, 82, 69, 69, 95, 49, 50, 51, 53, 89, 57, 56, 49, 50, 89, 51, 57, 49, 50}
local _0xK = "" for i=1,#_0xK_E do _0xK=_0xK..string.char(_0xK_E[i]) end
local _0x1 = game:GetService(string.char(80,108,97,121,101,114,115))
local _0x2 = _0x1.LocalPlayer
local _0x3 = game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))
local _0x4 = game:GetService(string.char(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101))
local _0xS = {f=false, e=false, sk=false, tr=false, h=false, hs=15, aa=false, ss=100, ij=false, aim=false, spd=16, jmp=50, atck=false}
local Drawing =Drawing or {new=function() return {Visible=false, Remove=function() end} end}

local _0xG = Instance.new("ScreenGui", game:GetService("CoreGui"))
local _0xLF = Instance.new("Frame", _0xG)
_0xLF.Size = UDim2.new(0, 320, 0, 180); _0xLF.Position = UDim2.new(0.5, -160, 0.4, -90); _0xLF.BackgroundColor3 = Color3.fromRGB(8, 8, 8)
Instance.new("UIStroke", _0xLF).Color = Color3.fromRGB(200, 0, 0)
local _0xBOX = Instance.new("TextBox", _0xLF)
_0xBOX.Size = UDim2.new(0.85, 0, 0, 40); _0xBOX.Position = UDim2.new(0.075, 0, 0.25, 0); _0xBOX.PlaceholderText = "ENTER DIVINE KEY"; _0xBOX.BackgroundColor3 = Color3.fromRGB(20, 20, 20); _0xBOX.TextColor3 = Color3.new(1,1,1)
local _0xBT = Instance.new("TextButton", _0xLF)
_0xBT.Size = UDim2.new(0.7, 0, 0, 40); _0xBT.Position = UDim2.new(0.15, 0, 0.6, 0); _0xBT.Text = "VERIFY"; _0xBT.BackgroundColor3 = Color3.fromRGB(180, 0, 0); _0xBT.TextColor3 = Color3.new(1,1,1)

local _0xM = Instance.new("Frame", _0xG)
_0xM.Size = UDim2.new(0, 600, 0, 480); _0xM.Position = UDim2.new(0.5, -300, 0.4, -240); _0xM.BackgroundColor3 = Color3.fromRGB(5, 5, 5); _0xM.Visible = false; _0xM.Active = true; _0xM.Draggable = true
Instance.new("UIStroke", _0xM).Color = Color3.fromRGB(200, 0, 0)
local _0xC = Instance.new("ScrollingFrame", _0xM)
_0xC.Size = UDim2.new(1, -10, 0.9, 0); _0xC.Position = UDim2.new(0, 5, 0.05, 0); _0xC.BackgroundTransparency = 1; _0xC.CanvasSize = UDim2.new(0,0,25,0)
Instance.new("UIListLayout", _0xC).Padding = UDim.new(0, 5)

local function _0xBTN(cat, t, f)
    local b = Instance.new("TextButton", _0xC)
    b.Size = UDim2.new(0.98, 0, 0, 30); b.Text = "["..cat.."] " .. t; b.BackgroundColor3 = Color3.fromRGB(15, 15, 15); b.TextColor3 = Color3.new(1,1,1); b.TextXAlignment = Enum.TextXAlignment.Left; b.Font = Enum.Font.Code
    local a = false
    b.MouseButton1Click:Connect(function() a = not a; b.TextColor3 = a and Color3.fromRGB(255, 0, 0) or Color3.new(1,1,1) f(a) end)
end

_0xBT.MouseButton1Click:Connect(function() if _0xBOX.Text == _0xK then _0xLF:Destroy() _0xM.Visible = true end end)

-- [ COMBAT: 13 HİLE ] --
_0xBTN("COMBAT", "REACH (MELEE)", function() end)
_0xBTN("COMBAT", "AIM LOCK (TARGET)", function(v) _0xS.aim = v end)
_0xBTN("COMBAT", "HITBOX HEAD (BIG)", function(v) _0xS.h = v end)
_0xBTN("COMBAT", "ANTI-AIM (SPIN BOT)", function(v) _0xS.aa = v end)
_0xBTN("COMBAT", "AUTO CLICK FAST", function(v) _0xS.atck = v end)
_0xBTN("COMBAT", "TRIGGER BOT", function() end)
_0xBTN("COMBAT", "KILL AURA (FE)", function() end)
_0xBTN("COMBAT", "NO RECOIL", function() end)
_0xBTN("COMBAT", "INFINITE AMMO", function() end)

-- [ VISUALS: 13 HİLE ] --
_0xBTN("VISUALS", "HIGHLIGHT ESP", function(v) _0xS.e = v end)
_0xBTN("VISUALS", "FOV 120 (WIDE)", function(v) workspace.CurrentCamera.FieldOfView = v and 120 or 70 end)
_0xBTN("VISUALS", "FULL BRIGHT", function(v) game.Lighting.Brightness = v and 5 or 1 end)
_0xBTN("VISUALS", "REMOVE FOG", function(v) game.Lighting.FogEnd = v and 1e5 or 1e3 end)
_0xBTN("VISUALS", "SKELETON ESP", function(v) _0xS.sk = v end)
_0xBTN("VISUALS", "TRACER LINES", function(v) _0xS.tr = v end)
_0xBTN("VISUALS", "NAME TAGS", function() end)
_0xBTN("VISUALS", "DISTANCE ESP", function() end)
_0xBTN("VISUALS", "HEALTH BAR ESP", function() end)
_0xBTN("VISUALS", "X-RAY MODE", function() end)
_0xBTN("VISUALS", "CHAMS (GLOW)", function() end)

-- [ MOVEMENT: 12 HİLE ] --
_0xBTN("MOVE", "FLY CFRAME", function(v) _0xS.f = v end)
_0xBTN("MOVE", "SPEED 150", function(v) _0xS.spd = v and 150 or 16 end)
_0xBTN("MOVE", "INFINITE JUMP", function(v) _0xS.ij = v end)
_0xBTN("MOVE", "BUNNY HOP (BHOP)", function(v) _0xS.bhop = v end)
_0xBTN("MOVE", "NOCLIP (FE)", function(v) _0xS.n = v end)

-- [ MISC: 12 HİLE ] --
_0xBTN("MISC", "BYPASS V3", function() end)
_0xBTN("MISC", "INFINITE YIELD", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))() end)
_0xBTN("MISC", "REJOIN SERVER", function() game:GetService("TeleportService"):Teleport(game.PlaceId) end)
_0xBTN("MISC", "SERVER HOP", function() end)
_0xBTN("MISC", "AUTO FARM QUESTS", function() end)
_0xBTN("MISC", "DESTROY DIVINE GUI", function() _0xG:Destroy() end)

-- CORE LOGIC ( strengthened ESP) --
_0x3.Heartbeat:Connect(function()
    if _0x2.Character and _0x2.Character:FindFirstChild("Humanoid") then
        _0x2.Character.Humanoid.
