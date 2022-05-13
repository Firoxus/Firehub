   local hairAccessoriesWithoutHairInName = {
['VibeCheck'] = true;
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

   local m = Instance.new("Message")

m.Parent = game.Workspace

m.Text = "Fixed by Firox#0001"

wait(4)

m:remove()

wait(0)

local unanchoredparts = {}
local movers = {}
 local tog = true
 local move = false
 local toggle2 = true
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local mov = {};
local mov2 = {};
local head = Character:WaitForChild("VibeCheck")
local Hats = { torso1 = Character:WaitForChild("No Speak Monkey"),
              torso2 = Character:WaitForChild("Kate Hair"),
              rightarm = Character:WaitForChild("Hat1"),
             leftarm = Character:WaitForChild("Pal Hair"),
             rightleg = Character:WaitForChild("LavanderHair"),
             leftleg = Character:WaitForChild("Pink Hair"),
             rightabs = Character:WaitForChild("InternationalFedora"),
            leftabs = Character:WaitForChild("MarsPet"),
             bottomabs = Character:WaitForChild("MeshPartAccessory"),
}
head.Handle.AccessoryWeld:Remove()
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

align(head.Handle, Character["Torso"])
align(Hats.torso1.Handle, Character["Torso"])
align(Hats.torso2.Handle, Character["Torso"])
align(Hats.rightarm.Handle, Character["Torso"])
align(Hats.leftarm.Handle, Character["Torso"])
align(Hats.rightleg.Handle, Character["Torso"])
align(Hats.leftleg.Handle, Character["Torso"])
align(Hats.rightabs.Handle, Character["Torso"])
align(Hats.leftabs.Handle, Character["Torso"])
align(Hats.bottomabs.Handle, Character["Torso"])


head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(75, 180, -150)
Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(-64.91, 37.86, -24.33)
Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(120,0,0)
Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(75,360,180)
Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)
Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)
Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)

Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "headattachment"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "torso1attachment"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "torso2attachment"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "rightarmattachment"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "leftarmattachment"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "rightlegattachment"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "leftlegattachment"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "rightabsattachment"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "leftabsattachment"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "bottomabsattachment"

Character:WaitForChild("Torso").headattachment.Position = Vector3.new(2, 3.4, 2.9)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(2, 2.4, 2.9)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(2, 1.4, 2.9)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(3, 1.984, 2.323)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(0.674, 1.968, 2.645)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(2.5, 0.145, 3.041)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(1.5, 0.2, 2.5)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(2.5, 2.5, 2.4)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(1.4, 2.5, 2.4)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(2, 1.4, 2.4)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "f" then
     if toggle == false then
            
             Character.Humanoid.HipHeight = 0
            
            wait(0.1)
            
            Character.Humanoid.Sit = false
            
            Character.Torso.Anchored = false
    
head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(75, 180, -150)
Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(-64.91, 37.86, -24.33)
Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(120,0,0)
Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(75,360,180)
Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)
Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)
Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)

Character:WaitForChild("Torso").headattachment.Position = Vector3.new(2, 3.4, 2.9)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(2, 2.4, 2.9)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(2, 1.4, 2.9)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(3, 1.984, 2.323)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(0.674, 1.968, 2.645)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(2.5, 0.145, 3.041)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(1.5, 0.2, 2.5)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(2.5, 2.5, 2.4)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(1.4, 2.5, 2.4)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(2, 1.4, 2.4)


toggle = true

 else

            Character.Humanoid.HipHeight = 0
            
            wait(0.1)
            
            Character.Humanoid.Sit = false
            
            Character.Torso.Anchored = false
            
head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(75, 180, -150)
Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(-64.91, 37.86, -24.33)
Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(120,0,0)
Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(75,360,180)
Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)
Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)
Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)

Character:WaitForChild("Torso").headattachment.Position = Vector3.new(2, 3.4, 2.9)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(2, 2.4, 2.9)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(2, 1.4, 2.9)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(3, 1.984, 2.323)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(0.674, 1.968, 2.645)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(2.5, 0.145, 3.041)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(1.5, 0.2, 2.5)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(2.5, 2.5, 2.4)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(1.4, 2.5, 2.4)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(2, 1.4, 2.4)

            toggle = false
        end
     end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "g" then
     if toggle == false then
         
            Character.Humanoid.HipHeight = 0
            
            wait(0.1)
            
            Character.Humanoid.Sit = false
            
            Character.Torso.Anchored = false
            
