local module = {}

local gui
local buttons
local buttontemplate
local main
local menus
local currentActiveMenu
local title

local menustb = {}
local buttonstb = {}
local sectionstb = {}
local togglestb = {}
local toggleatives = {}
local togglewait = {}
local keybindstb = {}
local keybindsdi = {}
local buttons2tb = {}
local buttonsfunctions = {}
local textboxtb = {}
local textboxdi = {}

local clickCooldown = false
local listening
local keybindname
local UserInputService = game:GetService("UserInputService")

function module.createBasic(guinm)

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("ImageLabel")
local Title = Instance.new("ImageLabel")
local Frame_2 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Bar = Instance.new("ImageLabel")
local Frame_3 = Instance.new("Frame")
local Buttons = Instance.new("Frame")
local home = Instance.new("TextButton")
local Outline1 = Instance.new("Frame")
local Outline2 = Instance.new("Frame")
local Icon = Instance.new("ImageLabel")
local UIListLayout = Instance.new("UIListLayout")
local Main = Instance.new("Frame")
local Menus = Instance.new("Folder")
local Home = Instance.new("ScrollingFrame")
local TextLabel_2 = Instance.new("TextLabel")
local Test = Instance.new("ScrollingFrame")
local name = Instance.new("TextLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Name = "Frame"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.349999994, 0, 0.200000003, 0)
Frame.Size = UDim2.new(0.400000006, 0, 0.600000024, 0)
Frame.Image = "rbxassetid://3570695787"
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.100

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.25, 0, 0, 0)
Title.Size = UDim2.new(0.75, 0, 0.125, 0)
Title.ZIndex = 2
Title.Image = "rbxassetid://3570695787"
Title.ImageColor3 = Color3.fromRGB(207, 207, 207)
Title.ScaleType = Enum.ScaleType.Slice
Title.SliceCenter = Rect.new(100, 100, 100, 100)
Title.SliceScale = 0.100

Frame_2.Parent = Title
Frame_2.BackgroundColor3 = Color3.fromRGB(207, 207, 207)
Frame_2.BorderSizePixel = 0
Frame_2.Size = UDim2.new(0.100000001, 0, 1, 0)

TextLabel.Parent = Title
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0250000004, 0, -0.075000003, 0)
TextLabel.Size = UDim2.new(0.899999976, 0, 1, 0)
TextLabel.ZIndex = 5
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Home"
TextLabel.TextColor3 = Color3.fromRGB(0, 85, 127)
TextLabel.TextSize = 30.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

Bar.Name = "Bar"
Bar.Parent = Frame
Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bar.BackgroundTransparency = 1.000
Bar.Size = UDim2.new(0.25, 0, 1, 0)
Bar.ZIndex = 4
Bar.Image = "rbxassetid://3570695787"
Bar.ScaleType = Enum.ScaleType.Slice
Bar.SliceCenter = Rect.new(100, 100, 100, 100)
Bar.SliceScale = 0.100

Frame_3.Parent = Bar
Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.949999988, 0, 0, 0)
Frame_3.Size = UDim2.new(0.100000001, 0, 1, 0)
Frame_3.Visible = false
Frame_3.ZIndex = 4

Buttons.Name = "Buttons"
Buttons.Parent = Bar
Buttons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Buttons.BackgroundTransparency = 1.000
Buttons.BorderSizePixel = 0
Buttons.Position = UDim2.new(0, 0, 0.200000003, 0)
Buttons.Size = UDim2.new(1, 0, 0.800000012, 0)
Buttons.ZIndex = 5

home.Name = "Home"
home.Parent = Buttons
home.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
home.BackgroundTransparency = 0.900
home.BorderSizePixel = 0
home.Size = UDim2.new(1, 0, 0.100000001, 0)
home.ZIndex = 5
home.Font = Enum.Font.SourceSans
home.Text = "Home"
home.TextColor3 = Color3.fromRGB(0, 107, 157)
home.TextSize = 30.000
home.TextWrapped = true

Outline1.Name = "Outline1"
Outline1.Parent = home
Outline1.BackgroundColor3 = Color3.fromRGB(0, 107, 157)
Outline1.BorderSizePixel = 0
Outline1.Size = UDim2.new(1, 0, 0.0500000007, 0)
Outline1.ZIndex = 5

