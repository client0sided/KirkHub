-- Complete Arcane Library UI with All Components
-- Place in StarterGui as a LocalScript

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

-- Theme colors (exact match)
local Theme = {
    Background = Color3.fromRGB(16, 18, 18),
    Inline = Color3.fromRGB(21, 24, 24),
    Element = Color3.fromRGB(30, 34, 34),
    Accent = Color3.fromRGB(255, 255, 255),
    Border = Color3.fromRGB(30, 34, 34),
    Border2 = Color3.fromRGB(56, 62, 62)
}

-- Main ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ArcaneLibrary"
ScreenGui.ResetOnSpawn = false

-- Unused holder for hidden elements
local UnusedHolder = Instance.new("ScreenGui")
UnusedHolder.Name = "UnusedHolder"
UnusedHolder.Enabled = false
UnusedHolder.ResetOnSpawn = false

-- Main Window Frame
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 798, 0, 599)
MainFrame.BackgroundColor3 = Theme.Background
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 7)
MainCorner.Parent = MainFrame

-- Sidebar
local SideFrame = Instance.new("Frame")
SideFrame.Name = "Side"
SideFrame.Size = UDim2.new(0, 215, 1, 0)
SideFrame.BackgroundTransparency = 1
SideFrame.Parent = MainFrame

-- Title Area
local TitleFrame = Instance.new("Frame")
TitleFrame.Name = "Title"
TitleFrame.Position = UDim2.new(0, 6, 0, 6)
TitleFrame.Size = UDim2.new(1, -12, 0, 60)
TitleFrame.BackgroundColor3 = Theme.Inline
TitleFrame.BorderSizePixel = 0
TitleFrame.Parent = SideFrame

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 7)
TitleCorner.Parent = TitleFrame

local TitleStroke = Instance.new("UIStroke")
TitleStroke.Color = Theme.Border
TitleStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
TitleStroke.Parent = TitleFrame

-- Logo
local LogoBg = Instance.new("Frame")
LogoBg.Name = "Background"
LogoBg.AnchorPoint = Vector2.new(0, 0.5)
LogoBg.Position = UDim2.new(0, 12, 0.5, 0)
LogoBg.Size = UDim2.new(0, 40, 0, 40)
LogoBg.BackgroundColor3 = Color3.fromRGB(207, 207, 207)
LogoBg.BorderSizePixel = 0
LogoBg.Parent = TitleFrame

local LogoCorner = Instance.new("UICorner")
LogoCorner.CornerRadius = UDim.new(0, 7)
LogoCorner.Parent = LogoBg

local LogoStroke = Instance.new("UIStroke")
LogoStroke.Color = Theme.Border
LogoStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
LogoStroke.Parent = LogoBg

local LogoText = Instance.new("TextLabel")
LogoText.Name = "Text"
LogoText.Text = "A"
LogoText.Font = Enum.Font.GothamBold
LogoText.TextColor3 = Color3.fromRGB(0, 0, 0)
LogoText.AnchorPoint = Vector2.new(0.5, 0.5)
LogoText.Position = UDim2.new(0.5, 0, 0.5, 0)
LogoText.Size = UDim2.new(1, -10, 1, -10)
LogoText.BackgroundTransparency = 1
LogoText.TextSize = 22
LogoText.Parent = LogoBg

-- Title Text
local WindowTitle = Instance.new("TextLabel")
WindowTitle.Name = "RealTitle"
WindowTitle.Text = "Arcane"
WindowTitle.Font = Enum.Font.GothamSemibold
WindowTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
WindowTitle.Size = UDim2.new(0, 0, 0, 15)
WindowTitle.BackgroundTransparency = 1
WindowTitle.Position = UDim2.new(0, 65, 0, 14)
WindowTitle.BorderSizePixel = 0
WindowTitle.AutomaticSize = Enum.AutomaticSize.X
WindowTitle.TextSize = 14
WindowTitle.Parent = TitleFrame

-- Subtitle
local Subtitle = Instance.new("TextLabel")
Subtitle.Name = "Game"
Subtitle.Text = "Library"
Subtitle.Font = Enum.Font.Gotham
Subtitle.TextColor3 = Color3.fromRGB(255, 255, 255)
Subtitle.TextTransparency = 0.5
Subtitle.Size = UDim2.new(0, 0, 0, 15)
Subtitle.BackgroundTransparency = 1
Subtitle.Position = UDim2.new(0, 65, 0, 30)
Subtitle.BorderSizePixel = 0
Subtitle.AutomaticSize = Enum.AutomaticSize.X
Subtitle.TextSize = 14
Subtitle.Parent = TitleFrame

-- Pages Container
local PagesFrame = Instance.new("Frame")
PagesFrame.Name = "Pages"
PagesFrame.BackgroundTransparency = 1
PagesFrame.Position = UDim2.new(0, 0, 0, 75)
PagesFrame.Size = UDim2.new(1, 0, 1, -80)
PagesFrame.Parent = SideFrame

local PagesLayout = Instance.new("UIListLayout")
PagesLayout.Padding = UDim.new(0, 8)
PagesLayout.SortOrder = Enum.SortOrder.LayoutOrder
PagesLayout.Parent = PagesFrame

local PagesPadding = Instance.new("UIPadding")
PagesPadding.PaddingLeft = UDim.new(0, 8)
PagesPadding.Parent = PagesFrame

-- Content Area
local ContentFrame = Instance.new("Frame")
ContentFrame.Name = "Content"
ContentFrame.Position = UDim2.new(0, 220, 0, 6)
ContentFrame.Size = UDim2.new(1, -226, 1, -12)
ContentFrame.BackgroundColor3 = Theme.Inline
ContentFrame.BorderSizePixel = 0
ContentFrame.Parent = MainFrame

local ContentCorner = Instance.new("UICorner")
ContentCorner.CornerRadius = UDim.new(0, 7)
ContentCorner.Parent = ContentFrame

local ContentStroke = Instance.new("UIStroke")
ContentStroke.Color = Theme.Border
ContentStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
ContentStroke.Parent = ContentFrame

-- Bottom Info
local BottomFrame = Instance.new("Frame")
BottomFrame.Name = "Bottom_"
BottomFrame.AnchorPoint = Vector2.new(0, 1)
BottomFrame.Position = UDim2.new(0, 6, 1, -6)
BottomFrame.Size = UDim2.new(1, -12, 0, 45)
BottomFrame.BackgroundColor3 = Theme.Inline
BottomFrame.BorderSizePixel = 0
BottomFrame.Parent = SideFrame

local BottomCorner = Instance.new("UICorner")
BottomCorner.CornerRadius = UDim.new(0, 7)
BottomCorner.Parent = BottomFrame

local BottomStroke = Instance.new("UIStroke")
BottomStroke.Color = Theme.Border
BottomStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
BottomStroke.Parent = BottomFrame

local SubInfo = Instance.new("TextLabel")
SubInfo.Name = "SubExpires"
SubInfo.Text = "Sub expires in 23d"
SubInfo.Font = Enum.Font.Gotham
SubInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
SubInfo.TextTransparency = 0.5
SubInfo.Size = UDim2.new(0, 0, 0, 15)
SubInfo.BackgroundTransparency = 1
SubInfo.Position = UDim2.new(0, 10, 0, 8)
SubInfo.BorderSizePixel = 0
SubInfo.AutomaticSize = Enum.AutomaticSize.X
SubInfo.TextSize = 12
SubInfo.Parent = BottomFrame

