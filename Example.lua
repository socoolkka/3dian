local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

local function waitForRoot()
    for _ = 1, 100 do
        local Character = Player.Character
        local Root = Character and Character:FindFirstChild("HumanoidRootPart")
        if Root then
            return Root
        end
        task.wait(0.1)
    end
    return nil
end

local Root = waitForRoot()
assert(Root, "3Dian: HumanoidRootPart was not found")

local CanvasWidth = 760
local CanvasHeight = 460
local PixelsPerStud = 100
local PanelDistance = 8
local GlobalEnvironment = (getgenv and getgenv()) or shared

local Part = Instance.new("Part")
Part.Name = "3DianPanel"
Part.Anchored = true
Part.CanCollide = false
Part.CanTouch = false
Part.CanQuery = true
Part.CastShadow = false
Part.Material = Enum.Material.SmoothPlastic
Part.Color = Color3.fromRGB(15, 15, 15)
Part.Transparency = 0
Part.LocalTransparencyModifier = 0
Part.Size = Vector3.new(CanvasWidth / PixelsPerStud, CanvasHeight / PixelsPerStud, 0.2)
Part.CFrame = CFrame.lookAt(Root.Position + Root.CFrame.LookVector * PanelDistance, Root.Position)
Part.Parent = workspace

GlobalEnvironment.Obsidian3DConfig = {
    Adornee = Part,
    Distance = PanelDistance,
    Use3D = true,
    MovingToCamera = false,
    CameraFollowSpeed = 18,
    CameraFollowSmoothness = 65,
    Face = Enum.NormalId.Front,
    CanvasSize = Vector2.new(CanvasWidth, CanvasHeight),
    PixelsPerStud = PixelsPerStud,
    PanelTransparency = 0,
    PanelMaterial = Enum.Material.SmoothPlastic,
    FollowThemeBackground = true,
    Parent = PlayerGui,
    AlwaysOnTop = true,
    MaxDistance = 100,
}
if GlobalEnvironment.Obsidian3DConfig.Use3D == false then
    Part.LocalTransparencyModifier = 1
end

local Repository = "https://github.com/socoolkka/3dian/raw/refs/heads/main/"

local function loadModule(Path)
    local Source = game:HttpGet(Repository .. Path)
    local Chunk, CompileError = loadstring(Source)
    assert(Chunk, CompileError or "Unable to compile module")
    return Chunk()
end

local Library = loadModule("Library.lua")
local ThemeManager = loadModule("addons/ThemeManager.lua")
local SaveManager = loadModule("addons/SaveManager.lua")

local Options = Library.Options
local Toggles = Library.Toggles

Library.ForceCheckbox = false
Library.ShowToggleFrameInKeybinds = true

local Window = Library:CreateWindow({
    Title = "3Dian",
    Footer = "Example",
    Icon = 95816097006870,
    NotifySide = "Right",
    Center = true,
    AutoShow = true,
    AlwaysOnTop = true,
    Resizable = false,
    Size = UDim2.fromOffset(CanvasWidth, CanvasHeight),
    MinContainerWidth = 240,
    Font = Enum.Font.Code,
    ShowCustomCursor = false,
    ShowMobileButtons = true,
    ToggleKeybind = Enum.KeyCode.RightControl,
})

local Tabs = {
    Main = Window:AddTab("Main", "user"),
    More = Window:AddTab("More", "blocks"),
    Key = Window:AddKeyTab("Key System"),
    ["UI Settings"] = Window:AddTab("UI Settings", "settings"),
}

local LeftGroupBox = Tabs.Main:AddGroupbox({
	Side = "Left",
	Name = "Groupbox",
	Description = "boxes",
	IconName = "boxes",

})

