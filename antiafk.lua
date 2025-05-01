wait(0.5)

-- //// prevent from spam loading ////
local existingGui = game.CoreGui:FindFirstChild("AntiAFKGui")
if existingGui then
    existingGui:Destroy()
end

local ba = Instance.new("ScreenGui")
ba.Name = "AntiAFKGui"
ba.Parent = game.CoreGui
ba.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local ca = Instance.new("TextLabel")
ca.Parent = ba
ca.Active = true
ca.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
ca.Draggable = true
ca.Position = UDim2.new(0.698610067, 0, 0.098096624, 0)
ca.Size = UDim2.new(0, 370, 0, 52)
ca.Font = Enum.Font.SourceSansSemibold
ca.Text = "Anti Afk"
ca.TextColor3 = Color3.new(0, 1, 1)
ca.TextSize = 22

local da = Instance.new("Frame")
da.Parent = ca
da.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
da.Position = UDim2.new(0, 0, 1.0192306, 0)
da.Size = UDim2.new(0, 370, 0, 107)

local _b = Instance.new("TextLabel")
_b.Parent = da
_b.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
_b.Position = UDim2.new(0, 0, 0.800455689, 0)
_b.Size = UDim2.new(0, 370, 0, 21)
_b.Font = Enum.Font.Arial
_b.Text = "Swift Store"
_b.TextColor3 = Color3.new(0, 1, 1)
_b.TextSize = 20

local ab = Instance.new("TextLabel")
ab.Parent = da
ab.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
ab.Position = UDim2.new(0, 0, 0.158377, 0)
ab.Size = UDim2.new(0, 370, 0, 44)
ab.Font = Enum.Font.ArialBold
ab.Text = "Status: Active"
ab.TextColor3 = Color3.new(0, 1, 1)
ab.TextSize = 20

-- //// anti-afk logic ////
local bb = game:service("VirtualUser")
game:service("Players").LocalPlayer.Idled:connect(function()
    bb:CaptureController()
    bb:ClickButton2(Vector2.new())
    ab.Text = "Roblox tried kicking you but I didn’t let them!"
    wait(2)
    ab.Text = "Status: Active"
end)