Outline2.Name = "Outline2"
Outline2.Parent = home
Outline2.BackgroundColor3 = Color3.fromRGB(0, 107, 157)
Outline2.BorderSizePixel = 0
Outline2.Position = UDim2.new(0, 0, 0.899999976, 0)
Outline2.Size = UDim2.new(1, 0, 0.0500000007, 0)
Outline2.ZIndex = 5

Icon.Name = "Icon"
Icon.Parent = home
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.BackgroundTransparency = 1.000
Icon.BorderSizePixel = 0
Icon.Position = UDim2.new(0.100000001, 0, 0.144999996, 0)
Icon.Size = UDim2.new(0.150000006, 0, 0.699999988, 0)
Icon.ZIndex = 6
Icon.Image = "rbxgameasset://Images/home"

UIListLayout.Parent = Buttons
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

Main.Name = "Main"
Main.Parent = Frame
Main.BackgroundColor3 = Color3.fromRGB(214, 214, 214)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.25, 0, 0.100000001, 0)
Main.Size = UDim2.new(0.75, 0, 0.899999976, 0)
Main.ZIndex = 5

Menus.Name = "Menus"
Menus.Parent = Main

Home.Name = "Home"
Home.Parent = Menus
Home.Active = true
Home.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Home.BackgroundTransparency = 1.000
Home.BorderSizePixel = 0
Home.Size = UDim2.new(1, 0, 1, 0)
Home.Visible = true
Home.ZIndex = 6
Home.ScrollBarThickness = 8

TextLabel_2.Parent = Home
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Size = UDim2.new(1, 0, 0.5, 0)
TextLabel_2.ZIndex = 7
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Welcome to, ".. guinm .. "!"
TextLabel_2.TextColor3 = Color3.fromRGB(65, 65, 65)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

name.Name = "name"
name.Parent = Frame
name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
name.BackgroundTransparency = 1.000
name.BorderSizePixel = 0
name.Size = UDim2.new(0.25, 0, 0.200000003, 0)
name.ZIndex = 5
name.Font = Enum.Font.SourceSans
name.Text = guinm
name.TextColor3 = Color3.fromRGB(0, 0, 0)
name.TextSize = 50.000
name.TextWrapped = true

gui = ScreenGui
buttons = Buttons
buttontemplate = home
main = Main
menus = Menus
currentActiveMenu = Home
title = TextLabel
table.insert(menustb, Home)
table.insert(buttonstb, home)

end

function module.createMenu(name, iconimage)
	if gui and main and menus and buttontemplate then
		local Template = Instance.new("ScrollingFrame")
		Template.Name = name
		Template.Parent = menus
		Template.Active = true
		Template.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Template.BackgroundTransparency = 1.000
		Template.BorderSizePixel = 0
		Template.Size = UDim2.new(1, 0, 1, 0)
		Template.ZIndex = 6
		Template.Visible = false
		Template.ScrollBarThickness = 8
		local TemplateSections = Instance.new("Frame")
		TemplateSections.Parent = Template
		TemplateSections.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TemplateSections.Position = UDim2.new(0, 0, 0.0250000004, 0)
		TemplateSections.Size = UDim2.new(1, 0, 0.899999976, 0)
		TemplateSections.BackgroundTransparency = 1
		local UIListLayout = Instance.new("UIListLayout")
		UIListLayout.Parent = TemplateSections
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0.0250000004, 0)
		
		table.insert(menustb, Template)
		
		local newButton = buttontemplate:Clone()
		newButton.Name = name
		newButton.Text = name
		newButton.Icon.Image = iconimage
		newButton.Outline1.Visible = false
		newButton.Outline2.Visible = false
		newButton.BackgroundTransparency = 1
		newButton.Parent = buttons
		table.insert(buttonstb, newButton)
	end
end

