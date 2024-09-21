local addonName, addonTable = ...

local craftingData = {
	{
		min = 1,
		max = 1,
		craft = { "Рунический медный жезл" },
		recipe = {
			"1x Медный жезл, 1x Странная пыль, 1x Простая Магическая субстанция",
		},
	},
	{
		min = 2,
		max = 9,
		craft = { "Enchant Bracer - Minor Health", "Рунический медный жезл" },
		recipe = {
			"1x Странная пыль",
			"1x Медный жезл, 1x Странная пыль, 1x Простая Магическая субстанция",
		},
	},
	{ min = 10, max = 14, craft = { "Enchant Bracer - Minor Health" }, recipe = { "1x Странная пыль" } },
	{
		min = 15,
		max = 19,
		craft = { "Enchant Bracer - Minor Health", "Enchant Chest - Minor Health" },
		recipe = { "1x Странная пыль", "1x Странная пыль" },
	},
	{
		min = 20,
		max = 49,
		craft = { "Enchant Bracer - Minor Health", "Enchant Chest - Minor Health", "Enchant Chest - Minor Mana" },
		recipe = {
			"1x Странная пыль",
			"1x Странная пыль",
			"1x Простая Магическая субстанция",
		},
	},
	{
		min = 50,
		max = 59,
		craft = {
			"Enchant Bracer - Minor Health",
			"Enchant Chest - Minor Health",
			"Enchant Chest - Minor Mana",
			"Enchant Bracer - Minor Stamina",
		},
		recipe = {
			"1x Странная пыль",
			"1x Странная пыль",
			"1x Простая Магическая субстанция",
			"3x Странная пыль",
		},
	},
	{
		min = 60,
		max = 89,
		craft = {
			"Enchant Bracer - Minor Health",
			"Enchant Chest - Minor Health",
			"Enchant Chest - Minor Mana",
			"Enchant Bracer - Minor Stamina",
			"Enchant Bracer - Minor Spirit",
		},
		recipe = {
			"1x Странная пыль",
			"1x Странная пыль",
			"1x Простая Магическая субстанция",
			"3x Странная пыль",
			"2x Простая Магическая субстанция",
		},
	},
	{
		min = 90,
		max = 99,
		craft = { "Enchant Chest - Minor Mana", "Enchant Bracer - Minor Spirit", "Enchant Bracer - Minor Stamina" },
		recipe = {
			"1x Простая Магическая субстанция",
			"2x Простая Магическая субстанция",
			"3x Странная пыль",
		},
	},
	{
		min = 100,
		max = 100,
		craft = { "Runed Silver Rod", "Enchant Bracer - Minor Spirit", "Greater Magic Wand" },
		recipe = {
			"1x Silver Rod, 6x Странная пыль, 3x Greater Magic Essence, 1x Runed copper Rod",
			"2x Простая Магическая субстанция",
			"1x Simple Wood, 1x Greater Magic Essence",
		},
	},
	{
		min = 101,
		max = 109,
		craft = { "Enchant Bracer - Minor Spirit", "Greater Magic Wand", "Runed Silver Rod" },
		recipe = {
			"2x Простая Магическая субстанция",
			"1x Simple Wood, 1x Greater Magic Essence",
			"1x Silver Rod, 6x Странная пыль, 3x Greater Magic Essence, 1x Runed copper Rod",
		},
	},
	{
		min = 110,
		max = 134,
		craft = {
			"Enchant Cloak - Minor Agility",
			"Enchant Shield - Minor Stamina",
			"Enchant Bracer - Minor Spirit",
			"Enchant Bracer - Minor Strength",
			"Runed Silver Rod",
		},
		recipe = {
			"1x Lesser Astral Essence",
			"1x Lesser Astral Essence, 2x Странная пыль",
			"2x Простая Магическая субстанция",
			"5x Странная пыль",
			"1x Silver Rod, 6x Странная пыль, 3x Greater Magic Essence, 1x Runed copper Rod",
		},
	},
	{
		min = 135,
		max = 139,
		craft = {
			"Enchant Cloak - Minor Agility",
			"Enchant Bracer - Lesser Stamina",
			"Enchant Boots - Minor Stamina",
			"Runed Silver Rod",
		},
		recipe = {
			"1x Lesser Astral Essence",
			"2x Soul Dust",
			"8x Странная пыль",
			"1x Silver Rod, 6x Странная пыль, 3x Greater Magic Essence, 1x Runed copper Rod",
		},
	},
	{
		min = 140,
		max = 149,
		craft = {
			"Enchant Cloak - Minor Agility",
			"Enchant Bracer - Lesser Strength",
			"Enchant Bracer - Lesser Stamina",
			"Enchant Boots - Minor Stamina",
			"Runed Silver Rod",
		},
		recipe = {
			"1x Lesser Astral Essence",
			"2x Soul Dust",
			"2x Soul Dust",
			"8x Странная пыль",
			"1x Silver Rod, 6x Странная пыль, 3x Greater Magic Essence, 1x Runed copper Rod",
		},
	},
	{
		min = 150,
		max = 154,
		craft = {
			"Enchant Cloak - Minor Agility",
			"Enchant Bracer - Lesser Strength",
			"Enchant Bracer - Lesser Stamina",
			"Enchant Boots - Minor Stamina",
		},
		recipe = { "1x Lesser Astral Essence", "2x Soul Dust", "2x Soul Dust", "8x Странная пыль" },
	},
	{
		min = 155,
		max = 155,
		craft = {
			"Runed Golden Rod",
			"Enchant Bracer - Lesser Strength",
			"Enchant Bracer - Lesser Stamina",
			"Enchant Boots - Minor Stamina",
		},
		recipe = {
			"1x Golden Rod, 1x Iridescent Pearl, 2x Greater Astral Essence, 2x Soul Dust, 1x Runed Silver Rod",
			"2x Soul Dust",
			"2x Soul Dust",
			"8x Странная пыль",
		},
	},
	{
		min = 156,
		max = 164,
		craft = { "Enchant Bracer - Lesser Strength", "Enchant Boots - Minor Stamina", "Runed Golden Rod" },
		recipe = {
			"2x Soul Dust",
			"8x Странная пыль",
			"1x Golden Rod, 1x Iridescent Pearl, 2x Greater Astral Essence, 2x Soul Dust, 1x Runed Silver Rod",
		},
	},
	{
		min = 165,
		max = 179,
		craft = {
			"Enchant Bracer - Spirit",
			"Enchant Bracer - Lesser Strength",
			"Enchant Boots - Minor Stamina",
			"Runed Golden Rod",
		},
		recipe = {
			"1x Lesser Mystic Essence",
			"2x Soul dust",
			"8x Странная пыль",
			"1x Golden Rod, 1x Iridescent Pearl, 2x Greater Astral Essence, 2x Soul Dust, 1x Runed Silver Rod",
		},
	},
	{
		min = 180,
		max = 183,
		craft = {
			"Enchant Bracer - Strength",
			"Enchant Bracer - Spirit",
			"Enchant Bracer - Lesser Strength",
			"Enchant Boots - Minor Stamina",
			"Runed Golden Rod",
		},
		recipe = {
			"1x Vision dust",
			"1x Lesser Mystic Essence",
			"2x Soul dust",
			"8x Странная пыль",
			"1x Golden Rod, 1x Iridescent Pearl, 2x Greater Astral Essence, 2x Soul Dust, 1x Runed Silver Rod",
		},
	},
	{
		min = 185,
		max = 199,
		craft = { "Enchant Bracer - Strength", "Enchant Bracer - Spirit", "Enchant Chest - Greater Health" },
		recipe = { "1x Vision Dust", "1x Lesser Mystic Essence", "3x Soul Dust" },
	},
	{
		min = 200,
		max = 200,
		craft = {
			"Рунический жезл из истинного серебра",
			"Enchant Bracer - Strength",
			"Enchant Bracer - Lesser Strength",
		},
		recipe = {
			"1x Truesilver Rod, 1x Black Pearl, 2x Greater Mystic Essence, 2x Vision Dust, 1x Runed Golden Rod",
			"1x Vision Dust",
			"2x Soul Dust",
		},
	},
	{
		min = 201,
		max = 204,
		craft = {
			"Enchant Bracer - Strength",
			"Enchant Bracer - Spirit",
			"Enchant Bracer - Lesser Strength",
			"Рунический жезл из истинного серебра",
		},
		recipe = {
			"1x Vision Dust",
			"1x Lesser Mystic Essence",
			"2x Soul Dust",
			"1x Truesilver Rod, 1x Black Pearl, 2x Greater Mystic Essence, 2x Vision Dust, 1x Runed Golden Rod",
		},
	},
	{
		min = 205,
		max = 219,
		craft = { "Enchant Cloak - Resistance", "Enchant Bracer - Strength", "Enchant Bracer - Spirit" },
		recipe = { "1x Nether Essence", "1x Vision Dust", "1x Lesser Mystic Essence" },
	},
	{
		min = 220,
		max = 224,
		craft = {
			"Enchant Cloak - Resistance",
			"Enchant Cloak - Greater Defense",
			"Enchant Bracer - Spirit",
			"Enchant Boots - Lesser Stamina",
		},
		recipe = { "1x Lesser Nether Essence", "3x Vision Dust", "1x Lesser Mystic Essence", "4x Soul Dust" },
	},
	{
		min = 225,
		max = 234,
		craft = { "Enchant Cloak - Resistance", "Enchant Cloak - Greater Defense" },
		recipe = { "1x Lesser Nether Essence", "3x Vision Dust" },
	},
	{
		min = 235,
		max = 239,
		craft = { "Enchant Cloak - Lesser Agility", "Enchant Chest - Superior Health" },
		recipe = { "2x Lesser Nether Essence", "6x Vision Dust" },
	},
	{
		min = 240,
		max = 249,
		craft = {
			"Enchant Cloak - Lesser Agility",
			"Enchant Boots - Lesser Accuracy",
			"Enchant Chest - Superior Health",
		},
		recipe = { "2x Lesser Nether Essence", "4x Vision Dust, 1x Lesser Nether Essence", "6x Vision Dust" },
	},
	{
		min = 250,
		max = 259,
		craft = {
			"Чары для браслетов: выносливость IV",
			"Чары для браслетов: сила IV",
			"Lesser Mana Oil",
		},
		recipe = {
			"5x Сонная пыль",
			"2x Сонная пыль, 1x Великая субстанция Пустоты",
			"3x Сонная пыль, 2x Purple Lotus, 1x Укрепленная колба",
		},
	},
	{
		min = 260,
		max = 264,
		craft = {
			"Чары для браслетов: интеллект IV",
			"Чары для браслетов: выносливость IV",
			"Чары для браслетов: сила IV",
		},
		recipe = {
			"3x Простая вечная субстанция",
			"5x Сонная пыль",
			"2x Сонная пыль, 1x Великая субстанция Пустоты",
		},
	},
	{
		min = 265,
		max = 298,
		craft = { "Чары для щита: выносливость III" },
		recipe = { "5x Сонная пыль" },
	},
	{
		min = 299,
		max = 299,
		craft = {
			"Рунический арканитовый жезл",
			"Рунический жезл из оскверненного железа",
			"Чары для наручей - штурм II",
			"Чары для обуви: выносливость IV",
		},
		recipe = {
			"1x Арканитовый жезл, 10x Пыль иллюзий, 4x Великая вечная субстанция, 1x Рунический жезл из истинного серебра, 2x Большой сверкающий осколок",
			"1x Жезл из оскверненного железа, 4x Великая вечная субстанция, 6x Большой сверкающий осколок, 1x Рунический арканитовый жезл",
			"6x Чародейская пыль",
			"5x Сонная пыль",
		},
	},
	{
		min = 300,
		max = 300,
		craft = {
			"Рунический жезл из оскверненного железа",
			"Рунический арканитовый жезл",
			"Чары для наручей - штурм II",
			"Чары для обуви: выносливость IV",
		},
		recipe = {
			"1x Жезл из оскверненного железа, 4x Великая вечная субстанция, 6x Большой сверкающий осколок, 1x Рунический арканитовый жезл",
			"1x Арканитовый жезл, 10x Пыль иллюзий, 4x Великая вечная субстанция, 1x Рунический жезл из истинного серебра, 2x Большой сверкающий осколок",
			"6x Чародейская пыль",
			"5x Сонная пыль",
		},
	},
	{
		min = 301,
		max = 309,
		craft = {
			"Чары для наручей - штурм II",
			"Чары для нагрудника: мана V",
			"Рунический жезл из оскверненного железа",
			"Рунический арканитовый жезл",
		},
		recipe = {
			"6x Чародейская пыль",
			"8x Пыль иллюзий",
			"1x Жезл из оскверненного железа, 4x Великая вечная субстанция, 6x Большой сверкающий осколок, 1x Рунический арканитовый жезл",
			"1x Арканитовый жезл, 10x Пыль иллюзий, 4x Великая вечная субстанция, 1x Рунический жезл из истинного серебра, 2x Большой сверкающий осколок",
		},
	},
	{
		min = 310,
		max = 319,
		craft = { "Чары для наручей - грубая сила" },
		recipe = { "6x Чародейская пыль" },
	},
	{
		min = 320,
		max = 329,
		craft = { "Чары для перчаток - штурм I", "Чары для плаща - броня VI" },
		recipe = { "8x Чародейская пыль", "8x Чародейская пыль" },
	},
	{
		min = 330,
		max = 334,
		craft = { "Чары для щита - выносливость V" },
		recipe = { "15x Чародейская пыль" },
	},
	{
		min = 335,
		max = 339,
		craft = {
			"Чары для щита: устойчивость",
			"Чары для щита - выносливость V",
		},
		recipe = {
			"1x Большой радужный осколок, 4x Простая планарная субстанция",
			"15x Чародейская пыль",
		},
	},
	{
		min = 340,
		max = 349,
		craft = { "Превосходное волшебное масло" },
		recipe = {
			"3x Чародейская пыль, 1x Ползучий кошмарник, 1x Укрепленная колба",
		},
	},
	{
		min = 350,
		max = 350,
		craft = {
			"Рунический адамантитовый жезл",
			"Чары для плаща - скорость I",
			"Чары для нагрудника - мана VII",
		},
		recipe = {
			"1x Адамантитовый жезл. 8x Великая планарная субстанция, 8x Большой радужный осколок, 1x Изначальная мощь, 1x Рунический жезл из оскверненного железа",
			"6x Абсолютная пыль",
			"6x Абсолютная пыль",
		},
	},
	{
		min = 351,
		max = 359,
		craft = {
			"Чары для плаща - скорость I",
			"Чары для нагрудника - мана VII",
			"Рунический адамантитовый жезл",
		},
		recipe = {
			"6x Абсолютная пыль",
			"6x Абсолютная пыль",
			"1x Адамантитовый жезл. 8x Великая планарная субстанция, 8x Большой радужный осколок, 1x Изначальная мощь, 1x Рунический жезл из оскверненного железа",
		},
	},
	{
		min = 360,
		max = 375,
		craft = { "Чары для наручей - удар III" },
		recipe = { "6x Абсолютная пыль" },
	},
	{
		min = 376,
		max = 376,
		craft = {
			"Рунический этерниевый жезл",
			"Чары для наручей - удар III",
		},
		recipe = {
			"1x Этерниевый жезл, 6x Великая планарная субстанция, 6x Чародейская пыль, 1x Рунический адамантитовый жезл",
			"6x Абсолютная пыль",
		},
	},
	{
		min = 377,
		max = 379,
		craft = {
			"Чары для наручей - удар III",
			"Рунический этерниевый жезл",
		},
		recipe = {
			"6x Абсолютная пыль",
			"1x Этерниевый жезл, 6x Великая планарная субстанция, 6x Чародейская пыль, 1x Рунический адамантитовый жезл",
		},
	},
	{
		min = 380,
		max = 384,
		craft = { "Чары для наручей - интеллект II" },
		recipe = { "10x Абсолютная пыль" },
	},
	{
		min = 385,
		max = 394,
		craft = { "Чары для обуви - ледопроходец" },
		recipe = { "8x Абсолютная пыль, 1x Кристаллизованная вода" },
	},
	{
		min = 395,
		max = 409,
		craft = {
			"Чары для плаща - ловкость IV",
			"Чары для нагрудника - здоровье VIII",
		},
		recipe = { "9x Абсолютная пыль", "3x Великая космическая субстанция" },
	},
	{
		min = 410,
		max = 414,
		craft = { "Чары для перчаток - мастерство" },
		recipe = { "12x Абсолютная пыль" },
	},
	{
		min = 415,
		max = 419,
		craft = { "Чары для обуви - дух III", "Чары для перчаток - точность" },
		recipe = {
			"10x Абсолютная пыль, 1x Великая космическая субстанция",
			"4x Великая космическая субстанция",
		},
	},
	{
		min = 420,
		max = 424,
		craft = { "Чары для нагрудника - восстановление маны" },
		recipe = { "4x Абсолютная пыль, 4x Великая космическая субстанция" },
	},
	{
		min = 425,
		max = 425,
		craft = {
			"Рунический титановый жезл",
			"Чары для плаща - скорость II",
		},
		recipe = {
			"1x Титановый жезл, 12x Абсолютная пыль, 4x Великая космическая субстанция,2x Осколок грез, 1x Рунический этерниевый жезл",
			"16x Абсолютная пыль, 4x Великая космическая субстанция",
		},
	},
	{
		min = 426,
		max = 439,
		craft = {
			"Чары для плаща - скорость II",
			"Рунический титановый жезл",
		},
		recipe = {
			"16x Абсолютная пыль, 4x Великая космическая субстанция",
			"1x Титановый жезл, 12x Абсолютная пыль, 4x Великая космическая субстанция,2x Осколок грез, 1x Рунический этерниевый жезл",
		},
	},
	{
		min = 440,
		max = 449,
		craft = {
			"Чары для обуви - штурм II",
			"Чары для плаща - могучая броня",
		},
		recipe = {
			"4x Великая космическая субстанция, 4x Осколок грез",
			"15x Абсолютная пыль, 2x Великая космическая субстанция",
		},
	},
}

addonTable.getEnchanting = function(rank)
	for _, data in ipairs(craftingData) do
		if rank >= data.min and rank <= data.max then
			return data.craft, data.recipe
		end
	end
	return nil, nil -- Return nil if no match is found
end

print("[Profession Capper] loaded Enchanting module")