local SessionTimer = Instance.new("TextLabel")
SessionTimer.Name = "SessionDuration"
SessionTimer.Text = "Session duration: 0:0"
SessionTimer.Font = Enum.Font.Gotham
SessionTimer.TextColor3 = Color3.fromRGB(255, 255, 255)
SessionTimer.Size = UDim2.new(0, 0, 0, 15)
SessionTimer.BackgroundTransparency = 1
SessionTimer.Position = UDim2.new(0, 10, 0, 23)
SessionTimer.BorderSizePixel = 0
SessionTimer.AutomaticSize = Enum.AutomaticSize.X
SessionTimer.TextSize = 12
SessionTimer.Parent = BottomFrame

-- Store all components
local Components = {}
local ActivePage = nil

-- Component Creation Functions
function Components:CreateSection(Parent, Name, Icon, Side)
    local SectionFrame = Instance.new("Frame")
    SectionFrame.Name = "Section"
    SectionFrame.Size = UDim2.new(1, 0, 0, 25)
    SectionFrame.BackgroundColor3 = Theme.Inline
    SectionFrame.BorderSizePixel = 0
    SectionFrame.AutomaticSize = Enum.AutomaticSize.Y
    SectionFrame.Parent = Parent
    
    local SectionCorner = Instance.new("UICorner")
    SectionCorner.CornerRadius = UDim.new(0, 7)
    SectionCorner.Parent = SectionFrame
    
    local SectionStroke = Instance.new("UIStroke")
    SectionStroke.Color = Theme.Border
    SectionStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    SectionStroke.Parent = SectionFrame
    
    local SectionIcon = Instance.new("ImageLabel")
    SectionIcon.Name = "Icon"
    SectionIcon.ImageColor3 = Color3.fromRGB(100, 100, 100)
    SectionIcon.Image = "rbxassetid://"..Icon
    SectionIcon.BackgroundTransparency = 1
    SectionIcon.Position = UDim2.new(0, 12, 0, 12)
    SectionIcon.Size = UDim2.new(0, 16, 0, 16)
    SectionIcon.Parent = SectionFrame
    
    local SectionText = Instance.new("TextLabel")
    SectionText.Name = "Text"
    SectionText.Text = Name
    SectionText.Font = Enum.Font.Gotham
    SectionText.TextColor3 = Color3.fromRGB(100, 100, 100)
    SectionText.BackgroundTransparency = 1
    SectionText.Position = UDim2.new(0, 35, 0, 12)
    SectionText.Size = UDim2.new(0, 0, 0, 15)
    SectionText.AutomaticSize = Enum.AutomaticSize.X
    SectionText.TextSize = 14
    SectionText.Parent = SectionFrame
    
    local SectionPadding = Instance.new("UIPadding")
    SectionPadding.PaddingBottom = UDim.new(0, 12)
    SectionPadding.Parent = SectionFrame
    
    local ContentFrame = Instance.new("Frame")
    ContentFrame.Name = "Content"
    ContentFrame.BackgroundTransparency = 1
    ContentFrame.Position = UDim2.new(0, 12, 0, 42)
    ContentFrame.Size = UDim2.new(1, -24, 0, 0)
    ContentFrame.AutomaticSize = Enum.AutomaticSize.Y
    ContentFrame.Parent = SectionFrame
    
    local ContentLayout = Instance.new("UIListLayout")
    ContentLayout.Padding = UDim.new(0, 8)
    ContentLayout.SortOrder = Enum.SortOrder.LayoutOrder
    ContentLayout.Parent = ContentFrame
    
    return {
        Frame = SectionFrame,
        Content = ContentFrame
    }
end

