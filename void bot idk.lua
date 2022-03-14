wait(5) if not game:IsLoaded() then game.Loaded:Wait() end

local lp = game.Players.LocalPlayer

repeat wait() until lp and lp.Character and lp.Character:FindFirstChild("HumanoidRootPart")
local rservice = game:GetService("RunService")

if not _G.thingtosay then _G.thingtosay = "add lanc# 0001 for the best methods" end

DebounceTheNigger=true

coroutine.resume(coroutine.create(function() while wait(0.3) do pcall(function() for _,z in next, game.Players:GetPlayers() do if z ~= lp then for _,v in next, z.Backpack:GetDescendants() do if v:IsA'Sound' then v.TimePosition = nil end end end end end) end end)) 
coroutine.resume(coroutine.create(function() while wait(0.3) do pcall(function() for _,z in next, game.Players:GetPlayers() do if z ~= lp then if z.Character and z.Character:FindFirstChildOfClass("Tool") then for _,v in next, z.Character:GetDescendants() do if v:IsA'Sound' then v.TimePosition = nil end end end end end end) end end))

for _, z in next, game:GetDescendants() do if z:IsA "Seat" then z.Disabled = true end end

function onDie()
    lp.Character:FindFirstChildOfClass("Humanoid").Died:Connect(function()
        DebounceTheNigger=false 
    end)
end

function attach(target)
    local hum = lp.Character:FindFirstChildOfClass("Humanoid")
    local newHum = hum:Clone(); newHum.Parent = lp.Character; newHum.Name = "Humanoid"; hum:Destroy(); newHum.DisplayDistanceType = "None"; workspace.CurrentCamera.CameraSubject = lp.Character
    local tool = lp:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass("Tool") or lp.Character:FindFirstChildOfClass("Tool") tool.Parent = lp.Character
    firetouchinterest(target.Character.HumanoidRootPart, tool.Handle, 0) firetouchinterest(target.Character.HumanoidRootPart, tool.Handle, 1)
end

lp.CharacterAdded:Connect(function(model)
    repeat wait() until model and model:FindFirstChildOfClass("Humanoid")
    if model:FindFirstChild("HumanoidRootPart") then
        DebounceTheNigger=true
        onDie()
    end
end)

rservice.Stepped:Connect(function()
    if lp.Character and lp.Character:FindFirstChildOfClass("Humanoid") then
        if lp.Character:FindFirstChildOfClass("Humanoid").Sit == true then
            lp.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
        end
        for _,z in next, lp.Character:GetChildren() do if z:IsA'BasePart' then z.CanCollide = false end end
    end
end)
coroutine.resume(coroutine.create(function()
    while wait(3) do
        pcall(function()
            for _,z in pairs(game.Players:GetPlayers()) do
                if z ~= lp then
                    if lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") and z and z.Character and z.Character:FindFirstChildOfClass("Humanoid").Sit == false and z.Character:FindFirstChildOfClass("Humanoid").FloorMaterial ~= Enum.Material.Air then
                        spawn(function() pcall(function()
                            lp.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(9e5, workspace.FallenPartsDestroyHeight + 30,9e5)
                            attach(z); wait(3)
                            lp.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(9e5, workspace.FallenPartsDestroyHeight + 4.5,9e5)
                        end) end)
                        wait(2)
                    end
                end
            end
        end)
    end
end))
coroutine.resume(coroutine.create(function()
    while wait(1) do
        for _,z in next, game.Players:GetPlayers() do
            if z~=lp then
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("" .. _G.thingtosay,"All")
                wait(99999999999999999999999)
            end
        end
    end
end))