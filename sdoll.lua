local hairAccessoriesWithoutHairInName = {
['RedBeanieWithHair'] = true;
['EmotimaskCute'] = true;
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

local Head = "EmotimaskCute" --press f9 and find the hat that looks like a heads name and put it here
local x = -4   --Edit Position for head n +left and -Right
local y = 0.2   --Edit Position for head up and down
local z = 0 --Edit Position for head x3

local Hats = {rightarm = Character:WaitForChild("Hat1"),
             leftarm  = Character:WaitForChild("Pal Hair"),
             rightleg = Character:WaitForChild("LavanderHair"),
             leftleg  = Character:WaitForChild("Pink Hair"),
              torso1   = Character:WaitForChild("LongHairHeadBand Black"),
              but1   = Character:WaitForChild("InternationalFedora"),
             but2   = Character:WaitForChild("MeshPartAccessory"),
              bob1   = Character:WaitForChild("MarsPet"),
             bob2   = Character:WaitForChild("Uranus"),

}

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
align(Hats.torso1.Handle, Character["Torso"])
align(Hats.rightarm.Handle, Character["Torso"])
align(Hats.leftarm.Handle, Character["Torso"])
align(Hats.rightleg.Handle, Character["Torso"])
align(Hats.leftleg.Handle, Character["Torso"])
align(Hats.but1.Handle, Character["Torso"])
align(Hats.but2.Handle, Character["Torso"])
align(Hats.bob1.Handle, Character["Torso"])
align(Hats.bob2.Handle, Character["Torso"])
Hats.torso1.Handle.Attachment.Rotation = Vector3.new(180,90,0)
Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(90,0,10)
Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(90,0,-20)
Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,5)
Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,-5)
Hats.but1.Handle.Attachment.Rotation = Vector3.new(0,0,-5)
Hats.but2.Handle.Attachment.Rotation = Vector3.new(0,0,5)
Hats.bob1.Handle.Attachment.Rotation = Vector3.new(15,0,0)
Hats.bob2.Handle.Attachment.Rotation = Vector3.new(15,0,0)

Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment1"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment2"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment3"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment4"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment5"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment6"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment7"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment8"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment9"

Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(-4,-0.1,0)
Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-5.5,0.2,0)
Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(-2.3,0.2,0)
Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-4.6,-2,0)
Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(-3.4,-2,0)
Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-4.5,-1,0.5)
Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(-3.5,-1,0.5)
Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-3.4,0.4,-0.5)
Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(-4.6,0.4,-0.5)

Character:WaitForChild(Head).Handle.AccessoryWeld:Remove()
local alignpos = Instance.new("AlignPosition", Character)
local alignorien = Instance.new("AlignOrientation", Character)
local att1 = Instance.new("Attachment", Character:WaitForChild(Head).Handle)
local att2 = Instance.new("Attachment", Character:WaitForChild("Head"))
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