function Components:CreateToggle(Parent, Name, Default, Callback)
    local ToggleFrame = Instance.new("TextButton")
    ToggleFrame.Name = "Toggle"
    ToggleFrame.Text = ""
    ToggleFrame.AutoButtonColor = false
    ToggleFrame.BackgroundTransparency = 1
    ToggleFrame.Size = UDim2.new(1, 0, 0, 16)
    ToggleFrame.Parent = Parent
    
    local ToggleText = Instance.new("TextLabel")
    ToggleText.Name = "Text"
    ToggleText.Text = Name
    ToggleText.Font = Enum.Font.Gotham
    ToggleText.TextColor3 = Color3.fromRGB(100, 100, 100)
    ToggleText.BackgroundTransparency = 1
    ToggleText.AnchorPoint = Vector2.new(0, 0.5)
    ToggleText.Position = UDim2.new(0, 0, 0.5, 0)
    ToggleText.Size = UDim2.new(0, 0, 0, 15)
    ToggleText.AutomaticSize = Enum.AutomaticSize.X
    ToggleText.TextSize = 14
    ToggleText.Parent = ToggleFrame
    
    local Indicator = Instance.new("Frame")
    Indicator.Name = "Indicator"
    Indicator.AnchorPoint = Vector2.new(1, 0)
    Indicator.Position = UDim2.new(1, 0, 0, 0)
    Indicator.Size = UDim2.new(0, 14, 0, 14)
    Indicator.BackgroundColor3 = Theme.Element
    Indicator.BorderSizePixel = 0
    Indicator.Parent = ToggleFrame
    
    local IndicatorCorner = Instance.new("UICorner")
    IndicatorCorner.CornerRadius = UDim.new(0, 4)
    IndicatorCorner.Parent = Indicator
    
    local IndicatorStroke = Instance.new("UIStroke")
    IndicatorStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    IndicatorStroke.Color = Theme.Border2
    IndicatorStroke.Thickness = 2
    IndicatorStroke.Parent = Indicator
    
    local IndicatorFill = Instance.new("Frame")
    IndicatorFill.Name = "Inline"
    IndicatorFill.BackgroundTransparency = 1
    IndicatorFill.Size = UDim2.new(1, 0, 1, 0)
    IndicatorFill.BackgroundColor3 = Theme.Accent
    IndicatorFill.BorderSizePixel = 0
    IndicatorFill.Parent = Indicator
    
    local FillCorner = Instance.new("UICorner")
    FillCorner.CornerRadius = UDim.new(0, 4)
    FillCorner.Parent = IndicatorFill
    
    local CheckImage = Instance.new("ImageLabel")
    CheckImage.Name = "CheckImage"
    CheckImage.ImageColor3 = Color3.fromRGB(0, 0, 0)
    CheckImage.Image = "rbxassetid://132128200461292"
    CheckImage.ImageTransparency = 1
    CheckImage.BackgroundTransparency = 1
    CheckImage.AnchorPoint = Vector2.new(0.5, 0.5)
    CheckImage.Position = UDim2.new(0.5, 0, 0.5, 0)
    CheckImage.Size = UDim2.new(1, -4, 1, -4)
    CheckImage.Parent = IndicatorFill
    
    local SubElements = Instance.new("Frame")
    SubElements.Name = "SubElements"
    SubElements.AnchorPoint = Vector2.new(1, 0)
    SubElements.Position = UDim2.new(1, -25, 0, 0)
    SubElements.Size = UDim2.new(0, 0, 1, 0)
    SubElements.BackgroundTransparency = 1
    SubElements.AutomaticSize = Enum.AutomaticSize.X
    SubElements.Parent = ToggleFrame
    
    local SubLayout = Instance.new("UIListLayout")
    SubLayout.FillDirection = Enum.FillDirection.Horizontal
    SubLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
    SubLayout.Padding = UDim.new(0, 6)
    SubLayout.SortOrder = Enum.SortOrder.LayoutOrder
    SubLayout.Parent = SubElements
    
    local State = Default or false
    
    local function Update()
        if State then
            TweenService:Create(IndicatorFill, TweenInfo.new(0.3), {BackgroundTransparency = 0}):Play()
            TweenService:Create(CheckImage, TweenInfo.new(0.3), {ImageTransparency = 0}):Play()
            TweenService:Create(ToggleText, TweenInfo.new(0.3), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
        else
            TweenService:Create(IndicatorFill, TweenInfo.new(0.3), {BackgroundTransparency = 1}):Play()
            TweenService:Create(CheckImage, TweenInfo.new(0.3), {ImageTransparency = 1}):Play()
            TweenService:Create(ToggleText, TweenInfo.new(0.3), {TextColor3 = Color3.fromRGB(100, 100, 100)}):Play()
        end
        if Callback then Callback(State) end
    end
    
    ToggleFrame.MouseButton1Down:Connect(function()
        State = not State
        Update()
    end)
    
    Update()
    
    return {
        Frame = ToggleFrame,
        Set = function(value) State = value; Update() end,
        Get = function() return State end,
        SubElements = SubElements
    }
end

function Components:CreateButton(Parent, Name, Callback)
    local Button = Instance.new("TextButton")
    Button.Name = "Button"
    Button.Text = Name
    Button.Font = Enum.Font.Gotham
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.AutoButtonColor = false
    Button.Size = UDim2.new(1, 0, 0, 25)
    Button.BackgroundColor3 = Theme.Element
    Button.BorderSizePixel = 0
    Button.Parent = Parent
    
    local ButtonCorner = Instance.new("UICorner")
    ButtonCorner.CornerRadius = UDim.new(0, 4)
    ButtonCorner.Parent = Button
    
    local ButtonStroke = Instance.new("UIStroke")
    ButtonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    ButtonStroke.Color = Theme.Border2
    ButtonStroke.Thickness = 2
    ButtonStroke.Parent = Button
    
    local ButtonPadding = Instance.new("UIPadding")
    ButtonPadding.PaddingBottom = UDim.new(0, 1)
    ButtonPadding.Parent = Button
    
    Button.MouseButton1Down:Connect(function()
        Button.BackgroundColor3 = Theme.Accent
        Button.TextColor3 = Color3.fromRGB(0, 0, 0)
        TweenService:Create(Button, TweenInfo.new(0.1), {BackgroundColor3 = Theme.Element, TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
        if Callback then Callback() end
    end)
    
    return Button
end

function Components:CreateSlider(Parent, Name, Min, Max, Default, Decimals, Suffix, Callback)
    local SliderFrame = Instance.new("Frame")
    SliderFrame.Name = "Slider"
    SliderFrame.BackgroundTransparency = 1
    SliderFrame.Size = UDim2.new(1, 0, 0, 30)
    SliderFrame.Parent = Parent
    
    local SliderText = Instance.new("TextLabel")
    SliderText.Name = "Text"
    SliderText.Text = Name
    SliderText.Font = Enum.Font.Gotham
    SliderText.TextColor3 = Color3.fromRGB(255, 255, 255)
    SliderText.BackgroundTransparency = 1
    SliderText.Size = UDim2.new(0, 0, 0, 15)
    SliderText.AutomaticSize = Enum.AutomaticSize.X
    SliderText.TextSize = 14
    SliderText.Parent = SliderFrame
    
    local SliderValue = Instance.new("TextLabel")
    SliderValue.Name = "Value"
    SliderValue.Text = Default..(Suffix or "")
    SliderValue.Font = Enum.Font.Gotham
    SliderValue.TextColor3 = Color3.fromRGB(100, 100, 100)
    SliderValue.BackgroundTransparency = 1
    SliderValue.AnchorPoint = Vector2.new(1, 0)
    SliderValue.Position = UDim2.new(1, 0, 0, 0)
    SliderValue.Size = UDim2.new(0, 0, 0, 15)
    SliderValue.AutomaticSize = Enum.AutomaticSize.X
    SliderValue.TextSize = 14
    SliderValue.Parent = SliderFrame
    
    local SliderBar = Instance.new("TextButton")
    SliderBar.Name = "RealSlider"
    SliderBar.Text = ""
    SliderBar.AutoButtonColor = false
    SliderBar.AnchorPoint = Vector2.new(0, 1)
    SliderBar.Position = UDim2.new(0, 0, 1, 0)
    SliderBar.Size = UDim2.new(1, 0, 0, 5)
    SliderBar.BackgroundColor3 = Theme.Element
    SliderBar.BorderSizePixel = 0
    SliderBar.Parent = SliderFrame
    
    local BarCorner = Instance.new("UICorner")
    BarCorner.CornerRadius = UDim.new(1, 0)
    BarCorner.Parent = SliderBar
    
    local SliderFill = Instance.new("Frame")
    SliderFill.Name = "Accent"
    SliderFill.Size = UDim2.new((Default - Min) / (Max - Min), -2, 1, 0)
    SliderFill.BackgroundColor3 = Theme.Accent
    SliderFill.BorderSizePixel = 0
    SliderFill.Parent = SliderBar
    
    local FillCorner = Instance.new("UICorner")
    FillCorner.CornerRadius = UDim.new(0, 7)
    FillCorner.Parent = SliderFill
    
    local FillGradient = Instance.new("UIGradient")
    FillGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(180, 180, 180)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
    })
    FillGradient.Parent = SliderFill
    
    local SliderThumb = Instance.new("Frame")
    SliderThumb.Name = "Circle"
    SliderThumb.AnchorPoint = Vector2.new(1, 0.5)
    SliderThumb.Position = UDim2.new(1, 5, 0.5, 0)
    SliderThumb.Size = UDim2.new(0, 8, 0, 8)
    SliderThumb.BackgroundColor3 = Theme.Accent
    SliderThumb.BorderSizePixel = 0
    SliderThumb.Parent = SliderFill
    
    local ThumbCorner = Instance.new("UICorner")
    ThumbCorner.CornerRadius = UDim.new(0, 7)
    ThumbCorner.Parent = SliderThumb
    
    local Sliding = false
    local Value = Default or Min
    
    local function Update(newValue)
        Value = math.clamp(newValue, Min, Max)
        local ratio = (Value - Min) / (Max - Min)
        SliderFill.Size = UDim2.new(ratio, -2, 1, 0)
        SliderValue.Text = string.format("%."..(Decimals or 0).."f%s", Value, Suffix or "")
        if Callback then Callback(Value) end
    end
    
    SliderBar.MouseButton1Down:Connect(function()
        Sliding = true
        local mousePos = UserInputService:GetMouseLocation()
        local barPos = SliderBar.AbsolutePosition
        local barSize = SliderBar.AbsoluteSize
        local ratio = (mousePos.X - barPos.X) / barSize.X
        Update(Min + ratio * (Max - Min))
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if Sliding and input.UserInputType == Enum.UserInputType.MouseMovement then
            local mousePos = input.Position
            local barPos = SliderBar.AbsolutePosition
            local barSize = SliderBar.AbsoluteSize
            local ratio = (mousePos.X - barPos.X) / barSize.X
            Update(Min + ratio * (Max - Min))
        end
    end)
    
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            Sliding = false
        end
    end)
    
    Update(Default or Min)
    
    return {
        Frame = SliderFrame,
        Set = Update,
        Get = function() return Value end
    }