LeftGroupBox:AddToggle("MyToggle", {
	Text = "This is a toggle",
	Tooltip = "This is a tooltip",
	DisabledTooltip = "I am disabled!",

	Default = true,
	Disabled = false,
	Visible = true,
	Risky = false,

	Callback = function(Value)
		print("[cb] MyToggle changed to:", Value)
	end,
})
	:AddColorPicker("ColorPicker1", {
		Default = Color3.new(1, 0, 0),
		Title = "Some color1",
		Transparency = 0,

		Callback = function(Value)
			print("[cb] Color changed!", Value)
		end,
	})
	:AddColorPicker("ColorPicker2", {
		Default = Color3.new(0, 1, 0),
		Title = "Some color2",

		Callback = function(Value)
			print("[cb] Color changed!", Value)
		end,
	})

Toggles.MyToggle:OnChanged(function()

	print("MyToggle changed to:", Toggles.MyToggle.Value)
end)

Toggles.MyToggle:SetValue(false)

LeftGroupBox:AddCheckbox("MyCheckbox", {
	Text = "This is a checkbox",
	Tooltip = "This is a tooltip",
	DisabledTooltip = "I am disabled!",

	Default = true,
	Disabled = false,
	Visible = true,
	Risky = false,

	Callback = function(Value)
		print("[cb] MyCheckbox changed to:", Value)
	end,
})

Toggles.MyCheckbox:OnChanged(function()
	print("MyCheckbox changed to:", Toggles.MyCheckbox.Value)
end)

local MyButton = LeftGroupBox:AddButton({
	Text = "Button",
	Func = function()
		print("You clicked a button!")
	end,
	DoubleClick = false,

	Tooltip = "This is the main button",
	DisabledTooltip = "I am disabled!",

	Disabled = false,
	Visible = true,
	Risky = false,
})

local MyButton2 = MyButton:AddButton({
	Text = "Sub button",
	Func = function()
		print("You clicked a sub button!")
	end,
	DoubleClick = true,
	Tooltip = "This is the sub button",
	DisabledTooltip = "I am disabled!",
})

local MyDisabledButton = LeftGroupBox:AddButton({
	Text = "Disabled Button",
	Func = function()
		print("You somehow clicked a disabled button!")
	end,
	DoubleClick = false,
	Tooltip = "This is a disabled button",
	DisabledTooltip = "I am disabled!",
	Disabled = true,
})

LeftGroupBox:AddLabel("This is a label")
LeftGroupBox:AddLabel("This is a label\n\nwhich wraps its text!", true)
LeftGroupBox:AddLabel("This is a label exposed to Labels", true, "TestLabel")
LeftGroupBox:AddLabel("SecondTestLabel", {
	Text = "This is a label made with table options and an index",
	DoesWrap = true,
})

LeftGroupBox:AddLabel("SecondTestLabel", {
	Text = "This is a label that doesn't wrap it's own text",
	DoesWrap = false,
})

LeftGroupBox:AddDivider()

LeftGroupBox:AddSlider("MySlider", {
	Text = "This is my slider!",
	Default = 0,
	Min = 0,
	Max = 5,
	Rounding = 1,
	Compact = false,

	Callback = function(Value)
		print("[cb] MySlider was changed! New value:", Value)
	end,

	Tooltip = "I am a slider!",
	DisabledTooltip = "I am disabled!",

	Disabled = false,
	Visible = true,
})

local Number = Options.MySlider.Value
Options.MySlider:OnChanged(function()
	print("MySlider was changed! New value:", Options.MySlider.Value)
end)

Options.MySlider:SetValue(3)

LeftGroupBox:AddSlider("MySlider2", {
	Text = "This is my custom display slider!",
	Default = 0,
	Min = 0,
	Max = 5,
	Rounding = 0,
	Compact = false,

	FormatDisplayValue = function(slider, value)
		if value == slider.Max then return 'Everything' end
		if value == slider.Min then return 'Nothing' end

	end,

	Tooltip = "I am a slider!",
	DisabledTooltip = "I am disabled!",

	Disabled = false,
	Visible = true,
})

LeftGroupBox:AddInput("MyTextbox", {
	Default = "My textbox!",
	Numeric = false,
	Finished = false,
	ClearTextOnFocus = true,

	Text = "This is a textbox",
	Tooltip = "This is a tooltip",

	Placeholder = "Placeholder text",

	Callback = function(Value)
		print("[cb] Text updated. New text:", Value)
	end,
})

