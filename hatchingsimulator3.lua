_G.Credits = {
  "Created by Code002Lover",
  ["Discord"] = "8ytFhuj"
}
local marketplaceService = game:GetService("MarketplaceService")
function getname(id)
  return marketplaceService:GetProductInfo(id, Enum.InfoType.Asset).Name
end
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Mystikfluu/uilib/master/uilib.lua"))()
local window = library:CreateWindow(getname(game.PlaceId))
local clicking = window:CreateFolder("Clicking")
local pets = window:CreateFolder("Pets")
pets:Toggle("Hatch tripple eggs", function(toggle)
  _G.tripple = toggle
end)
pets:Box("Hatch for whom?", "string", function(value)
  _G.player = game.Players:FindFirstChild(value) or game:GetService("Players").LocalPlayer
end)
local eggs1 = game.Workspace.Keys:GetChildren()
local eggs = {}
for i, v in pairs(eggs1) do
  eggs[#eggs + 1] = v.Name
end
pets:Dropdown("Eggs", eggs, true, function(value)
  _G.egg = value or "Common"
end)
pets:Toggle("Hatch", function(toggle)
  _G.hatch = toggle
  spawn(function()
    while wait() and _G.hatch do
    local args = {
      [1] = "plsnohackplsnoooooob",
      [2] = _G.player or game:GetService("Players").LocalPlayer,
      [3] = _G.egg or "Common",
      [4] = _G.tripple or false,
      [5] = "",
      [6] = "",
      [7] = ""
    }
    game:GetService("ReplicatedStorage").KeyBind:InvokeServer(unpack(args))
  end
end)
end)
clicking:Box("Clicks per wait", "int", function(value)
if(value < 1) then return false end
if(value > 50) then
  game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
    Text = "If you have more than 50 Clicks per wait you might time out."; --The chat message
    Color = Color3.fromRGB(255, 0, 0); --Chat message color, defaults to white
    Font = Enum.Font.SourceSansBold; --Chat message font, defaults to SourceSansBold
    TextSize = 18 --Text size, defaults to 18
  });
end
if(value > 5000) then
  game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
    Text = "If you have more than 5000 Clicks per wait you might crash, setting it back to 25."; --The chat message
    Color = Color3.fromRGB(255, 0, 0); --Chat message color, defaults to white
    Font = Enum.Font.SourceSansBold; --Chat message font, defaults to SourceSansBold
    TextSize = 18 --Text size, defaults to 18
  });
  value = 25;
end
_G.cps = value or 10
end)
clicking:Toggle("Auto-Clicker", function(toggle)
_G.ac = toggle
spawn(function()
  while _G.ac and wait() do
  local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Coin") or game.Players.LocalPlayer.Character:FindFirstChild("Coin")
  game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
  for i = 0, _G.cps or 10 do
    tool:Activate()
  end
end
end)
end)
local candy = window:CreateFolder("Candy")
candy:Toggle("Teleport Candy", function(toggle)
spawn(function()
_G.candytp = toggle
local XMas = game.Workspace:FindFirstChild("XMas Land")
local Festive = game.Workspace:FindFirstChild("Festive Land")
local Snow = game.Workspace:FindFirstChild("Snow Land")
local Chocolate2 = Festive.Currency.Chocolate
local CandyBox2 = Festive.Currency.CandyBox
local Chocolate3 = Snow.Currency.Chocolate
local CandyBox3 = Snow.Currency.CandyBox
local Candy3 = Snow.Currency.Candy
local Chocolate = XMas.Currency.Chocolate
local CandyBox = XMas.Currency.CandyBox
local Candy = XMas.Currency.Candy

while wait() and _G.candytp do
for i, v in pairs(Candy:GetChildren()) do
  v.Candy.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
for i, v in pairs(CandyBox:GetChildren()) do
  v.CandyBox.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
for i, v in pairs(Chocolate:GetChildren()) do
  v.Chocolate.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
wait()
for i, v in pairs(CandyBox2:GetChildren()) do
  v.CandyBox.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
for i, v in pairs(Chocolate2:GetChildren()) do
  v.Chocolate.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
wait()
for i, v in pairs(Candy3:GetChildren()) do
  v.Candy.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
wait()
for i, v in pairs(CandyBox3:GetChildren()) do
  v.CandyBox.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
wait()
for i, v in pairs(Chocolate3:GetChildren()) do
  v.Chocolate.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
end)
end)
