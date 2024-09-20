local addonName, addonTable = ...
local shouldCraft, shouldCraftRecipe

addonTable.getAlchemy = function(rank)
	if rank > 0 and rank < 60 then -- 1-59
		shouldCraft = { "Крохотный флакон с лечебным зельем" }
		shouldCraftRecipe = { "1x Мироцвет, 1x Сребролист, 1x Пустая колба" }
	elseif rank > 59 and rank < 106 then -- 60-105
		shouldCraft = { "Маленький флакон с лечебным зельем" }
		shouldCraftRecipe =
			{ "1x Крохотный флакон с лечебным зельем, 1x Остротерн" }
	elseif rank > 105 and rank < 110 then -- 106-109
		shouldCraft = { "Эликсир мудрости" }
		shouldCraftRecipe = { "1x Магороза, 1x Остротерн, 1x Пустая колба" }
	elseif rank > 109 and rank < 140 then -- 111-139
		shouldCraft = { "Лечебное зелье" }
		shouldCraftRecipe = { "1x Синячник, 1x Остротерн, 1x Освинцованная колба" }
	elseif rank > 139 and rank < 155 then -- 141-154
		shouldCraft = { "Маленький флакон с зельем маны" }
		shouldCraftRecipe = { "1x Магороза, 1x Удавник, 1x Пустая колба" }
	elseif rank > 154 and rank < 185 then -- 155-184
		shouldCraft = { "Сильное лечебное зелье" }
		shouldCraftRecipe = {
			"1x Корень жизни, 1x Королевская кровь, 1x Освинцованная колба",
		}
	elseif rank > 184 and rank < 205 then -- 185-204
		shouldCraft = {
			"Эликсир ловкости",
			"Эликсир стойкости",
		}
		shouldCraftRecipe = {
			"1x Удавник, 1x Златошип, 1x Освинцованная колба", -- Эликсир ловкости
			"1x Дикий сталецвет, 1x Златошип, 1x Освинцованная колба", -- Эликсир стойкости
		}
	elseif rank > 204 and rank < 215 then -- 205-214
		shouldCraft = { "Сильный эликсир защиты" }
		shouldCraftRecipe =
			{ "1x Дикий сталецвет, 1x Златошип, 1x Освинцованная колба" }
	elseif rank > 214 and rank < 230 then -- 215-229
		shouldCraft = { "Мощное лечебное зелье" }
		shouldCraftRecipe = { "1x Солнечник, 1x Кадгаров ус, 1x Хрустальная колба" }
	elseif rank > 229 and rank < 231 then -- 230
		shouldCraft = { "Философский камень" }
		shouldCraftRecipe = {
			"4x Железный слиток, 1x Черный купорос, 4x Лиловый лотос, 4x Огнецвет",
		}
	elseif rank > 230 and rank < 250 then -- 231-249
		shouldCraft = { "Эликсир обнаружения нежити" }
		shouldCraftRecipe = { "1x Слезы Артаса, 1x Хрустальная колба" }
	elseif rank > 249 and rank < 265 then -- 250-264
		shouldCraft = { "Сильный эликсир ловкости" }
		shouldCraftRecipe = { "1x Солнечник, 1x Златошип, 1x Хрустальная колба" }
	elseif rank > 264 and rank < 285 then -- 265-284
		shouldCraft = { "Мощное зелье маны" }
		shouldCraftRecipe =
			{ "2x Солнечник, 2x Пастушья сумка, 1x Хрустальная колба" }
	elseif rank > 284 and rank < 300 then -- 285-299
		shouldCraft = { "Сильнейшее лечебное зелье" }
		shouldCraftRecipe = {
			"2x Золотой сансам, 1x Горный серебряный шалфей, 1x Хрустальная колба",
		}
	elseif rank > 299 and rank < 310 then -- 300-309
		shouldCraft = {
			"Флакон с летучим лечебным зельем",
			"Эликсир адепта",
		}
		shouldCraftRecipe = {
			"1x Золотой сансам, 1x Сквернопля, 1x Укрепленная колба", -- Флакон с летучим лечебным зельем
			"1x Снолист, 1x Сквернопля, 1x Укрепленная колба", -- Эликсир адепта
		}
	elseif rank > 309 and rank < 325 then -- 310-324
		shouldCraft = { "Эликсир целительной силы" }
		shouldCraftRecipe =
			{ "1x Золотой сансам, 1x Сияние грез, 1x Укрепленная колба" }
	elseif rank > 324 and rank < 335 then -- 325-334
		shouldCraft = { "Зелье безумного алхимика" }
		shouldCraftRecipe = { "2x Кисейница, 1x Хрустальная колба" }
	elseif rank > 334 and rank < 340 then -- 335-339
		shouldCraft = { "Гигантский флакон с лечебным зельем" }
		shouldCraftRecipe = { "2x Пустоцвет, 1x Сквернопля, 1x Укрепленная колба" }
	elseif rank > 339 and rank < 350 then -- 340-349
		shouldCraft = { "Гигантский флакон с зельем маны" }
		shouldCraftRecipe =
			{ "2x Сияние грез, 1x Сквернопля, 1x Укрепленная колба" }
	elseif rank > 349 and rank < 360 then -- 350-359
		shouldCraft = { "Флакон с бодрящим лечебным зельем" }
		shouldCraftRecipe = { "2x Золотой клевер, 1x Укрепленная колба" }
	elseif rank > 359 and rank < 365 then -- 360-364
		shouldCraft = { "Флакон с ледяным зельем маны" }
		shouldCraftRecipe = { "2x Роза Таландры, 1x Укрепленная колба" }
	elseif rank > 364 and rank < 375 then -- 365-374
		shouldCraft = { "Эликсир силы заклинаний" }
		shouldCraftRecipe =
			{ "1x Золотой клевер, 1x Тигровая лилия, 1x Укрепленная колба" }
	elseif rank > 374 and rank < 380 then -- 375-379
		shouldCraft = { "Карломасло" }
		shouldCraftRecipe = { "1x Карликовый сосокунь" }
	elseif rank > 379 and rank < 385 then -- 380-384
		shouldCraft = { "Зелье ночных кошмаров" }
		shouldCraftRecipe =
			{ "1x Золотой клевер, 2x Роза Таландры, 1x Укрепленная колба" }
	elseif rank > 384 and rank < 395 then -- 385-394
		shouldCraft = { "Мощный эликсир силы" }
		shouldCraftRecipe = { "2x Тигровая лилия, 1x Укрепленная колба" }
	elseif rank > 394 and rank < 400 then -- 395-399
		shouldCraft = { "Мощный эликсир ловкости" }
		shouldCraftRecipe =
			{ "2x Золотой клевер, 2x Язык аспида, 1x Укрепленная колба" }
	elseif rank > 399 and rank < 405 then -- 400-404
		shouldCraft = {
			"Зелье быстроты",
			"Мощный эликсир ловкости",
		}
		shouldCraftRecipe = {
			"2x Язык аспида, 1x Карломасло, 1x Укрепленная колба", -- Зелье быстроты
			"2x Золотой клевер, 2x Язык аспида, 1x Укрепленная колба", -- Мощный эликсир ловкости
		}
	elseif rank > 404 and rank < 415 then -- 405-414
		shouldCraft = {
			"Зелье быстроты",
			"Зелье несокрушимости",
		}
		shouldCraftRecipe = {
			"2x Язык аспида, 1x Карломасло, 1x Укрепленная колба", -- Зелье быстроты
			"2x Ледошип, 1x Укрепленная колба", -- Зелье несокрушимости
		}
	elseif rank > 414 and rank < 425 then -- 415-424
		shouldCraft = { "Рунический флакон с зельем маны" }
		shouldCraftRecipe =
			{ "1x Золотой клевер, 2x Личецвет, 1x Укрепленная колба" }
	elseif rank > 424 and rank < 430 then -- 425-429
		shouldCraft = { "Трансмутация: титан" }
		shouldCraftRecipe = { "8x Слиток саронита" }
	elseif rank > 429 and rank < 435 then -- 430-434
		shouldCraft = { "Трансмутация: алмаз землеправителя" }
		shouldCraftRecipe =
			{ "1x Темный нефрит, 1x Огромный цитрин, 1x Извечный огонь" }
	elseif rank > 434 and rank < 440 then -- 435-439
		shouldCraft = {
			"Трансмутация алмаза небесного сияния",
			"Настой бесконечной ярости",
			"Настой чистого колдунства",
			"Настой каменной крови",
			"Настой ледяного змея",
		}
		shouldCraftRecipe = {
			"1x Кровавый камень, 1x Кальцедоний, 1x Извечный воздух", -- Трансмутация алмаза небесного сияния
			"7x Личецвет, 3x Золотой клевер, 1x Северный лотос, 1x Зачарованная колба", -- Настой бесконечной ярости
			"7x Ледошип, 3x Карломасло, 1x Северный лотос, 1x Зачарованная колба", --  Настой чистого колдунства
			"7x Личецвет, 3x Кристаллизованная жизнь, 1x Северный лотос, 1x Зачарованная колба", -- Настой каменной крови
			"5x Ледошип, 5x Личецвет, 1x Северный лотос, 1x Зачарованная колба", -- Настой ледяного змея
		}
	elseif rank > 439 and rank < 450 then -- 440-449
		shouldCraft = {
			"Настой бесконечной ярости",
			"Настой чистого колдунства",
			"Настой каменной крови",
			"Настой ледяного змея",
			"Трансмутация алмаза небесного сияния",
		}
		shouldCraftRecipe = {
			"7x Личецвет, 3x Золотой клевер, 1x Северный лотос, 1x Зачарованная колба", -- Настой бесконечной ярости
			"7x Ледошип, 3x Карломасло, 1x Северный лотос, 1x Зачарованная колба", -- Настой чистого колдунства
			"7x Личецвет, 3x Кристаллизованная жизнь, 1x Северный лотос, 1x Зачарованная колба", -- Настой каменной крови
			"5x Ледошип, 5x Личецвет, 1x Северный лотос, 1x Зачарованная колба", -- Настой ледяного змея
			"1x Кровавый камень, 1x Кальцедоний, 1x Извечный воздух", -- Трансмутация алмаза небесного сияния
		}
	end
	return shouldCraft, shouldCraftRecipe
end

print("[Profession Capper] loaded Alchemy module")