Options.MyTextbox:OnChanged(function()
	print("Text updated. New text:", Options.MyTextbox.Value)
end)

local DropdownGroupBox = Tabs.Main:AddGroupbox({
	Side = "Right",
	Name = "Dropdowns",
})

DropdownGroupBox:AddDropdown("MyDropdown", {
	Values = { "This", "is", "a", "dropdown" },
	Default = 1,
	Multi = false,

	Text = "A dropdown",
	Tooltip = "This is a tooltip",
	DisabledTooltip = "I am disabled!",

	Searchable = false,

	Callback = function(Value)
		print("[cb] Dropdown got changed. New value:", Value)
	end,

	Disabled = false,
	Visible = true,
})

Options.MyDropdown:OnChanged(function()
	print("Dropdown got changed. New value:", Options.MyDropdown.Value)
end)

Options.MyDropdown:SetValue("This")

DropdownGroupBox:AddDropdown("MySearchableDropdown", {
	Values = { "This", "is", "a", "searchable", "dropdown" },
	Default = 1,
	Multi = false,

	Text = "A searchable dropdown",
	Tooltip = "This is a tooltip",
	DisabledTooltip = "I am disabled!",

	Searchable = true,

	Callback = function(Value)
		print("[cb] Dropdown got changed. New value:", Value)
	end,

	Disabled = false,
	Visible = true,
})

DropdownGroupBox:AddDropdown("MyDisplayFormattedDropdown", {
	Values = { "This", "is", "a", "formatted", "dropdown" },
	Default = 1,
	Multi = false,

	Text = "A display formatted dropdown",
	Tooltip = "This is a tooltip",
	DisabledTooltip = "I am disabled!",

	FormatDisplayValue = function(Value)
		if Value == "formatted" then
			return "display formatted"
		end

		return Value
	end,

	Searchable = false,

	Callback = function(Value)
		print("[cb] Display formatted dropdown got changed. New value:", Value)
	end,

	Disabled = false,
	Visible = true,
})

DropdownGroupBox:AddDropdown("MyMultiDropdown", {

	Values = { "This", "is", "a", "dropdown" },
	Default = 1,
	Multi = true,

	Text = "A multi dropdown",
	Tooltip = "This is a tooltip",

	Callback = function(Value)
		print("[cb] Multi dropdown got changed:")
		for key, value in next, Options.MyMultiDropdown.Value do
			print(key, value)
		end
	end,
})

Options.MyMultiDropdown:SetValue({
	This = true,
	is = true,
})

DropdownGroupBox:AddDropdown("MyDictionaryDropdown", {
	Values = {
		item01 = "Excalibur",
		item05 = "Aegis Shield",
		item06 = "Wooden Club",
	},
	Default = "item01",
	Multi = true,

	Text = "A dictionary dropdown",
	Tooltip = "Keys are selected; values are labels only",

	DisabledValues = { "item05" },

	Callback = function(Value)
		print("[cb] Dictionary dropdown got changed:")
		for Key in Value do
			local Label = Options.MyDictionaryDropdown.Values[Key]
			print(Key, "->", Label)
		end
	end
})

DropdownGroupBox:AddDropdown("MyDisabledDropdown", {
	Values = { "This", "is", "a", "dropdown" },
	Default = 1,
	Multi = false,

	Text = "A disabled dropdown",
	Tooltip = "This is a tooltip",
	DisabledTooltip = "I am disabled!",

	Callback = function(Value)
		print("[cb] Disabled dropdown got changed. New value:", Value)
	end,

	Disabled = true,
	Visible = true,
})

DropdownGroupBox:AddDropdown("MyDisabledValueDropdown", {
	Values = { "This", "is", "a", "dropdown", "with", "disabled", "value" },
	DisabledValues = { "disabled" },

	Default = 1,
	Multi = false,

	Text = "A dropdown with disabled value",
	Tooltip = "This is a tooltip",
	DisabledTooltip = "I am disabled!",

	Callback = function(Value)
		print("[cb] Dropdown with disabled value got changed. New value:", Value)
	end,

	Disabled = false,
	Visible = true,
})