end

function Components:CreateDropdown(Parent, Name, Items, Default, Multi, Callback)
    local DropdownFrame = Instance.new("Frame")
    DropdownFrame.Name = "Dropdown"
    DropdownFrame.BackgroundTransparency = 1
    DropdownFrame.Size = UDim2.new(1, 0, 0, 25)
    DropdownFrame.Parent = Parent
    
    local DropdownText = Instance.new("TextLabel")
    DropdownText.Name = "Text"
    DropdownText.Text = Name
    DropdownText.Font = Enum.Font.Gotham
    DropdownText.TextColor3 = Color3.fromRGB(255, 255, 255)
    DropdownText.BackgroundTransparency = 1
    DropdownText.AnchorPoint = Vector2.new(0, 0.5)
    DropdownText.Position = UDim2.new(0, 0, 0.5, 0)
    DropdownText.Size = UDim2.new(0, 0, 0, 15)
    DropdownText.AutomaticSize = Enum.AutomaticSize.X
    DropdownText.TextSize = 14
    DropdownText.Parent = DropdownFrame
    
    local DropdownButton = Instance.new("TextButton")
    DropdownButton.Name = "RealDropdown"
    DropdownButton.Text = ""
    DropdownButton.AutoButtonColor = false
    DropdownButton.AnchorPoint = Vector2.new(1, 0.5)
    DropdownButton.Position = UDim2.new(1, 0, 0.5, 0)
    DropdownButton.Size = UDim2.new(0, 80, 0, 25)
    DropdownButton.BackgroundColor3 = Theme.Element
    DropdownButton.BorderSizePixel = 0
    DropdownButton.Parent = DropdownFrame
    
    local ButtonCorner = Instance.new("UICorner")
    ButtonCorner.CornerRadius = UDim.new(0, 4)
    ButtonCorner.Parent = DropdownButton
    
    local DropdownValue = Instance.new("TextLabel")
    DropdownValue.Name = "Value"
    DropdownValue.Text = "..."
    DropdownValue.Font = Enum.Font.Gotham
    DropdownValue.TextColor3 = Color3.fromRGB(100, 100, 100)
    DropdownValue.BackgroundTransparency = 1
    DropdownValue.AnchorPoint = Vector2.new(0, 0.5)
    DropdownValue.Position = UDim2.new(0, 6, 0.5, 0)
    DropdownValue.Size = UDim2.new(1, -6, 0, 15)
    DropdownValue.TextSize = 12
    DropdownValue.TextXAlignment = Enum.TextXAlignment.Left
    DropdownValue.TextTruncate = Enum.TextTruncate.AtEnd
    DropdownValue.Parent = DropdownButton
    
    local DropdownIcon = Instance.new("ImageLabel")
    DropdownIcon.Name = "Icon"
    DropdownIcon.ImageColor3 = Color3.fromRGB(100, 100, 100)
    DropdownIcon.Image = "rbxassetid://135448248851234"
    DropdownIcon.BackgroundTransparency = 1
    DropdownIcon.AnchorPoint = Vector2.new(1, 0.5)
    DropdownIcon.Position = UDim2.new(1, -5, 0.5, 0)
    DropdownIcon.Size = UDim2.new(0, 16, 0, 16)
    DropdownIcon.Parent = DropdownButton
    
    local OptionsFrame = Instance.new("Frame")
    OptionsFrame.Name = "OptionHolder"
    OptionsFrame.Visible = false
    OptionsFrame.BackgroundColor3 = Theme.Inline
    OptionsFrame.BorderSizePixel = 0
    OptionsFrame.Size = UDim2.new(0, 80, 0, 0)
    OptionsFrame.AutomaticSize = Enum.AutomaticSize.Y
    OptionsFrame.Parent = UnusedHolder
    
    local OptionsStroke = Instance.new("UIStroke")
    OptionsStroke.Color = Theme.Border
    OptionsStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    OptionsStroke.Parent = OptionsFrame
    
    local OptionsScroll = Instance.new("ScrollingFrame")
    OptionsScroll.Name = "Holder"
    OptionsScroll.Active = true
    OptionsScroll.BackgroundTransparency = 1
    OptionsScroll.Size = UDim2.new(1, 0, 1, 0)
    OptionsScroll.ScrollBarThickness = 2
    OptionsScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
    OptionsScroll.ScrollingDirection = Enum.ScrollingDirection.Y
    OptionsScroll.Parent = OptionsFrame
    
    local OptionsLayout = Instance.new("UIListLayout")
    OptionsLayout.SortOrder = Enum.SortOrder.LayoutOrder
    OptionsLayout.Parent = OptionsScroll
    
    local OptionsPadding = Instance.new("UIPadding")
    OptionsPadding.PaddingBottom = UDim.new(0, 4)
    OptionsPadding.Parent = OptionsFrame
    
    local Selected = Multi and {} or nil
    local OptionButtons = {}
    
    local function UpdateDisplay()
        if Multi then
            if #Selected == 0 then
                DropdownValue.Text = "..."
            else
                DropdownValue.Text = table.concat(Selected, ", ")
            end
        else
            DropdownValue.Text = Selected or "..."
        end
        if Callback then
            Callback(Selected)
        end
    end
    
    local function CreateOption(optionName)
        local OptionButton = Instance.new("TextButton")
        OptionButton.Text = optionName
        OptionButton.Font = Enum.Font.Gotham
        OptionButton.TextColor3 = Color3.fromRGB(100, 100, 100)
        OptionButton.AutoButtonColor = false
        OptionButton.BackgroundTransparency = 1
        OptionButton.Size = UDim2.new(1, 0, 0, 25)
        OptionButton.AutomaticSize = Enum.AutomaticSize.X
        OptionButton.TextSize = 14
        OptionButton.Parent = OptionsScroll
        
        OptionButton.MouseButton1Down:Connect(function()
            if Multi then
                local index = table.find(Selected, optionName)
                if index then
                    table.remove(Selected, index)
                    TweenService:Create(OptionButton, TweenInfo.new(0.3), {
                        BackgroundTransparency = 1,
                        TextColor3 = Color3.fromRGB(100, 100, 100)
                    }):Play()
                else
                    table.insert(Selected, optionName)
                    TweenService:Create(OptionButton, TweenInfo.new(0.3), {
                        BackgroundTransparency = 0,
                        TextColor3 = Color3.fromRGB(0, 0, 0)
                    }):Play()
                end
            else
                if Selected == optionName then
                    Selected = nil
                    TweenService:Create(OptionButton, TweenInfo.new(0.3), {
                        BackgroundTransparency = 1,
                        TextColor3 = Color3.fromRGB(100, 100, 100)
                    }):Play()
                else
                    for _, btn in pairs(OptionButtons) do
                        TweenService:Create(btn, TweenInfo.new(0.3), {
                            BackgroundTransparency = 1,
                            TextColor3 = Color3.fromRGB(100, 100, 100)
                        }):Play()
                    end
                    Selected = optionName
                    TweenService:Create(OptionButton, TweenInfo.new(0.3), {
                        BackgroundTransparency = 0,
                        TextColor3 = Color3.fromRGB(0, 0, 0)
                    }):Play()
                end
            end
            UpdateDisplay()
        end)
        
        OptionButtons[optionName] = OptionButton
        return OptionButton
    end
    
    for _, item in ipairs(Items) do
        CreateOption(item)
    end
    
    local Open = false
    local RenderConnection
    
    local function SetOpen(state)
        Open = state
        OptionsFrame.Visible = state
        OptionsFrame.Parent = state and ScreenGui or UnusedHolder
        
        if state then
            local pos = DropdownButton.AbsolutePosition
            OptionsFrame.Position = UDim2.new(0, pos.X, 0, pos.Y - 25)
            RenderConnection = RunService.RenderStepped:Connect(function()
                local pos = DropdownButton.AbsolutePosition
                OptionsFrame.Position = UDim2.new(0, pos.X, 0, pos.Y - 25)
            end)
        elseif RenderConnection then
            RenderConnection:Disconnect()
            RenderConnection = nil
        end
        
        local targets = {OptionsFrame, OptionsScroll}
        for _, target in pairs(targets) do
            TweenService:Create(target, TweenInfo.new(0.2), {BackgroundTransparency = state and 0 or 1}):Play()
        end
    end
    
    DropdownButton.MouseButton1Down:Connect(function()
        SetOpen(not Open)
    end)
    
    UserInputService.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 and Open then
            if not (OptionsFrame.AbsolutePosition.X <= input.Position.X and input.Position.X <= OptionsFrame.AbsolutePosition.X + OptionsFrame.AbsoluteSize.X and
                   OptionsFrame.AbsolutePosition.Y <= input.Position.Y and input.Position.Y <= OptionsFrame.AbsolutePosition.Y + OptionsFrame.AbsoluteSize.Y) then
                SetOpen(false)
            end
        end
    end)
    
    if Default then
        if Multi then
            Selected = Default
            for _, opt in ipairs(Default) do
                if OptionButtons[opt] then
                    OptionButtons[opt].BackgroundTransparency = 0
                    OptionButtons[opt].TextColor3 = Color3.fromRGB(0, 0, 0)
                end
            end
        else
            Selected = Default
            if OptionButtons[Default] then
                OptionButtons[Default].BackgroundTransparency = 0
                OptionButtons[Default].TextColor3 = Color3.fromRGB(0, 0, 0)
            end
        end
        UpdateDisplay()
    end
    
    return {
        Frame = DropdownFrame,
        Set = function(value)
            Selected = value
            UpdateDisplay()
            if Multi then
                for opt, btn in pairs(OptionButtons) do
                    local active = table.find(value, opt) ~= nil
                    btn.BackgroundTransparency = active and 0 or 1
                    btn.TextColor3 = active and Color3.fromRGB(0, 0, 0) or Color3.fromRGB(100, 100, 100)
                end
            else
                for opt, btn in pairs(OptionButtons) do
                    local active = opt == value
                    btn.BackgroundTransparency = active and 0 or 1
                    btn.TextColor3 = active and Color3.fromRGB(0, 0, 0) or Color3.fromRGB(100, 100, 100)
                end
            end
        end,
        Get = function() return Selected end
    }
