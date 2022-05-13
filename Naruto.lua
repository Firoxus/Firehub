for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(0,55,0)
wait(0.5)
end)
end
end

 Local = game:GetService('Players').LocalPlayer
 Char  = Local.Character
 touched,tpdback = false, false
 Local.CharacterAdded:connect(function(char)
     if script.Disabled ~= true then
         wait(.00001)
         loc = Char.HumanoidRootPart.Position
         Char:MoveTo(box.Position + Vector3.new(0,.5,0))
     end
 end)
 box = Instance.new('Part',workspace)
 box.Anchored = true
 box.Transparency = 1
 box.CanCollide = true
 box.Size = Vector3.new(10,1,10)
 box.Position = Vector3.new(0,10000,0)
 box.Touched:connect(function(part)
     if (part.Parent.Name == Local.Name) then
         if touched == false then
             touched = true
             function apply()
                 if script.Disabled ~= true then
                     no = Char.HumanoidRootPart:Clone()
                     wait(.0001)
                     Char.HumanoidRootPart:Destroy()
                     no.Parent = Char
                     Char:MoveTo(loc)
                     touched = false
                 end end
             if Char then
                 apply()
             end
         end
     end
 end)
 repeat wait() until Char
 loc = Char.HumanoidRootPart.Position
 Char:MoveTo(box.Position + Vector3.new(0,.5,0))
 
 wait(0.5)
local LocalPlayer = game.Players.LocalPlayer;local Character = LocalPlayer.Character;local Mouse = LocalPlayer:GetMouse()
Character["LavanderHair"].Name = "Brick1";Character["Pal Hair"].Name = "Brick2"
Character["LongHairHeadBand Black"].Name = "Brick3";Character["Hat1"].Name = "Brick4"
Character["Kate Hair"].Name = "Brick5";Character["Meshes/LimitBreakingHairGoldAccessory"].Name = "Brick6"
local Head = Character["Head"];local Torso = Character["Torso"]
local RArm = Character["Right Arm"];local LArm = Character["Left Arm"]
local RLeg = Character["Right Leg"];local LLeg = Character["Left Leg"]
local Hat1 = Character["Brick1"];local Hat2 = Character["Brick2"]
local Hat3 = Character["Brick3"];local Hat4 = Character["Brick4"]
local Hat5 = Character["Brick5"];local Hat6 = Character["Brick6"]

Hat1.Handle.Mesh:Destroy()
Hat2.Handle.Mesh:Destroy()
Hat3.Handle.Mesh:Destroy()
Hat4.Handle.Mesh:Destroy()
Hat5.Handle.Mesh:Destroy()

--LostDevelopers Alignment Function
function Align(Part1,Part0,Position,Angle)
local AlignPos = Instance.new("AlignPosition", Part1);
AlignPos.Parent.CanCollide = false;
AlignPos.ApplyAtCenterOfMass = true;
AlignPos.MaxForce = 67752;
AlignPos.MaxVelocity = math.huge/9e110;
AlignPos.ReactionForceEnabled = false;
AlignPos.Responsiveness = 200;
AlignPos.RigidityEnabled = false;
local AlignOri = Instance.new("AlignOrientation", Part1);
AlignOri.MaxAngularVelocity = math.huge/9e110;
AlignOri.MaxTorque = 67752;
AlignOri.PrimaryAxisOnly = false;
AlignOri.ReactionTorqueEnabled = false;
AlignOri.Responsiveness = 200;
AlignOri.RigidityEnabled = false;
local AttachmentA=Instance.new("Attachment",Part1);
local AttachmentB=Instance.new("Attachment",Part0);
AttachmentB.Orientation = Angle
AttachmentB.Position = Position
AlignPos.Attachment0 = AttachmentA;
AlignPos.Attachment1 = AttachmentB;
AlignOri.Attachment0 = AttachmentA;
AlignOri.Attachment1 = AttachmentB;
end
Character.Humanoid.HipHeight = 0
function Weld(Part)
Part.Handle.AccessoryWeld:Destroy()
end
function Mesh(Part)
Part.Handle.SpecialMesh:Destroy()
end
Weld(Hat1);Weld(Hat2);Weld(Hat3)
Weld(Hat4);Weld(Hat5);Weld(Hat6)
--[[ Alignment and Measurements ]]--
Align(Hat1.Handle, RLeg, Vector3.new(0,0,0), Vector3.new(90,0,0))
Align(Hat2.Handle, LLeg, Vector3.new(0,0,0), Vector3.new(90,0,0))
Align(Hat3.Handle, Torso, Vector3.new(0,-0.2,0), Vector3.new(0,90,0))
Align(Hat4.Handle, LArm, Vector3.new(0,0,0), Vector3.new(90,0,0))
Align(Hat5.Handle, RArm, Vector3.new(0,0,0), Vector3.new(90,0,0))
Align(Hat6.Handle, Head, Vector3.new(0,0.5,0), Vector3.new(0,0,0))

wait(0.5)
loadstring(game:HttpGet(('https://pastebin.com/raw/qShnBjCY'),true))()