function module.createSection(secname, prnt)
	if gui and main and menus then
		for i,v in ipairs(menustb) do
			if v.Name == prnt then
				local Section = Instance.new("ImageLabel")
				local SectionName = Instance.new("TextLabel")
				local items = Instance.new("NumberValue")
				local Frame = Instance.new("Frame")
				local UIListLayout = Instance.new("UIListLayout")
				
				Section.Name = secname
				Section.Parent = v.Frame
				Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Section.BackgroundTransparency = 1.000
				Section.Size = UDim2.new(0.800000012, 0, 0.0299999993, 0)
				Section.ZIndex = 7
				Section.Image = "rbxassetid://3570695787"
				Section.ImageColor3 = Color3.fromRGB(238, 238, 238)
				Section.ScaleType = Enum.ScaleType.Slice
				Section.SliceCenter = Rect.new(100, 100, 100, 100)
				Section.SliceScale = 0.05
				
				SectionName.Name = "SectionName"
				SectionName.Parent = Section
				SectionName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SectionName.BackgroundTransparency = 1.000
				SectionName.Position = UDim2.new(0.0250000004, 0, 0.0250000004, 0)
				SectionName.Size = UDim2.new(0, 450, 0, 25)
				SectionName.ZIndex = 8
				SectionName.Font = Enum.Font.SourceSans
				SectionName.Text = secname
				SectionName.TextColor3 = Color3.fromRGB(66, 66, 66)
				SectionName.TextSize = 30.000
				SectionName.TextWrapped = true
				SectionName.TextXAlignment = Enum.TextXAlignment.Left
				
				Frame.Parent = Section
				Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Frame.BackgroundTransparency = 1.000
				Frame.Position = UDim2.new(0.0250000004, 0, 0.174999997, 0)
				Frame.Size = UDim2.new(0.949999988, 0, 0.800000012, 0)
				
				UIListLayout.Parent = Frame
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout.Padding = UDim.new(0.0250000004, 0)
				UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
				UIListLayout.FillDirection = Enum.FillDirection.Vertical
				UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
				
				items.Name = "Items"
				items.Parent = Section
				items.Value = 0
				
				table.insert(sectionstb, Section)
			end
		end
	end
end

function module.createToggle(togname, sec)
	if gui and main and menus then
		for i,v in ipairs(sectionstb) do
			if v.Name == sec then
				local Toggle = Instance.new("ImageLabel")
				local TextLabel = Instance.new("TextLabel")
				local TextButton = Instance.new("TextButton")
				local Roundify = Instance.new("ImageLabel")
				local Frame = Instance.new("ImageLabel")
				
				Toggle.Name = togname
				Toggle.Parent = v.Frame
				Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Toggle.BackgroundTransparency = 1.000
				Toggle.Size = UDim2.new(1, 0, 0, 35)
				Toggle.ZIndex = 8
				Toggle.Image = "rbxassetid://3570695787"
				Toggle.ScaleType = Enum.ScaleType.Slice
				Toggle.SliceCenter = Rect.new(100, 100, 100, 100)
				Toggle.SliceScale = 0.040
				
				TextLabel.Parent = Toggle
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderSizePixel = 0
				TextLabel.Position = UDim2.new(0.0250000004, 0, 0, 0)
				TextLabel.Size = UDim2.new(0.800000012, 0, 1, 0)
				TextLabel.ZIndex = 9
				TextLabel.Font = Enum.Font.SourceSans
				TextLabel.Text = "Toggle"
				TextLabel.TextColor3 = Color3.fromRGB(149, 149, 149)
				TextLabel.TextScaled = true
				TextLabel.TextSize = 14.000
				TextLabel.TextWrapped = true
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left

				TextButton.Parent = Toggle
				TextButton.BackgroundColor3 = Color3.fromRGB(139, 139, 139)
				TextButton.BackgroundTransparency = 1.000
				TextButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
				TextButton.BorderSizePixel = 0
				TextButton.Position = UDim2.new(0.850000024, 0, 0.25, 0)
				TextButton.Size = UDim2.new(0.125, 0, 0.5, 0)
				TextButton.ZIndex = 8
				TextButton.AutoButtonColor = false
				TextButton.Font = Enum.Font.SourceSans
				TextButton.Text = ""
				TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				TextButton.TextSize = 14.000
				TextButton.TextTransparency = 1.000

				Roundify.Name = "Roundify"
				Roundify.Parent = TextButton
				Roundify.AnchorPoint = Vector2.new(0.5, 0.5)
				Roundify.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Roundify.BackgroundTransparency = 1.000
				Roundify.Position = UDim2.new(0.5, 0, 0.5, 0)
				Roundify.Size = UDim2.new(1, 8, 1, 8)
				Roundify.ZIndex = 9
				Roundify.Image = "rbxassetid://3570695787"
				Roundify.ImageColor3 = Color3.fromRGB(139, 139, 139)
				Roundify.ScaleType = Enum.ScaleType.Slice
				Roundify.SliceCenter = Rect.new(100, 100, 100, 100)
				Roundify.SliceScale = 0.040
				
				Frame.Name = "Frame"
				Frame.Parent = TextButton
				Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Frame.BackgroundTransparency = 1.000
				Frame.Position = UDim2.new(0, 0, 0.0250000004, 0)
				Frame.Size = UDim2.new(0.449999988, 0, 0.949999988, 0)
				Frame.ZIndex = 10
				Frame.Image = "rbxassetid://3570695787"
				Frame.ImageColor3 = Color3.fromRGB(170, 0, 0)
				Frame.ScaleType = Enum.ScaleType.Slice
				Frame.SliceCenter = Rect.new(100, 100, 100, 100)
				Frame.SliceScale = 0.040
				table.insert(togglestb, Toggle)
				toggleatives[Toggle] = false
			end
		end
	end