head.Handle.Attachment.Rotation = Vector3.new(90, 0, 0)
Hats.torso1.Handle.Attachment.Rotation = Vector3.new(90, 90, 90)
Hats.torso2.Handle.Attachment.Rotation = Vector3.new(90, 90, 90)
Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(-90, 0, 0)
Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(90, 0, 0)
Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(-28.88, 36.19, -98.5)
Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(28.88, 36.19, -98.5)
Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(-90, 0, 0)
Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(-90, 0, 0)
Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(-90, 0, 0)

Character:WaitForChild("Torso").headattachment.Position = Vector3.new(2, -1.422, -5.922)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(2, -1.422, -4.922)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(2, -1.422, -3.922)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(3.5, -1.922, -4.922)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(0.5, -1.922, -4.922)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(2.693, -2.022, -2.774)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(1.307, -2.022, -2.774)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(2.5, -1.922, -5.022)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(1.4, -1.922, -5.022)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(2, -1.922, -3.922)

           toggle = true
 else

            Character.Humanoid.HipHeight = 0
            
            wait(0.1)
            
            Character.Humanoid.Sit = false
            
            Character.Torso.Anchored = false
            
head.Handle.Attachment.Rotation = Vector3.new(90, 0, 0)
Hats.torso1.Handle.Attachment.Rotation = Vector3.new(90, 90, 90)
Hats.torso2.Handle.Attachment.Rotation = Vector3.new(90, 90, 90)
Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(-90, 0, 0)
Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(90, 0, 0)
Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(-28.88, 17.19, -98.5)
Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(28.88, 17.19, -98.5)
Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(-90, 0, 0)
Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(-90, 0, 0)
Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(-90, 0, 0)

Character:WaitForChild("Torso").headattachment.Position = Vector3.new(2, -1.922, -5.922)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(2, -1.922, -4.922)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(2, -1.922, -3.922)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(3.5, -1.922, -4.922)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(0.5, -1.922, -4.922)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(2.693, -2.422, -2.774)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(1.307, -2.422, -2.774)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(2.5, -2.422, -5.022)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(1.4, -2.422, -5.022)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(2, -2.422, -3.922)

            toggle = false
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "v" then
     if toggle == false then
         
            Character.Humanoid.HipHeight = 5
            
            wait(0.1)
            
            Character.Humanoid.Sit = false
            
            Character.Torso.Anchored = false
            
head.Handle.Attachment.Rotation = Vector3.new(-30, 0, 0)
Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0, 90, 0)
Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0, 90, 0)
Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(-1, -90, 90)
Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(-1, 90, -90)
Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(-75, -90, 180)
Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(75, -90, 180)
Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)
Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)
Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)

Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0, -3.758, -0.022)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(-0, -4.672, 0.028)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(-0, -5.672, 0.028)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(1.327, -3.672, 0.028)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-1.327, -3.672, 0.028)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.693, -7.12, 0.028)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.693, -7.12, 0.028)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, -4.572, -0.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, -4.572, -0.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -5.672, -0.472)

           toggle = true
 else

            Character.Humanoid.HipHeight = 4
            
            wait(0.1)
            
            Character.Humanoid.Sit = false
            
            Character.Torso.Anchored = false
            
