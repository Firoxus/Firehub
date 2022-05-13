local hairAccessoriesWithoutHairInName = {
['Pink Pom poms'] = true;
['Poop'] = true;
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
loadstring(game:HttpGet("https://paste.ee/r/44w9x"))()
wait(1)

local unanchoredparts = {}
local movers = {}
 local tog = true
 local move = false
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local tor = Character.Torso
local mov = {};
local mov2 = {};

local poop = "Poop"
local x = 0
local y = -1.086
local z = 0.808

pom = Character["Pink Pom poms"]
phandle = pom.Handle
phandle.AccessoryWeld:Destroy()

local Hats = {but1   = Character:WaitForChild("NoxiousEgg"),
             but2   = Character:WaitForChild("SFOTHEgg"),
             but3   = Character:WaitForChild("UglyEgg"),
             but4   = Character:WaitForChild("StarryEgg"),
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

align(Hats.but1.Handle, Character["Torso"])
align(Hats.but2.Handle, Character["Torso"])
align(Hats.but3.Handle, Character["Torso"])
align(Hats.but4.Handle, Character["Torso"])

Hats.but1.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)
Hats.but2.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)
Hats.but3.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)
Hats.but4.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)

Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment1"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment2"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment3"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment4"

Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(0.527, 0.142, -0.595)
Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-0.527, 0.142, -0.595)
Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(-0.527, -1.161, 0.57)
Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(0.527, -1.161, 0.57)

     h = Instance.new("Attachment",phandle)
     h.Rotation = Vector3.new(0, 0, 0)
     h.Position = Vector3.new(0, 0, 0)
     
     lg = Instance.new("Attachment",tor)
     lg.Rotation = Vector3.new(0, 0, 0)
     lg.Position = Vector3.new(0, 0, -1.386)

     gap = Instance.new("AlignPosition",phandle)
     gap.Attachment0 = h
     gap.Attachment1 = lg
     gap.RigidityEnabled = true
     
     gao = Instance.new("AlignOrientation",phandle)
     gao.Attachment0 = h
     gao.Attachment1 = lg
     gao.RigidityEnabled = true

Character:WaitForChild(poop).Handle.AccessoryWeld:Remove()
local alignpos = Instance.new("AlignPosition", Character)
local alignorien = Instance.new("AlignOrientation", Character)
local att1 = Instance.new("Attachment", Character:WaitForChild(poop).Handle)
local att2 = Instance.new("Attachment", Character:WaitForChild("Torso"))
alignpos.Attachment0 = att1
alignpos.Attachment1 = att2
alignpos.RigidityEnabled = false
alignpos.ReactionForceEnabled = false
alignpos.ApplyAtCenterOfMass = true
alignpos.MaxForce = 99999999
alignpos.MaxVelocity = math.huge
alignpos.Responsiveness = 50
alignorien.Attachment0 = att1
alignorien.Attachment1 = att2
alignorien.ReactionTorqueEnabled = false
alignorien.PrimaryAxisOnly = false
alignorien.MaxTorque = 99999999
alignorien.MaxAngularVelocity = math.huge
alignorien.Responsiveness = 50
att2.Position = Vector3.new(x,y,z)
att2.Rotation = Vector3.new(-72.25, 180, 180)


game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "q" then
     if toggle == false then
        att2.Position = Vector3.new(x,y,z)
           toggle = true
 else
        att2.Position = Vector3.new(0, -1.808, 1.609)
            toggle = false
        end
    end
end)
