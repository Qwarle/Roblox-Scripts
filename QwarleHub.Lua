--= Version Scripts =--

local GuiVersion = "Version: [Build: 6]"

local Ragdoll_Script_Version = "Ragdoll Engine Hack | Version: 1.0"
local AntiFling_Script_Version = "(Version: BETA[1.0])"
local Tp_Player_Version = "Version: 1.0"

local SetWait = 5

local plr = game.Players.LocalPlayer

local defspeed = 16
local defjump = 50
local kill = 999999999

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "QwarleHub | "..GuiVersion, HidePremium = true, SaveConfig = true, ConfigFolder = "sbqbeta"})

--= Other Locals =--

local notif = false

--= Code =--

OrionLib:MakeNotification({
	Name = "Hello!",
	Content = "Thanks for using my script! Kisses, QwarleDev ;)",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local InfoTab1 = Window:MakeTab({
	Name = "Info",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local InfoSection1 = InfoTab1:AddSection({
	Name = "My INFO"
})
InfoSection1:AddParagraph("My Discord: Qwarle#2833 ", "")
InfoSection1:AddParagraph("My Discord Server: ", "Non")
local InfoSection2 = InfoTab1:AddSection({
	Name = "INFO Updates"
})
InfoSection2:AddParagraph("Version: Build[2]", "Update: ")

local SettingsTab1 = Window:MakeTab({
	Name = "Settings GUI",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local SettingsSection1 = SettingsTab1:AddSection({
	Name = "Settings GUI"
})

SettingsSection1:AddBind({
	Name = "Open/Close Bind (Not Work)",
	Default = Enum.KeyCode.LeftControl,
	Hold = false,
	Callback = function(v)
		if v then
			OrionLib.Enabled = false
		elseif v == false then
			OrionLib.Enabled = true
		end
	end
})

local SettingsSection2 = SettingsTab1:AddSection({
	Name = "Destroy GUI"
})

SettingsSection2:AddButton({
	Name = "Destroy Soft!",
	Callback = function()

        OrionLib:MakeNotification({
            Name = "Soft Destroyed!",
            Content = "O No! You Destroy Me :( !"..SetWait,
            Image = "rbxassetid://4483345998",
            Time = SetWait
        })
		game.Players.LocalPlayer.Character.Humanoid.Health -= kill
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = defspeed
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = defjump
        task.wait(SetWait)

        OrionLib:Destroy()
  	end
})

local PlayerTab1 = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local PlayerSection3 = PlayerTab1:AddSection({
	Name = "Player Sit"
})

PlayerSection3:AddBind({
	Name = "Sit Bind",
	Default = Enum.KeyCode.E,
	Hold = false,
	Callback = function()
      	plr.Character.Humanoid.Sit = true
	end
})

PlayerSection3:AddButton({
	Name = "Sit",
	Callback = function()
      	plr.Character.Humanoid.Sit = true
  	end
})

local PlayerSection1 = PlayerTab1:AddSection({
	Name = "Player Settings"
})

PlayerSection1:AddTextbox({
	Name = "Speed Hack Box",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end
})


PlayerSection1:AddSlider({
	Name = "Speed Hack",
	Min = 0,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Your Speed",
	Callback = function(s)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
	end
})

PlayerSection1:AddButton({
	Name = "Default Speed",
	Callback = function()
		  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16

		  OrionLib:MakeNotification({
			Name = "Default Speed!",
			Content = "Default Speed Enabled!",
			Image = "rbxassetid://4483345998",
			Time = 5
		})

	end
})

PlayerSection1:AddButton({
	Name = "Low Speed",
	Callback = function()
		  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 6

		  OrionLib:MakeNotification({
			Name = "Low Speed!",
			Content = "Low Speed Enabled!",
			Image = "rbxassetid://4483345998",
			Time = 5
		})

	end
})

PlayerSection1:AddTextbox({
	Name = "Jump Hack Box",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end
})

PlayerSection1:AddSlider({
	Name = "Jump Hack",
	Min = 30,
	Max = 500,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Your Jump Power",
	Callback = function(j)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = j
	end
})

PlayerSection1:AddButton({
	Name = "Default Jump",
	Callback = function()
		  game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50

		  OrionLib:MakeNotification({
			Name = "Default Jump!",
			Content = "Default Jump Enabled!",
			Image = "rbxassetid://4483345998",
			Time = 5
		})

	end
})

local PlayerSection2 = PlayerTab1:AddSection({
	Name = "Other Player Settings"
})

PlayerSection2:AddToggle({
	Name = "Godmode!",
	Default = false,
	Callback = function(db)
	if db then
		notif = true
		while db do
			task.wait(0.01)
			game.Players.LocalPlayer.Character.Humanoid.Health += 99999
		end
		OrionLib:MakeNotification({
			Name = "Godmode!",
			Content = "Godmode Enabled!",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
	elseif db == false then
		if notif then
			OrionLib:MakeNotification({
				Name = "Godmode!",
				Content = "Godmode Disabled!",
				Image = "rbxassetid://4483345998",
				Time = 5
			})
		end
	end
end
})

PlayerSection2:AddButton({
	Name = "Tiny R15",
	Callback = function()

		if notif then
			OrionLib:MakeNotification({
				Name = "Tiny R15 Message!",
				Content = "Tiny R15 Enabled!",
				Image = "rbxassetid://4483345998",
				Time = 5
			})
		end

		getfenv().ToRemove = {
			{"BodyTypeScale", 0.5 * 1.0},
			{"BodyWidthScale", 1 * 1.0},
			{"BodyDepthScale", 1 * 1.0}
		}

		loadstring(game:HttpGet('https://raw.githubusercontent.com/NoclippyT/Scripts/main/%23Misc/TinyR15/Main.lua'))()

	end
})

PlayerSection2:AddButton({
	Name = "Rejoin",
	Callback = function()
		local TeleportService = game:GetService("TeleportService")
		local Players = game:GetService("Players")
		local LocalPlayer = Players.LocalPlayer
		 
		local Rejoin = coroutine.create(function()
			local Success, ErrorMessage = pcall(function()
				task.wait(5)
				TeleportService:Teleport(game.PlaceId, LocalPlayer)
			end)
		 
			if ErrorMessage and not Success then
				warn(ErrorMessage)
			end
		end)
		 
		coroutine.resume(Rejoin)

		  OrionLib:MakeNotification({
			Name = "Rejoin Message!",
			Content = "Rejoin...5 Second",
			Image = "rbxassetid://4483345998",
			Time = 5
		})

	end
})

local RagdollTab1 = Window:MakeTab({
	Name = "Ragdoll Engine",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local TpSection1 = RagdollTab1:AddSection({
	Name = Ragdoll_Script_Version
})

RagdollTab1:AddDropdown({
	Name = "Teleports",
	Default = "Non",
	Options = {"Tp Roof Build", "Tp Floor 1", "Tp Center", "Tp Baloon", "Tp Escalators", "Tp Dumpster", "Tp Pool", "Tp Conveyer", "Tp Cannon 1"},
	Callback = function(Value)
		if Value == "Tp Roof Build" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").NewerMap.Obstacles.DivingBoard.Diving.CFrame * CFrame.new(0, 4, 0)
		elseif Value == "Tp Floor 1" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").NewerMap.Obstacles.Building.Base.CFrame * CFrame.new(0, 4, 0)
		elseif Value == "Tp Center" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").NewerMap.Base.ServerInfo.Information.CFrame * CFrame.new(0, 4, 0)
		elseif Value == "Tp Baloon" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").NewerMap.Obstacles.BalloonStation.BalloonStation.CFrame * CFrame.new(0, 4, 0)
		elseif Value == "Tp Escalators" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").NewerMap.Obstacles.Escalators.Floor.CFrame * CFrame.new(0, 4, 0)
		elseif Value == "Tp Dumpster" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").NewerMap.Obstacles.Dumpster.Base.CFrame * CFrame.new(0, 4, 0)
		elseif Value == "Tp Pool" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").NewerMap.Obstacles.Pool.Floor.CFrame * CFrame.new(0, 4, 0)
		elseif Value == "Tp Conveyer" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").NewerMap.Obstacles["Movewalks/Travellator"].Model.Part.CFrame * CFrame.new(0, 4, 0)
		elseif Value == "Tp Cannon 1" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Cannons.Cannon.Model.CannonSupport.CFrame * CFrame.new(0, 4, 0)
		end
	end
})

RagdollTab1:AddToggle({
	Name = "Anti Ragdoll", -- version 1.0 beta
	Default = false,
	Callback = function(db)
	if db then
		notif = true

		plr.Character.HumanoidRootPart.CanCollide = false

		local Ragdoll_Push = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pushed")
		Ragdoll_Push.Enabled = false
		local Ragdoll_Start = game:GetService("Players").LocalPlayer.Character:FindFirstChild("StartRagdoll")
		Ragdoll_Start.Enabled = false
		local Ragdoll_Me = game:GetService("Players").LocalPlayer.Character:FindFirstChild("RagdollMe")
		Ragdoll_Me.Enabled = false
		local Ragdoll_Falling_Down = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Falling down")
		Ragdoll_Falling_Down.Enabled = false

		OrionLib:MakeNotification({
			Name = "Anti Ragdoll Message!",
			Content = "Anti Ragdoll Enabled!",
			Image = "rbxassetid://4483345998",
			Time = 5
		})

	elseif db == false then

		plr.Character.HumanoidRootPart.CanCollide = true

		local Ragdoll_Push = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pushed")
		Ragdoll_Push.Enabled = true
		local Ragdoll_Start = game:GetService("Players").LocalPlayer.Character:FindFirstChild("StartRagdoll")
		Ragdoll_Start.Enabled = true
		local Ragdoll_Me = game:GetService("Players").LocalPlayer.Character:FindFirstChild("RagdollMe")
		Ragdoll_Me.Enabled = true
		local Ragdoll_Falling_Down = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Falling down")
		Ragdoll_Falling_Down.Enabled = true

		if notif then
			OrionLib:MakeNotification({
				Name = "Anti Ragdoll Message!",
				Content = "Anti Ragdoll Disabled!",
				Image = "rbxassetid://4483345998",
				Time = 5
			})
		end

	elseif plr.Character.Humanoid.Health == 0 then
		db = false
	end
end
})

local PushSection = RagdollTab1:AddSection({
	Name = "Push Functions"
})

RagdollTab1:AddToggle({
	Name = "Push Aura",
	Default = false,
	Callback = function(db)
	if db then
		for i, v in pairs(game.Workspace:GetDescendants()) do
			if string.find(v.Name, "Ragdoll") then
				v:Destroy()
			end
		end

		OrionLib:MakeNotification({
			Name = "Push Aura Message!",
			Content = "Push Aura Enabled!",
			Image = "rbxassetid://4483345998",
			Time = 5
		})

		while db do
			task.wait(0.1)
			pcall(function()
				for _, player in pairs(game.Players:GetPlayers()) do
					if player ~= game.Players.LocalPlayer then
						local args = {
							[1] = game:GetService("Players")[player.Name].Character
						}
						game:GetService("Players").LocalPlayer.Character.Push.PushTool:FireServer(unpack(args))
					end
				end
			end)
		end
		elseif db == false then
		db = false

		if notif then
			OrionLib:MakeNotification({
				Name = "Push Aura Message!",
				Content = "Push Aura Disabled!",
				Image = "rbxassetid://4483345998",
				Time = 5
			})
		end

	end
end
})

local OtherTab1 = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local AntiFlingSection = OtherTab1:AddSection({
	Name =	"AntiFling "..AntiFling_Script_Version
})

OtherTab1:AddButton({
	Name = "AntiFling Function",
	Callback = function()

        OrionLib:MakeNotification({
            Name = "AntiFling Message",
            Content = "Enabled AntiFling!",
            Image = "rbxassetid://4483345998",
            Time = 5
        })

		local Services = setmetatable({}, {__index = function(Self, Index)
			local NewService = game.GetService(game, Index)
			if NewService then
			Self[Index] = NewService
			end
			return NewService
			end})
			local LocalPlayer = Services.Players.LocalPlayer
			local function PlayerAdded(Player)
			   local Detected = false
			   local Character;
			   local PrimaryPart;
			   local function CharacterAdded(NewCharacter)
				   Character = NewCharacter
				   repeat
					   task.wait()
					   PrimaryPart = NewCharacter:FindFirstChild("HumanoidRootPart")
				   until PrimaryPart
				   Detected = false
			   end
			   CharacterAdded(Player.Character or Player.CharacterAdded:Wait())
			   Player.CharacterAdded:Connect(CharacterAdded)
			   Services.RunService.Heartbeat:Connect(function()
				   if (Character and Character:IsDescendantOf(workspace)) and (PrimaryPart and PrimaryPart:IsDescendantOf(Character)) then
					   if PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 or PrimaryPart.AssemblyLinearVelocity.Magnitude > 100 then
						   if Detected == false then
							OrionLib:MakeNotification({
								Name = "Fling Detected!",
								Content = "the player was flingout :"..Player,
								Image = "rbxassetid://4483345998",
								Time = 5
							})
						   end
						   Detected = true
						   for i,v in ipairs(Character:GetDescendants()) do
							   if v:IsA("BasePart") then
								   v.CanCollide = false
								   v.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
								   v.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
								   v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
							   end
						   end
						   PrimaryPart.CanCollide = false
						   PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
						   PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
						   PrimaryPart.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
					   end
				   end
			   end)
			end
			for i,v in ipairs(Services.Players:GetPlayers()) do
			   if v ~= LocalPlayer then
				   PlayerAdded(v)
			   end
			end
			Services.Players.PlayerAdded:Connect(PlayerAdded)
			local LastPosition = nil
			Services.RunService.Heartbeat:Connect(function()
			   pcall(function()
				   local PrimaryPart = LocalPlayer.Character.PrimaryPart
				   if PrimaryPart.AssemblyLinearVelocity.Magnitude > 250 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 250 then
					   PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
					   PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
					   PrimaryPart.CFrame = LastPosition
					   OrionLib:MakeNotification({
						Name = "Fling Detected!",
						Content = "They tried to fling you.",
						Image = "rbxassetid://4483345998",
						Time = 5
					})
				   elseif PrimaryPart.AssemblyLinearVelocity.Magnitude < 50 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 then
					   LastPosition = PrimaryPart.CFrame
				   end
			   end)
			end)
  	end
})

local TpPlayerSection1 = OtherTab1:AddSection({
	Name =	"Tp Player "..Tp_Player_Version
})

TpPlayerSection1:AddTextbox({
	Name = "Write Nickname Player In Box: ",
	Default = "",
	TextDisappear = true,
	Callback = function(Name)
		local TextBoxName = Name
		local plr1 = game.Players.LocalPlayer.Character
		local plr2 = game.Workspace:FindFirstChild(TextBoxName)
		plr1.HumanoidRootPart.CFrame = plr2.HumanoidRootPart.CFrame * CFrame.new(0, 4, 0)
	end
})

TpPlayerSection1:AddBind({
	Name = "Tp Bind",
	Default = Enum.KeyCode.Q,
	Hold = false,
	Callback = function()
		local hum = plr.Character.HumanoidRootPart
		local mouse = plr:GetMouse()
		if mouse.Target then
			hum.CFrame = CFrame.new(mouse.Hit.X, mouse.Hit.Y + 5, mouse.Hit.Z)
		end
	end
})

local BangPlayerSection1 = OtherTab1:AddSection({
	Name =	"Bang Player"
})

local banpl = false

BangPlayerSection1:AddButton({
	Name = "Disable Bang!",
	Callback = function()
		banpl = false
  	end
})

BangPlayerSection1:AddTextbox({
	Name = "Write Nickname Player In Box",
	Default = "",
	TextDisappear = true,
	Callback = function(NameBox)
		local TextBoxName = NameBox
		local plr1 = game.Players.LocalPlayer.Character
		local plr2 = game.Workspace:FindFirstChild(TextBoxName)

		banpl = true

		while banpl do
			task.wait(0.1)
			plr1.HumanoidRootPart.CFrame = plr2.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1.15)
		end

	end
})

local NoclipSection1 = OtherTab1:AddSection({
	Name =	"Noclip"
})
local noclip = false
local Stepped = game:GetService("RunService")
NoclipSection1:AddToggle({
	Name = "Noclip",
	Default = false,
	Callback = function(db)
		if db then
			if not noclip then
				Stepped = game:GetService("RunService").Stepped:Connect(function()
					if db then
						for a, b in pairs(game.Workspace:GetChildren()) do
							if b.Name == plr.Name then
								for i, v in pairs(game.Workspace[plr.Name]:GetChildren()) do
									if v:IsA("BasePart") then
										v.CanCollide = false
									end
								end
							end
						end
					else
						Stepped:Disconnect()
					end
				end)
	
				OrionLib:MakeNotification({
					Name = "Noclip Message!",
					Content = "Noclip Enabled",
					Image = "rbxassetid://4483345998",
					Time = 5
				})
			end
		elseif db == false then
			noclip = false

			if notif then
				OrionLib:MakeNotification({
					Name = "Noclip Message!",
					Content = "Noclip Disabled",
					Image = "rbxassetid://4483345998",
					Time = 5
				})
			end

		end
end
})

OrionLib:Init()

--= Code End =--