end

function Components:CreateTextbox(Parent, Placeholder, Default, Callback)
    local TextboxFrame = Instance.new("Frame")
    TextboxFrame.Name = "Textbox"
    TextboxFrame.BackgroundTransparency = 1
    TextboxFrame.Size = UDim2.new(1, 0, 0, 25)
    TextboxFrame.Parent = Parent
    
    local TextboxInput = Instance.new("TextBox")
    TextboxInput.Name = "Input"
    TextboxInput.Text = Default or ""
    TextboxInput.PlaceholderText = Placeholder or "Enter text..."
    TextboxInput.Font = Enum.Font.Gotham
    TextboxInput.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextboxInput.PlaceholderColor3 = Color3.fromRGB(100, 100, 100)
    TextboxInput.Size = UDim2.new(1, 0, 1, 0)
    TextboxInput.BackgroundColor3 = Theme.Element
    TextboxInput.BorderSizePixel = 0
    TextboxInput.TextSize = 14
    TextboxInput.TextXAlignment = Enum.TextXAlignment.Left
    TextboxInput.Parent = TextboxFrame
    
    local InputCorner = Instance.new("UICorner")
    InputCorner.CornerRadius = UDim.new(0, 4)
    InputCorner.Parent = TextboxInput
    
    local InputStroke = Instance.new("UIStroke")
    InputStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    InputStroke.Color = Theme.Border2
    InputStroke.Thickness = 2
    InputStroke.Parent = TextboxInput
    
    local InputPadding = Instance.new("UIPadding")
    InputPadding.PaddingLeft = UDim.new(0, 8)
    InputPadding.Parent = TextboxInput
    
    TextboxInput.FocusLost:Connect(function(enterPressed)
        if Callback then Callback(TextboxInput.Text) end
    end)
    
    return {
        Frame = TextboxFrame,
        Set = function(value) TextboxInput.Text = value end,
        Get = function() return TextboxInput.Text end
    }
end

function Components:CreateLabel(Parent, Text)
    local LabelFrame = Instance.new("Frame")
    LabelFrame.Name = "Label"
    LabelFrame.BackgroundTransparency = 1
    LabelFrame.Size = UDim2.new(1, 0, 0, 17)
    LabelFrame.Parent = Parent
    
    local LabelText = Instance.new("TextLabel")
    LabelText.Name = "Text"
    LabelText.Text = Text
    LabelText.Font = Enum.Font.Gotham
    LabelText.TextColor3 = Color3.fromRGB(100, 100, 100)
    LabelText.BackgroundTransparency = 1
    LabelText.AnchorPoint = Vector2.new(0, 0.5)
    LabelText.Position = UDim2.new(0, 0, 0.5, 0)
    LabelText.Size = UDim2.new(0, 0, 0, 15)
    LabelText.AutomaticSize = Enum.AutomaticSize.X
    LabelText.TextSize = 14
    LabelText.Parent = LabelFrame
    
    local SubElements = Instance.new("Frame")
    SubElements.Name = "SubElements"
    SubElements.AnchorPoint = Vector2.new(1, 0)
    SubElements.Position = UDim2.new(1, 0, 0, 0)
    SubElements.Size = UDim2.new(0, 0, 1, 0)
    SubElements.BackgroundTransparency = 1
    SubElements.AutomaticSize = Enum.AutomaticSize.X
    SubElements.Parent = LabelFrame
    
    local SubLayout = Instance.new("UIListLayout")
    SubLayout.FillDirection = Enum.FillDirection.Horizontal
    SubLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
    SubLayout.Padding = UDim.new(0, 6)
    SubLayout.SortOrder = Enum.SortOrder.LayoutOrder
    SubLayout.Parent = SubElements
    
    return {
        Frame = LabelFrame,
        SubElements = SubElements
    }
end

