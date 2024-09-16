addonName, addonTable = ...

local shouldCraft, shouldCraftRecipe

addonTable.getBlacksmithingCurrentSkillLevelRecipeToCraft = function(rank)
	if rank > 0 and rank < 30 then -- 1-29
		shouldCraft = { "Грубое точило" }
		shouldCraftRecipe = { "1x Грубый камень" }
	elseif rank > 29 and rank < 65 then -- 30-64
		shouldCraft = { "Грубый шлифовальный камень" }
		shouldCraftRecipe = { "2x Грубый камень" }
	elseif rank > 64 and rank < 75 then -- 65-74
		shouldCraft = { "Медный плетеный пояс" }
		shouldCraftRecipe = { "6x Медный слиток" }
	elseif rank > 74 and rank < 87 then -- 75-86
		shouldCraft = { "Зернистый шлифовальный камень" }
		shouldCraftRecipe = { "2x Необработанный камень" }
	elseif rank > 86 and rank < 100 then -- 87-99
		shouldCraft = { "Рунический медный пояс" }
		shouldCraftRecipe = { "10x Медный слиток" }
	elseif rank > 99 and rank < 105 then -- 100-104
		shouldCraft = { "Серебряный жезл" }
		shouldCraftRecipe =
			{ "1x Серебряный слиток, 2x Грубый шлифовальный камень" }
	elseif rank > 104 and rank < 125 then -- 105-124
		shouldCraft = { "Грубые бронзовые поножи" }
		shouldCraftRecipe = { "6x Бронзовый слиток" }
	elseif rank > 124 and rank < 150 then -- 125-149
		shouldCraft = { "Тяжелый точильный камень" }
		shouldCraftRecipe = { "3x Тяжелый камень" }
	elseif rank > 149 and rank < 155 then -- 150-154
		shouldCraft = { "Золотой жезл" }
		shouldCraftRecipe =
			{ "1x Золотой слиток, 2x Зернистый шлифовальный камень" }
	elseif rank > 154 and rank < 165 then -- 155-164
		shouldCraft = { "Зеленые железные поножи" }
		shouldCraftRecipe = {
			"8x Железный слиток, 1x Тяжелый точильный камень, 1x Зеленая краска",
		}
	elseif rank > 164 and rank < 190 then -- 165-189
		shouldCraft = { "Зеленые железные наручи" }
		shouldCraftRecipe = { "6x Железный слиток, 1x Зеленая краска" }
	elseif rank > 189 and rank < 200 then -- 190-199
		shouldCraft = { "Золотые чешуйчатые наручи" }
		shouldCraftRecipe = { "5x Стальной слиток, 2x Тяжелый точильный камень" }
	elseif rank > 199 and rank < 205 then -- 200-204
		shouldCraft = { "Жезл из истинного серебра" }
		shouldCraftRecipe =
			{ "1x Слиток истинного серебра, 1x Тяжелый точильный камень" }
	elseif rank > 204 and rank < 210 then -- 205-209
		shouldCraft = { "Твердый шлифовальный камень" }
		shouldCraftRecipe = { "4x Твердый камень" }
	elseif rank > 209 and rank < 225 then -- 210-224
		shouldCraft = { "Тяжелые мифриловые латные рукавицы" }
		shouldCraftRecipe = { "6x Мифриловый слиток, 4x Магическая ткань" }
	elseif rank > 224 and rank < 235 then -- 225-234
		shouldCraft = { "Мифриловые чешуйчатые наручи" }
		shouldCraftRecipe = { "8x Мифриловый слиток" }
	elseif rank > 234 and rank < 250 then -- 235-249
		shouldCraft = {
			"Мифриловые шпоры",
			"Мифриловый капюшон",
		}
		shouldCraftRecipe = {
			"4x Мифриловый слиток, 3x Твердый шлифовальный камень", -- Мифриловые шпоры
			"10x Мифриловый слиток, 6x Магическая ткань", -- Мифриловый капюшон
		}
	elseif rank > 249 and rank < 260 then -- 250-259
		shouldCraft = { "Массивное точило" }
		shouldCraftRecipe = { "1x Массивный камень" }
	elseif rank > 259 and rank < 275 then -- 260-274
		shouldCraft = { "Ториевые наручи" }
		shouldCraftRecipe = { "8x Ториевый слиток" }
	elseif rank > 274 and rank < 280 then -- 275-279
		shouldCraft = { "Арканитовый жезл" }
		shouldCraftRecipe =
			{ "3x Арканитовый слиток, 1x Массивный шлифовальный камень" }
	elseif rank > 279 and rank < 290 then -- 280-289
		shouldCraft = { "Имперские латные наручи" }
		shouldCraftRecipe = { "12x Ториевый слиток" }
	elseif rank > 289 and rank < 300 then -- 290-299
		shouldCraft = {
			"Ториевые сапоги",
			"Ториевый шлем",
		}
		shouldCraftRecipe = {
			"12x Ториевый слиток, 8x Грубая кожа", -- Ториевые сапоги
			"12x Ториевый слиток, 1x Звездный рубин", -- Ториевый шлем
		}
	elseif rank > 299 and rank < 305 then -- 300-304
		shouldCraft = { "Грузило Скверны" }
		shouldCraftRecipe = { "1x Слиток оскверненного железа, 1x Ткань Пустоты" }
	elseif rank > 304 and rank < 315 then -- 305-314
		shouldCraft = { "Латный пояс из оскверненного железа" }
		shouldCraftRecipe = { "4x Слиток оскверненного железа" }
	elseif rank > 314 and rank < 320 then -- 315-319
		shouldCraft = { "Плетеные перчатки из оскверненного железа" }
		shouldCraftRecipe = { "5x Слиток оскверненного железа" }
	elseif rank > 319 and rank < 325 then -- 320-324
		shouldCraft = {
			"Латные сапоги из оскверненного железа",
			"Плетеные наручи из оскверненного железа",
		}
		shouldCraftRecipe = {
			"6x Слиток оскверненного железа", -- Латные сапоги из оскверненного железа
			"6x Слиток оскверненного железа", -- Плетеные наручи из оскверненного железа
		}
	elseif rank > 324 and rank < 330 then -- 325-329
		shouldCraft = { "Простая охранная руна" }
		shouldCraftRecipe = { "1x Адамантитовый слиток" }
	elseif rank > 329 and rank < 335 then -- 330-334
		shouldCraft = { "Кираса из оскверненного железа" }
		shouldCraftRecipe = { "10x Слиток оскверненного железа" }
	elseif rank > 334 and rank < 340 then -- 335-339
		shouldCraft = { "Адамантитовый колун" }
		shouldCraftRecipe = { "8x Адамантитовый слиток" }
	elseif rank > 339 and rank < 350 then -- 340-349
		shouldCraft = { "Простой оберег" }
		shouldCraftRecipe = { "1x Адамантитовый слиток" }
	elseif rank > 349 and rank < 360 then -- 350-359
		shouldCraft = {
			"Кобальтовые сапоги",
			"Кобальтовый пояс",
		}
		shouldCraftRecipe = {
			"4x Слиток кобальта", -- Кобальтовые сапоги
			"4x Слиток кобальта", -- Кобальтовый пояс
		}
	elseif rank > 359 and rank < 370 then -- 360-369
		shouldCraft = {
			"Кобальтовый треугольный щит",
			"Кобальтовые наручи",
		}
		shouldCraftRecipe = {
			"4x Слиток кобальта", -- Кобальтовый треугольный щит
			"4x Слиток кобальта", -- Кобальтовые наручи
		}
	elseif rank > 369 and rank < 375 then -- 370-374
		shouldCraft = {
			"Кобальтовые ножные латы",
			"Кобальтовый шлем",
		}
		shouldCraftRecipe = {
			"5x Слиток кобальта", -- Кобальтовые ножные латы
			"5x Слиток кобальта", -- Кобальтовый шлем
		}
	elseif rank > 374 and rank < 380 then -- 375-379
		shouldCraft = { "Кобальтовые рукавицы" }
		shouldCraftRecipe = { "5x Слиток кобальта" }
	elseif rank > 379 and rank < 385 then -- 380-384
		shouldCraft = { "Шипастые кобальтовые сапоги" }
		shouldCraftRecipe = { "7x Слиток кобальта" }
	elseif rank > 384 and rank < 390 then -- 385-389
		shouldCraft = { "Выверенный сюрикен" }
		shouldCraftRecipe = { "7x Слиток кобальта" }
	elseif rank > 389 and rank < 395 then -- 390-394
		shouldCraft = { "Зубчатая кобальтовая секира" }
		shouldCraftRecipe = { "10x Слиток кобальта" }
	elseif rank > 394 and rank < 400 then -- 395-399
		shouldCraft = { "Сверкающий саронитовый пояс" }
		shouldCraftRecipe = { "6x Слиток кобальта, 5x Слиток саронита" }
	elseif rank > 399 and rank < 405 then -- 400-404
		shouldCraft = { "Рогатый кобальтовый шлем" }
		shouldCraftRecipe = { "8x Слиток кобальта" }
	elseif rank > 404 and rank < 415 then -- 405-414
		shouldCraft = { "Смертоносный саронитовый кортик" }
		shouldCraftRecipe = { "7x Слиток саронита, 2x Кристаллизованный воздух" }
	elseif rank > 414 and rank < 425 then -- 415-424
		shouldCraft = { "Извечная поясная пряжка" }
		shouldCraftRecipe = {
			"4x Слиток саронита, 1x Извечная земля, 1x Извечная вода, 1x Извечная тьма",
		}
	elseif rank > 424 and rank < 430 then -- 425-429
		shouldCraft = { "Титановая цепь для оружия" }
		shouldCraftRecipe = { "2x Слиток саронита, 1x Титановый слиток" }
	elseif rank > 429 and rank < 435 then -- 430-434
		shouldCraft = { "Саронитовый хауберк свирепости" }
		shouldCraftRecipe = { "14x Слиток саронита, 1x Извечная земля" }
	elseif rank > 434 and rank < 440 then -- 435-439
		shouldCraft = { "Устрашающие ножные латы" }
		shouldCraftRecipe = { "14x Слиток саронита, 1x Извечная земля" }
	elseif rank > 439 and rank < 450 then -- 440-449
		shouldCraft = {
			"Устрашающие ножные латы",
			"Закаленные сапоги из титановой стали",
			"Сверкающие сапоги из титановой стали",
			"Шипастые сапоги из титановой стали",
			"Осадный щит из титановой стали",
			"Закаленный шлем из титановой стали",
			"Сверкающий шлем из титановой стали",
			"Шипастый шлем из титановой стали",
			"Чародейский клинок из титановой стали",
		}
		shouldCraftRecipe = {
			"14x Слиток саронита, 1x Извечная земля", -- Устрашающие ножные латы
			"4x Слиток саронита, 3x Слиток титановой стали, 1x Ледяной шар", -- Закаленные сапоги из титановой стали
			"4x Слиток саронита, 3x Слиток титановой стали, 1x Ледяной шар", -- Сверкающие сапоги из титановой стали
			"4x Слиток саронита, 3x Слиток титановой стали, 1x Ледяной шар", -- Шипастые сапоги из титановой стали
			"4x Слиток саронита, 3x Слиток титановой стали, 1x Ледяной шар", -- Осадный щит из титановой стали
			"4x Слиток саронита, 4x Слиток титановой стали, 1x Ледяной шар", -- Закаленный шлем из титановой стали
			"4x Слиток саронита, 4x Слиток титановой стали, 1x Ледяной шар", -- Сверкающий шлем из титановой стали
			"4x Слиток саронита, 4x Слиток титановой стали, 1x Ледяной шар", -- Шипастый шлем из титановой стали
			"6x Слиток титановой стали, 6x Абсолютная пыль, 2x Ледяной шар", -- Чародейский клинок из титановой стали
		}
	end
	return shouldCraft, shouldCraftRecipe
end

print("|cff" .. addonTable.chat_frame_default_color .. "[Profession Capper] loaded Blacksmithing module|r")
