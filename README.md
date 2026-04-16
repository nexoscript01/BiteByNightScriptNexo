-- [[ nexoscript01 - SECURE VERSION ]] --
-- GitHub: nexoscript01/nexoscriptBiteByNight

local _0x913 = "FREE_1235Y9812Y3912"
local _0xP = game:GetService(string.char(80,108,97,121,101,114,115))
local _0xLP = _0xP.LocalPlayer
local _0xRS = game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))
local _0xCG = game:GetService(string.char(67,111,114,101,71,117,105))

local _0xS = {t=nil, a=false, c=0.5, f=false, e=false, k=false, n=false}

-- [[ 0x01: BYPASS ENGINE ]] --
local function _0xBYP()
    local _0xM = getrawmetatable(game)
    setreadonly(_0xM, false)
    local _0xO = _0xM.__namecall
    _0xM.__namecall = newcclosure(function(self, ...)
        local method = getnamecallmethod()
        -- Hata Kodu 267 ve Kick koruması
        if method == string.char(75,105,99,107) then return nil end
        return _0xO(self, ...)
    end)
    setreadonly(_0xM, true)
end

-- [[ 0x02: FLY CORE ]] --
local function _0xFL(on)
    _0xS.f = on
    local h = _0xLP.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
    if on and h then
        local v = Instance.new("BodyVelocity", h)
        v.MaxForce = Vector3.new(9e9, 9e9, 9e9)
        task.spawn(function()
            while _0xS.f do
                _0xRS.RenderStepped:Wait()
                local m = Vector3.new(0,0,0)
                if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.Space) then m = m + Vector3.new(0,1,0) end
                if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then m = m - Vector3.new(0,1,0) end
                v.Velocity = m * 50
            end
            v:Destroy()
        end)
    end
end

-- [[ 0x03: GUI & PROTECTED BUTTONS ]] --
local _0xG = Instance.new("ScreenGui", _0xCG)
local _0xM = Instance.new("Frame", _0xG)
_0xM.Size = UDim2.new(0, 350, 0, 500)
_0xM.Position = UDim2.new(0.5, -175, 0.4, -250)
_0xM.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
_0xM.Active = true; _0xM.Draggable = true
Instance.new("UIStroke", _0xM).Color = Color3.fromRGB(255, 0, 0)

-- Login Elements
local _0xL = Instance.new("Frame", _0xM); _0xL.Size = UDim2.new(1,0,1,0); _0xL.BackgroundTransparency = 1
local _0xK = Instance.new("TextBox", _0xL); _0xK.Size = UDim2.new(0.8,0,0,45); _0xK.Position = UDim2.new(0.1,0,0.4,0)
_0xK.Text = ""; _0xK.PlaceholderText = "KEY..."; _0xK.BackgroundColor3 = Color3.fromRGB(30,30,30); _0xK.TextColor3 = Color3.new(1,1,1)
local _0xLB = Instance.new("TextButton", _0xL); _0xLB.Size = UDim2.new(0.6,0,0,45); _0xLB.Position = UDim2.new(0.2,0,0.55,0)
_0xLB.Text = "LOGIN"; _0xLB.BackgroundColor3 = Color3.fromRGB(200, 0, 0); _0xLB.TextColor3 = Color3.new(1,1,1)

-- Features Frame
local _0xFE = Instance.new("ScrollingFrame", _0xM); _0xFE.Size = UDim2.new(1,0,0.8,0); _0xFE.Position = UDim2.new(0,0,0.2,0)
_0xFE.Visible = false; _0xFE.BackgroundTransparency = 1; _0xFE.CanvasSize = UDim2.new(0,0,3,0)
Instance.new("UIListLayout", _0xFE).HorizontalAlignment = "Center"

local function _0xADD(name, fn)
    local b = Instance.new("TextButton", _0xFE); b.Size = UDim2.new(0.9,0,0,35); b.Text = name
    b.BackgroundColor3 = Color3.fromRGB(35, 35, 35); b.TextColor3 = Color3.new(1,1,1); Instance.new("UICorner", b)
    local a = false
    b.MouseButton1Click:Connect(function()
        a = not a
        b.BackgroundColor3 = a and Color3.fromRGB(200, 0, 0) or Color3.fromRGB(35, 35, 35) -- KIRMIZI RENK
        fn(a)
    end)
end

-- 20 PROTECTED BUTTONS
_0xADD("01. BYPASS ACTIVE", _0xBYP)
_0xADD("02. FLY (SPACE/CTRL)", _0xFL)
_0xADD("03. AUTO KILL", function(v) _0xS.k = v end)
_0xADD("04. ESP DRAWING", function(v) _0xS.e = v end)
_0xADD("05. SPEED X10", function(v) _0xLP.Character.Humanoid.WalkSpeed = v and 150 or 16 end)
-- Diğer butonlar buraya eklenebilir...

_0xLB.MouseButton1Click:Connect(function() if _0xK.text == _0x913 then _0xL.Visible = false; _0xFE.Visible = true end end)
