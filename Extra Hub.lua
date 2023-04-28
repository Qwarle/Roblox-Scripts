--= Lib =--

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

--= Locals =--

local plr = game.Players.LocalPlayer

--= Code =--



----------------------------------= Player Code =----------------------------------



local PlayerWindow = library:CreateWindow("Player Functions")

local PlayerFolder = PlayerWindow:CreateFolder("Player")

PlayerFolder:Slider("Speed Hack",{

    min = 0;
    max = 500;
    precise = true;

},function(s)
    plr.Character.Humanoid.WalkSpeed = s
end)

PlayerFolder:Button("Reset Speed",function()
    plr.Character.Humanoid.WalkSpeed = 16
end)

PlayerFolder:Slider("Jump Hack",{

    min = 0;
    max = 500;
    precise = true;

},function(j)
    plr.Character.Humanoid.JumpPower = j
end)

PlayerFolder:Button("Reset Jump",function()
    plr.Character.Humanoid.JumpPower = 50
end)



----------------------------------= Settings UI Code =----------------------------------



local UISettingsWindow = library:CreateWindow("GUI Settings")

local UIDestroyFolder = UISettingsWindow:CreateFolder("GUI Destroy")

UIDestroyFolder.DestroyGui()
