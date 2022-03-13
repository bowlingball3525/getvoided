--[[
	lanc#0001
--]]


wait(5)
if not game:IsLoaded() then
	game.Loaded:Wait()
end

local L_1_ = game.Players.LocalPlayer

repeat
	wait()
until L_1_ and L_1_.Character and L_1_.Character:FindFirstChild("HumanoidRootPart")
local L_2_ = game:GetService("RunService")

if not _G.thingtosay then
	_G.thingtosay = "add lanc# 0001 for the best methods"
end

G_1_ = true

coroutine.resume(coroutine.create(function()
	while wait(1) do
		pcall(function()
			for L_3_forvar0, L_4_forvar1 in next, game.Players:GetPlayers() do
				if L_4_forvar1 ~= L_1_ then
					for L_5_forvar0, L_6_forvar1 in next, L_4_forvar1.Backpack:GetDescendants() do
						if L_6_forvar1:IsA'Sound' then
							L_6_forvar1.TimePosition = nil
						end
					end
				end
			end
		end)
	end
end)) 
coroutine.resume(coroutine.create(function()
	while wait(1) do
		pcall(function()
			for L_7_forvar0, L_8_forvar1 in next, game.Players:GetPlayers() do
				if L_8_forvar1 ~= L_1_ then
					if L_8_forvar1.Character and L_8_forvar1.Character:FindFirstChildOfClass("Tool") then
						for L_9_forvar0, L_10_forvar1 in next, L_8_forvar1.Character:GetDescendants() do
							if L_10_forvar1:IsA'Sound' then
								L_10_forvar1.TimePosition = nil
							end
						end
					end
				end
			end
		end)
	end
end))

for L_11_forvar0, L_12_forvar1 in next, game:GetDescendants() do
	if L_12_forvar1:IsA "Seat" then
		L_12_forvar1.Disabled = true
	end
end

function G_2_()
	L_1_.Character:FindFirstChildOfClass("Humanoid").Died:Connect(function()
		G_3_ = false
	end)
end

function G_4_(L_13_arg0)
	local L_14_ = L_1_.Character:FindFirstChildOfClass("Humanoid")
	local L_15_ = L_14_:Clone();
	L_15_.Parent = L_1_.Character;
	L_15_.Name = "Humanoid";
	L_14_:Destroy();
	L_15_.DisplayDistanceType = "None";
	workspace.CurrentCamera.CameraSubject = L_1_.Character
	local L_16_ = L_1_:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass("Tool") or L_1_.Character:FindFirstChildOfClass("Tool")
	L_16_.Parent = L_1_.Character
	firetouchinterest(L_13_arg0.Character.HumanoidRootPart, L_16_.Handle, 0)
	firetouchinterest(L_13_arg0.Character.HumanoidRootPart, L_16_.Handle, 1)
end

L_1_.CharacterAdded:Connect(function(L_17_arg0)
	repeat
		wait()
	until L_17_arg0 and L_17_arg0:FindFirstChildOfClass("Humanoid")
	if L_17_arg0:FindFirstChild("HumanoidRootPart") then
		G_5_ = true
		onDie()
	end
end)

L_2_.Stepped:Connect(function()
	if L_1_.Character and L_1_.Character:FindFirstChildOfClass("Humanoid") then
		if L_1_.Character:FindFirstChildOfClass("Humanoid").Sit == true then
			L_1_.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
		end
		for L_18_forvar0, L_19_forvar1 in next, L_1_.Character:GetChildren() do
			if L_19_forvar1:IsA'BasePart' then
				L_19_forvar1.CanCollide = false
			end
		end
	end
end)
coroutine.resume(coroutine.create(function()
	while wait(7) do
		pcall(function()
			for L_20_forvar0, L_21_forvar1 in pairs(game.Players:GetPlayers()) do
				if L_21_forvar1 ~= L_1_ then
					if L_1_.Character and L_1_.Character:FindFirstChild("HumanoidRootPart") and L_21_forvar1 and L_21_forvar1.Character and L_21_forvar1.Character:FindFirstChildOfClass("Humanoid").Sit == false and L_21_forvar1.Character:FindFirstChildOfClass("Humanoid").FloorMaterial ~= Enum.Material.Air then
						spawn(function()
							pcall(function()
								L_1_.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(9, workspace.FallenPartsDestroyHeight + 30, 9)
								attach(L_21_forvar1);
								wait(7)
								L_1_.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(9, workspace.FallenPartsDestroyHeight + 4.5, 9)
							end)
						end)
						wait(6)
					end
				end
			end
		end)
	end
end))
coroutine.resume(coroutine.create(function()
	while wait(1) do
		for L_22_forvar0, L_23_forvar1 in next, game.Players:GetPlayers() do
			if L_23_forvar1 ~= L_1_ then
				game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("" .. _G.thingtosay, "All")
				wait(1e+23)
			end
		end
	end
end))
