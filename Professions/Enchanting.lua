local addonName, addonTable = ...

local shouldCraft, shouldCraftRecipe

addonTable.getEnchantingCurrentSkillLevelRecipeToCraft = function(rank)
	if rank > 0 and rank < 2 then -- 1
		shouldCraft = { "Рунический медный жезл" }
		shouldCraftRecipe = {
			"1x Медный жезл, 1x Странная пыль, 1x Простая Магическая субстанция",
		}
	elseif rank > 1 and rank < 10 then -- 2-9
		shouldCraft = {
			"Enchant Bracer - Minor Health",
			"Рунический медный жезл",
		}
		shouldCraftRecipe = {
			"1x Странная пыль", -- Enchant Bracer - Minor Health
			"1x Медный жезл, 1x Странная пыль, 1x Простая Магическая субстанция", -- Рунический медный жезл
		}
	elseif rank > 9 and rank < 15 then -- 10-14
		shouldCraft = {
			"Enchant Bracer - Minor Health",
		}
		shouldCraftRecipe = {
			"1x Странная пыль", -- Enchant Bracer - Minor Health
		}
	elseif rank > 14 and rank < 20 then -- 15-19
		shouldCraft = {
			"Enchant Bracer - Minor Health",
			"Enchant Chest - Minor Health",
		}
		shouldCraftRecipe = {
			"1x Странная пыль", -- Enchant Bracer - Minor Health
			"1x Странная пыль", -- Enchant Chest - Minor Health
		}
	elseif rank > 19 and rank < 50 then -- 20-49
		shouldCraft = {
			"Enchant Bracer - Minor Health",
			"Enchant Chest - Minor Health",
			"Enchant Chest - Minor Mana",
		}
		shouldCraftRecipe = {
			"1x Странная пыль", -- Enchant Bracer - Minor Health
			"1x Странная пыль", -- Enchant Chest - Minor Health
			"1x Простая Магическая субстанция", -- Enchant Chest - Minor Mana
		}
	elseif rank > 49 and rank < 60 then -- 50-59
		shouldCraft = {
			"Enchant Bracer - Minor Health",
			"Enchant Chest - Minor Health",
			"Enchant Chest - Minor Mana",
			"Enchant Bracer - Minor Stamina",
		}
		shouldCraftRecipe = {
			"1x Странная пыль", -- Enchant Bracer - Minor Health
			"1x Странная пыль", -- Enchant Chest - Minor Health
			"1x Простая Магическая субстанция", -- Enchant Chest - Minor Mana
			"3x Странная пыль", -- Enchant Bracer - Minor Stamina
		}
	elseif rank > 59 and rank < 90 then -- 60-89
		shouldCraft = {
			"Enchant Bracer - Minor Health",
			"Enchant Chest - Minor Health",
			"Enchant Chest - Minor Mana",
			"Enchant Bracer - Minor Stamina",
			"Enchant Bracer - Minor Spirit",
		}
		shouldCraftRecipe = {
			"1x Странная пыль", -- Enchant Bracer - Minor Health
			"1x Странная пыль", -- Enchant Chest - Minor Health
			"1x Простая Магическая субстанция", -- Enchant Chest - Minor Mana
			"3x Странная пыль", -- Enchant Bracer - Minor Stamina
			"2x Простая Магическая субстанция", -- Enchant Bracer - Minor Spirit
		}
	elseif rank > 89 and rank < 100 then -- 90-99
		shouldCraft = {
			"Enchant Chest - Minor Mana",
			"Enchant Bracer - Minor Spirit",
			"Enchant Bracer - Minor Stamina",
		}
		shouldCraftRecipe = {
			"1x Простая Магическая субстанция", -- Enchant Chest - Minor Mana
			"2x Простая Магическая субстанция", -- Enchant Bracer - Minor Spirit
			"3x Странная пыль", -- Enchant Bracer - Minor Stamina
		}
	elseif rank > 99 and rank < 101 then -- 100
		shouldCraft = {
			"Runed Silver Rod",
			"Enchant Bracer - Minor Spirit",
			"Greater Magic Wand",
		}
		shouldCraftRecipe = {
			"1x Silver Rod, 6x Странная пыль, 3x Greater Magic Essence, 1x Runed copper Rod", -- Runed Silver Rod
			"2x Простая Магическая субстанция", -- Enchant Bracer - Minor Spirit
			"1x Simple Wood, 1x Greater Magic Essence", -- Greater Magic Wand
		}
	elseif rank > 100 and rank < 110 then -- 101-109
		shouldCraft = {
			"Enchant Bracer - Minor Spirit",
			"Greater Magic Wand",
			"Runed Silver Rod",
		}
		shouldCraftRecipe = {
			"2x Простая Магическая субстанция", -- Enchant Bracer - Minor Spirit
			"1x Simple Wood, 1x Greater Magic Essence", -- Greater Magic Wand
			"1x Silver Rod, 6x Странная пыль, 3x Greater Magic Essence, 1x Runed copper Rod", -- Runed Silver Rod
		}
	elseif rank > 109 and rank < 135 then -- 110-134
		shouldCraft = {
			"Enchant Cloak - Minor Agility", -- bougth from vendor
			"Enchant Shield - Minor Stamina",
			"Enchant Bracer - Minor Spirit",
			"Enchant Bracer - Minor Strength",
			"Runed Silver Rod",
		}
		shouldCraftRecipe = {
			"1x Lesser Astral Essence", -- Enchant Cloak - Minor Agility
			"1x Lesser Astral Essence, 2x Странная пыль", -- Enchant Shield - Minor Stamina
			"2x Простая Магическая субстанция", -- Enchant Bracer - Minor Spirit
			"5x Странная пыль", -- Enchant Bracer - Minor Strength
			"1x Silver Rod, 6x Странная пыль, 3x Greater Magic Essence, 1x Runed copper Rod", -- Runed Silver Rod
		}
	elseif rank > 134 and rank < 140 then -- 135-139
		shouldCraft = {
			"Enchant Cloak - Minor Agility",
			"Enchant Bracer - Lesser Stamina",
			"Enchant Boots - Minor Stamina",
			"Runed Silver Rod",
		}
		shouldCraftRecipe = {
			"1x Lesser Astral Essence", -- Enchant Cloak - Minor Agility
			"2x Soul Dust", -- Enchant Bracer - Lesser Stamina
			"8x Странная пыль", -- Enchant Boots - Minor Stamina
			"1x Silver Rod, 6x Странная пыль, 3x Greater Magic Essence, 1x Runed copper Rod", -- Runed Silver Rod
		}
	elseif rank > 139 and rank < 150 then -- 140-149
		shouldCraft = {
			"Enchant Cloak - Minor Agility",
			"Enchant Bracer - Lesser Strength",
			"Enchant Bracer - Lesser Stamina",
			"Enchant Boots - Minor Stamina",
			"Runed Silver Rod",
		}
		shouldCraftRecipe = {
			"1x Lesser Astral Essence", -- Enchant Cloak - Minor Agility
			"2x Soul Dust", -- Enchant Bracer - Lesser Stamina
			"2x Soul Dust", -- Enchant Bracer - Lesser Strength
			"8x Странная пыль", -- Enchant Boots - Minor Stamina
			"1x Silver Rod, 6x Странная пыль, 3x Greater Magic Essence, 1x Runed copper Rod", -- Runed Silver Rod
		}
	elseif rank > 149 and rank < 155 then -- 155-154
		shouldCraft = {
			"Enchant Cloak - Minor Agility",
			"Enchant Bracer - Lesser Strength",
			"Enchant Bracer - Lesser Stamina",
			"Enchant Boots - Minor Stamina",
		}
		shouldCraftRecipe = {
			"1x Lesser Astral Essence", -- Enchant Cloak - Minor Agility
			"2x Soul Dust", -- Enchant Bracer - Lesser Stamina
			"2x Soul Dust", -- Enchant Bracer - Lesser Strength
			"8x Странная пыль", -- Enchant Boots - Minor Stamina
		}
	elseif rank > 154 and rank < 156 then -- 155
		shouldCraft = {
			"Runed Golden Rod",
			"Enchant Bracer - Lesser Strength",
			"Enchant Bracer - Lesser Stamina",
			"Enchant Boots - Minor Stamina",
		}
		shouldCraftRecipe = {
			"1x Golden Rod, 1x Iridescent Pearl, 2x Greater Astral Essence, 2x Soul Dust, 1x Runed Silver Rod", -- Runed Golden Rod
			"2x Soul Dust", -- Enchant Bracer - Lesser Stamina
			"2x Soul Dust", -- Enchant Bracer - Lesser Strength
			"8x Странная пыль", -- Enchant Boots - Minor Stamina
		}
	elseif rank > 155 and rank < 165 then -- 156-164
		shouldCraft = {
			"Enchant Bracer - Lesser Strength",
			"Enchant Boots - Minor Stamina",
			"Runed Golden Rod",
		}
		shouldCraftRecipe = {
			"2x Soul Dust", -- Enchant Bracer - Lesser Strength
			"8x Странная пыль", -- Enchant Boots - Minor Stamina
			"1x Golden Rod, 1x Iridescent Pearl, 2x Greater Astral Essence, 2x Soul Dust, 1x Runed Silver Rod", -- Runed Golden Rod
		}
	elseif rank > 164 and rank < 180 then -- 165-179
		shouldCraft = {
			"Enchant Bracer - Spirit",
			"Enchant Bracer - Lesser Strength",
			"Enchant Boots - Minor Stamina",
			"Runed Golden Rod",
		}
		shouldCraftRecipe = {
			"1x Lesser Mystic Essence", -- Enchant Bracer - Spirit
			"2x Soul dust", -- Enchant Bracer - Lesser Strength
			"8x Странная пыль", -- Enchant Boots - Minor Stamina
			"1x Golden Rod, 1x Iridescent Pearl, 2x Greater Astral Essence, 2x Soul Dust, 1x Runed Silver Rod", -- Runed Golden Rod
		}
	elseif rank > 179 and rank < 184 then -- 180-185
		shouldCraft = {
			"Enchant Bracer - Strength",
			"Enchant Bracer - Spirit",
			"Enchant Bracer - Lesser Strength",
			"Enchant Boots - Minor Stamina",
			"Runed Golden Rod",
		}
		shouldCraftRecipe = {
			"1x Vision dust", -- Enchant Bracer - Strength
			"1x Lesser Mystic Essence", -- Enchant Bracer - Spirit
			"2x Soul dust", -- Enchant Bracer - Lesser Strength
			"8x Странная пыль", -- Enchant Boots - Minor Stamina
			"1x Golden Rod, 1x Iridescent Pearl, 2x Greater Astral Essence, 2x Soul Dust, 1x Runed Silver Rod", -- Runed Golden Rod
		}
	elseif rank > 184 and rank < 200 then -- 185-199
		shouldCraft = {
			"Enchant Bracer - Strength",
			"Enchant Bracer - Spirit",
			"Enchant Chest - Greater Health",
		}
		shouldCraftRecipe = {
			"1x Vision Dust", -- Enchant Bracer - Strength
			"1x Lesser Mystic Essence", -- Enchant Bracer - Spirit
			"3x Soul Dust", -- Enchant Chest - Greater Health
		}
	elseif rank > 199 and rank < 201 then -- 200
		shouldCraft = {
			"Рунический жезл из истинного серебра",
			"Enchant Bracer - Strength",
			"Enchant Bracer - Lesser Strength",
		}
		shouldCraftRecipe = {
			"1x Truesilver Rod, 1x Black Pearl, 2x Greater Mystic Essence, 2x Vision Dust, 1x Runed Golden Rod", -- Рунический жезл из истинного серебра
			"1x Vision Dust", -- Enchant Bracer - Strength
			"2x Soul Dust", -- Enchant Bracer - Lesser Strength
		}
	elseif rank > 200 and rank < 205 then -- 201-204
		shouldCraft = {
			"Enchant Bracer - Strength",
			"Enchant Bracer - Spirit",
			"Enchant Bracer - Lesser Strength",
			"Рунический жезл из истинного серебра",
		}
		shouldCraftRecipe = {
			"1x Vision Dust", -- Enchant Bracer - Strength
			"1x Lesser Mystic Essence", -- Enchant Bracer - Spirit
			"2x Soul Dust", -- Enchant Bracer - Lesser Strength
			"1x Truesilver Rod, 1x Black Pearl, 2x Greater Mystic Essence, 2x Vision Dust, 1x Runed Golden Rod", -- Рунический жезл из истинного серебра
		}
	elseif rank > 204 and rank < 220 then -- 205-219
		shouldCraft = {
			"Enchant Cloak - Resistance",
			"Enchant Bracer - Strength",
			"Enchant Bracer - Spirit",
		}
		shouldCraftRecipe = {
			"1x Nether Essence", -- Enchant Cloak - Resistance
			"1x Vision Dust", -- Enchant Bracer - Strength
			"1x Lesser Mystic Essence", -- Enchant Bracer - Spirit
		}
	elseif rank > 219 and rank < 225 then -- 220-224
		shouldCraft = {
			"Enchant Cloak - Resistance",
			"Enchant Cloak - Greater Defense",
			"Enchant Bracer - Spirit",
			"Enchant Boots - Lesser Stamina",
		}
		shouldCraftRecipe = {
			"1x Lesser Nether Essence", -- Enchant Cloak - Resistance
			"3x Vision Dust", -- Enchant Cloak - Greater Defense
			"1x Lesser Mystic Essence", -- Enchant Bracer - Spirit
			"4x Soul Dust", -- Enchant Boots - Lesser Stamina
		}
	elseif rank > 224 and rank < 235 then -- 225-234
		shouldCraft = {
			"Enchant Cloak - Resistance",
			"Enchant Cloak - Greater Defense",
		}
		shouldCraftRecipe = {
			"1x Lesser Nether Essence", -- Enchant Cloak - Resistance
			"3x Vision Dust", -- Enchant Cloak - Greater Defense
		}
	elseif rank > 234 and rank < 240 then -- 235-239
		shouldCraft = {
			"Enchant Cloak - Lesser Agility",
			"Enchant Chest - Superior Health",
		}
		shouldCraftRecipe = {
			"2x Lesser Nether Essence", -- Enchant Cloak - Lesser Agility
			"6x Vision Dust", -- Enchant Chest - Superior Health
		}
	elseif rank > 239 and rank < 250 then -- 240-249
		shouldCraft = {
			"Enchant Cloak - Lesser Agility",
			"Enchant Boots - Lesser Accuracy",
			"Enchant Chest - Superior Health",
		}
		shouldCraftRecipe = {
			"2x Lesser Nether Essence", -- Enchant Cloak - Lesser Agility
			"4x Vision Dust, 1x Lesser Nether Essence", -- Enchant Boots - Lesser Accuracy
			"6x Vision Dust", -- Enchant Chest - Superior Health
		}
	elseif rank > 249 and rank < 260 then -- 250-259
		shouldCraft = {
			"Чары для браслетов: выносливость IV",
			"Чары для браслетов: сила IV",
			"Lesser Mana Oil",
		}
		shouldCraftRecipe = {
			"5x Сонная пыль", -- Чары для браслетов: выносливость IV
			"2x Сонная пыль, 1x Великая субстанция Пустоты", -- Чары для браслетов: сила IV
			"3x Сонная пыль, 2x Purple Lotus, 1x Укрепленная колба", -- Lesser Mana Oil
		}
	elseif rank > 259 and rank < 265 then -- 260-264
		shouldCraft = {
			"Чары для браслетов: интеллект IV",
			"Чары для браслетов: выносливость IV",
			"Чары для браслетов: сила IV",
		}
		shouldCraftRecipe = {
			"3x Простая вечная субстанция", -- Чары для браслетов: интеллект IV
			"5x Сонная пыль", -- Чары для браслетов: выносливость IV
			"2x Сонная пыль, 1x Великая субстанция Пустоты", -- Чары для браслетов: сила IV
		}
	elseif rank > 264 and rank < 299 then -- 265-298
		shouldCraft = { "Чары для щита: выносливость III" } -- bought from vendor
		shouldCraftRecipe = { "5x Сонная пыль" }
	elseif rank > 298 and rank < 300 then -- 299
		shouldCraft = {
			"Рунический арканитовый жезл",
			"Рунический жезл из оскверненного железа",
			"Чары для наручей - штурм II",
			"Чары для обуви: выносливость IV",
		}
		shouldCraftRecipe = {
			"1x Арканитовый жезл, 10x Пыль иллюзий, 4x Великая вечная субстанция, 1x Рунический жезл из истинного серебра, 2x Большой сверкающий осколок", -- Рунический арканитовый жезл
			"1x Жезл из оскверненного железа, 4x Великая вечная субстанция, 6x Большой сверкающий осколок, 1x Рунический арканитовый жезл", -- Рунический жезл из оскверненного железа
			"6x Чародейская пыль", -- Чары для наручей - штурм II
			"5x Сонная пыль", -- Чары для обуви: выносливость IV
		}
	elseif rank > 299 and rank < 301 then -- 300
		shouldCraft = {
			"Рунический жезл из оскверненного железа",
			"Рунический арканитовый жезл",
			"Чары для наручей - штурм II",
			"Чары для обуви: выносливость IV",
		}
		shouldCraftRecipe = {
			"1x Жезл из оскверненного железа, 4x Великая вечная субстанция, 6x Большой сверкающий осколок, 1x Рунический арканитовый жезл", -- Рунический жезл из оскверненного железа
			"1x Арканитовый жезл, 10x Пыль иллюзий, 4x Великая вечная субстанция, 1x Рунический жезл из истинного серебра, 2x Большой сверкающий осколок", -- Рунический арканитовый жезл
			"6x Чародейская пыль", -- Чары для наручей - штурм II
			"5x Сонная пыль", -- Чары для обуви: выносливость IV
		}
	elseif rank > 300 and rank < 310 then -- 301-309
		shouldCraft = {
			"Чары для наручей - штурм II",
			"Чары для нагрудника: мана V",
			"Рунический жезл из оскверненного железа",
			"Рунический арканитовый жезл",
		}
		shouldCraftRecipe = {
			"6x Чародейская пыль", -- Чары для наручей - штурм II
			"8x Пыль иллюзий", -- Чары для нагрудника: мана V
			"1x Жезл из оскверненного железа, 4x Великая вечная субстанция, 6x Большой сверкающий осколок, 1x Рунический арканитовый жезл", -- Рунический жезл из оскверненного железа
			"1x Арканитовый жезл, 10x Пыль иллюзий, 4x Великая вечная субстанция, 1x Рунический жезл из истинного серебра, 2x Большой сверкающий осколок", -- Рунический арканитовый жезл
		}
	elseif rank > 309 and rank < 320 then -- 310-319
		shouldCraft = { "Чары для наручей - грубая сила" }
		shouldCraftRecipe = { "6x Чародейская пыль" }
	elseif rank > 319 and rank < 330 then --320-329
		shouldCraft = {
			"Чары для перчаток - штурм I",
			"Чары для плаща - броня VI",
		}
		shouldCraftRecipe = {
			"8x Чародейская пыль", -- Чары для перчаток - штурм I
			"8x Чародейская пыль", -- Чары для плаща - броня VI
		}
	elseif rank > 329 and rank < 335 then -- 330-334
		shouldCraft = { "Чары для щита - выносливость V" }
		shouldCraftRecipe = { "15x Чародейская пыль" }
	elseif rank > 334 and rank < 340 then -- 335-339
		shouldCraft = {
			"Чары для щита: устойчивость",
			"Чары для щита - выносливость V",
		}
		shouldCraftRecipe = {
			"1x Большой радужный осколок, 4x Простая планарная субстанция", -- Чары для щита: устойчивость
			"15x Чародейская пыль", -- Чары для щита - выносливость V
		}
	elseif rank > 339 and rank < 350 then -- 340-349
		shouldCraft = { "Превосходное волшебное масло" }
		shouldCraftRecipe = {
			"3x Чародейская пыль, 1x Ползучий кошмарник, 1x Укрепленная колба",
		}
	elseif rank > 349 and rank < 351 then -- 350
		shouldCraft = {
			"Рунический адамантитовый жезл",
			"Чары для плаща - скорость I",
			"Чары для нагрудника - мана VII",
		}
		shouldCraftRecipe = {
			"1x Адамантитовый жезл. 8x Великая планарная субстанция, 8x Большой радужный осколок, 1x Изначальная мощь, 1x Рунический жезл из оскверненного железа", -- Рунический адамантитовый жезл
			"6x Абсолютная пыль", -- Чары для плаща - скорость I
			"6x Абсолютная пыль", -- Чары для нагрудника - мана VII
		}
	elseif rank > 350 and rank < 360 then -- 351-359
		shouldCraft = {
			"Чары для плаща - скорость I",
			"Чары для нагрудника - мана VII",
			"Рунический адамантитовый жезл",
		}
		shouldCraftRecipe = {
			"6x Абсолютная пыль", -- Чары для плаща - скорость I
			"6x Абсолютная пыль", -- Чары для нагрудника - мана VII
			"1x Адамантитовый жезл. 8x Великая планарная субстанция, 8x Большой радужный осколок, 1x Изначальная мощь, 1x Рунический жезл из оскверненного железа", -- Рунический адамантитовый жезл
		}
	elseif rank > 359 and rank < 376 then -- 360-375
		shouldCraft = { "Чары для наручей - удар III" }
		shouldCraftRecipe = { "6x Абсолютная пыль" }
	elseif rank > 375 and rank < 377 then -- 376
		shouldCraft = {
			"Рунический этерниевый жезл",
			"Чары для наручей - удар III",
		}
		shouldCraftRecipe = {
			"1x Этерниевый жезл, 6x Великая планарная субстанция, 6x Чародейская пыль, 1x Рунический адамантитовый жезл", -- Рунический этерниевый жезл
			"6x Абсолютная пыль", -- Чары для наручей - удар III
		}
	elseif rank > 376 and rank < 380 then -- 376-379
		shouldCraft = {
			"Чары для наручей - удар III",
			"Рунический этерниевый жезл",
		}
		shouldCraftRecipe = {
			"6x Абсолютная пыль", -- Чары для наручей - удар III
			"1x Этерниевый жезл, 6x Великая планарная субстанция, 6x Чародейская пыль, 1x Рунический адамантитовый жезл", -- Рунический этерниевый жезл
		}
	elseif rank > 379 and rank < 385 then -- 380-384
		shouldCraft = { "Чары для наручей - интеллект II" }
		shouldCraftRecipe = { "10x Абсолютная пыль" }
	elseif rank > 384 and rank < 395 then -- 385-394
		shouldCraft = { "Чары для обуви - ледопроходец" }
		shouldCraftRecipe = { "8x Абсолютная пыль, 1x Кристаллизованная вода" }
	elseif rank > 394 and rank < 410 then -- 395-409
		shouldCraft = {
			"Чары для плаща - ловкость IV",
			"Чары для нагрудника - здоровье VIII",
		}
		shouldCraftRecipe = {
			"9x Абсолютная пыль", -- Чары для плаща - ловкость IV
			"3x Великая космическая субстанция", -- Чары для нагрудника - здоровье VIII
		}
	elseif rank > 409 and rank < 415 then -- 410-414
		shouldCraft = { "Чары для перчаток - мастерство" }
		shouldCraftRecipe = { "12x Абсолютная пыль" }
	elseif rank > 414 and rank < 420 then -- 415-419
		shouldCraft = {
			"Чары для обуви - дух III",
			"Чары для перчаток - точность",
		}
		shouldCraftRecipe = {
			"10x Абсолютная пыль, 1x Великая космическая субстанция", -- Чары для обуви - дух III
			"4x Великая космическая субстанция", -- Чары для перчаток - точность
		}
	elseif rank > 419 and rank < 425 then -- 420-424
		shouldCraft = {
			"Чары для нагрудника - восстановление маны", -- last one has 130% skill up chance
			-- "Чары для перчаток - точность" -- last one has 80% skill up chance
		}
		shouldCraftRecipe = {
			"4x Абсолютная пыль, 4x Великая космическая субстанция", -- Чары для нагрудника - восстановление маны
			-- "4x Великая космическая субстанция" - Чары для перчаток - точность
		}
	elseif rank > 424 and rank < 426 then -- 425
		shouldCraft = {
			"Рунический титановый жезл",
			"Чары для плаща - скорость II",
		}
		shouldCraftRecipe = {
			"1x Титановый жезл, 12x Абсолютная пыль, 4x Великая космическая субстанция,2x Осколок грез, 1x Рунический этерниевый жезл", -- Рунический титановый жезл
			"16x Абсолютная пыль, 4x Великая космическая субстанция", -- Чары для плаща - скорость II
		}
	elseif rank > 425 and rank < 440 then -- 426-439
		shouldCraft = {
			"Чары для плаща - скорость II",
			"Рунический титановый жезл",
		}
		shouldCraftRecipe = {
			"16x Абсолютная пыль, 4x Великая космическая субстанция", -- Чары для плаща - скорость II
			"1x Титановый жезл, 12x Абсолютная пыль, 4x Великая космическая субстанция,2x Осколок грез, 1x Рунический этерниевый жезл", -- Рунический титановый жезл
		}
	elseif rank > 439 and rank < 450 then -- 440-449
		shouldCraft = {
			"Чары для обуви - штурм II",
			"Чары для плаща - могучая броня",
		}
		shouldCraftRecipe = {
			"4x Великая космическая субстанция, 4x Осколок грез", -- Чары для обуви - штурм II
			"15x Абсолютная пыль, 2x Великая космическая субстанция", -- Чары для плаща - могучая броня
		}
	end
	return shouldCraft, shouldCraftRecipe
end

print("|cff" .. addonTable.chat_frame_default_color .. "[Profession Capper] loaded Enchanting module|r")