DropdownGroupBox:AddDropdown("MyVeryLongDropdown", {
	Values = {
		"This",
		"is",
		"a",
		"very",
		"long",
		"dropdown",
		"with",
		"a",
		"lot",
		"of",
		"values",
		"but",
		"you",
		"can",
		"see",
		"more",
		"than",
		"8",
		"values",
	},
	Default = 1,
	Multi = false,

	MaxVisibleDropdownItems = 12,

	Text = "A very long dropdown",
	Tooltip = "This is a tooltip",
	DisabledTooltip = "I am disabled!",

	Searchable = false,

	Callback = function(Value)
		print("[cb] Very long dropdown got changed. New value:", Value)
	end,

	Disabled = false,
	Visible = true,
})

DropdownGroupBox:AddDropdown("MyPlayerDropdown", {
	SpecialType = "Player",
	ExcludeLocalPlayer = true,
	Text = "A player dropdown",
	Tooltip = "This is a tooltip",

	Callback = function(Value)
		print("[cb] Player dropdown got changed:", Value)
	end,
})

DropdownGroupBox:AddDropdown("MyTeamDropdown", {
	SpecialType = "Team",
	Text = "A team dropdown",
	Tooltip = "This is a tooltip",

	Callback = function(Value)
		print("[cb] Team dropdown got changed:", Value)
	end,
})

LeftGroupBox:AddLabel("Color"):AddColorPicker("ColorPicker", {
	Default = Color3.new(0, 1, 0),
	Title = "Some color",
	Transparency = 0,

	Callback = function(Value)
		print("[cb] Color changed!", Value)
	end,
})

Options.ColorPicker:OnChanged(function()
	print("Color changed!", Options.ColorPicker.Value)
	print("Transparency changed!", Options.ColorPicker.Transparency)
end)

Options.ColorPicker:SetValueRGB(Color3.fromRGB(0, 255, 140))

LeftGroupBox:AddLabel("Keybind"):AddKeyPicker("KeyPicker", {

	Default = "MB2",
	SyncToggleState = false,

	Mode = "Toggle",

	Text = "Auto lockpick safes",
	NoUI = false,

	Callback = function(Value)
		print("[cb] Keybind clicked!", Value)
	end,

	ChangedCallback = function(NewKey, NewModifiers)
		print("[cb] Keybind changed!", NewKey, table.unpack(NewModifiers or {}))
	end,
})

Options.KeyPicker:OnClick(function()
	print("Keybind clicked!", Options.KeyPicker:GetState())
end)

Options.KeyPicker:OnChanged(function()
	print("Keybind changed!", Options.KeyPicker.Value, table.unpack(Options.KeyPicker.Modifiers or {}))
end)

task.spawn(function()
	while task.wait(1) do
		if Library.Unloaded then
			break
		end

		local state = Options.KeyPicker:GetState()
		if state then
			print("KeyPicker is being held down")
		end
	end
end)

Options.KeyPicker:SetValue({ "MB2", "Hold" })

local KeybindNumber = 0

LeftGroupBox:AddLabel("Press Keybind"):AddKeyPicker("KeyPicker2", {

	Default = "X",

	Mode = "Press",
	WaitForCallback = false,

	Text = "Increase Number",

	Callback = function()
		KeybindNumber = KeybindNumber + 1
		print("[cb] Keybind clicked! Number increased to:", KeybindNumber)
	end
})

local LeftGroupBox2 = Tabs.Main:AddGroupbox({
	Side = "Left",
	Name = "Groupbox #2",
})
LeftGroupBox2:AddLabel(
	"This label spans multiple lines! We're gonna run out of UI space...\nJust kidding! Scroll down!\n\n\nHello from below!",
	true
)

local TabBox = Tabs.Main:AddRightTabbox()

