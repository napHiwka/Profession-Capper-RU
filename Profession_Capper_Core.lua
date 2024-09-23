-- Variables for addon environment
local addonName, addonTable = ...

-- Current profession frame details
local tradeSkillName, rank
local isLinked -- Determines if it's your own profession frame or a link

-- Crafting suggestions
local toCraft = {} -- Suggested recipe based on current skill level
local CrafRecipe = {} -- Materials needed to craft the suggested recipe
local craftRecipeOptionsIndex = 1 -- Index for cycling through recipe options

-- Track the last suggested recipe
local previousToCraft = {}

-- Addon initialization
function FnOnLoad()
	print(
		"|cff6BFF75[Profession Capper] loaded for|r |cff6BC6FF["
			.. UnitLevel("player")
			.. "] "
			.. UnitName("player")
			.. "|r"
	)
	MainFrameCore:RegisterEvent("TRADE_SKILL_UPDATE")
	MainFrameCore:RegisterEvent("TRADE_SKILL_CLOSE")
	MainFrameCore:RegisterForDrag("LeftButton")

	SlashCmdList["TOGGLE_PCAPPER_FRAME"] = TogglePcapperFrame
	SLASH_TOGGLE_PCAPPER_FRAME1 = "/pcapper"
end

-- Event handling
function FnOnEvent()
	ResetValues()
	isLinked = IsTradeSkillLinked()
	if not isLinked and event == "TRADE_SKILL_UPDATE" then
		-- Get profession name, current level
		tradeSkillName, rank = GetTradeSkillLine()
		GetCraftingToDo()
		if CheckProfessionCap() and tradeSkillName ~= "Горное дело" then
			DisplayRecipe()
			MainFrameCore:Show()
		end
	elseif event == "TRADE_SKILL_CLOSE" then
		MainFrameCore:Hide()
	end
end

-- Reset crafting UI values
function ResetValues()
	-- Print all addon variables
	-- for k, v in pairs(addonTable) do
	-- 	print(k .. " = " .. tostring(v))
	-- end

	toCraft, CrafRecipe = { "Неизвестно" }, { "Неизвестно" }
	txtShouldCraft:SetText(toCraft[craftRecipeOptionsIndex])
	imgSkillIcon:SetTexture("Interface\\InventoryItems\\WoWUnknownItem01")
	txtShouldCraftRecipe:SetText("")
	MainFrameCoreCraft:SetText("Создать")
end

-- Determines which recipe to craft based on profession and rank
function GetCraftingToDo()
	-- Select the recipe suggestion function based on profession
	local professionRecipes = {
		["Наложение чар"] = addonTable.getEnchanting,
		["Портняжное дело"] = addonTable.getTailoring,
		["Ювелирное дело"] = addonTable.getJewelcrafting,
		["Кузнечное дело"] = addonTable.getBlacksmithing,
		["Кожевничество"] = addonTable.getLeatherworking,
		["Инженерное дело"] = addonTable.getEngineering,
		["Начертание"] = addonTable.getInscription,
		["Алхимия"] = addonTable.getAlchemy,
		["Первая помощь"] = addonTable.getFirstAid,
		["Кулинария"] = addonTable.getCooking,
	}

	-- Get recipe suggestion based on current rank
	print(tradeSkillName)
	if professionRecipes[tradeSkillName] then
		toCraft, CrafRecipe = professionRecipes[tradeSkillName](rank)
	end
end

-- Check if profession cap has been reached
function CheckProfessionCap()
	if rank > 0 and rank < 450 then
		return true
	else
		return false
	end
end

-- Toggle visibility of the main frame
function TogglePcapperFrame(toggle)
	if toggle == "show" then
		MainFrameCore:Show()
	else
		MainFrameCore:Hide()
	end
end

-- Update buttons state (Next/Previous) based on current recipe index
local function UpdateRecipeButtons()
	MainFrameCorePreviousRecipe:Show()
	MainFrameCoreNextRecipe:Show()

	if craftRecipeOptionsIndex <= 1 then
		MainFrameCorePreviousRecipe:Disable()
	else
		MainFrameCorePreviousRecipe:Enable()
	end

	if craftRecipeOptionsIndex >= #toCraft then
		MainFrameCoreNextRecipe:Disable()
	else
		MainFrameCoreNextRecipe:Enable()
	end
end

-- Update the suggested recipe and UI elements based on the selected recipe
local function UpdateRecipeUI()
	local enableBtnCraft = false
	local numTradeSkills = GetNumTradeSkills()
	for i = 1, numTradeSkills do
		local skillName, _, numAvailable = GetTradeSkillInfo(i)

		if skillName == toCraft[craftRecipeOptionsIndex] then
			local shouldCraftIcon = GetTradeSkillIcon(i) or "Interface\\Icons\\Spell_Holy_GreaterHeal"
			MainFrameCoreCraft:SetText("Создать (" .. numAvailable .. ")")

			-- Enable the craft button only if the number available is greater than 0
			if numAvailable > 0 then
				enableBtnCraft = true
			end

			imgSkillIcon:SetTexture(shouldCraftIcon)
			break
		else
			MainFrameCoreCraft:SetText("Неизв. рецепт")
			imgSkillIcon:SetTexture("Interface\\InventoryItems\\WoWUnknownItem01")
		end
	end

	if enableBtnCraft then
		MainFrameCoreCraft:Enable()
	else
		MainFrameCoreCraft:Disable()
	end

	txtShouldCraft:SetText(toCraft[craftRecipeOptionsIndex])
	txtShouldCraftRecipe:SetText("Рецепт: " .. CrafRecipe[craftRecipeOptionsIndex])
	MainFrameCore:SetHeight(250)
	MainFrameCoreCraft:Show()
end

-- Display the suggested recipe and update UI
function DisplayRecipe()
	local hasRecipeChanged = table.concat(toCraft) ~= table.concat(previousToCraft)
	print('To craft: "' .. table.concat(toCraft) .. '"')
	print('Previous: "' .. table.concat(previousToCraft) .. '"')

	-- If recipe changed, reset the index to the first option
	if hasRecipeChanged then
		craftRecipeOptionsIndex = 1
	end

	UpdateRecipeButtons()
	UpdateRecipeUI()

	-- Save the current state for future comparisons
	previousToCraft = toCraft
end

-- Navigate to the next recipe
function DisplayNextRecipe()
	if craftRecipeOptionsIndex < #toCraft then
		craftRecipeOptionsIndex = craftRecipeOptionsIndex + 1
		DisplayRecipe()
	end
end

-- Navigate to the previous recipe
function DisplayPreviousRecipe()
	if craftRecipeOptionsIndex > 1 then
		craftRecipeOptionsIndex = craftRecipeOptionsIndex - 1
		DisplayRecipe()
	end
end

-- Craft the selected recipe
function CraftRecipe()
	for i = 1, GetNumTradeSkills() do
		local skillName, _, numAvailable = GetTradeSkillInfo(i)

		if skillName == toCraft[craftRecipeOptionsIndex] then
			print(
				"|cff6BFF75[ProfCapper] crafting|r |cff6BC6FF"
					.. numAvailable
					.. "x |r|cff6BFF75"
					.. toCraft[craftRecipeOptionsIndex]
					.. "|r"
			)
			DoTradeSkill(i, numAvailable)
		end
	end
end
