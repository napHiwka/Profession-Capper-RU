-- Variables
local addonName, addonTable = ...

-- Constants for chat coloring
addonTable.chat_frame_default_color = "6BFF75" --pastel green
addonTable.chat_frame_player_name_color = "6BC6FF" -- pastel blue

-- Current profession frame details
local tradeSkillName, rank, maxLevel
local isLinked, name -- Determines if it's your own profession frame or a link

-- Crafting suggestions
local shouldCraft = { "unknown" } -- Suggested recipe based on current skill level
local shouldCraftRecipe = { "unknown" } -- Materials needed to craft the suggested recipe
local craftRecipeOptionsIndex = 1 -- Index for cycling through recipe options

-- Track the last suggested recipe
local previousShouldCraft = { "unknown" }

-- Determines which recipe to craft based on profession and rank
function GetCraftingToDo()
	-- Select the recipe suggestion function based on profession
	local professionRecipes = {
		["Наложение чар"] = addonTable.getEnchantingCurrentSkillLevelRecipeToCraft,
		["Портняжное дело"] = addonTable.getTailoringCurrentSkillLevelRecipeToCraft,
		["Ювелирное дело"] = addonTable.getJewelcraftingCurrentSkillLevelRecipeToCraft,
		["Кузнечное дело"] = addonTable.getBlacksmithingCurrentSkillLevelRecipeToCraft,
		["Кожевничество"] = addonTable.getLeatherworkingCurrentSkillLevelRecipeToCraft,
		["Инженерное дело"] = addonTable.getEngineeringCurrentSkillLevelRecipeToCraft,
		["Начертание"] = addonTable.getInscriptionCurrentSkillLevelRecipeToCraft,
		["Алхимия"] = addonTable.getAlchemyCurrentSkillLevelRecipeToCraft,
		["Первая помощь"] = addonTable.getFirstAidCurrentSkillLevelRecipeToCraft,
		["Кулинария"] = addonTable.getCookingCurrentSkillLevelRecipeToCraft,
	}

	-- Get recipe suggestion based on current rank
	if professionRecipes[tradeSkillName] then
		shouldCraft, shouldCraftRecipe = professionRecipes[tradeSkillName](rank)
	end

	-- Check if profession cap has been reached
	if rank > 0 and rank < 450 then
		displayRecipe()
	else
		-- If the cap is reached, display a message
		shouldCraft, shouldCraftRecipe = { "Неизвестно" }, { "Неизвестно" }
		txtShouldCraft:SetText("Кап профессии был достигнут")
		imgSkillIcon:SetTexture(GetSpellTexture(tradeSkillName))
		txtShouldCraftRecipe:SetText("")
		MainFrameCoreCraft:Hide()
		MainFrameCoreNextRecipe:Hide()
		MainFrameCorePreviousRecipe:Hide()
		MainFrameCore:SetHeight(150)
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

-- Addon initialization
function fnOnLoad()
	print(
		"|cff"
			.. addonTable.chat_frame_default_color
			.. "[Profession Capper] loaded for|r |cff"
			.. addonTable.chat_frame_player_name_color
			.. "["
			.. UnitLevel("player")
			.. "] "
			.. UnitName("player")
			.. "|r"
	)

	this:RegisterEvent("TRADE_SKILL_UPDATE")
	this:RegisterEvent("TRADE_SKILL_CLOSE")
	this:RegisterForDrag("LeftButton")

	SlashCmdList["TOGGLE_PCAPPER_FRAME"] = TogglePcapperFrame
	SLASH_TOGGLE_PCAPPER_FRAME1 = "/pcapper"
end

-- Event handling
function fnOnEvent()
	resetValues()

	isLinked, name = IsTradeSkillLinked()

	if not isLinked and event == "TRADE_SKILL_UPDATE" then
		-- Get profession name, current level, and max level
		tradeSkillName, rank, maxLevel = GetTradeSkillLine()
		GetCraftingToDo()
		MainFrameCore:Show()
	elseif event == "TRADE_SKILL_CLOSE" then
		MainFrameCore:Hide()
	end
end

-- Display the suggested recipe and update UI
function displayRecipe()
	local hasRecipeChanged = table.concat(shouldCraft) ~= table.concat(previousShouldCraft)

	-- Show next/previous buttons
	MainFrameCoreNextRecipe:Show()
	MainFrameCorePreviousRecipe:Show()

	-- If recipe changed, reset the index to the first option
	if hasRecipeChanged then
		craftRecipeOptionsIndex = 1
	end

	-- Enable/Disable buttons based on the current recipe index
	MainFrameCorePreviousRecipe:SetEnabled(craftRecipeOptionsIndex > 1)
	MainFrameCoreNextRecipe:SetEnabled(craftRecipeOptionsIndex < #shouldCraft)

	-- Find and display the suggested recipe in the profession frame
	local enableBtnCraft = false
	for i = 1, GetNumTradeSkills() do
		local skillName, _, numAvailable = GetTradeSkillInfo(i)

		if skillName == shouldCraft[craftRecipeOptionsIndex] then
			local shouldCraftIcon = GetTradeSkillIcon(i) or "Interface\\Icons\\Spell_Holy_GreaterHeal"
			MainFrameCoreCraft:SetText("Создать (" .. numAvailable .. ")")
			enableBtnCraft = true
			imgSkillIcon:SetTexture(shouldCraftIcon)
			break
		else
			-- Default unknown icon and message
			MainFrameCoreCraft:SetText("Неизв. рецепт")
			imgSkillIcon:SetTexture("Interface\\InventoryItems\\WoWUnknownItem01")
		end
	end

	MainFrameCoreCraft:SetEnabled(enableBtnCraft)
	txtShouldCraft:SetText(shouldCraft[craftRecipeOptionsIndex])
	txtShouldCraftRecipe:SetText("Рецепт: " .. shouldCraftRecipe[craftRecipeOptionsIndex])
	MainFrameCore:SetHeight(250)
	MainFrameCoreCraft:Show()

	previousShouldCraft = shouldCraft
end

-- Navigate through available recipes
function displayNextRecipe()
	craftRecipeOptionsIndex = craftRecipeOptionsIndex + 1
	displayRecipe()
end

function displayPreviousRecipe()
	craftRecipeOptionsIndex = craftRecipeOptionsIndex - 1
	displayRecipe()
end

-- Craft the selected recipe
function craftRecipe()
	for i = 1, GetNumTradeSkills() do
		local skillName, _, numAvailable = GetTradeSkillInfo(i)

		if skillName == shouldCraft[craftRecipeOptionsIndex] then
			print(
				"|cff"
					.. addonTable.chat_frame_default_color
					.. "[Profession Capper] crafting|r |cff"
					.. addonTable.chat_frame_player_name_color
					.. numAvailable
					.. "x |r|cff"
					.. addonTable.chat_frame_default_color
					.. shouldCraft[craftRecipeOptionsIndex]
					.. "|r"
			)
			DoTradeSkill(i, numAvailable)
		end
	end
end

-- Reset crafting UI values
function resetValues()
	shouldCraft, shouldCraftRecipe = { "Неизвестно" }, { "Неизвестно" }
	txtShouldCraft:SetText(shouldCraft[craftRecipeOptionsIndex])
	imgSkillIcon:SetTexture("Interface\\InventoryItems\\WoWUnknownItem01")
	txtShouldCraftRecipe:SetText("")
	MainFrameCoreCraft:SetText("Создать")
end
