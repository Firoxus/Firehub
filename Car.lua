for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(0,55,0)
wait(0.5)
end)
end
end

plr = game.Players.LocalPlayer
char = plr.Character
torso = char.Torso
char["Left Leg"]:Remove()
char["Right Leg"]:Remove()
char.Humanoid.WalkSpeed = 75
char.Humanoid.HipHeight = 0.8

function Align(Part1,Part0,Position,Angle,name) 
local AlignPos = Instance.new("AlignPosition", Part1)
AlignPos.Parent.CanCollide = false
AlignPos.ApplyAtCenterOfMass = true
AlignPos.MaxForce = 67752
AlignPos.MaxVelocity = math.huge/9e110
AlignPos.ReactionForceEnabled = false
AlignPos.Responsiveness = 200
AlignPos.RigidityEnabled = false
local AlignOrient = Instance.new("AlignOrientation", Part1)
AlignOrient.MaxAngularVelocity = math.huge/9e110
AlignOrient.MaxTorque = 67752
AlignOrient.PrimaryAxisOnly = false
AlignOrient.ReactionTorqueEnabled = false
AlignOrient.Responsiveness = 200
AlignOrient.RigidityEnabled = false
local AttachmentA=Instance.new("Attachment",Part1)
local AttachmentB=Instance.new("Attachment",Part0)
AttachmentB.Orientation = Angle
AttachmentB.Position = Position
AttachmentB.Name = name
AlignPos.Attachment0 = AttachmentA
AlignPos.Attachment1 = AttachmentB
AlignOrient.Attachment0 = AttachmentA
AlignOrient.Attachment1 = AttachmentB
end 

car = char["MeshPartAccessory"]
chandle = car.Handle
chandle.AccessoryWeld:Destroy()

fire = char["FireMohawk"]
fhandle = fire.Handle
fhandle.AccessoryWeld:Destroy()
fhandle.Mesh:Destroy()

     h = Instance.new("Attachment",chandle)
     h.Rotation = Vector3.new(0,0,0)
     h.Position = Vector3.new(0,0,0)
     
     lg = Instance.new("Attachment",torso)
     lg.Rotation = Vector3.new(0,0,0)
     lg.Position = Vector3.new(0, -0.767, -0.942)

     gap = Instance.new("AlignPosition",chandle)
     gap.Attachment0 = h
     gap.Attachment1 = lg
     gap.RigidityEnabled = true
     
     gao = Instance.new("AlignOrientation",chandle)
     gao.Attachment0 = h
     gao.Attachment1 = lg
     gao.RigidityEnabled = true
     
     a = Instance.new("Attachment",fhandle)
     a.Rotation = Vector3.new(0,0,0)
     a.Position = Vector3.new(0,0,0)
     
     a1 = Instance.new("Attachment",torso)
     a1.Rotation = Vector3.new(90, 0, 0)
     a1.Position = Vector3.new(0, -0.974, 0.975)

     a2 = Instance.new("AlignPosition",fhandle)
     a2.Attachment0 = a
     a2.Attachment1 = a1
     a2.RigidityEnabled = true
     
     a3 = Instance.new("AlignOrientation",fhandle)
     a3.Attachment0 = a
     a3.Attachment1 = a1
     a3.RigidityEnabled = true

game.Players.LocalPlayer.Character.Torso["Right Shoulder"]:Destroy()
game.Players.LocalPlayer.Character["Right Arm"].RightShoulderAttachment:Destroy()
game.Players.LocalPlayer.Character["Right Arm"].RightGripAttachment:Destroy()
game.Players.LocalPlayer.Character.Torso["Left Shoulder"]:Destroy()
game.Players.LocalPlayer.Character["Left Arm"].LeftShoulderAttachment:Destroy()
game.Players.LocalPlayer.Character["Left Arm"].LeftGripAttachment:Destroy()
Align(game.Players.LocalPlayer.Character["Left Arm"],game.Players.LocalPlayer.Character.Torso,Vector3.new(-1.243, 0.195, -0.793),Vector3.new(74.51, 0, 8.28),"Left")
Align(game.Players.LocalPlayer.Character["Right Arm"],game.Players.LocalPlayer.Character.Torso,Vector3.new(1.243, 0.195, -0.793),Vector3.new(74.51, 0, -8.28),"Right")