local Tab1 = TabBox:AddTab("Tab 1")
Tab1:AddToggle("Tab1Toggle", { Text = "Tab1 Toggle" })

local Tab2 = TabBox:AddTab("Tab 2")
Tab2:AddToggle("Tab2Toggle", { Text = "Tab2 Toggle" })

Library:OnUnload(function()
	print("Unloaded!")
end)

local MoreLeft = Tabs.More:AddGroupbox({
    Side = "Left",
    Name = "Media and layout",
    IconName = "image",
})

MoreLeft:AddImage("ExampleImage", {
    Image = "rbxassetid://95816097006870",
    Height = 130,
    ScaleType = Enum.ScaleType.Fit,
    BackgroundTransparency = 0.15,
})

local PreviewPart = Instance.new("Part")
PreviewPart.Name = "ExampleViewportPart"
PreviewPart.Anchored = true
PreviewPart.CanCollide = false
PreviewPart.Size = Vector3.new(2, 2, 1)
PreviewPart.Color = Color3.fromRGB(125, 85, 255)
PreviewPart.Material = Enum.Material.Neon

MoreLeft:AddViewport("ExampleViewport", {
    Object = PreviewPart,
    Clone = true,
    AutoFocus = true,
    Interactive = true,
    Height = 190,
})
PreviewPart:Destroy()

local PassthroughFrame = Instance.new("Frame")
PassthroughFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
PassthroughFrame.Size = UDim2.fromScale(1, 1)
local PassthroughText = Instance.new("TextLabel")
PassthroughText.BackgroundTransparency = 1
PassthroughText.Size = UDim2.fromScale(1, 1)
PassthroughText.Font = Enum.Font.Code
PassthroughText.Text = "UI passthrough example"
PassthroughText.TextColor3 = Color3.new(1, 1, 1)
PassthroughText.TextSize = 14
PassthroughText.Parent = PassthroughFrame

MoreLeft:AddUIPassthrough("ExamplePassthrough", {
    Instance = PassthroughFrame,
    Height = 48,
})

local MoreTabbox = Tabs.More:AddLeftTabbox()
local MoreTabOne = MoreTabbox:AddTab("Left tab 1")
MoreTabOne:AddToggle("MoreTabToggle", {
    Text = "Left tab toggle",
    Default = false,
})
local MoreTabTwo = MoreTabbox:AddTab("Left tab 2")
MoreTabTwo:AddDropdown("MoreTabDropdown", {
    Text = "Left tab dropdown",
    Values = { "First", "Second", "Third" },
    Default = "First",
})

local MoreRight = Tabs.More:AddGroupbox({
    Side = "Right",
    Name = "Conditional and video",
    IconName = "sliders-horizontal",
})

MoreRight:AddVideo("ExampleVideo", {
    Video = "",
    Looped = true,
    Playing = false,
    Volume = 0.5,
    Height = 145,
})

MoreRight:AddToggle("DependencyToggle", {
    Text = "Show dependency examples",
    Default = false,
})

local ConditionalBox = MoreRight:AddDependencyBox()
ConditionalBox:AddLabel("Dependency box content")
ConditionalBox:AddSlider("DependencySlider", {
    Text = "Conditional value",
    Default = 5,
    Min = 0,
    Max = 10,
    Rounding = 0,
})
ConditionalBox:SetupDependencies({ { Toggles.DependencyToggle, true } })

local ConditionalGroupbox = MoreRight:AddDependencyGroupbox()
ConditionalGroupbox:AddLabel("Dependency groupbox content")
ConditionalGroupbox:AddToggle("DependencyGroupToggle", {
    Text = "Conditional group toggle",
    Default = true,
})
ConditionalGroupbox:SetupDependencies({ { Toggles.DependencyToggle, true } })

