function makeNotification(text:string)
	local AzariNotification = Instance.new("ScreenGui")
	local Notif = Instance.new("Frame")
	local NotifFrame = Instance.new("UICorner")
	local LogoFrame = Instance.new("Frame")
	local LogoCorner = Instance.new("UICorner")
	local Block = Instance.new("Frame")
	local Logo = Instance.new("ImageLabel")
	local NotifTitle = Instance.new("TextLabel")
	local NotifText = Instance.new("TextLabel")

	AzariNotification.Name = "AzariNotification"
	local hui = get_hidden_gui or gethui or game:GetService("CoreGui")
    AzariNotification.Parent = hui
	AzariNotification.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Notif.Name = "Notif"
	Notif.Parent = AzariNotification
	Notif.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	Notif.Position = UDim2.new(0.353777111, 0, 0.0457354784, 0)
	Notif.Size = UDim2.new(0.292445779, 0, 0.134734243, 0)

	NotifFrame.CornerRadius = UDim.new(0, 5)
	NotifFrame.Name = "NotifFrame"
	NotifFrame.Parent = Notif

	LogoFrame.Name = "LogoFrame"
	LogoFrame.Parent = Notif
	LogoFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	LogoFrame.Position = UDim2.new(-0.00172162848, 0, -0.000136034199, 0)
	LogoFrame.Size = UDim2.new(0.261755258, 0, 1.00013626, 0)

	LogoCorner.CornerRadius = UDim.new(0, 5)
	LogoCorner.Name = "LogoCorner"
	LogoCorner.Parent = LogoFrame

	Block.Name = "Block"
	Block.Parent = LogoFrame
	Block.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Block.BorderSizePixel = 0
	Block.Position = UDim2.new(0.929555357, 0, -0.000136015675, 0)
	Block.Size = UDim2.new(0.0629187152, 0, 1.00013626, 0)

	Logo.Name = "Logo"
	Logo.Parent = LogoFrame
	Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Logo.BackgroundTransparency = 1.000
	Logo.Position = UDim2.new(0.0488537401, 0, 0.0733844563, 0)
	Logo.Size = UDim2.new(0.892521858, 0, 0.837925375, 0)
	Logo.Image = "http://www.roblox.com/asset/?id=10686614148"

	NotifTitle.Name = "NotifTitle"
	NotifTitle.Parent = LogoFrame
	NotifTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NotifTitle.BackgroundTransparency = 1.000
	NotifTitle.BorderColor3 = Color3.fromRGB(27, 42, 53)
	NotifTitle.Position = UDim2.new(0.0710000023, 0, 0.839999974, 0)
	NotifTitle.Size = UDim2.new(0.856297255, 0, 0.131599635, 0)
	NotifTitle.Font = Enum.Font.SourceSansBold
	NotifTitle.Text = "Azari - Notification"
	NotifTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	NotifTitle.TextScaled = true
	NotifTitle.TextSize = 14.000
	NotifTitle.TextWrapped = true

	NotifText.Name = "NotifText"
	NotifText.Parent = Notif
	NotifText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NotifText.BackgroundTransparency = 1.000
	NotifText.Position = UDim2.new(0.283051401, 0, 0.128304303, 0)
	NotifText.Size = UDim2.new(0.71694845, 0, 0.775894284, 0)
	NotifText.Font = Enum.Font.SourceSans
	NotifText.Text = ""
	NotifText.TextColor3 = Color3.fromRGB(255, 255, 255)
	NotifText.TextSize = 34.000
	NotifText.TextWrapped = true
	NotifText.TextXAlignment = Enum.TextXAlignment.Left
	NotifText.TextYAlignment = Enum.TextYAlignment.Top

	for i = 1,#text do
		local thisChar = text:sub(i,i)
		NotifText.Text = text:sub(1,i)
		if thisChar == "." or thisChar == "?" then
			wait(0.65)
		elseif thisChar == "!" then
			wait(0.2)
		elseif thisChar == "," then
			wait(0.325)
		else
			wait(0.05)
		end
	end
	
	wait(2.5)
	AzariNotification:Destroy()
end
return makeNotification