head.Handle.Attachment.Rotation = Vector3.new(30, 0, 0)
Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0, 90, 0)
Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0, 90, 0)
Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(-1, -90, 90)
Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(-1, 90, -90)
Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(-75, -90, 180)
Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(75, -90, 180)
Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)
Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)
Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)

Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0, -2.758, -0.022)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(-0, -3.672, 0.028)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(-0, -4.672, 0.028)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(1.327, -4, 0.028)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-1.327, -4, 0.028)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.693, -6.12, 0.028)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.693, -6.12, 0.028)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, -3.572, -0.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, -3.572, -0.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -4.672, -0.472)

            toggle = false
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "e" then
     if toggle == false then
         
            Character.Humanoid.HipHeight = 0
            
            wait(0.1)
            
            Character.Humanoid.Sit = false
            
            Character.Torso.Anchored = false
            
            Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0,1.5,-3)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(0,0.5,-3)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(0,-0.5,-3)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(0.34, 0.5, -5.344)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-1.653, 0.5, -3.234)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.5,-2,-3)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.5,-2,-3)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, 0.428, -3.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, 0.428, -3.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -0.672, -3.472)

                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(12.95,-149.13,-172.37)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(15,150,180)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                
                wait(0.09)
                
                Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0,1.5,-3)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(0,0.5,-3)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(0,-0.5,-3)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(1.59, 0.5, -3.253)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-0.446, 0.5, -5.326)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.5,-2,-3)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.5,-2,-3)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, 0.428, -3.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, 0.428, -3.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -0.672, -3.472)

                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(12.95,-149.13,-172.37)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(15,150,180)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)

                wait(0.09)

            Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0,1.5,-3)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(0,0.5,-3)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(0,-0.5,-3)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(0.34, 0.5, -5.344)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-1.653, 0.5, -3.234)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.5,-2,-3)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.5,-2,-3)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, 0.428, -3.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, 0.428, -3.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -0.672, -3.472)

                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(12.95,-149.13,-172.37)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(15,150,180)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                
                wait(0.09)
                
                Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0,1.5,-3)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(0,0.5,-3)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(0,-0.5,-3)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(1.59, 0.5, -3.253)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-0.446, 0.5, -5.326)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.5,-2,-3)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.5,-2,-3)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, 0.428, -3.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, 0.428, -3.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -0.672, -3.472)

                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(12.95,-149.13,-172.37)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(15,150,180)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)

                wait(0.09)

            Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0,1.5,-3)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(0,0.5,-3)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(0,-0.5,-3)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(0.34, 0.5, -5.344)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-1.653, 0.5, -3.234)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.5,-2,-3)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.5,-2,-3)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, 0.428, -3.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, 0.428, -3.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -0.672, -3.472)

                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(12.95,-149.13,-172.37)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(15,150,180)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                
                wait(0.09)
                
                Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0,1.5,-3)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(0,0.5,-3)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(0,-0.5,-3)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(1.59, 0.5, -3.253)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-0.446, 0.5, -5.326)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.5,-2,-3)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.5,-2,-3)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, 0.428, -3.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, 0.428, -3.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -0.672, -3.472)

                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(12.95,-149.13,-172.37)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(15,150,180)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)

                wait(0.09)

            Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0,1.5,-3)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(0,0.5,-3)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(0,-0.5,-3)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(0.34, 0.5, -5.344)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-1.653, 0.5, -3.234)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.5,-2,-3)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.5,-2,-3)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, 0.428, -3.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, 0.428, -3.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -0.672, -3.472)

                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(12.95,-149.13,-172.37)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(15,150,180)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                
                wait(0.09)
                
                Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0,1.5,-3)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(0,0.5,-3)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(0,-0.5,-3)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(1.59, 0.5, -3.253)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-0.446, 0.5, -5.326)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.5,-2,-3)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.5,-2,-3)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, 0.428, -3.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, 0.428, -3.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -0.672, -3.472)

                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(12.95,-149.13,-172.37)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(15,150,180)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)

                wait(0.09)

            Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0,1.5,-3)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(0,0.5,-3)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(0,-0.5,-3)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(0.34, 0.5, -5.344)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-1.653, 0.5, -3.234)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.5,-2,-3)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.5,-2,-3)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, 0.428, -3.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, 0.428, -3.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -0.672, -3.472)

                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(12.95,-149.13,-172.37)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(15,150,180)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                
                wait(0.09)
                
                Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0,1.5,-3)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(0,0.5,-3)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(0,-0.5,-3)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(1.59, 0.5, -3.253)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-0.446, 0.5, -5.326)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.5,-2,-3)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.5,-2,-3)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, 0.428, -3.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, 0.428, -3.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -0.672, -3.472)

                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(12.95,-149.13,-172.37)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(15,150,180)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)

                wait(0.09)

            Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0,1.5,-3)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(0,0.5,-3)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(0,-0.5,-3)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(0.34, 0.5, -5.344)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-1.653, 0.5, -3.234)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.5,-2,-3)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.5,-2,-3)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, 0.428, -3.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, 0.428, -3.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -0.672, -3.472)

                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(12.95,-149.13,-172.37)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(15,150,180)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                
                wait(0.09)
                
                Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0,1.5,-3)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(0,0.5,-3)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(0,-0.5,-3)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(1.59, 0.5, -3.253)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-0.446, 0.5, -5.326)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.5,-2,-3)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.5,-2,-3)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, 0.428, -3.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, 0.428, -3.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -0.672, -3.472)

                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(12.95,-149.13,-172.37)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(15,150,180)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)

                wait(0.09)

            Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0,1.5,-3)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(0,0.5,-3)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(0,-0.5,-3)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(0.34, 0.5, -5.344)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-1.653, 0.5, -3.234)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.5,-2,-3)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.5,-2,-3)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, 0.428, -3.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, 0.428, -3.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -0.672, -3.472)

                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(12.95,-149.13,-172.37)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(15,150,180)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                
                wait(0.09)
                
                Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0,1.5,-3)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(0,0.5,-3)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(0,-0.5,-3)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(1.59, 0.5, -3.253)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-0.446, 0.5, -5.326)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.5,-2,-3)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.5,-2,-3)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, 0.428, -3.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, 0.428, -3.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -0.672, -3.472)

                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(12.95,-149.13,-172.37)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(15,150,180)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)

                wait(0.09)

            Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0,1.5,-3)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(0,0.5,-3)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(0,-0.5,-3)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(0.34, 0.5, -5.344)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-1.653, 0.5, -3.234)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.5,-2,-3)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.5,-2,-3)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, 0.428, -3.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, 0.428, -3.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -0.672, -3.472)

                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(12.95,-149.13,-172.37)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(15,150,180)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                
                wait(0.09)
                
                Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0,1.5,-3)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(0,0.5,-3)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(0,-0.5,-3)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(1.59, 0.5, -3.253)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-0.446, 0.5, -5.326)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.5,-2,-3)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.5,-2,-3)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, 0.428, -3.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, 0.428, -3.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -0.672, -3.472)

                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(12.95,-149.13,-172.37)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(15,150,180)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)

                wait(0.09)

            Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0,1.5,-3)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(0,0.5,-3)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(0,-0.5,-3)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(0.34, 0.5, -5.344)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-1.653, 0.5, -3.234)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.5,-2,-3)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.5,-2,-3)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, 0.428, -3.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, 0.428, -3.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -0.672, -3.472)

                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(12.95,-149.13,-172.37)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(15,150,180)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                
                wait(0.09)
                
                Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0,1.5,-3)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(0,0.5,-3)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(0,-0.5,-3)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(1.59, 0.5, -3.253)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-0.446, 0.5, -5.326)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.5,-2,-3)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.5,-2,-3)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, 0.428, -3.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, 0.428, -3.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -0.672, -3.472)

                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(12.95,-149.13,-172.37)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(15,150,180)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)

                wait(0.09)

            Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0,1.5,-3)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(0,0.5,-3)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(0,-0.5,-3)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(0.34, 0.5, -5.344)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-1.653, 0.5, -3.234)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.5,-2,-3)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.5,-2,-3)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, 0.428, -3.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, 0.428, -3.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -0.672, -3.472)

                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(12.95,-149.13,-172.37)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(15,150,180)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                
                wait(0.09)
                
                Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0,1.5,-3)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(0,0.5,-3)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(0,-0.5,-3)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(1.59, 0.5, -3.253)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-0.446, 0.5, -5.326)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.5,-2,-3)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.5,-2,-3)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, 0.428, -3.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, 0.428, -3.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -0.672, -3.472)

                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(12.95,-149.13,-172.37)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(15,150,180)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)

                wait(0.09)

            Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0,1.5,-3)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(0,0.5,-3)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(0,-0.5,-3)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(0.34, 0.5, -5.344)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-1.653, 0.5, -3.234)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.5,-2,-3)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.5,-2,-3)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, 0.428, -3.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, 0.428, -3.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -0.672, -3.472)

                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(12.95,-149.13,-172.37)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(15,150,180)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                
                wait(0.09)
                
                Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0,1.5,-3)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(0,0.5,-3)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(0,-0.5,-3)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(1.59, 0.5, -3.253)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-0.446, 0.5, -5.326)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.5,-2,-3)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.5,-2,-3)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, 0.428, -3.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, 0.428, -3.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -0.672, -3.472)

                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(12.95,-149.13,-172.37)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(15,150,180)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)

                wait(0.09)

            Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0,1.5,-3)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(0,0.5,-3)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(0,-0.5,-3)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(0.34, 0.5, -5.344)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-1.653, 0.5, -3.234)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.5,-2,-3)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.5,-2,-3)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, 0.428, -3.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, 0.428, -3.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -0.672, -3.472)

                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(12.95,-149.13,-172.37)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(15,150,180)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                
                wait(0.09)
                
                Character:WaitForChild("Torso").headattachment.Position = Vector3.new(0,1.5,-3)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(0,0.5,-3)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(0,-0.5,-3)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(1.59, 0.5, -3.253)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(-0.446, 0.5, -5.326)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(0.5,-2,-3)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(-0.5,-2,-3)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(0.5, 0.428, -3.472)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(-0.6, 0.428, -3.472)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(-0, -0.672, -3.472)

                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(12.95,-149.13,-172.37)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(15,150,180)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,0)
                Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                
                wait(0.09)
                
                head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(75, 180, -150)
Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(-64.91, 37.86, -24.33)
Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(120,0,0)
Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(75,360,180)
Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)
Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)
Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)