game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "z" then
     if toggle == false then
         
         Character.Humanoid.WalkSpeed = 16
         
         Character.Humanoid.Sit = false
         
         Character.Torso.Anchored = false
         
            Character.Humanoid.HipHeight = 0
                Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(0,4,0)
                Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(1,2,0)
                Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(-1,2,0)
                Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-1.7,5.4,0)
                Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(1.7,5.4,0)
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(0.55,4.8,0.5)
                Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(-0.55,4.8,0.5)
                Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(0.55,3.7,-0.5)
            Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(-0.55,3.7,-0.5)

		       Hats.torso1.Handle.Attachment.Rotation = Vector3.new(180,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(90,0,-20)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(90,0,20)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,120)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,-120)
                Hats.but1.Handle.Attachment.Rotation = Vector3.new(-10,0,-5)
                Hats.but2.Handle.Attachment.Rotation = Vector3.new(-10,0,5)
                Hats.bob1.Handle.Attachment.Rotation = Vector3.new(-20,0,0)
            Hats.bob2.Handle.Attachment.Rotation = Vector3.new(-20,0,0)

                
                
                
                att2.Position = Vector3.new(0,1.2,-0.7)
                att2.Rotation = Vector3.new(55,0,180)
           toggle = true
 else
            Character.Humanoid.HipHeight = 0
                Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(0,2.5,1)
                Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1.3,3.8,1)
                Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(1.3,3.8,1)
                Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-1,1.5,0.5)
                Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(1,1.5,0.5)
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-0.6,1.6,1.5)
                Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(0.6,1.6,1.5)
                Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(0.55,3.1,0.5)
            Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(-0.5,3.1,0.5)
            
		    Hats.torso1.Handle.Attachment.Rotation = Vector3.new(180,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(90,0,145)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(90,0,-145)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(0,-25,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(0,25,0)
                Hats.but1.Handle.Attachment.Rotation = Vector3.new(0,0,-5)
                Hats.but2.Handle.Attachment.Rotation = Vector3.new(0,0,5)
                Hats.bob1.Handle.Attachment.Rotation = Vector3.new(15,0,0)
            Hats.bob2.Handle.Attachment.Rotation = Vector3.new(15,0,0)
           
 
	    

                
            att2.Position = Vector3.new(0,2.8,1)
            att2.Rotation = Vector3.new(0,0,0)
            toggle = false
        end
    end
end)


game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "q" then
     if toggle == false then
         
         Character.Humanoid.WalkSpeed = 16
         
         Character.Humanoid.Sit = false
         
         Character.Torso.Anchored = false
         
            Character.Humanoid.HipHeight = 0
                Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(0,-0.2,-1.7)
                Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1.2,0.7,-1)
                Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(1.2,0.7,-1)
                Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-0.6,-2,-1.7)
                Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(0.6,-2,-1.7)
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-0.5,-1,-2.2)
                Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(0.5,-1,-2.2)
                Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-0.6,0.3,-1.2)
            Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(0.6,0.3,-1.2)
            
            Hats.torso1.Handle.Attachment.Rotation = Vector3.new(180,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(30,10,60)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(30,-10,-60)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,5)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,-5)
                Hats.but1.Handle.Attachment.Rotation = Vector3.new(0,0,-5)
                Hats.but2.Handle.Attachment.Rotation = Vector3.new(0,0,5)
                Hats.bob1.Handle.Attachment.Rotation = Vector3.new(15,180,0)
            Hats.bob2.Handle.Attachment.Rotation = Vector3.new(15,180,0)
                
                att2.Position = Vector3.new(0,0.1,-1.7)
                att2.Rotation = Vector3.new(0,180,0)
           toggle = true
 else
            Character.Humanoid.HipHeight = 0
                Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(-4,-0.1,0)
                Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-5.5,0.2,0)
                Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(-2.3,0.2,0)
                Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-4.6,-2,0)
                Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(-3.4,-2,0)
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-4.5,-1,0.5)
                Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(-3.5,-1,0.5)
                Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-3.4,0.4,-0.5)
            Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(-4.6,0.4,-0.5)
            
            Hats.torso1.Handle.Attachment.Rotation = Vector3.new(180,90,0)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(90,0,10)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(90,0,-20)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(90,0,5)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(90,0,-5)
                Hats.but1.Handle.Attachment.Rotation = Vector3.new(0,0,-5)
                Hats.but2.Handle.Attachment.Rotation = Vector3.new(0,0,5)
                Hats.bob1.Handle.Attachment.Rotation = Vector3.new(15,0,0)
            Hats.bob2.Handle.Attachment.Rotation = Vector3.new(15,0,0)


            att2.Position = Vector3.new(x,y,z)
            att2.Rotation = Vector3.new(0,0,0)
            toggle = false
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "x" then
     if toggle == false then
         
         Character.Humanoid.WalkSpeed = 16
         
         Character.Humanoid.Sit = false
         
         Character.Torso.Anchored = false
         
            Character.Humanoid.HipHeight = 0
                Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(0,-1.2,-2.4)
                Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1.15,-2,-3.45)
                Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(1.15,-2,-3.45)
                Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-1.2,-2,-1)
                Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(1.2,-2,-1)
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-0.54,-1,-1.4)
                Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(0.54,-1,-1.4)
                Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-0.54,-1.9,-3.0)
            Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(0.54,-1.9,-3.0)
            
            Hats.torso1.Handle.Attachment.Rotation = Vector3.new(90,0,90)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(70,-30,0)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(70,30,0)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(-60,60,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(60,120,0)
                Hats.but1.Handle.Attachment.Rotation = Vector3.new(-17,0,0)
                Hats.but2.Handle.Attachment.Rotation = Vector3.new(-17,0,0)
                Hats.bob1.Handle.Attachment.Rotation = Vector3.new(0,0,0)
            Hats.bob2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
                
                att2.Position = Vector3.new(0,-2.3,-4.1)
            att2.Rotation = Vector3.new(-30,0,0)
           toggle = true
 else
            Character.Humanoid.HipHeight = 0
                Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(0,-1.2,-2)
                Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1.15,-2,-3.45)
                Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(1.15,-2,-3.45)
                Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-1.2,-2,-1)
                Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(1.2,-2,-1)
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-0.54,-1,-1)
                Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(0.54,-1,-1)
                Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-0.54,-1.9,-2.6)
            Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(0.54,-1.9,-2.6)
            
            Hats.torso1.Handle.Attachment.Rotation = Vector3.new(90,0,90)
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(50,-30,0)
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(50,30,0)
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(-60,90,0)
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(60,90,0)
                Hats.but1.Handle.Attachment.Rotation = Vector3.new(-17,0,0)
                Hats.but2.Handle.Attachment.Rotation = Vector3.new(-17,0,0)
                Hats.bob1.Handle.Attachment.Rotation = Vector3.new(0,0,0)
            Hats.bob2.Handle.Attachment.Rotation = Vector3.new(0,0,0)


            att2.Position = Vector3.new(0,-2.3,-3.7)
            att2.Rotation = Vector3.new(-30,0,0)
            toggle = false
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "e" then
     if toggle == false then
         
         Character.Humanoid.WalkSpeed = 16
         
         Character.Humanoid.Sit = false
         
         Character.Torso.Anchored = false
         
            Character.Humanoid.HipHeight = 0
                Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(-0,0.4,-1.5) --torso/black hair
                Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1.163,-0.843,-1.071) --rightarm/Hat1
                Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(1.163,-0.843,-1.071) --leftarm/palhair
                Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-1.122,1.454,-0.72) --rightleg/lavenderhair
                Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(1.122,1.454,-0.72) --leftleg/pink hair
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-0.495,1.479,-1.64) --but1/fedora
                Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(0.495,1.479,-1.64) --but2/mesh
                Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-0.53,-0.2, -1) --bob1/mars
            Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(0.53,-0.2,-1) --bob2/uranus
            
            Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0) --torso/black hair
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(30,-143.49,20.32) --rightarm/Hat1
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(30,143.49,-20.32) --leftarm/palhair
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(27.81,141.21,159.03) --rightleg/lavenderhair
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(27.81, -141.21, -159.03) --leftleg/pink hair
                Hats.but1.Handle.Attachment.Rotation = Vector3.new(-15.84,-8.32,2.29) --but1/fedora
                Hats.but2.Handle.Attachment.Rotation = Vector3.new(-15.84,8.32,-2.29) --but2/mesh
                Hats.bob1.Handle.Attachment.Rotation = Vector3.new(0,0,0) --bob1/mars
            Hats.bob2.Handle.Attachment.Rotation = Vector3.new(0,0,0) --bob2/uranus
                
            att2.Position = Vector3.new(-0.155,-2.76,-1)
            att2.Rotation = Vector3.new(0,180,180)
           toggle = true
 else
            Character.Humanoid.HipHeight = 0
                Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(-0,0.4,-1.5) --torso/black hair
                Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1.163,-0.843,-1.071) --rightarm/Hat1
                Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(1.163,-0.843,-1.071) --leftarm/palhair
                Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-1.122,1.454,-0.72) --rightleg/lavenderhair
                Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(1.122,1.454,-0.72) --leftleg/pink hair
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-0.495,1.479,-1.64) --but1/fedora
                Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(0.495,1.479,-1.64) --but2/mesh
                Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-0.53,-0.2, -1) --bob1/mars
            Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(0.53,-0.2,-1) --bob2/uranus
            
            Hats.torso1.Handle.Attachment.Rotation = Vector3.new(0,90,0) --torso/black hair
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(30,-143.49,20.32) --rightarm/Hat1
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(30,143.49,-20.32) --leftarm/palhair
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(27.81,141.21,159.03) --rightleg/lavenderhair
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(27.81, -141.21, -159.03) --leftleg/pink hair
                Hats.but1.Handle.Attachment.Rotation = Vector3.new(-15.84,-8.32,2.29) --but1/fedora
                Hats.but2.Handle.Attachment.Rotation = Vector3.new(-15.84,8.32,-2.29) --but2/mesh
                Hats.bob1.Handle.Attachment.Rotation = Vector3.new(0,0,0) --bob1/mars
            Hats.bob2.Handle.Attachment.Rotation = Vector3.new(0,0,0) --bob2/uranus


            att2.Position = Vector3.new(-0.155,-2.76,-1.509)
            att2.Rotation = Vector3.new(0,180,180)
            toggle = false
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "c" then
     if toggle == false then
         
                Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(-0, 0.209, 1.709) --torso/black hair
                Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(1.45, 0.386, 1.24) --rightarm/Hat1
                Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(-1.45, 0.386, 1.24) --leftarm/palhair
                Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(0.636, -1.95, 1.499) --rightleg/lavenderhair
                Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(-0.636, -1.95, 1.499) --leftleg/pink hair
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(0.528, -1.214, 0.419) --but1/fedora
                Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(-0.528, -1.214, 0.419) --but2/mesh
                Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-0.535, 0.253, -0.607) --bob1/mars
            Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(0.496, 0.254, -0.604) --bob2/uranus
            
            Hats.torso1.Handle.Attachment.Rotation = Vector3.new(90, 101.38, 90) --torso/black hair
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(-30.06, 0, 0) --rightarm/Hat1
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(-30.06, 0, 0) --leftarm/palhair
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(-109.58, 0, 0) --rightleg/lavenderhair
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(-109.58, 0, 0) --leftleg/pink hair
                Hats.but1.Handle.Attachment.Rotation = Vector3.new(11.3, 0, 0) --but1/fedora
                Hats.but2.Handle.Attachment.Rotation = Vector3.new(11.3, 0, 0) --but2/mesh
                Hats.bob1.Handle.Attachment.Rotation = Vector3.new(20, 0, 0) --bob1/mars
            Hats.bob2.Handle.Attachment.Rotation = Vector3.new(20, 0, 0) --bob2/uranus
                
            att2.Position = Vector3.new(0, 0.5, 1.2)
            att2.Rotation = Vector3.new(-19.35, 0, 0)
           toggle = true
 else
                Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(-0, 0.192, 1.795) --torso/black hair
                Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(1.45, 0.386, 1.24) --rightarm/Hat1
                Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(-1.45, 0.386, 1.24) --leftarm/palhair
                Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(0.605, -1.977, 1.7) --rightleg/lavenderhair
                Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(-0.605, -1.977, 1.7) --leftleg/pink hair
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(0.528, -1.214, 0.419) --but1/fedora
                Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(-0.528, -1.214, 0.419) --but2/mesh
                Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-0.535, 0.253, -0.607) --bob1/mars
            Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(0.496, 0.254, -0.604) --bob2/uranus
            
            Hats.torso1.Handle.Attachment.Rotation = Vector3.new(90, 78.62, 90) --torso/black hair
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(-30.06, 0, 0) --rightarm/Hat1
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(-30.06, 0, 0) --leftarm/palhair
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(-85.58, 0, 0) --rightleg/lavenderhair
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(-85.58, 0, 0) --leftleg/pink hair
                Hats.but1.Handle.Attachment.Rotation = Vector3.new(11.3, 0, 0) --but1/fedora
                Hats.but2.Handle.Attachment.Rotation = Vector3.new(11.3, 0, 0) --but2/mesh
                Hats.bob1.Handle.Attachment.Rotation = Vector3.new(20, 0, 0) --bob1/mars
            Hats.bob2.Handle.Attachment.Rotation = Vector3.new(20, 0, 0) --bob2/uranus


            att2.Position = Vector3.new(0, 0.5, 1.885)
            att2.Rotation = Vector3.new(-19.35, 0, 0)
            toggle = false
        end
    end