MoreRight:AddButton({
    Text = "Open dialog example",
    Func = function()
        Window:AddDialog("ExampleDialog", {
            Title = "Example dialog",
            Description = "This dialog demonstrates a library modal and footer actions.",
            FooterButtons = {
                {
                    Id = "Confirm",
                    Title = "Notify",
                    Variant = "Primary",
                    Callback = function()
                        Library:Notify({
                            Title = "Dialog action",
                            Description = "The dialog button callback ran.",
                            Time = 3,
                        })
                    end,
                },
                {
                    Id = "Close",
                    Title = "Close",
                    Variant = "Secondary",
                },
            },
        })
    end,
})

MoreRight:AddButton({
    Text = "Create floating button",
    Func = function()
        Library:AddDraggableButton({
            Text = "Example action",
            Callback = function()
                Library:Notify({
                    Title = "Floating button",
                    Description = "The floating button callback ran.",
                    Time = 3,
                })
            end,
        })
    end,
})

MoreRight:AddButton({
    Text = "Create floating icon button",
    Func = function()
        Library:AddDraggableImageButton({
            Icon = 95816097006870,
            IconSize = 22,
            Callback = function()
                Library:Notify({
                    Title = "Floating icon button",
                    Description = "The floating icon callback ran.",
                    Time = 3,
                })
            end,
        })
    end,
})

MoreRight:AddButton({
    Text = "Create floating menu",
    Func = function()
        local _, Container = Library:AddDraggableMenu("Example floating menu")
        local MenuButton = Instance.new("TextButton")
        MenuButton.BackgroundColor3 = Library.Scheme.MainColor
        MenuButton.BorderSizePixel = 0
        MenuButton.Size = UDim2.fromOffset(170, 30)
        MenuButton.Font = Enum.Font.Code
        MenuButton.Text = "Menu action"
        MenuButton.TextColor3 = Library.Scheme.FontColor
        MenuButton.TextSize = 14
        MenuButton.Parent = Container
        MenuButton.Activated:Connect(function()
            Library:Notify({
                Title = "Floating menu",
                Description = "The menu action ran.",
                Time = 3,
            })
        end)
    end,
})

Tabs.Key:AddLabel({
	Text = "Key: Banana",
	DoesWrap = true,
	Size = 16,
})

Tabs.Key:AddKeyBox(function(ReceivedKey)

	local Success = ReceivedKey == "Banana"

	print("Expected Key: Banana - Received Key:", ReceivedKey, "| Success:", Success)
	Library:Notify({
		Title = "Expected Key: Banana",
		Description = "Received Key: " .. ReceivedKey .. "\nSuccess: " .. tostring(Success),
		Time = 4,
	})
end)

Library:AddDraggableLabel("This is a Draggable Label")

local MenuGroup = Tabs["UI Settings"]:AddGroupbox({
	Side = "Left",
	Name = "Menu",
	IconName = "wrench"
})

