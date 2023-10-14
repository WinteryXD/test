

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local noti = game:GetService("CoreGui").RobloxGui.NotificationFrame
if noti then
    noti:Destroy()
    else
    task.wait()
end

local Window = Rayfield:CreateWindow({
   Name = "Nexie Hub Pro (Beta)",
   LoadingTitle = "Welcome!",
   LoadingSubtitle = "by WinteryDreamer",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Nexie Hub"
   },
   Discord = {
      Enabled = true,
      Invite = "none", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Nexie Hub Key System",
      Subtitle = "Key System",
      Note = "Please insert the provided key in the moment of the purchase!",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"winteryiscuteuwu12834"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})


local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Parry")

local Button = Tab:CreateButton({
   Name = "Auto Parry :3",
   Callback = function()
  getgenv().config = getgenv().config or {
	hit_time = 0.4, -- // recommended 0.25 to 0.75 \ --
	
	mode = 'Always', -- // Hold , Toggle , Always \ --
	deflect_type = 'Remote', -- // Key Press , Remote \ --
	notifications = true,
	keybind = Enum.KeyCode.V
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlade%20Ball%20Parry%20V4.0.0", true))()
     
   end,
})

local Section = Tab:CreateSection("Manual Auto Click Button")

local Button = Tab:CreateButton({
   Name = "Spam Parry [Press E]",
   Callback = function()
  local activated = false
  
  local function toggle()
    activated = not activated
    while activated do
      local args = {
        [1] = 1.5,
        [2] = CFrame.new(-254.2939910888672, 112.13581848144531, -119.27256774902344) * CFrame.Angles(-2.029526710510254, 0.5662040710449219, 2.314905881881714),
        [3] = {
          ["2617721424"] = Vector3.new(-273.400146484375, -724.8031005859375, -20.92414093017578),
        },
        [4] = {
          [1] = 910,
          [2] = 154
        }
      }
      game:GetService("ReplicatedStorage").Remotes.ParryAttempt:FireServer(unpack(args))
      game:GetService("RunService").Heartbeat:Wait(0.00000001)
    end
  end
  
  
  -- Adicionar keybind "E" para ativar o botão
  local UserInputService = game:GetService("UserInputService")
  local eKeyPressed = false
  
  UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
    if input.KeyCode == Enum.KeyCode.E and not gameProcessedEvent then
      eKeyPressed = true
      toggle()
    end
  end)
  
  UserInputService.InputEnded:Connect(function(input, gameProcessedEvent)
    if input.KeyCode == Enum.KeyCode.E then
      eKeyPressed = false
    end
  end)
  
   -- The function that takes place when the button is pressed
   end,
})



        