function Components:CreateColorpicker(Parent, Default, Callback)
    local ColorButton = Instance.new("TextButton")
    ColorButton.Name = "ColorpickerButton"
    ColorButton.Text = ""
    ColorButton.AutoButtonColor = false
    ColorButton.Size = UDim2.new(0, 14, 0, 14)
    ColorButton.BackgroundColor3 = Default or Color3.fromRGB(164, 229, 255)
    ColorButton.BorderSizePixel = 0
    ColorButton.Parent = Parent
    
    local ColorCorner = Instance.new("UICorner")
    ColorCorner.CornerRadius = UDim.new(0, 4)
    ColorCorner.Parent = ColorButton
    
    local ColorStroke = Instance.new("UIStroke")
    ColorStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    ColorStroke.Color = Theme.Border2
    ColorStroke.Thickness = 1.5
    ColorStroke.Parent = ColorButton
    
    local ColorWindow = Instance.new("Frame")
    ColorWindow.Name = "ColorpickerWindow"
    ColorWindow.Visible = false
    ColorWindow.Position = UDim2.new(0, 115, 0, 102)
    ColorWindow.Size = UDim2.new(0, 183, 0, 201)
    ColorWindow.BackgroundColor3 = Theme.Background
    ColorWindow.BorderSizePixel = 0
    ColorWindow.Parent = UnusedHolder
    
    local WindowCorner = Instance.new("UICorner")
    WindowCorner.CornerRadius = UDim.new(0, 7)
    WindowCorner.Parent = ColorWindow
    
    local WindowInline = Instance.new("Frame")
    WindowInline.Name = "Inline"
    WindowInline.Position = UDim2.new(0, 6, 0, 6)
    WindowInline.Size = UDim2.new(1, -12, 1, -12)
    WindowInline.BackgroundColor3 = Theme.Inline
    WindowInline.BorderSizePixel = 0
    WindowInline.Parent = ColorWindow
    
    local InlineCorner = Instance.new("UICorner")
    InlineCorner.CornerRadius = UDim.new(0, 7)
    InlineCorner.Parent = WindowInline
    
    local InlineStroke = Instance.new("UIStroke")
    InlineStroke.Color = Theme.Border
    InlineStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    InlineStroke.Parent = WindowInline
    
    local Palette = Instance.new("TextButton")
    Palette.Name = "Palette"
    Palette.Text = "-,"
    Palette.Font = Enum.Font.Gotham
    Palette.TextColor3 = Color3.fromRGB(0, 0, 0)
    Palette.AutoButtonColor = false
    Palette.Position = UDim2.new(0, 6, 0, 6)
    Palette.Size = UDim2.new(1, -12, 1, -40)
    Palette.BackgroundColor3 = Color3.fromHSV(0, 1, 1)
    Palette.BorderSizePixel = 0
    Palette.TextSize = 14
    Palette.Parent = WindowInline
    
    local PaletteCorner = Instance.new("UICorner")
    PaletteCorner.CornerRadius = UDim.new(0, 7)
    PaletteCorner.Parent = Palette
    
    local PaletteStroke = Instance.new("UIStroke")
    PaletteStroke.Color = Theme.Border
    PaletteStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    PaletteStroke.Parent = Palette
    
    local Saturation = Instance.new("ImageLabel")
    Saturation.Name = "Saturation"
    Saturation.Image = "rbxassetid://130624743341203"
    Saturation.BackgroundTransparency = 1
    Saturation.Size = UDim2.new(1, 0, 1, 0)
    Saturation.ZIndex = 2
    Saturation.Parent = Palette
    
    local SaturationCorner = Instance.new("UICorner")
    SaturationCorner.CornerRadius = UDim.new(0, 7)
    SaturationCorner.Parent = Saturation
    
    local Value = Instance.new("ImageLabel")
    Value.Name = "Value"
    Value.Image = "rbxassetid://96192970265863"
    Value.BackgroundTransparency = 1
    Value.Position = UDim2.new(0, -1, 0, 0)
    Value.Size = UDim2.new(1, 2, 1, 0)
    Value.ZIndex = 3
    Value.Parent = Palette
    
    local ValueCorner = Instance.new("UICorner")
    ValueCorner.CornerRadius = UDim.new(0, 7)
    ValueCorner.Parent = Value
    
    local PaletteDragger = Instance.new("Frame")
    PaletteDragger.Name = "PaletteDragger"
    PaletteDragger.Size = UDim2.new(0, 3, 0, 3)
    PaletteDragger.Position = UDim2.new(0, 5, 0, 5)
    PaletteDragger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    PaletteDragger.BorderSizePixel = 0
    PaletteDragger.ZIndex = 3
    PaletteDragger.Parent = Palette
    
    local DraggerCorner = Instance.new("UICorner")
    DraggerCorner.CornerRadius = UDim.new(1, 0)
    DraggerCorner.Parent = PaletteDragger
    
    local DraggerStroke = Instance.new("UIStroke")
    DraggerStroke.Color = Color3.fromRGB(120, 120, 120)
    DraggerStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    DraggerStroke.Parent = PaletteDragger
    
    local HueSlider = Instance.new("TextButton")
    HueSlider.Name = "Hue"
    HueSlider.Text = ""
    HueSlider.AutoButtonColor = false
    HueSlider.AnchorPoint = Vector2.new(0, 1)
    HueSlider.Position = UDim2.new(0, 6, 1, -6)
    HueSlider.Size = UDim2.new(1, -12, 0, 18)
    HueSlider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    HueSlider.BorderSizePixel = 0
    HueSlider.Parent = WindowInline
    
    local HueCorner = Instance.new("UICorner")
    HueCorner.CornerRadius = UDim.new(0, 7)
    HueCorner.Parent = HueSlider
    
    local HueStroke = Instance.new("UIStroke")
    HueStroke.Color = Theme.Border
    HueStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    HueStroke.Parent = HueSlider
    
    local HueGradient = Instance.new("UIGradient")
    HueGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
        ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 255, 0)),
        ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 0)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 255)),
        ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 0, 255)),
        ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 0, 255)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))
    })
    HueGradient.Parent = HueSlider
    
    local HueDragger = Instance.new("Frame")
    HueDragger.Name = "HueDragger"
    HueDragger.Size = UDim2.new(0, 2, 1, 0)
    HueDragger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    HueDragger.BorderSizePixel = 0
    HueDragger.Parent = HueSlider
    
    local HueDraggerStroke = Instance.new("UIStroke")
    HueDraggerStroke.Color = Theme.Border
    HueDraggerStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    HueDraggerStroke.Parent = HueDragger
    
    local Color = Default or Color3.fromRGB(255, 255, 255)
    local Hue, SaturationVal, ValueVal = Color:ToHSV()
    local Open = false
    local RenderConnection
    
    local function UpdateColor()
        Color = Color3.fromHSV(Hue, SaturationVal, ValueVal)
        ColorButton.BackgroundColor3 = Color
        Palette.BackgroundColor3 = Color3.fromHSV(Hue, 1, 1)
        if Callback then Callback(Color) end
    end
    
    local function SetOpen(state)
        Open = state
        ColorWindow.Visible = state
        ColorWindow.Parent = state and ScreenGui or UnusedHolder
        
        if state then
            local pos = ColorButton.AbsolutePosition
            ColorWindow.Position = UDim2.new(0, pos.X + 18, 0, pos.Y - 25)
            RenderConnection = RunService.RenderStepped:Connect(function()
                local pos = ColorButton.AbsolutePosition
                ColorWindow.Position = UDim2.new(0, pos.X + 18, 0, pos.Y - 25)
            end)
        elseif RenderConnection then
            RenderConnection:Disconnect()
            RenderConnection = nil
        end
        
        local targets = {ColorWindow, WindowInline, Palette, HueSlider}
        for _, target in pairs(targets) do
            TweenService:Create(target, TweenInfo.new(0.2), {BackgroundTransparency = state and 0 or 1}):Play()
        end
    end
    
    ColorButton.MouseButton1Down:Connect(function()
        SetOpen(not Open)
    end)
    
    local SlidingPalette = false
    local SlidingHue = false
    
    Palette.MouseButton1Down:Connect(function()
        SlidingPalette = true
    end)
    
    HueSlider.MouseButton1Down:Connect(function()
        SlidingHue = true
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            if SlidingPalette then
                local pos = Palette.AbsolutePosition
                local size = Palette.AbsoluteSize
                local mousePos = input.Position
                SaturationVal = 1 - math.clamp((mousePos.X - pos.X) / size.X, 0, 1)
                ValueVal = 1 - math.clamp((mousePos.Y - pos.Y) / size.Y, 0, 1)
                PaletteDragger.Position = UDim2.new(1 - SaturationVal, 0, 1 - ValueVal, 0)
                UpdateColor()
            elseif SlidingHue then
                local pos = HueSlider.AbsolutePosition
                local size = HueSlider.AbsoluteSize
                local mousePos = input.Position
                Hue = math.clamp((mousePos.X - pos.X) / size.X, 0, 1)
                HueDragger.Position = UDim2.new(Hue, 0, 0, 0)
                UpdateColor()
            end
        end
    end)
    
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            SlidingPalette = false
            SlidingHue = false
        end
    end)
    
    UpdateColor()
    
    return {
        Button = ColorButton,
        Set = function(newColor)
            Color = newColor
            Hue, SaturationVal, ValueVal = Color:ToHSV()
            PaletteDragger.Position = UDim2.new(1 - SaturationVal, 0, 1 - ValueVal, 0)
            HueDragger.Position = UDim2.new(Hue, 0, 0, 0)
            UpdateColor()
        end,
        Get = function() return Color end
    }
