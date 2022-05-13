for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(0,55,0)
wait(0.5)
end)
end
end

game.Players.LocalPlayer.Character:FindFirstChild("Tech Buggies").Name = "a7"
game.Players.LocalPlayer.Character:FindFirstChild("Angelic Messenger Accessory").Name = "a8"
game.Players.LocalPlayer.Character:FindFirstChild("Feathery Angel Wings").Name = "a3"
game.Players.LocalPlayer.Character:FindFirstChild("MeshPartAccessory").Name = "a1"
game.Players.LocalPlayer.Character:FindFirstChild("MeshPartAccessory").Name = "a4"
game.Players.LocalPlayer.Character:FindFirstChild("MeshPartAccessory").Name = "a2"
game.Players.LocalPlayer.Character:FindFirstChild("Feathery Angel Wings").Name = "a5"
game.Players.LocalPlayer.Character:FindFirstChild("MeshPartAccessory").Name = "a6"

wait(1)

local unanchoredparts = {}
local movers = {}
 local tog = true
 local move = false
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local mov = {};
local mov2 = {};

Character.Humanoid.HipHeight = 4
Character.Humanoid.WalkSpeed = 16

local Hats = {base   = Character:WaitForChild("a1"),
             base2   = Character:WaitForChild("a2"),
             wing   = Character:WaitForChild("a3"),
             wingtip = Character:WaitForChild("a4"),
             wing2   = Character:WaitForChild("a5"),
             wingtip2   = Character:WaitForChild("a6"),
             tail   = Character:WaitForChild("a7"),
             tailtip = Character:WaitForChild("a8"),
}

--Dont touch below

for i,v in next, Hats do
v.Handle.AccessoryWeld:Remove()
for _,mesh in next, v:GetDescendants() do
if mesh:IsA("Mesh") or mesh:IsA("SpecialMesh") then
mesh:Remove()
end
end
end

function ftp(str)
    local pt = {};
    if str ~= 'me' and str ~= 'random' then
        for i, v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower():find(str:lower()) then
                table.insert(pt, v);
            end
        end
    elseif str == 'me' then
        table.insert(pt, plr);
	elseif str == 'random' then
		table.insert(pt, game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]);
    end
    return pt;
end

local function align(i,v)
local att0 = Instance.new("Attachment", i)
att0.Position = Vector3.new(0,0,0)
local att1 = Instance.new("Attachment", v)
att1.Position = Vector3.new(0,0,0)
local AP = Instance.new("AlignPosition", i)
AP.Attachment0 = att0
AP.Attachment1 = att1
AP.RigidityEnabled = false
AP.ReactionForceEnabled = false
AP.ApplyAtCenterOfMass = true
AP.MaxForce = 9999999
AP.MaxVelocity = math.huge
AP.Responsiveness = 100
local AO = Instance.new("AlignOrientation", i)
AO.Attachment0 = att0
AO.Attachment1 = att1
AO.ReactionTorqueEnabled = false
AO.PrimaryAxisOnly = false
AO.MaxTorque = 9999999
AO.MaxAngularVelocity = math.huge
AO.Responsiveness = 50
end

--Dont touch above

align(Hats.base.Handle, Character["Torso"])
align(Hats.base2.Handle, Character["Torso"])
align(Hats.wing.Handle, Character["Torso"])
align(Hats.wingtip.Handle, Character["Torso"])
align(Hats.wing2.Handle, Character["Torso"])
align(Hats.wingtip2.Handle, Character["Torso"])
align(Hats.tail.Handle, Character["Torso"])
align(Hats.tailtip.Handle, Character["Torso"])

Hats.base.Handle.Attachment.Rotation = Vector3.new(0,0,0) --Rotation for the hats
Hats.base2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
Hats.wing.Handle.Attachment.Rotation = Vector3.new(-90, -180, 0)
Hats.wingtip.Handle.Attachment.Rotation = Vector3.new(-25, 90, 0)
Hats.wing2.Handle.Attachment.Rotation = Vector3.new(90, 0, 0)
Hats.wingtip2.Handle.Attachment.Rotation = Vector3.new(25, 90, 0)
Hats.tail.Handle.Attachment.Rotation = Vector3.new(90, -90, 0)
Hats.tailtip.Handle.Attachment.Rotation = Vector3.new(-25, 0, 0)


Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment1"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment2"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment3"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment4"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment5"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment6"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment7"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment8"

Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(-0, -0, -3) --Position of the hats
Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(0, -0, 3)
Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(-7.5, 0, 0)
Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-12.413, 1.032, 0)
Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(7.5, -0, -0)
Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(12.413, 1.032, 0)
Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(0, 0, 10.5)
Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(0, 1.099, 15.226)

repeat wait() 
	until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local torso = plr.Character.Head 
local flying = false
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 1000 
local speed = 5000 

function Fly() 
local bg = Instance.new("BodyGyro", torso) 
bg.P = 9e4 
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
bg.cframe = torso.CFrame 
local bv = Instance.new("BodyVelocity", torso) 
bv.velocity = Vector3.new(0,0.1,0) 
bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
repeat wait() 
plr.Character.Humanoid.PlatformStand = true 
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
speed = speed+.5+(speed/maxspeed) 
if speed > maxspeed then 
speed = maxspeed 
end 
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
speed = speed-2 
if speed < 0 then 
speed = 0 
end 
end 
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
else 
bv.velocity = Vector3.new(0,0.1,0) 
end 
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
until not flying 
ctrl = {f = 0, b = 0, l = 0, r = 0} 
lastctrl = {f = 0, b = 0, l = 0, r = 0} 
speed = 0 
bg:Destroy() 
bv:Destroy() 
plr.Character.Humanoid.PlatformStand = false 
end 
mouse.KeyDown:connect(function(key) 
if key:lower() == "e" then 
if flying then flying = false 
else 
flying = true 
Fly() 
end 
elseif key:lower() == "w" then 
ctrl.f = 1 
elseif key:lower() == "s" then 
ctrl.b = -1 
elseif key:lower() == "a" then 
ctrl.l = -1 
elseif key:lower() == "d" then 
ctrl.r = 1 
end 
end) 
mouse.KeyUp:connect(function(key) 
if key:lower() == "w" then 
ctrl.f = 0 
elseif key:lower() == "s" then 
ctrl.b = 0 
elseif key:lower() == "a" then 
ctrl.l = 0 
elseif key:lower() == "d" then 
ctrl.r = 0 
end 
end)
Fly()
