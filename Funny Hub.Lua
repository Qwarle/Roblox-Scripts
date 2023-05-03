--= Version Scripts =--

local GuiVersion = "Version: [Build: 20]"

local RTX_Script_Version = "Version: 1.0"

local AntiFling_Script_Version = "Version: 1.0"

local Tp_Player_Script_Version = "Version: 1.0"

local Spin_Script_Version = "Version: 1.0"

local Ragdoll_Script_Version = "Ragdoll Engine | Version: 1.0"

local Fling_Script_Version = "Soon..."

--= Libs =--

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Funny Hub | "..GuiVersion, HidePremium = true, SaveConfig = true, ConfigFolder = "sbqbeta"})

--= Other Locals =--

local notif = false

local defspeed = 16
local defjump = 50

local SetWait = 5

local plr = game.Players.LocalPlayer

--= Test =--

local Test = false

--= Code =--



--------------------- Info Tab ---------------------



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



--------------------- Settings Tab ---------------------




local SettingsTab1 = Window:MakeTab({
	Name = "Settings GUI",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local SettingsSection1 = SettingsTab1:AddSection({
	Name = "Settings GUI"
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

		plr.Character.Humanoid.Health -= 999999
		plr.Character.Humanoid.WalkSpeed = defspeed
		plr.Character.Humanoid.JumpPower = defjump

        task.wait(SetWait)

        OrionLib:Destroy()
  	end
})



--------------------- Player Tab ---------------------




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

--[[PlayerSection2:AddToggle({
	Name = "Godmode",
	Default = false,
	Callback = function(db)
	if db then

		notif = true
		local hum = plr.Character.Humanoid
		hum.MaxHealth = 999999
		hum.Health = hum.MaxHealth / 2

		hum.HealthChanged:connect(function()
			if hum.Health < 10 then
				hum.Health = hum.MaxHealth
			end
		end)

		OrionLib:MakeNotification({
			Name = "Godmode Message",
			Content = "Godmode Enabled!",
			Image = "rbxassetid://4483345998",
			Time = 5
		})

	elseif db == false then

		local hum = plr.Character.Humanoid

		hum.MaxHealth = 100
		
		hum.HealthChanged:connect(function()

			if hum.Health < 10 then
				hum.Health = hum.MaxHealth
			end

		end)

		if notif then
			OrionLib:MakeNotification({
				Name = "Godmode Message",
				Content = "Godmode Disabled!",
				Image = "rbxassetid://4483345998",
				Time = 5
			})
		end

	end
end
})]]

PlayerSection2:AddButton({
	Name = "Korblox R15",
	Callback = function(Part0,Part1,Position,Angle)

		function Align(Part0, Part1, Position, Angle)
			local AlignPos = Instance.new('AlignPosition', Part1);
		 AlignPos.Parent.CanCollide = false;
		 AlignPos.ApplyAtCenterOfMass = true;
		 AlignPos.MaxForce = 67752;
		 AlignPos.MaxVelocity = math.huge/9e110;
		 AlignPos.ReactionForceEnabled = false;
		 AlignPos.Responsiveness = 200;
		 AlignPos.RigidityEnabled = false;
			local AlignOri = Instance.new('AlignOrientation', Part1);
		 AlignOri.MaxAngularVelocity = math.huge/9e110;
		 AlignOri.MaxTorque = 67752;
		 AlignOri.PrimaryAxisOnly = false;
		 AlignOri.ReactionTorqueEnabled = false;
		 AlignOri.Responsiveness = 200;
		 AlignOri.RigidityEnabled = false;
			local AttachmentA=Instance.new('Attachment',Part1);
			local AttachmentB=Instance.new('Attachment',Part0);
		 AttachmentA.Name = "BruhA"
		 AttachmentB.Name = "BruhB"
		 AttachmentB.Orientation = Angle
		 AttachmentB.Position = Position
		 AlignPos.Attachment0 = AttachmentA;
		 AlignPos.Attachment1 = AttachmentB;
		 AlignOri.Attachment0 = AttachmentA;
		 AlignOri.Attachment1 = AttachmentB;
		end
		 
		local User = game:GetService("Players").LocalPlayer
		local Body = User.Character
		local Soul = Body.Humanoid
		 
		local FakeLeg = Body.RightUpperLeg:Clone()
		FakeLeg.Transparency = 1
		Body.RightUpperLeg:Destroy()
		FakeLeg.Parent = Body
		Body.RightUpperLeg.RightUpperLeg:Destroy()
		 
		local Korblox = Body["Recolor (For Korblox)"]
		Korblox.Handle.Massless = true
		Korblox.Handle:BreakJoints()
		 
		Align(FakeLeg,Korblox.Handle,Vector3.new(0,.25,0),Vector3.new(0,0,0))
		 
		game:GetService("RunService").Heartbeat:connect(function(t)
			if Korblox:FindFirstChild("Handle", true) then
		 Korblox.Handle.Velocity = Vector3.new(0, 30,0)
			end;
		end)

		if notif then
			OrionLib:MakeNotification({
				Name = "Korblox R15/R6 Message!",
				Content = "Korblox R15/R6 Enabled!",
				Image = "rbxassetid://4483345998",
				Time = 5
			})
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



--------------------- Graphics Tab ---------------------



local Lighting = game:GetService("Lighting")

local Bloom = Instance.new("BloomEffect", Lighting)
local Blur = Instance.new("BlurEffect", Lighting)
local ColorCor = Instance.new("ColorCorrectionEffect", Lighting)
local SunRays = Instance.new("SunRaysEffect", Lighting)
local Sky = Instance.new("Sky", Lighting)

local GraphicsTab1 = Window:MakeTab({
	Name = "RTX Shaders",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local GraphicsSection1 = GraphicsTab1:AddSection({
	Name =	"RTX | "..RTX_Script_Version
})

GraphicsSection1:AddButton({
	Name = "RTX Shaders On",
	Callback = function()

		Bloom.Name = "rtxbloom"
		Blur.Name = "rtxblur"
		ColorCor.Name = "rtxcolorcor"
		SunRays.Name = "rtxsunrays"
		Sky.Name = "rtxsky"

		Bloom.Intensity = 0.85
		Bloom.Size = 17
		Bloom.Threshold = 0.8

		Blur.Size = 5

		ColorCor.Brightness = 0.1
		ColorCor.Contrast = 0.5
		ColorCor.Saturation = -0.3
		ColorCor.TintColor = Color3.fromRGB(255, 235, 203)

		SunRays.Intensity = 0.075
		SunRays.Spread = 0.727

		Sky.SkyboxBk = "http://www.roblox.com/asset/?id=151165214"
		Sky.SkyboxDn = "http://www.roblox.com/asset/?id=151165197"
		Sky.SkyboxFt = "http://www.roblox.com/asset/?id=151165224"
		Sky.SkyboxLf = "http://www.roblox.com/asset/?id=151165191"
		Sky.SkyboxRt = "http://www.roblox.com/asset/?id=151165206"
		Sky.SkyboxUp = "http://www.roblox.com/asset/?id=151165227"
		Sky.SunAngularSize = 10

		Lighting.Ambient = Color3.fromRGB(2,2,2)
		Lighting.Brightness = 2.25
		Lighting.ColorShift_Bottom = Color3.fromRGB(0,0,0)
		Lighting.ColorShift_Top = Color3.fromRGB(0,0,0)
		Lighting.EnvironmentDiffuseScale = 0.2
		Lighting.EnvironmentSpecularScale = 0.2
		Lighting.GlobalShadows = true
		Lighting.OutdoorAmbient = Color3.fromRGB(0,0,0)
		Lighting.ShadowSoftness = 0.2
		Lighting.ClockTime = 17
		Lighting.GeographicLatitude = 45
		Lighting.ExposureCompensation = 0.5

		Bloom.Enabled = true
		Blur.Enabled = true
		ColorCor.Enabled = true
		SunRays.Enabled = true
		Sky.Enabled = true

	  end
})

GraphicsSection1:AddButton({
	Name = "RTX Shaders Off",
	Callback = function()
		local Bloom = Lighting.rtxbloom
		local Blur = Lighting.rtxblur
		local ColorCor = Lighting.rtxcolorcor
		local SunRays = Lighting.rtxsunrays
		local Sky = Lighting.rtxsky
		local Atm = Lighting.rtxatm
		Bloom.Enabled = false
		Blur.Enabled = false
		ColorCor.Enabled = false
		SunRays.Enabled = false
		Sky.Enabled = false
		Atm.Enabled = false
	  end
})

local GraphicsSection2 = GraphicsTab1:AddSection({
	Name = "Lighting Settings"
})

GraphicsSection2:AddSlider({
	Name = "Time Set",
	Min = 0,
	Max = 23,
	Default = 12,
	Color = Color3.fromRGB(251, 255, 0),
	Increment = 0.01,
	ValueName = "Time",
	Callback = function(Value)
		Lighting.ClockTime = Value
	end
})

GraphicsSection2:AddToggle({
	Name = "Shadows!",
	Default = false,
	Callback = function(Value)
		if Value then
			Lighting.GlobalShadows = true
		elseif Value == false then
			Lighting.GlobalShadows = false
		end
	end
})

local GraphicsSection3 = GraphicsTab1:AddSection({
	Name = "SunRays Settings"
})

GraphicsSection3:AddToggle({
	Name = "SunRays On/Off",
	Default = false,
	Callback = function(Value)
		if Value then
			SunRays.Enabled = true
		elseif Value == false then
			SunRays.Enabled = false
		end
	end
})

GraphicsSection3:AddSlider({
	Name = "SunRays Spread",
	Min = 0,
	Max = 5,
	Default = 0,
	Color = Color3.fromRGB(0, 255, 8),
	Increment = 0.01,
	ValueName = "Spread",
	Callback = function(Value)
		SunRays.Spread = Value
	end
})

GraphicsSection3:AddSlider({
	Name = "SunRays Intensity",
	Min = 0,
	Max = 5,
	Default = 0,
	Color = Color3.fromRGB(0, 255, 8),
	Increment = 0.01,
	ValueName = "Intensity",
	Callback = function(Value)
		SunRays.Intensity = Value
	end
})

local GraphicsSection4 = GraphicsTab1:AddSection({
	Name = "Bloom Settings"
})

GraphicsSection4:AddToggle({
	Name = "Bloom On/Off",
	Default = false,
	Callback = function(Value)
		if Value then
			Bloom.Enabled = true
		elseif Value == false then
			Bloom.Enabled = false
		end
	end
})

GraphicsSection4:AddSlider({
	Name = "Bloom Intensity",
	Min = 0,
	Max = 5,
	Default = 0,
	Color = Color3.fromRGB(0, 255, 8),
	Increment = 0.01,
	ValueName = "Intensity",
	Callback = function(Value)
		Bloom.Intensity = Value
	end
})

GraphicsSection4:AddSlider({
	Name = "Bloom Size",
	Min = 0,
	Max = 50,
	Default = 0,
	Color = Color3.fromRGB(0, 255, 8),
	Increment = 0.01,
	ValueName = "Size",
	Callback = function(Value)
		Bloom.Size = Value
	end
})

GraphicsSection4:AddSlider({
	Name = "Bloom Threshold",
	Min = 0,
	Max = 5,
	Default = 5,
	Color = Color3.fromRGB(0, 255, 8),
	Increment = 0.01,
	ValueName = "Threshold",
	Callback = function(Value)
		Bloom.Threshold = Value
	end
})

local GraphicsSection5 = GraphicsTab1:AddSection({
	Name = "Blur Settings"
})

GraphicsSection5:AddToggle({
	Name = "Blur On/Off",
	Default = false,
	Callback = function(Value)
		if Value then
			Blur.Enabled = true
		elseif Value == false then
			Blur.Enabled = false
		end
	end
})

GraphicsSection5:AddSlider({
	Name = "Blur Size",
	Min = 0,
	Max = 50,
	Default = 5,
	Color = Color3.fromRGB(0, 255, 8),
	Increment = 0.01,
	ValueName = "Size",
	Callback = function(Value)
		Blur.Size = Value
	end
})

local GraphicsSection6 = GraphicsTab1:AddSection({
	Name = "Color Corection Settings"
})

GraphicsSection6:AddToggle({
	Name = "Color Corection On/Off",
	Default = false,
	Callback = function(Value)
		if Value then
			ColorCor.Enabled = true
		elseif Value == false then
			ColorCor.Enabled = false
		end
	end
})

GraphicsSection6:AddSlider({
	Name = "Color Corection Brightness",
	Min = 0,
	Max = 1,
	Default = 0,
	Color = Color3.fromRGB(0, 255, 8),
	Increment = 0.01,
	ValueName = "Brightness",
	Callback = function(Value)
		ColorCor.Brightness = Value
	end
})

GraphicsSection6:AddSlider({
	Name = "Color Corection Contrast",
	Min = 0,
	Max = 5,
	Default = 0,
	Color = Color3.fromRGB(0, 255, 8),
	Increment = 0.01,
	ValueName = "Contrast",
	Callback = function(Value)
		ColorCor.Contrast = Value
	end
})

GraphicsSection6:AddSlider({
	Name = "Color Corection Saturation",
	Min = 0,
	Max = 5,
	Default = 0,
	Color = Color3.fromRGB(0, 255, 8),
	Increment = 0.01,
	ValueName = "Saturation",
	Callback = function(Value)
		ColorCor.Saturation = Value
	end
})

GraphicsSection6:AddColorpicker({
	Name = "Color Corection Color",
	Default = Color3.fromRGB(255, 255, 255),
	Callback = function(Value)
		ColorCor.TintColor = Value
	end
})



--------------------- Fling And Spin Tab ---------------------



local FlingAndSpinTab1 = Window:MakeTab({
	Name = "Fling and Spin",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local AntiFlingSection = FlingAndSpinTab1:AddSection({
	Name =	"AntiFling "..AntiFling_Script_Version
})

local Fling = false

AntiFlingSection:AddToggle({
	Name = "AntiFling Function",
	Default = false,
	Callback = function(db)
		if db then
			Fling = true
			OrionLib:MakeNotification({
				Name = "AntiFling Message",
				Content = "Enabled AntiFling!",
				Image = "rbxassetid://4483345998",
				Time = 5
			})

			local flingfreeze = false

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
		local LastPosition = Vector3.new(0, 4, 0)
		Services.RunService.Heartbeat:Connect(function()
			pcall(function()
				local PrimaryPart = LocalPlayer.Character.PrimaryPart
				if Fling == true then
					if flingfreeze == true then
						if PrimaryPart.AssemblyLinearVelocity.Magnitude > 250 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 250 then
							PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
							PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
							PrimaryPart.CFrame = LastPosition

							plr.Character.HumanoidRootPart.Anchored = true
							flingfreeze = false

							OrionLib:MakeNotification({
								Name = "AntiFling Message!",
								Content = "Fling Detected! You Freeze!",
								Image = "rbxassetid://4483345998",
								Time = 5
							})

						end
					elseif flingfreeze == false then
						if PrimaryPart.AssemblyLinearVelocity.Magnitude < 50 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 then
							LastPosition = PrimaryPart.CFrame
							task.wait(1)
							flingfreeze = true
							plr.Character.HumanoidRootPart.Anchored = false
						end
					end
				end
			end)
		end)
		elseif db == false then
			Fling = false

			if notif then
				OrionLib:MakeNotification({
					Name = "AntiFling Message",
					Content = "Disabled AntiFling!",
					Image = "rbxassetid://4483345998",
					Time = 5
				})
			end

		end

	end
})

local SpinSection1 = FlingAndSpinTab1:AddSection({
	Name =	"Spin "..Spin_Script_Version
})
local spinfunc = false
local SpeedSpin
SpinSection1:AddToggle({
	Name = "Spin Toggle",
	Default = false,
	Callback = function(Value)
		if Value then
			spinfunc = true
			game.Players.LocalPlayer.Character.Head.CanCollide = false
			game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
			game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
			game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
		elseif Value == false then
			spinfunc = false
			game.Players.LocalPlayer.Character.Head.CanCollide = true
			game.Players.LocalPlayer.Character.UpperTorso.CanCollide = true
			game.Players.LocalPlayer.Character.LowerTorso.CanCollide = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = true
			SpeedSpin = 0
		end
	end
})

SpinSection1:AddSlider({
	Name = "Spin Speed",
	Min = 0,
	Max = 500,
	Default = 0,
	Color = Color3.fromRGB(255, 255, 255),
	Increment = 0.1,
	ValueName = "Speed",
	Callback = function(Speed)
		if spinfunc == true then
			SpeedSpin = Speed
			local bt = Instance.new("BodyThrust", game.Players.LocalPlayer.Character.HumanoidRootPart)
			bt.Force = Vector3.new(SpeedSpin,0,SpeedSpin)
			bt.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
		end
	end
})

local FlingSection1 = FlingAndSpinTab1:AddSection({
	Name =	"Fling "..Fling_Script_Version
})



--------------------- Other Tab ---------------------



local OtherTab1 = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local TpPlayerSection1 = OtherTab1:AddSection({
	Name =	"Tp Player "..Tp_Player_Script_Version
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

local Players = {}


for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
	if v:IsA"Model" and game.Players:FindFirstChild(v.Name) then
		table.insert(Players, (tostring(v.Name)))
	end
end


TpPlayerSection1:AddDropdown({
	Name = "Select Player",
	Default = "",
	Options = Players,
	Callback = function(selected)
		getgenv().selectedPlayer = selected

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(getgenv().selectedPlayer).Character:WaitForChild("HumanoidRootPart").CFrame
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
	Name =	"Follow Player"
})

local banpl = false

BangPlayerSection1:AddButton({
	Name = "Stop Follow",
	Callback = function()
		banpl = false
  	end
})

BangPlayerSection1:AddTextbox({
	Name = "Write Nickname Player In Box:",
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

local Plr = game.Players.LocalPlayer
local Clipon = false
local RunService = game:GetService("RunService")

NoclipSection1:AddToggle({
	Name = "Noclip",
	Default = false,
	Callback = function(status)
		if status then
		Clipon = true
		RunService.Stepped:Connect(function()
			if Clipon == true then
				for a, b in pairs(game.Workspace:GetChildren()) do
                	if b.Name == Plr.Name then
                		for i, v in pairs(game.Workspace[Plr.Name]:GetChildren()) do
               				if v:IsA("BasePart") then
                				v.CanCollide = false
							end
						end
					end
				end
			else
				RunService:Disconnect()
			end
		end)
		elseif status == false then
			Clipon = false

			for a, b in pairs(game.Workspace:GetChildren()) do
				if b.Name == Plr.Name then
					for i, v in pairs(game.Workspace[Plr.Name]:GetChildren()) do
						   if v:IsA("BasePart") then
							v.CanCollide = true
						end
					end
				end
			end

		end
	end
})

local FlySection1 = OtherTab1:AddSection({
	Name =	"Fly"
})

FlySection1:AddButton({
	Name = "Fly GUI",
	Callback = function(db)
		db = true
		if db then
			loadstring(game:HttpGet('https://raw.githubusercontent.com/Qwarle/Roblox-Scripts/main/Fly%20Gui.Lua'))()
		end

		OrionLib:MakeNotification({
			Name = "Fly GUI Message!",
			Content = "Fly GUI Active",
			Image = "rbxassetid://4483345998",
			Time = 5
		})

  	end
})

local GravitySection1 = OtherTab1:AddSection({
	Name =	"Gravity"
})

local gr = false

GravitySection1:AddButton({
	Name = "Reset Gravity",
	Callback = function(db)

		game.Workspace.Gravity = 196.2

		OrionLib:MakeNotification({
			Name = "Gravity Message!",
			Content = "Gravity Restart",
			Image = "rbxassetid://4483345998",
			Time = 5
		})

  	end
})

GravitySection1:AddTextbox({
	Name = "Set Gravity",
	Default = "196.2",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
	end
})

GravitySection1:AddSlider({
	Name = "Gravity Slider",
	Min = 0,
	Max = 1000,
	Default = 196.2,
	Color = Color3.fromRGB(0, 38, 255),
	Increment = 1,
	ValueName = "Gravity",
	Callback = function(Value)
		gr = true
		if gr then
			game.Workspace.Gravity = Value
		end
	end
})

local FrozenSection1 = OtherTab1:AddSection({
	Name =	"Freeze"
})

FrozenSection1:AddToggle({
	Name = "Freeze Character",
	Default = false,
	Callback = function(status)
		if status then
			plr.Character.HumanoidRootPart.Anchored = true

			OrionLib:MakeNotification({
				Name = "Freeze Message!",
				Content = "Freeze Enabled",
				Image = "rbxassetid://4483345998",
				Time = 5
			})

		elseif status == false then
			plr.Character.HumanoidRootPart.Anchored = false

			if notif then
				OrionLib:MakeNotification({
					Name = "Freeze Message!",
					Content = "Freeze Disabled",
					Image = "rbxassetid://4483345998",
					Time = 5
				})
			end

		elseif plr.Character.Humanoid.Health <= 1 or plr.Character.Humanoid.Health == 0 then
			plr.Character.HumanoidRootPart.Anchored = false
		end
	end
})

OrionLib:MakeNotification({
	Name = "Hello!",
	Content = "Thanks for using my script! Kisses, QwarleDev ;)",
	Image = "rbxassetid://4483345998",
	Time = 5
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
        local Ragdoll_2 = game["Workspace"]["Ragdoll 2"]
        Ragdoll_2.Enabled = false
        local Ragdoll_1 = game["Workspace"]["Ragdoll 1"]
        Ragdoll_1.Enabled = false
        local Ragdoll_Server = game["Workspace"]["Ragdoll 1"]["Ragdoll_Server"]
        Ragdoll_Server.Enabled = false
        local Ragdoll_Admin = game:GetService("Workspace")["Ragdoll-Admin"]
        Ragdoll_Admin.Enabled = false

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
        local Ragdoll_2 = game["Workspace"]["Ragdoll 2"]
        Ragdoll_2.Enabled = true
        local Ragdoll_1 = game["Workspace"]["Ragdoll 1"]
        Ragdoll_1.Enabled = true
        local Ragdoll_Server = game["Workspace"]["Ragdoll 1"]["Ragdoll_Server"]
        Ragdoll_Server.Enabled = true
        local Ragdoll_Admin = game:GetService("Workspace")["Ragdoll-Admin"]
        Ragdoll_Admin.Enabled = true

        if notif then
            OrionLib:MakeNotification({
                Name = "Anti Ragdoll Message!",
                Content = "Anti Ragdoll Disabled!",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end

    end
end
})

local PushSection = RagdollTab1:AddSection({
    Name = "Push Functions"
})

local pushAura = false

RagdollTab1:AddToggle({
    Name = "Push Aura",
    Default = false,
    Callback = function(db)
    if db then
        notif = true
        pushAura = true

        OrionLib:MakeNotification({
            Name = "Push Aura Message!",
            Content = "Push Aura Enabled!",
            Image = "rbxassetid://4483345998",
            Time = 5
        })

        if pushAura == true then

            while task.wait(0.1) do

                if pushAura == true then

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

            end

        end

        elseif db == false then

            pushAura = false

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

OrionLib:Init()

--= Code End =--
