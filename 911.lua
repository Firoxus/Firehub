local hairAccessoriesWithoutHairInName = {
['Plane'] = true;
}
 
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA("Accessory","LongStraightHair") and not hairAccessoriesWithoutHairInName[v.Name] and v.Handle:FindFirstChild("Mesh") then
    ag = v.Handle:FindFirstChild("Mesh")
    ag:Destroy()
    end
    end
 
     for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA("Accessory","LongStraightHair") and not hairAccessoriesWithoutHairInName[v.Name] and v.Handle:FindFirstChild("SpecialMesh") then
    ag = v.Handle:FindFirstChild("SpecialMesh")
    ag:Destroy()
    end
    end
wait(0.5)
local realfenv
realfenv = hookfunction(getgenv().getfenv,function(a)
    local num = tonumber(a)
    if num then
        if num > 10 or num < 1 then
            error("Bypassing the error XD")
        else
            return realfenv()
        end
    else
        return realfenv()
    end
end)
 
local maxSim = 1000
getgenv().setsimulationradius = newcclosure(function(i,v)
    local plr = game.Players.LocalPlayer
    sethiddenproperty(plr,"MaxSimulationRadius",maxSim)
    sethiddenproperty(plr,"SimulationRadius",maxSim)
end)
 
local sethidden
sethidden = hookfunction(getgenv().sethiddenproperty,function(i,p,v)
    local plr = game.Players.LocalPlayer
    if i == plr then
        if (p == "MaxSimulationRadius" or p == "SimulationRadius") then
            if v == maxSim then
                sethidden(i,p,v)
            end
        else
            sethidden(i,p,v)
        end
    else
        sethidden(i,p,v)
    end
end)
wait(0.5)
loadstring(game:HttpGet("https://paste.ee/r/5ROrB"))()
wait(1)

local unanchoredparts = {}
local movers = {}
 local tog = true
 local move = false
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local mov = {};
local mov2 = {};
Character.Torso.Anchored = true

local pl = "Plane"
local x = 11.086 
local y = 3.399  
local z = -9.105 

local Hats = {tower = Character:WaitForChild("Kate Hair"),
             tower2  = Character:WaitForChild("Pal Hair"),
             tower3 = Character:WaitForChild("Bedhead"),
             tower4  = Character:WaitForChild("Hat1"),
             tower5  = Character:WaitForChild("LavanderHair"),
             tower6  = Character:WaitForChild("No Speak Monkey"),
}

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
AP.Responsiveness = 5
local AO = Instance.new("AlignOrientation", i)
AO.Attachment0 = att0
AO.Attachment1 = att1
AO.ReactionTorqueEnabled = false
AO.PrimaryAxisOnly = false
AO.MaxTorque = 9999999
AO.MaxAngularVelocity = math.huge
AO.Responsiveness = 50
end
align(Hats.tower.Handle, Character["Torso"])
align(Hats.tower2.Handle, Character["Torso"])
align(Hats.tower3.Handle, Character["Torso"])
align(Hats.tower4.Handle, Character["Torso"])
align(Hats.tower5.Handle, Character["Torso"])
align(Hats.tower6.Handle, Character["Torso"])

Hats.tower.Handle.Attachment.Rotation = Vector3.new(90,0,0)
Hats.tower2.Handle.Attachment.Rotation = Vector3.new(90,0,0)
Hats.tower3.Handle.Attachment.Rotation = Vector3.new(90,0,0)
Hats.tower4.Handle.Attachment.Rotation = Vector3.new(90,0,0)
Hats.tower5.Handle.Attachment.Rotation = Vector3.new(90,0,0)
Hats.tower6.Handle.Attachment.Rotation = Vector3.new(90,0,0)

Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment1"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment2"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment3"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment4"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment5"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment6"

Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(2, -2.417, -5)
Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(2, -0.45, -5)
Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(2, 1.55, -5)
Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-2, -2.417, -5)
Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(-2, -0.45, -5)
Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-2, 1.55, -5)

Character:WaitForChild(pl).Handle.AccessoryWeld:Remove()
local alignpos = Instance.new("AlignPosition", Character)
local alignorien = Instance.new("AlignOrientation", Character)
local att1 = Instance.new("Attachment", Character:WaitForChild(pl).Handle)
local att2 = Instance.new("Attachment", Character:WaitForChild("Head"))
alignpos.Attachment0 = att1
alignpos.Attachment1 = att2
alignpos.RigidityEnabled = false
alignpos.ReactionForceEnabled = false
alignpos.ApplyAtCenterOfMass = true
alignpos.MaxForce = 99999999
alignpos.MaxVelocity = math.huge
alignpos.Responsiveness = 0.1
alignorien.Attachment0 = att1
alignorien.Attachment1 = att2
alignorien.ReactionTorqueEnabled = false
alignorien.PrimaryAxisOnly = false
alignorien.MaxTorque = 99999999
alignorien.MaxAngularVelocity = math.huge
alignorien.Responsiveness = 50
att2.Position = Vector3.new(x,y,z)
att2.Rotation = Vector3.new(-13.09, 68.31, 14.79)

wait(3)

att2.Position = Vector3.new(2.5, 0, -5.483)

wait(2.5)

att2.Position = Vector3.new(2.5, -6, -5.483)
Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(2, -5, -5)
Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(2, -5, -5)
Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(2, -5, -5)
Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-2, -2.417, -5)
Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(-2, -0.45, -5)
Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-2, 1.55, -5)

wait(2)
att2.Position = Vector3.new(-6.493, -6, -15.772)
att2.Rotation = Vector3.new(-6.71, 158.68, 13.5)

wait(1.5)
att2.Position = Vector3.new(-6.493, 2.729, -15.772)

wait(2)
att2.Position = Vector3.new(-2.288, -0.5, -5.596)

wait(2.5)
att2.Position = Vector3.new(-2.288, -6, -5.596)
Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(2, -5, -5)
Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(2, -5, -5)
Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(2, -5, -5)
Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-2, -5, -5)
Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(-2, -5, -5)
Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-2, -5, -5)
wait(2)
local pcframe = Player.Character:FindFirstChild("HumanoidRootPart").CFrame
Player.Character:BreakJoints()

local added
added = Player.CharacterAdded:Connect(function(Character)
Character:WaitForChild("HumanoidRootPart")

Character.HumanoidRootPart.CFrame = pcframe + Vector3.new(0,.8,0)
added:Disconnect()
end)
