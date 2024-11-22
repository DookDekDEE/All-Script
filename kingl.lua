repeat wait() 

until game:IsLoaded()
repeat wait() 
	if game:GetService("Players").LocalPlayer then
		if game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui"):FindFirstChild("LoadingGUI") then
			game:GetService("GuiService").SelectedObject = game:GetService("Players").LocalPlayer.PlayerGui.LoadingGUI.Play
			task.wait(0.1)
			game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.Return.Value, false, game)
			task.wait(0.1)
			game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.Return.Value, false, game)
			task.wait(0.1)
			game:GetService("GuiService").SelectedObject = nil
			wait(1)
		end
	end
until not game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui"):FindFirstChild("LoadingGUI") and game:IsLoaded()

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local Window = Fluent:CreateWindow({
    Title = "Hyper Hab Script | "..GameName,
    SubTitle = "by sHi.xyz",
    TabWidth = 160,
    Size = UDim2.fromOffset(600, 400),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Aqua",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})
local Tabs = {
	tab_server = Window:AddTab({ Title = "Server", Icon = "database" }),
}
	Tabs.tab_server:AddButton({
        Title = "Copy Link Discord",
        Callback = function()
			setclipboard("https://discord.gg/SusfUyJT42")
        end
    })