Character:WaitForChild("Torso").headattachment.Position = Vector3.new(2, 3.4, 2.9)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(2, 2.4, 2.9)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(2, 1.4, 2.9)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(3, 1.984, 2.323)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(0.674, 1.968, 2.645)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(2.5, 0.145, 3.041)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(1.5, 0.2, 2.5)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(2.5, 2.5, 2.4)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(1.4, 2.5, 2.4)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(2, 1.4, 2.4)

else

            Character.Humanoid.HipHeight = 0
            
            wait(0.1)
            
            Character.Humanoid.Sit = false
            
            Character.Torso.Anchored = false
            
head.Handle.Attachment.Rotation = Vector3.new(0,0,0)
Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0)
Hats.torso2.Handle.Attachment.Rotation = Vector3.new(0,90,0)
Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(75, 180, -150)
Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(-64.91, 37.86, -24.33)
Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(120,0,0)
Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(75,360,180)
Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)
Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)
Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(0, 0, 0)

Character:WaitForChild("Torso").headattachment.Position = Vector3.new(2, 3.4, 2.9)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(2, 2.4, 2.9)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(2, 1.4, 2.9)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(3, 1.984, 2.323)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(0.674, 1.968, 2.645)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(2.5, 0.145, 3.041)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(1.5, 0.2, 2.5)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(2.5, 2.5, 2.4)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(1.4, 2.5, 2.4)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(2, 1.4, 2.4)

            toggle = false
     end
 end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "r" then
     if toggle == false then
         
            Character.Humanoid.HipHeight = 0
            
            wait(0.1)
            
            Character.Humanoid.Sit = false
            
            Character.Torso.Anchored = false
            
