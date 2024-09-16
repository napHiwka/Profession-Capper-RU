addonName, addonTable = ...

local shouldCraft, shouldCraftRecipe

addonTable.getFirstAidCurrentSkillLevelRecipeToCraft = function(rank)
	if rank > 0 and rank < 40 then --1 -39
		shouldCraft = { "Льняные бинты" }
		shouldCraftRecipe = { "1x Льняной материал" }
	elseif rank > 39 and rank < 80 then -- 40-79
		shouldCraft = { "Плотные льняные бинты" }
		shouldCraftRecipe = { "2x Льняной материал" }
	elseif rank > 79 and rank < 100 then -- 80-99
		shouldCraft = {
			"Шерстяные бинты",
			"Плотные льняные бинты",
			"Противоядие",
		}
		shouldCraftRecipe = {
			"1x Шерсть", -- Шерстяные бинты
			"2x Льняной материал", -- Плотные льняные бинты
			"1x Малая ядовитая железа", -- Противоядие
		}
	elseif rank > 99 and rank < 115 then -- 100-114
		shouldCraft = {
			"Шерстяные бинты",
			"Противоядие",
		}
		shouldCraftRecipe = {
			"1x Шерсть", -- Шерстяные бинты
			"1x Малая ядовитая железа", -- Противоядие
		}
	elseif rank > 114 and rank < 130 then -- 115-129
		shouldCraft = { "Плотные шерстяные бинты" }
		shouldCraftRecipe = { "2x Шерсть" }
	elseif rank > 129 and rank < 150 then -- 130-149
		shouldCraft = {
			"Плотные шерстяные бинты",
			"Мощное противоядие",
		}
		shouldCraftRecipe = {
			"2x Шерсть", -- Плотные шерстяные бинты
			"1x Большая ядовитая железа", -- Мощное противоядие
		}
	elseif rank > 149 and rank < 180 then -- 150-179
		shouldCraft = {
			"Шелковые бинты",
			"Плотные шерстяные бинты",
			"Мощное противоядие",
		}
		shouldCraftRecipe = {
			"1x Шелковый материал", -- Шелковые бинты
			"2x Шерсть", -- Плотные шерстяные бинты
			"1x Большая ядовитая железа", -- Мощное противоядие
		}
	elseif rank > 179 and rank < 210 then -- 180-209
		shouldCraft = { "Плотные шелковые бинты" }
		shouldCraftRecipe = { "2x Шелковый материал" }
	elseif rank > 209 and rank < 240 then -- 210-239
		shouldCraft = {
			"Бинты из магической ткани",
			"Плотные шелковые бинты",
		}
		shouldCraftRecipe = {
			"1x Магическая ткань", -- Бинты из магической ткани
			"2x Шелковый материал", -- Плотные шелковые бинты
		}
	elseif rank > 239 and rank < 260 then -- 240-259
		shouldCraft = { "Плотные бинты из магической ткани" }
		shouldCraftRecipe = { "2x Магическая ткань" }
	elseif rank > 259 and rank < 290 then -- 260-289
		shouldCraft = {
			"Бинты из рунической ткани",
			"Плотные бинты из рунической ткани",
		}
		shouldCraftRecipe = {
			"1x Руническая ткань", -- Бинты из рунической ткани
			"2x Магическая ткань", -- Бинты из рунической ткани
		}
	elseif rank > 289 and rank < 300 then -- 290-299
		shouldCraft = {
			"Плотные бинты из рунической ткани",
			"Бинты из рунической ткани",
		}
		shouldCraftRecipe = {
			"2x Руническая ткань", -- Плотные бинты из рунической ткани
			"2x Бинты из магической ткани", -- Бинты из рунической ткани
		}
	elseif rank > 299 and rank < 330 then -- 300-329
		shouldCraft = {
			"Бинты из ткани Пустоты",
			"Плотные бинты из рунической ткани",
			"Мощное противоядие",
		}
		shouldCraftRecipe = {
			"1x Ткань Пустоты", -- Бинты из ткани Пустоты
			"2x Руническая ткань", -- Плотные бинты из рунической ткани
			"1x Огромная ядовитая железа", -- Мощное противоядие
		}
	elseif rank > 329 and rank < 350 then -- 330-349
		shouldCraft = {
			"Плотные бинты из ткани Пустоты",
			"Плотные бинты из рунической ткани",
			"Мощное противоядие",
		}
		shouldCraftRecipe = {
			"2x Ткань Пустоты", -- Плотные бинты из ткани Пустоты
			"2x Руническая ткань", -- Плотные бинты из рунической ткани
			"1x Огромная ядовитая железа", -- Мощное противоядие
		}
	elseif rank > 349 and rank < 375 then -- 350-374
		shouldCraft = {
			"Бинты из ледяной ткани",
			"Плотные бинты из ткани Пустоты",
		}
		shouldCraftRecipe = {
			"1x Ледяная ткань", -- Бинты из ледяной ткани
			"2x Ткань Пустоты", -- Плотные бинты из ткани Пустоты
		}
	elseif rank > 374 and rank < 400 then -- 375-399
		shouldCraft = { "Бинты из ледяной ткани" }
		shouldCraftRecipe = { "1x Ледяная ткань" }
	elseif rank > 399 and rank < 450 then -- 400-449
		shouldCraft = { "Плотные бинты из ледяной ткани" }
		shouldCraftRecipe = { "2x Ледяная ткань" }
	end
	return shouldCraft, shouldCraftRecipe
end

print("|cff" .. addonTable.chat_frame_default_color .. "[Profession Capper] loaded First Aid module|r")