end)

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "r" then
     if toggle == false then
         
                Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(0, 0.496, -1.49) --torso/black hair
                Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1.355, 1.199, -0.838) --rightarm/Hat1
                Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(1.355, 1.199, -0.838) --leftarm/palhair
                Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-1.021, -0.814, -0.517) --rightleg/lavenderhair
                Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(1.021, -0.814, -0.517) --leftleg/pink hair
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-0.551, -1.054, -1.65) --but1/fedora
                Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(0.551, -1.054, -1.65) --but2/mesh
                Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-0.509, 1.1, -0.95) --bob1/mars
            Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(0.509, 1.1, -0.95) --bob2/uranus
            
            Hats.torso1.Handle.Attachment.Rotation = Vector3.new(90, 101.38, 90) --torso/black hair
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(21.09, 0, 0) --rightarm/Hat1
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(21.09, 0, 0) --leftarm/palhair
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(13.18, 34.16, 8.79) --rightleg/lavenderhair
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(13.18, -34.16, -8.79) --leftleg/pink hair
                Hats.but1.Handle.Attachment.Rotation = Vector3.new(14.28, 0, 0) --but1/fedora
                Hats.but2.Handle.Attachment.Rotation = Vector3.new(14.28, 0, 0) --but2/mesh
                Hats.bob1.Handle.Attachment.Rotation = Vector3.new(-15, 0, 0) --bob1/mars
            Hats.bob2.Handle.Attachment.Rotation = Vector3.new(-15, 0, 0) --bob2/uranus
                
            att2.Position = Vector3.new(0, 0.7, -1.988)
            att2.Rotation = Vector3.new(-8.98, 180, 0)
           toggle = true
 else
                Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(0, 0.696, -1.553) --torso/black hair
                Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1.355, 1.199, -0.838) --rightarm/Hat1
                Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(1.355, 1.199, -0.838) --leftarm/palhair
                Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(-1.021, -0.814, -0.517) --rightleg/lavenderhair
                Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(1.021, -0.814, -0.517) --leftleg/pink hair
                Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(-0.523, -0.689, -1.743) --but1/fedora
                Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(0.523, -0.689, -1.743) --but2/mesh
                Character:WaitForChild("Torso").Attachment8.Position = Vector3.new(-0.509, 1.315, -1.045) --bob1/mars
            Character:WaitForChild("Torso").Attachment9.Position = Vector3.new(0.509, 1.315, -1.045) --bob2/uranus
            
            Hats.torso1.Handle.Attachment.Rotation = Vector3.new(90, 101.38, 90) --torso/black hair
                Hats.rightarm.Handle.Attachment.Rotation = Vector3.new(2.27, 0, 0) --rightarm/Hat1
                Hats.leftarm.Handle.Attachment.Rotation = Vector3.new(2.27, 0, 0) --leftarm/palhair
                Hats.rightleg.Handle.Attachment.Rotation = Vector3.new(4.87, 36.91, 8.59) --rightleg/lavenderhair
                Hats.leftleg.Handle.Attachment.Rotation = Vector3.new(4.87, -36.91, -8.59) --leftleg/pink hair
                Hats.but1.Handle.Attachment.Rotation = Vector3.new(14.28, 0, 0) --but1/fedora
                Hats.but2.Handle.Attachment.Rotation = Vector3.new(14.28, 0, 0) --but2/mesh
                Hats.bob1.Handle.Attachment.Rotation = Vector3.new(-15, 0, 0) --bob1/mars
            Hats.bob2.Handle.Attachment.Rotation = Vector3.new(-15, 0, 0) --bob2/uranus


            att2.Position = Vector3.new(0, 1, -1.988)
            att2.Rotation = Vector3.new(-1.58, 180, 0)
            toggle = false
     end
end
end)