head.Handle.Attachment.Rotation = Vector3.new(-75, 0, 0)
Hats.torso1.Handle.Attachment.Rotation = Vector3.new(90, -75, 90)
Hats.torso2.Handle.Attachment.Rotation = Vector3.new(90, -75, 90)
Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(-25.66, 146.31, -163.9)
Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(-25.66, -146.31, -163.9)
Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(28.88, 162.81, 171.5)
Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(28.88, -162.81, 171.5)
Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(90, -75, 90)
Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(90, -75, 90)
Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(90, -75, 90)

Character:WaitForChild("Torso").headattachment.Position = Vector3.new(2, -2.447, -2.112)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(2, -2.706, -3.077)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(2, -2.965, -4.043)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(3, -2.656, -2.457)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(1, -2.656, -2.457)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(2.745, -3.073, -5.297)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(1.255, -3.073, -5.297)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(2.5, -2.197, -3.11)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(1.4, -2.197, -3.11)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(2, -2.482, -4.173)

           toggle = true
 else

            Character.Humanoid.HipHeight = 0
            
            wait(0.1)
            
            Character.Humanoid.Sit = false
            
            Character.Torso.Anchored = false
            
head.Handle.Attachment.Rotation = Vector3.new(-15, 0, 0)
Hats.torso1.Handle.Attachment.Rotation = Vector3.new(90, -15, 90)
Hats.torso2.Handle.Attachment.Rotation = Vector3.new(90, -15, 90)
Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(25.66, 146.31, 163.9)
Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(25.66, -146.31, 163.9)
Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(28.88, 162.81, 171.5)
Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(28.88, -162.81, 171.5)
Hats.rightabs.Handle.Attachment.Rotation = Vector3.new(90, -15, 90)
Hats.leftabs.Handle.Attachment.Rotation = Vector3.new(90, -15, 90)
Hats.bottomabs.Handle.Attachment.Rotation = Vector3.new(90, -15, 90)

Character:WaitForChild("Torso").headattachment.Position = Vector3.new(2, -0.455, -4.019)
Character:WaitForChild("Torso").torso1attachment.Position = Vector3.new(2, -1.421, -4.277)
Character:WaitForChild("Torso").torso2attachment.Position = Vector3.new(2, -2.387, -4.536)
Character:WaitForChild("Torso").rightarmattachment.Position = Vector3.new(3, -0.859, -4.01)
Character:WaitForChild("Torso").leftarmattachment.Position = Vector3.new(1, -0.859, -4.01)
Character:WaitForChild("Torso").rightlegattachment.Position = Vector3.new(2.745, -3.073, -5.297)
Character:WaitForChild("Torso").leftlegattachment.Position = Vector3.new(1.255, -3.073, -5.297)
Character:WaitForChild("Torso").rightabsattachment.Position = Vector3.new(2.5, -1.195, -4.735)
Character:WaitForChild("Torso").leftabsattachment.Position = Vector3.new(1.4, -1.195, -4.735)
Character:WaitForChild("Torso").bottomabsattachment.Position = Vector3.new(2, -2.258, -5.019)

            toggle = false
        end
    end
end)