MenuGroup:AddToggle("KeybindMenuOpen", {
	Default = Library.KeybindFrame.Visible,
	Text = "Open Keybind Menu",
	Callback = function(value)
		Library.KeybindFrame.Visible = value
	end,
})
MenuGroup:AddToggle("KeybindMenuVisibilityControl", {
	Default = false,
	Text = "Keybind Menu Visibility",
	Callback = function(value)
		Library.KeybindMenu:SetVisibilityControl(value)
	end,
})
MenuGroup:AddToggle("ShowCustomCursor", {
	Text = "Custom Cursor",
	Default = Library.ShowCustomCursor,
	Callback = function(Value)
		Library.ShowCustomCursor = Value
	end,
})
MenuGroup:AddToggle("Use3D", {
	Text = "3D Mode",
	Tooltip = "Turn off to show a movable 2D window.",
	Default = GlobalEnvironment.Obsidian3DConfig.Use3D ~= false,
	Callback = function(Value)
		local Success = Window:Set3DMode(Value)
		if not Success then
			Library:Notify({
				Title = "3D Mode",
				Description = "Unable to change the display mode.",
				Time = 3,
			})
		end
	end,
})
MenuGroup:AddToggle("MovingToCamera", {
	Text = "Moving To Camera",
	Tooltip = "Attach the 3D panel to the camera.",
	Default = GlobalEnvironment.Obsidian3DConfig.MovingToCamera,
	Callback = function(Value)
		GlobalEnvironment.Obsidian3DConfig.MovingToCamera = Value
	end,
})
MenuGroup:AddSlider("CameraFollowSpeed", {
	Text = "Camera Follow Speed",
	Tooltip = "Higher values make the panel catch up faster.",
	Default = GlobalEnvironment.Obsidian3DConfig.CameraFollowSpeed,
	Min = 1,
	Max = 60,
	Rounding = 0,
	Callback = function(Value)
		GlobalEnvironment.Obsidian3DConfig.CameraFollowSpeed = Value
	end,
})
MenuGroup:AddSlider("CameraFollowSmoothness", {
	Text = "Camera Follow Smoothness",
	Tooltip = "Higher values make camera movement smoother but add more follow lag.",
	Default = GlobalEnvironment.Obsidian3DConfig.CameraFollowSmoothness,
	Min = 0,
	Max = 95,
	Rounding = 0,
	Callback = function(Value)
		GlobalEnvironment.Obsidian3DConfig.CameraFollowSmoothness = Value
	end,
})
MenuGroup:AddSlider("CameraFollowDistance", {
	Text = "Camera Distance",
	Tooltip = "Sets the panel distance from the camera while following.",
	Default = GlobalEnvironment.Obsidian3DConfig.Distance,
	Min = 2,
	Max = 30,
	Rounding = 1,
	Callback = function(Value)
		GlobalEnvironment.Obsidian3DConfig.Distance = Value
	end,
})
MenuGroup:AddToggle("AlwaysOnTop", {
	Text = "Always On Top",
	Default = Window.AlwaysOnTop,
	Callback = function(Value)
		Window:SetAlwaysOnTop(Value)
	end,
})
MenuGroup:AddDropdown("NotificationSide", {
	Values = { "Left", "Right" },
	Default = "Right",

	Text = "Notification Side",

	Callback = function(Value)
		Library:SetNotifySide(Value)
	end,
})
MenuGroup:AddDropdown("DPIDropdown", {
	Values = { "50%", "75%", "100%", "125%", "150%", "175%", "200%" },
	Default = "100%",

	Text = "DPI Scale",

	Callback = function(Value)
		Value = Value:gsub("%%", "")
		local DPI = tonumber(Value)

		Library:SetDPIScale(DPI)
	end,
})

MenuGroup:AddSlider("UICornerSlider", {
	Text = "Corner Radius",
	Default = Library.CornerRadius,
	Min = 0,
	Max = 20,
	Rounding = 0,
	Callback = function(value)
		Window:SetCornerRadius(value)
	end
})

MenuGroup:AddDivider()
MenuGroup:AddLabel("Menu bind")
	:AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })

MenuGroup:AddButton("Unload", function()
	Library:Unload()
end)

Library.ToggleKeybind = Options.MenuKeybind

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

SaveManager:IgnoreThemeSettings()

SaveManager:SetIgnoreIndexes({ "MenuKeybind" })

ThemeManager:SetFolder("3Dian")
SaveManager:SetFolder("3Dian/Example")
SaveManager:SetSubFolder(tostring(game.PlaceId))

SaveManager:BuildConfigSection(Tabs["UI Settings"])

ThemeManager:ApplyToTab(Tabs["UI Settings"])

SaveManager:LoadAutoloadConfig()

Library:Notify({
    Title = "3Dian Example",
    Description = "The 3D panel and screen overlay are ready.",
    Time = 5,
})

local CleanupComplete = false
local function CleanupExample()
    if CleanupComplete then
        return
    end
    CleanupComplete = true
    pcall(function()
        Library:Unload()
    end)
    if Part and Part.Parent then
        Part:Destroy()
    end
    if GlobalEnvironment.Obsidian3DConfig then
        GlobalEnvironment.Obsidian3DConfig = nil
    end
end

if script then
    script.Destroying:Connect(CleanupExample)
end