end

function Components:CreateKeybind(Parent, Default, Callback)
    local KeyButton = Instance.new("TextButton")
    KeyButton.Name = "KeyButton"
    KeyButton.Text = "-"
    KeyButton.Font = Enum.Font.Gotham
    KeyButton.TextColor3 = Color3.fromRGB(100, 100, 100)
    KeyButton.AutoButtonColor = false
    KeyButton.Size = UDim2.new(0, 0, 1, 0)
    KeyButton.BackgroundColor3 = Theme.Element
    KeyButton.BorderSizePixel = 0
    KeyButton.AutomaticSize = Enum.AutomaticSize.X
    KeyButton.TextSize = 12
    KeyButton.Parent = Parent
    
    local KeyCorner = Instance.new("UICorner")
    KeyCorner.CornerRadius = UDim.new(0, 4)
    KeyCorner.Parent = KeyButton
    
    local KeyPadding = Instance.new("UIPadding")
    KeyPadding.PaddingRight = UDim.new(0, 4)
    KeyPadding.PaddingLeft = UDim.new(0, 5)
    KeyPadding.Parent = KeyButton
    
    local Key = Default or "Z"
    local Mode = "Toggle"
    local Toggled = false
    
    local function UpdateDisplay()
        KeyButton.Text = Key == "Z" and "Z" or Key
    end
    
    UpdateDisplay()
    
    KeyButton.MouseButton1Down:Connect(function()
        KeyButton.Text = "."
        local dots = 1
        local picking = true
        
        local dotThread = coroutine.create(function()
            while picking do
                KeyButton.Text = dots == 1 and "." or dots == 2 and ".." or "..."
                dots = dots == 3 and 1 or dots + 1
                wait(0.35)
            end
        end)
        coroutine.resume(dotThread)
        
        local connection
        connection = UserInputService.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.Keyboard then
                Key = input.KeyCode.Name
                picking = false
                UpdateDisplay()
                connection:Disconnect()
            end
        end)
    end)
    
    UserInputService.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode.Name == Key then
            if Mode == "Toggle" then
                Toggled = not Toggled
            elseif Mode == "Hold" then
                Toggled = true
            elseif Mode == "Always" then
                Toggled = true
            end
            if Callback then Callback(Toggled) end
        end
    end)
    
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode.Name == Key then
            if Mode == "Hold" then
                Toggled = false
                if Callback then Callback(Toggled) end
            end
        end
    end)
    
    return {
        Button = KeyButton,
        Set = function(newKey) Key = newKey; UpdateDisplay() end,
        Get = function() return Key, Mode, Toggled end
    }
end

