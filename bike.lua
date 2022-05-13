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
local lol = Instance.new("Part")
lol.Parent = char
lol.Name = "lol"
lol.CanCollide = true
lol.Transparency = 1
lol.Size = Vector3.new(2, 2.9, 2)

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

bike = char["Bike"]
bhandle = bike.Handle
bhandle.AccessoryWeld:Destroy()

fire = char["FireMohawk"]
fhandle = fire.Handle
fhandle.AccessoryWeld:Destroy()
fhandle.Mesh:Destroy()

     h = Instance.new("Attachment",bhandle)
     h.Rotation = Vector3.new(0,0,0)
     h.Position = Vector3.new(0,0,0)
     
     lg = Instance.new("Attachment",torso)
     lg.Rotation = Vector3.new(0,90,0)
     lg.Position = Vector3.new(-0, -1.35, -1)

     gap = Instance.new("AlignPosition",bhandle)
     gap.Attachment0 = h
     gap.Attachment1 = lg
     gap.RigidityEnabled = true
     
     gao = Instance.new("AlignOrientation",bhandle)
     gao.Attachment0 = h
     gao.Attachment1 = lg
     gao.RigidityEnabled = true
     
     a = Instance.new("Attachment",fhandle)
     a.Rotation = Vector3.new(0,0,0)
     a.Position = Vector3.new(0,0,0)
     
     a1 = Instance.new("Attachment",torso)
     a1.Rotation = Vector3.new(90, 0, 0)
     a1.Position = Vector3.new(0, -1.94, -0.46)

     a2 = Instance.new("AlignPosition",fhandle)
     a2.Attachment0 = a
     a2.Attachment1 = a1
     a2.RigidityEnabled = true
     
     a3 = Instance.new("AlignOrientation",fhandle)
     a3.Attachment0 = a
     a3.Attachment1 = a1
     a3.RigidityEnabled = true

game.Players.LocalPlayer.Character.Torso["Right Shoulder"]:Destroy()
game.Players.LocalPlayer.Character.Torso["Left Shoulder"]:Destroy()
game.Players.LocalPlayer.Character.Torso["Right Hip"]:Destroy()
game.Players.LocalPlayer.Character.Torso["Left Hip"]:Destroy()
Align(game.Players.LocalPlayer.Character["Left Arm"],game.Players.LocalPlayer.Character.Torso,Vector3.new(-1.243, 0.195, -0.793),Vector3.new(74.51, 0, 8.28),"Left")
Align(game.Players.LocalPlayer.Character["Right Arm"],game.Players.LocalPlayer.Character.Torso,Vector3.new(1.243, 0.195, -0.793),Vector3.new(74.51, 0, -8.28),"Right")
Align(game.Players.LocalPlayer.Character["Right Leg"],game.Players.LocalPlayer.Character.Torso,Vector3.new(0.82, -1.532, -0.518),Vector3.new(9.89, 0, 0),"Right")
Align(game.Players.LocalPlayer.Character["Left Leg"],game.Players.LocalPlayer.Character.Torso,Vector3.new(-0.82, -1.532, -0.518),Vector3.new(9.89, 0, 0),"Left")

function WaitForChild(parent,child)
	while not parent:FindFirstChild(child) do print("roped waiting for " .. child) wait() end
	return parent[child]
end

local handle = game.Players.LocalPlayer:FindFirstChild("Torso")

local left=false
local right=false
local up=false
local down=false
local mouse
local Character
local key_down_connect
local key_up_connect

local thrustForce
local thrustMagnitude
local thrustDirection
local RotationForce
local TurnGyro

local torsoWeld

local acceleration = 10
local deceleration = 10
local turnAlpha = .35
local alphaDampening = .2

local Equipped = false

local LastPosition = nil
local ActualVelocity = Vector3.new(0,0,0)

local FakeHandle = nil

local WheelMesh = Instance.new('SpecialMesh')
WheelMesh.MeshId = "http://www.roblox.com/asset/?id=122202439"
WheelMesh.TextureId = "http://www.roblox.com/asset/?id=122185866"
WheelMesh.Scale = Vector3.new(2.5,2.5,2.5)

local LightWeld = nil

local FrontMotor = nil
local BackMotor = nil

local CurrentSpeed=0
local turnSpeed=0
local turnSpeedAim=5
function ThrustUpdater()
	while Equipped do
		local direction = Character:FindFirstChild("Torso").CFrame.lookVector
		direction = Vector3.new(direction.x,0,direction.z).unit
		thrustForce.velocity = direction*(CurrentSpeed)
		
		if FrontMotor then
			FrontMotor.DesiredAngle=(999999999)*	(-CurrentSpeed/math.abs(CurrentSpeed))
			FrontMotor.MaxVelocity = CurrentSpeed/250
			if BackMotor then 
				BackMotor.DesiredAngle = FrontMotor.DesiredAngle
				BackMotor.MaxVelocity = FrontMotor.MaxVelocity	
			end	
		end
		
		RotationForce.angularvelocity = Vector3.new(0, turnSpeed, 0)
		if math.abs(turnSpeed)>alphaDampening	 then
			turnSpeed= turnSpeed-((alphaDampening)*(math.abs(turnSpeed)/turnSpeed))
		else 
			turnSpeed = 0		
		end
		local leanAmount= -turnSpeed*(math.pi/6)/4
		
		if not forwards or back then
			CurrentSpeed = CurrentSpeed*.99			
		end		
		
		local xzAngle = math.atan2(Character.Torso.CFrame.lookVector.z,0, Character.Torso.CFrame.lookVector.x)
		TurnGyro.cframe=CFrame.Angles(leanAmount*direction.x,0,leanAmount*direction.z)
		if LastPosition then
			local npos = Vector3.new(Character.Torso.CFrame.p.x,0,Character.Torso.CFrame.p.z)
			--(npos-LastPosition).magnitude
			local myspeed =Vector3.new(FakeHandle.Velocity.X,0,FakeHandle.Velocity.Z).magnitude
			local velocityDifference = math.abs((myspeed - (thrustForce.velocity.magnitude)))
			if myspeed>3 and thrustForce.velocity.magnitude>3 and velocityDifference> .7*thrustForce.velocity.magnitude then
				print('stopping: '..myspeed.." : " .. thrustForce.velocity.magnitude)
				CurrentSpeed=CurrentSpeed*.9
			end
			
		end
		LastPosition = Vector3.new(Character.Torso.CFrame.p.x,0,Character.Torso.CFrame.p.z)
		wait(1/60)
	end
	