end

function module.createKeybindButton(kbname, sec)
	if gui and main and menus then
		for i,v in ipairs(sectionstb) do
			if v.Name == sec then
				local Keybind = Instance.new("ImageLabel")
				local TextLabel = Instance.new("TextLabel")
				local TextButton = Instance.new("TextButton")
				local Roundify = Instance.new("ImageLabel")
				
				Keybind.Name = kbname
				Keybind.Parent = v.Frame
				Keybind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Keybind.BackgroundTransparency = 1.000
				Keybind.Size = UDim2.new(1, 0, 0, 35)
				Keybind.ZIndex = 8
				Keybind.Image = "rbxassetid://3570695787"
				Keybind.ScaleType = Enum.ScaleType.Slice
				Keybind.SliceCenter = Rect.new(100, 100, 100, 100)
				Keybind.SliceScale = 0.040

				TextLabel.Parent = Keybind
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderSizePixel = 0
				TextLabel.Position = UDim2.new(0.0250000004, 0, 0, 0)
				TextLabel.Size = UDim2.new(0.800000012, 0, 1, 0)
				TextLabel.ZIndex = 9
				TextLabel.Font = Enum.Font.SourceSans
				TextLabel.Text = kbname
				TextLabel.TextColor3 = Color3.fromRGB(149, 149, 149)
				TextLabel.TextScaled = true
				TextLabel.TextSize = 14.000
				TextLabel.TextWrapped = true
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left
				
				TextButton.Parent = Keybind
				TextButton.BackgroundColor3 = Color3.fromRGB(139, 139, 139)
				TextButton.BackgroundTransparency = 1.000
				TextButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
				TextButton.BorderSizePixel = 0
				TextButton.Position = UDim2.new(0.850000024, 0, 0.25, 0)
				TextButton.Size = UDim2.new(0.125, 0, 0.5, 0)
				TextButton.ZIndex = 10
				TextButton.AutoButtonColor = false
				TextButton.Font = Enum.Font.SourceSans
				TextButton.Text = "..."
				TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextButton.TextScaled = true
				TextButton.TextSize = 14.000
				TextButton.TextWrapped = true
				
				Roundify.Name = "Roundify"
				Roundify.Parent = TextButton
				Roundify.AnchorPoint = Vector2.new(0.5, 0.5)
				Roundify.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Roundify.BackgroundTransparency = 1.000
				Roundify.Position = UDim2.new(0.5, 0, 0.5, 0)
				Roundify.Size = UDim2.new(1, 8, 1, 8)
				Roundify.ZIndex = 9
				Roundify.Image = "rbxassetid://3570695787"
				Roundify.ImageColor3 = Color3.fromRGB(139, 139, 139)
				Roundify.ScaleType = Enum.ScaleType.Slice
				Roundify.SliceCenter = Rect.new(100, 100, 100, 100)
				Roundify.SliceScale = 0.040
				table.insert(keybindstb, Keybind)
			end
		end
	end