-- Page Creation
function Components:CreatePage(Name, Icon)
    local PageButton = Instance.new("TextButton")
    PageButton.Name = "Inactive"
    PageButton.Text = ""
    PageButton.AutoButtonColor = false
    PageButton.BackgroundTransparency = 1
    PageButton.Size = UDim2.new(0, 200, 0, 30)
    PageButton.BackgroundColor3 = Theme.Inline
    PageButton.Parent = PagesFrame
    
    local PageStroke = Instance.new("UIStroke")
    PageStroke.Color = Theme.Border
    PageStroke.Transparency = 1
    PageStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    PageStroke.Parent = PageButton
    
    local PageCorner = Instance.new("UICorner")
    PageCorner.CornerRadius = UDim.new(0, 7)
    PageCorner.Parent = PageButton
    
    local PageIcon = Instance.new("ImageLabel")
    PageIcon.Name = "Icon"
    PageIcon.ImageColor3 = Color3.fromRGB(100, 100, 100)
    PageIcon.Image = "rbxassetid://"..Icon
    PageIcon.BackgroundTransparency = 1
    PageIcon.AnchorPoint = Vector2.new(0, 0.5)
    PageIcon.Position = UDim2.new(0, 10, 0.5, 0)
    PageIcon.Size = UDim2.new(0, 16, 0, 16)
    PageIcon.Parent = PageButton
    
    local PageText = Instance.new("TextLabel")
    PageText.Name = "Text"
    PageText.Text = Name
    PageText.Font = Enum.Font.Gotham
    PageText.TextColor3 = Color3.fromRGB(100, 100, 100)
    PageText.BackgroundTransparency = 1
    PageText.AnchorPoint = Vector2.new(0, 0.5)
    PageText.Position = UDim2.new(0, 38, 0.5, 0)
    PageText.Size = UDim2.new(0, 0, 0, 15)
    PageText.AutomaticSize = Enum.AutomaticSize.X
    PageText.TextSize = 14
    PageText.Parent = PageButton
    
    local PageContent = Instance.new("Frame")
    PageContent.Name = "Page"
    PageContent.BackgroundTransparency = 1
    PageContent.Visible = false
    PageContent.Size = UDim2.new(1, 0, 1, 0)
    
    local ContentTitle = Instance.new("TextLabel")
    ContentTitle.Name = "PageName"
    ContentTitle.Text = Name
    ContentTitle.Font = Enum.Font.GothamSemibold
    ContentTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    ContentTitle.BackgroundTransparency = 1
    ContentTitle.Position = UDim2.new(0, 15, 0, 15)
    ContentTitle.Size = UDim2.new(0, 0, 0, 15)
    ContentTitle.AutomaticSize = Enum.AutomaticSize.X
    ContentTitle.TextSize = 18
    ContentTitle.Parent = PageContent
    
    local SubPagesFrame = Instance.new("Frame")
    SubPagesFrame.Name = "SubPages"
    SubPagesFrame.Size = UDim2.new(0, 0, 0, 30)
    SubPagesFrame.Position = UDim2.new(0, 13, 0, 42)
    SubPagesFrame.BackgroundColor3 = Theme.Background
    SubPagesFrame.AutomaticSize = Enum.AutomaticSize.X
    SubPagesFrame.Parent = PageContent
    
    local SubPagesPadding = Instance.new("UIPadding")
    SubPagesPadding.PaddingTop = UDim.new(0, 2)
    SubPagesPadding.PaddingBottom = UDim.new(0, 2)
    SubPagesPadding.PaddingRight = UDim.new(0, 2)
    SubPagesPadding.PaddingLeft = UDim.new(0, 2)
    SubPagesPadding.Parent = SubPagesFrame
    
    local SubPagesLayout = Instance.new("UIListLayout")
    SubPagesLayout.Padding = UDim.new(0, 2)
    SubPagesLayout.FillDirection = Enum.FillDirection.Horizontal
    SubPagesLayout.SortOrder = Enum.SortOrder.LayoutOrder
    SubPagesLayout.Parent = SubPagesFrame
    
    local SubPagesCorner = Instance.new("UICorner")
    SubPagesCorner.CornerRadius = UDim.new(0, 7)
    SubPagesCorner.Parent = SubPagesFrame
    
    local ColumnsFrame = Instance.new("Frame")
    ColumnsFrame.Name = "Columns"
    ColumnsFrame.Size = UDim2.new(1, -20, 1, -82)
    ColumnsFrame.Position = UDim2.new(0, 10, 0, 75)
    ColumnsFrame.BackgroundTransparency = 1
    ColumnsFrame.AutomaticSize = Enum.AutomaticSize.X
    ColumnsFrame.Parent = PageContent
    
    local ColumnsLayout = Instance.new("UIListLayout")
    ColumnsLayout.FillDirection = Enum.FillDirection.Horizontal
    ColumnsLayout.SortOrder = Enum.SortOrder.LayoutOrder
    ColumnsLayout.HorizontalFlex = Enum.UIFlexAlignment.Fill
    ColumnsLayout.Parent = ColumnsFrame
    
    for i = 1, 2 do
        local Column = Instance.new("ScrollingFrame")
        Column.Name = "Column"..i
        Column.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
        Column.Active = true
        Column.BackgroundTransparency = 1
        Column.Size = UDim2.new(1, 0, 1, 0)
        Column.ScrollBarThickness = 0
        Column.Parent = ColumnsFrame
        
        if i == 1 then
            local Padding1 = Instance.new("UIPadding")
            Padding1.PaddingTop = UDim.new(0, 3)
            Padding1.PaddingBottom = UDim.new(0, 3)
            Padding1.PaddingRight = UDim.new(0, 8)
            Padding1.PaddingLeft = UDim2.new(0, 3)
            Padding1.Parent = Column
        elseif i == 2 then
            local Padding2 = Instance.new("UIPadding")
            Padding2.PaddingTop = UDim.new(0, 3)
            Padding2.PaddingBottom = UDim.new(0, 3)
            Padding2.PaddingRight = UDim.new(0, 20)
            Padding2.PaddingLeft = UDim2.new(0, 8)
            Padding2.Parent = Column
        end
    end
    
    local Active = false
    local Debounce = false
    
    local function ActivatePage(state)
        if Debounce then return end
        Active = state
        Debounce = true
        
        PageContent.Visible = state
        PageContent.Parent = state and ContentFrame or nil
        
        if state then
            TweenService:Create(PageButton, TweenInfo.new(0.3), {BackgroundTransparency = 0}):Play()
            TweenService:Create(PageIcon, TweenInfo.new(0.3), {ImageColor3 = Color3.fromRGB(200, 200, 200)}):Play()
            TweenService:Create(PageText, TweenInfo.new(0.3), {TextColor3 = Color3.fromRGB(200, 200, 200)}):Play()
            TweenService:Create(PageStroke, TweenInfo.new(0.3), {Transparency = 0}):Play()
            
            if ActivePage and ActivePage ~= PageButton then
                ActivePage.BackgroundTransparency = 1
                local icon = ActivePage:FindFirstChild("Icon")
                local text = ActivePage:FindFirstChild("Text")
                local stroke = ActivePage:FindFirstChildOfClass("UIStroke")
                if icon then TweenService:Create(icon, TweenInfo.new(0.3), {ImageColor3 = Color3.fromRGB(100, 100, 100)}):Play() end
                if text then TweenService:Create(text, TweenInfo.new(0.3), {TextColor3 = Color3.fromRGB(100, 100, 100)}):Play() end
                if stroke then TweenService:Create(stroke, TweenInfo.new(0.3), {Transparency = 1}):Play() end
            end
            ActivePage = PageButton
        else
            TweenService:Create(PageButton, TweenInfo.new(0.3), {BackgroundTransparency = 1}):Play()
            TweenService:Create(PageIcon, TweenInfo.new(0.3), {ImageColor3 = Color3.fromRGB(100, 100, 100)}):Play()
            TweenService:Create(PageText, TweenInfo.new(0.3), {TextColor3 = Color3.fromRGB(100, 100, 100)}):Play()
            TweenService:Create(PageStroke, TweenInfo.new(0.3), {Transparency = 1}):Play()
        end
        
        Debounce = false
    end
    
    PageButton.MouseButton1Down:Connect(function()
        ActivatePage(true)
    end)
    
    return {
        Button = PageButton,
        Content = PageContent,
        Activate = ActivatePage,
        SubPagesFrame = SubPagesFrame,
        ColumnsFrame = ColumnsFrame
    }
end

-- Make window draggable
local Dragging = false
local DragStart, StartPosition

MainFrame.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
        Dragging = true
        DragStart = Input.Position
        StartPosition = MainFrame.Position
        
        local Connection
        Connection = Input.Changed:Connect(function()
            if Input.UserInputState == Enum.UserInputState.End then
                Dragging = false
                Connection:Disconnect()
            end
        end)
    end
end)

UserInputService.InputChanged:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseMovement and Dragging then
        local Delta = Input.Position - DragStart
        TweenService:Create(MainFrame, TweenInfo.new(0.16, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
            Position = UDim2.new(
                StartPosition.X.Scale,
                StartPosition.X.Offset + Delta.X,
                StartPosition.Y.Scale,
                StartPosition.Y.Offset + Delta.Y
            )
        }):Play()
    end
end)

-- Session timer
local StartTime = tick()
spawn(function()
    while true do
        local Seconds = math.floor(tick() - StartTime)
        local Minutes = math.floor(Seconds / 60)
        Seconds = Seconds - Minutes * 60
        SessionTimer.Text = "Session duration: "..Minutes..":"..(Seconds < 10 and "0" or "")..Seconds
        wait(1)
    end
end)

ScreenGui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
UnusedHolder.Parent = Players.LocalPlayer:WaitForChild("PlayerGui"