end


function onEquipped(nmouse)
	print('got to equipped')
	Spawn(function()
		if Equipped then
			return
		end

			Character=game.Players.LocalPlayer.Character
			local myTorso = WaitForChild(Character,'Torso')
			if not FakeHandle then
				FakeHandle = handle
			end
			handle.Transparency = 0
			
			CurrentSpeed=0
			turnSpeed=0
			print('got in if')
			mouse=game.Players.LocalPlayer:GetMouse()
			Equipped = true

			WaitForChild(Character,'Humanoid').PlatformStand = true
			
			if RotationForce then RotationForce:Destroy() end
			RotationForce = Instance.new('BodyAngularVelocity')
			RotationForce.maxTorque = Vector3.new(0, math.huge, 0)
			RotationForce.angularvelocity = Vector3.new(0, 0, 0)
			RotationForce.Parent = myTorso
			
			if thrustForce then thrustForce:Destroy() end
			thrustForce = Instance.new('BodyVelocity')
			thrustForce.maxForce = Vector3.new(math.huge,0,math.huge)
			thrustForce.velocity = Vector3.new(0,0,0)
			thrustForce.P = 100
			thrustForce.Parent = FakeHandle--myTorso
			
			if TurnGyro then TurnGyro:Destroy() end
			TurnGyro = Instance.new('BodyGyro')
			TurnGyro.maxTorque = Vector3.new(5000,0,5000)
			TurnGyro.P = 300
			TurnGyro.D=100
			TurnGyro.Parent = myTorso
			
			Spawn(ThrustUpdater)
			Spawn(function()
				
				
				myTorso.Anchored = true
				myTorso.CFrame = myTorso.CFrame+Vector3.new(0,3,0)
				
				if torsoWeld then torsoWeld:Destroy() end
				torsoWeld=Instance.new('Weld')
				torsoWeld.C0 = CFrame.Angles(0,0,0) + Vector3.new(0, -1.6, -0.7)
				torsoWeld.Part0 = myTorso
				torsoWeld.Part1 = lol
				torsoWeld.Parent = lol
				lol.CanCollide = true
				
				wait(.1)
				lol.CanCollide = true
				myTorso.Anchored = false
			end)
			
			if key_down_connect then
				key_down_connect:disconnect()
				key_up_connect:disconnect()
			end
			key_down_connect=mouse.KeyDown:connect(keyDownFunc)
			key_up_connect=mouse.KeyUp:connect(keyUpFunc)
		
			Character.Humanoid.WalkSpeed = 0
		--end
	end)
end

function keyUpFunc(key)	
	if key == nil then return end
	local key = key:lower()
	if key == "w" then
		forwards = false
	elseif key == "a" then
		left = false
	elseif key == "s" then
		back = false
	elseif key == "d" then
		right = false	
	end
end
local LastSpace = tick()
function keyDownFunc(key)	
	if key == nil then return end
	if inIntro then return end
	local key = key:lower()
	if key == "w" then
		forwards = true
		while forwards do
			CurrentSpeed = math.min(70,CurrentSpeed+(acceleration*(1/30)))
			wait(1/30)
		end
	elseif key == "a" then
		left = true
		while left do
			turnSpeed= math.min(5,turnSpeed+(turnAlpha))
			wait(1/30)
		end
	elseif key == "s" then
		back = true
		while back do
			if CurrentSpeed>0 then
				CurrentSpeed = math.max(-20,CurrentSpeed-(deceleration*2.8*(1/30)))
			else
				CurrentSpeed = math.max(-20,CurrentSpeed-(deceleration*(1/30)))
			end
			wait(1/30)
		end
	elseif key == "d" then
		right = true

		while right do
			turnSpeed= math.max(-5,turnSpeed-(turnAlpha))
			wait(1/30)
		end
	elseif key == ' ' then
		if tick()-LastSpace>1.9 then
			LastSpace = tick()
			local bforce = Instance.new('BodyForce')
			bforce.force = Vector3.new(0,10000,0)
			bforce.Parent = FakeHandle
			wait(.1)
			bforce:Destroy()
		end
		elseif key == "c" then
		game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
		elseif key == "x" then
		game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Humanoid
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		end
	print( ("The '%s' key was pressed"):format(key) )
end

onEquipped()