end

function module.createButton(btnnm, sec, func)
	if gui and main and menus then
		for i,v in ipairs(sectionstb) do
			if v.Name == sec then
				local Button = Instance.new("ImageLabel")
				local TextButton = Instance.new("TextButton")
				
				Button.Name = btnnm
				Button.Parent = v.Frame
				Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Button.BackgroundTransparency = 1.000
				Button.Size = UDim2.new(1, 0, 0, 35)
				Button.ZIndex = 8
				Button.Image = "rbxassetid://3570695787"
				Button.ScaleType = Enum.ScaleType.Slice
				Button.SliceCenter = Rect.new(100, 100, 100, 100)
				Button.SliceScale = 0.040
				
				TextButton.Parent = Button
				TextButton.BackgroundColor3 = Color3.fromRGB(139, 139, 139)
				TextButton.BackgroundTransparency = 1.000
				TextButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
				TextButton.BorderSizePixel = 0
				TextButton.Size = UDim2.new(1, 0, 1, 0)
				TextButton.ZIndex = 10
				TextButton.AutoButtonColor = false
				TextButton.Font = Enum.Font.SourceSans
				TextButton.TextColor3 = Color3.fromRGB(165, 165, 165)
				TextButton.TextScaled = true
				TextButton.TextSize = 14.000
				TextButton.TextWrapped = true
				table.insert(buttons2tb, Button)
				buttonsfunctions[Button] = func
			end
		end
	end
end

function module.createTextbox(txnm, sec, setvalue)
	if gui and main and menus then
		for i,v in ipairs(sectionstb) do
			if v.Name == sec then
				local Textbox = Instance.new("ImageLabel")
				local TextLabel = Instance.new("TextLabel")
				local TextBox = Instance.new("TextBox")
				local Roundify = Instance.new("ImageLabel")

				Textbox.Name = txnm
				Textbox.Parent = v.Frame
				Textbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Textbox.BackgroundTransparency = 1.000
				Textbox.Size = UDim2.new(1, 0, 0, 35)
				Textbox.ZIndex = 8
				Textbox.Image = "rbxassetid://3570695787"
				Textbox.ScaleType = Enum.ScaleType.Slice
				Textbox.SliceCenter = Rect.new(100, 100, 100, 100)
				Textbox.SliceScale = 0.040
				
				TextLabel.Parent = Textbox
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderSizePixel = 0
				TextLabel.Position = UDim2.new(0.0250000004, 0, 0, 0)
				TextLabel.Size = UDim2.new(0.800000012, 0, 1, 0)
				TextLabel.ZIndex = 9
				TextLabel.Font = Enum.Font.SourceSans
				TextLabel.Text = setvalue
				TextLabel.TextColor3 = Color3.fromRGB(149, 149, 149)
				TextLabel.TextScaled = true
				TextLabel.TextSize = 14.000
				TextLabel.TextWrapped = true
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left

				TextBox.Parent = Textbox
				TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextBox.BackgroundTransparency = 1.000
				TextBox.Position = UDim2.new(0.774999976, 0, 0.25, 0)
				TextBox.Size = UDim2.new(0.200000003, 0, 0.5, 0)
				TextBox.ZIndex = 10
				TextBox.Font = Enum.Font.SourceSans
				TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextBox.TextSize = 30.000
				TextBox.TextWrapped = true

				Roundify.Name = "Roundify"
				Roundify.Parent = TextBox
				Roundify.AnchorPoint = Vector2.new(0.5, 0.5)
				Roundify.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Roundify.BackgroundTransparency = 1.000
				Roundify.Position = UDim2.new(0.5, 0, 0.5, 0)
				Roundify.Size = UDim2.new(1, 8, 1, 8)
				Roundify.ZIndex = 9
				Roundify.Image = "rbxassetid://3570695787"
				Roundify.ImageColor3 = Color3.fromRGB(139, 139, 139)
				Roundify.ScaleType = Enum.ScaleType.Slice
				Roundify.SliceCenter = Rect.new(100, 100, 100, 100)
				Roundify.SliceScale = 0.040
				table.insert(textboxtb, Textbox)
				textboxdi[Textbox] = setvalue
			end
		end
	end
