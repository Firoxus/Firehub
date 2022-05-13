local hairAccessoriesWithoutHairInName = {
['Mushroom'] = true;
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

for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
if v:IsA("Accessory") then
print(v)
end
end

--Just prints hats your wearing in console incase u wanted to change hats^

local unanchoredparts = {}
local movers = {}
 local tog = true
 local move = false
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local mov = {};
local mov2 = {};

local tip = "Mushroom" --press f9 and find the hat that looks like a heads name and put it here
local x = -0.011   --Edit Position for head n +left and -Right
local y = -0.587   --Edit Position for head up and down
local z = -3.234 --Edit Position for head x3

local Hats = {pp   = Character:WaitForChild("Pal Hair"),
             ball1   = Character:WaitForChild("InternationalFedora"),
             ball2   = Character:WaitForChild("MeshPartAccessory"),
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
local Network = coroutine.create(function()
while true do
game:GetService("RunService").Heartbeat:Wait()
settings().Physics.AllowSleep = false
sethiddenproperty(game.Players.LocalPlayer, "MaximumSimulationRadius", math.huge)
sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
end
end)
coroutine.resume(Network)

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
AP.Responsiveness = 65
local AO = Instance.new("AlignOrientation", i)
AO.Attachment0 = att0
AO.Attachment1 = att1
AO.ReactionTorqueEnabled = true
AO.PrimaryAxisOnly = false
AO.MaxTorque = 9999999
AO.MaxAngularVelocity = math.huge
AO.Responsiveness = 50
end

--Dont touch above

align(Hats.pp.Handle, Character["Torso"])
align(Hats.ball1.Handle, Character["Torso"])
align(Hats.ball2.Handle, Character["Torso"])

Hats.pp.Handle.Attachment.Rotation = Vector3.new(-11.21, 0, 0)
Hats.ball1.Handle.Attachment.Rotation = Vector3.new(-8.27, 0, 0)
Hats.ball2.Handle.Attachment.Rotation = Vector3.new(-8.27, 0, 0)

--Attachmment1 is the 1st hat u put in Hats at the top. it goes in order

Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment1"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment2"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment3"

Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(-0, -0.898, -1.519)
Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(0.542, -1.34, -0.746)
Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(-0.582, -1.34, -0.746)


Character:WaitForChild(tip).Handle.AccessoryWeld:Remove()
local alignpos = Instance.new("AlignPosition", Character)
local alignorien = Instance.new("AlignOrientation", Character)
local att1 = Instance.new("Attachment", Character:WaitForChild(tip).Handle)
local att2 = Instance.new("Attachment", Character:WaitForChild("Torso"))
alignpos.Attachment0 = att1
alignpos.Attachment1 = att2
alignpos.RigidityEnabled = false
alignpos.ReactionForceEnabled = false
alignpos.ApplyAtCenterOfMass = true
alignpos.MaxForce = 99999999
alignpos.MaxVelocity = math.huge
alignpos.Responsiveness = 65
alignorien.Attachment0 = att1
alignorien.Attachment1 = att2
alignorien.ReactionTorqueEnabled = true
alignorien.PrimaryAxisOnly = false
alignorien.MaxTorque = 99999999
alignorien.MaxAngularVelocity = math.huge
alignorien.Responsiveness = 50
att2.Position = Vector3.new(x,y,z)
att2.Rotation = Vector3.new(-78.79, 0, 0)