end

function buttonClicked(button)
	for i,v in ipairs(menustb) do
		if v and v.Name == button.Name then
			currentActiveMenu.Visible = false
			v.Visible = true
			currentActiveMenu = v
			title.Text = v.Name
		end
	end
end

function toggleClicked(tog)
	if tog then
		if toggleatives[tog] == true then
			toggleatives[tog] = false
			tog.TextButton.Frame:TweenPosition(UDim2.new(0, 0,0.025, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 0.5, true)
			tog.TextButton.Frame.ImageColor3 = Color3.new(170,0,0)
		else
			toggleatives[tog] = true
			tog.TextButton.Frame:TweenPosition(UDim2.new(0.525, 0,0.025, 0), Enum.EasingDirection.InOut, Enum.EasingStyle.Quart, 0.5, true)
			tog.TextButton.Frame.ImageColor3 = Color3.new(0,85,0)
		end
	end
end

function keybindClicked(kb)
	if kb then
		kb.TextButton.Text = "Press any key..."
		keybindname = kb
		listening = true
	end
end

function waitToggleClick(tog)
	wait(0.5)
	togglewait[tog] = false
end

function waitCooldown()
	wait(0.1)
	clickCooldown = false
end

function module.getToggleStatus(togname)
	for i,v in ipairs(togglestb) do
		if v.Name == togname then
			return toggleatives[v]
		end
	end
end

function module.getKeybindStatus(keybindnm)
	for i,v in ipairs(keybindstb) do
		if v.Name == keybindnm then
			return keybindsdi[v]
		end
	end
end

function module.getTextboxStatus(txnm)
	for i,v in ipairs(textboxtb) do
		if v.Name == txnm then
			return textboxdi[v]
		end
	end
end

game:GetService("RunService").Heartbeat:Connect(function()
	for i,v in ipairs(buttonstb) do
		v.MouseButton1Click:Connect(function()
			buttonClicked(v)
		end)
		if v.Name == currentActiveMenu.Name then
			v.Outline1.Visible = true
			v.Outline2.Visible = true
			v.BackgroundTransparency = 0.9
		else
			v.Outline1.Visible = false
			v.Outline2.Visible = false
			v.BackgroundTransparency = 1
		end
	end
	for i,v in ipairs(sectionstb) do
		local adding = 25
		for a,b in ipairs(v.Frame:GetChildren()) do
			if b:IsA("ImageLabel") or b:IsA("Frame") then
				adding = adding + b.Size.Y.Offset
			end
		end
		v.Size = UDim2.new(v.Size.X.Scale, v.Size.X.Offset, 0.03, adding)
	end
	for i,v in ipairs(togglestb) do
		v.TextButton.MouseButton1Click:Connect(function()
			if clickCooldown == false then
				clickCooldown = true
				waitCooldown()
				if togglewait[v] == false then
					toggleClicked(v)
				else
					togglewait[v] = true
					waitToggleClick(v)
				end
			end
		end)
	end
	for i,v in ipairs(keybindstb) do
		v.TextButton.MouseButton1Click:Connect(function()
			if clickCooldown == false then
				clickCooldown = true
				waitCooldown()
				keybindClicked(v)
			end
		end)
	end
	for i,v in ipairs(buttons2tb) do
		v.TextButton.MouseButton1Click:Connect(function()
			if clickCooldown == false then
				clickCooldown = true
				waitCooldown()
				buttonsfunctions[v]()
			end
		end)
	end
	for i,v in ipairs(textboxtb) do
		v.TextBox.InputEnded:Connect(function()
			textboxdi[v] = v.TextBox.Text
		end)
	end
	wait()
end)

UserInputService.InputEnded:Connect(function(inputObject, gameProcessedEvent)
	if listening == true then
		if gameProcessedEvent then return end
		if inputObject.UserInputType == Enum.UserInputType.Keyboard then
			keybindsdi[keybindname] = inputObject.KeyCode.Name
		end
		listening = false
		keybindname.TextButton.Text = tostring(keybindsdi[keybindname])
	end
end)

return module
