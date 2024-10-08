local addonName, addonTable = ...

local craftingData = {
	{
		min = 1,
		max = 19,
		craft = { "Тонкая кожа", "Накладки из тонкой кожи" },
		recipe = { "3x Обрывки кожи", "1x Тонкая кожа" },
	},
	{
		min = 20,
		max = 29,
		craft = { "Накладки из тонкой кожи" },
		recipe = { "1x Тонкая кожа" },
	},
	{
		min = 30,
		max = 49,
		craft = { "Рукодельный кожаный плащ" },
		recipe = { "2x Тонкая кожа", "1x Грубая нить" },
	},
	{
		min = 50,
		max = 54,
		craft = { "Небольшой кожаный подсумок" },
		recipe = { "3x Тонкая кожа", "4x Грубая нить" },
	},
	{
		min = 55,
		max = 84,
		craft = { "Тисненые кожаные перчатки" },
		recipe = { "3x Тонкая кожа", "2x Грубая нить" },
	},
	{
		min = 85,
		max = 99,
		craft = { "Тонкий кожаный пояс" },
		recipe = { "6x Тонкая кожа", "2x Грубая нить" },
	},
	{
		min = 100,
		max = 114,
		craft = { "Обработанная средняя шкура" },
		recipe = { "1x Средняя шкура", "1x Соль" },
	},
	{
		min = 115,
		max = 129,
		craft = { "Темные кожаные сапоги" },
		recipe = { "4x Жесткая кожа", "2x Тонкая нить", "1x Серая краска" },
	},
	{
		min = 130,
		max = 144,
		craft = { "Темный кожаный пояс", "Темный кожаный плащ" },
		recipe = {
			"1x Тонкий кожаный пояс, 1x Обработанная средняя шкура, 2x Тонкая нить, 1x Серая краска",
			"8x Жесткая кожа, 1x Тонкая нить, 1x Серая краска",
		},
	},
	{
		min = 145,
		max = 149,
		craft = { "Кожаные перчатки жителя холмов" },
		recipe = { "14x Жесткая кожа", "4x Тонкая нить" },
	},
	{
		min = 150,
		max = 154,
		craft = { "Мяч из толстой кожи" },
		recipe = { "2x Толстая кожа", "1x Тонкая нить" },
	},
	{
		min = 155,
		max = 164,
		craft = { "Обработанная тяжелая шкура" },
		recipe = { "1x Тяжелая шкура", "3x Соль" },
	},
	{
		min = 165,
		max = 179,
		craft = { "Накладки из толстой кожи" },
		recipe = { "5x Толстая кожа", "1x Тонкая нить" },
	},
	{
		min = 180,
		max = 189,
		craft = { "Варварские наплечники" },
		recipe = {
			"8x Толстая кожа",
			"1x Обработанная тяжелая шкура",
			"2x Тонкая нить",
		},
	},
	{
		min = 190,
		max = 199,
		craft = { "Перчатки стража" },
		recipe = {
			"4x Толстая кожа",
			"1x Обработанная тяжелая шкура",
			"1x Шелковая нить",
		},
	},
	{
		min = 200,
		max = 204,
		craft = { "Накладки из толстой кожи" },
		recipe = { "5x Плотная кожа", "1x Шелковая нить" },
	},
	{
		min = 205,
		max = 234,
		craft = { "Ночная головная повязка" },
		recipe = { "5x Плотная кожа", "2x Шелковая нить" },
	},
	{
		min = 235,
		max = 249,
		craft = { "Ночные штаны" },
		recipe = { "14x Плотная кожа", "4x Шелковая нить" },
	},
	{
		min = 250,
		max = 264,
		craft = { "Накладки из грубой кожи" },
		recipe = { "5x Грубая кожа" },
	},
	{
		min = 265,
		max = 289,
		craft = { "Гибельные кожаные наручи" },
		recipe = { "8x Грубая кожа", "1x Черная краска", "1x Руническая нить" },
	},
	{
		min = 290,
		max = 299,
		craft = { "Гибельная кожаная головная повязка" },
		recipe = { "12x Грубая кожа", "1x Черная краска", "1x Руническая нить" },
	},
	{
		min = 300,
		max = 309,
		craft = { "Узловатая кожа" },
		recipe = { "5x Толстая узловатая кожа" },
	},
	{
		min = 310,
		max = 324,
		craft = { "Накладки из узловатой кожи" },
		recipe = { "4x Узловатая кожа" },
	},
	{
		min = 325,
		max = 334,
		craft = { "Толстая узловатая кожа" },
		recipe = { "5x Узловатая кожа" },
	},
	{
		min = 335,
		max = 339,
		craft = { "Утолщенная дренорская безрукавка" },
		recipe = { "3x Толстая узловатая кожа", "3x Руническая нить" },
	},
	{
		min = 340,
		max = 349,
		craft = {
			"Чешуйчатые дренорские сапоги",
			"Утолщенная дренорская безрукавка",
		},
		recipe = {
			"2x Толстая узловатая кожа, 2x Скверночешуя, 3x Руническая нить",
			"3x Толстая узловатая кожа, 3x Руническая нить",
		},
	},
	{
		min = 350,
		max = 379,
		craft = { "Накладки из борейской кожи" },
		recipe = { "4x Борейская кожа" },
	},
	{
		min = 380,
		max = 389,
		craft = { "Арктические сапоги" },
		recipe = { "8x Борейская кожа" },
	},
	{
		min = 390,
		max = 404,
		craft = { "Толстая борейская кожа" },
		recipe = { "6x Борейская кожа" },
	},
	{
		min = 405,
		max = 419,
		craft = {
			"Темные поножи из обмерзшей чешуи",
			"Темные поножи жителя льдов",
		},
		recipe = {
			"4x Толстая борейская кожа, 5x Кристаллизованная вода",
			"4x Толстая борейская кожа, 5x Кристаллизованная тьма",
		},
	},
	{
		min = 420,
		max = 424,
		craft = { "Наручи угрюмости" },
		recipe = { "8x Толстая борейская кожа", "1x Извечная вода" },
	},
	{
		min = 425,
		max = 434,
		craft = { "Повязки угрюмости" },
		recipe = { "10x Толстая борейская кожа", "1x Извечная вода" },
	},
	{
		min = 435,
		max = 439,
		craft = {
			"Накладки для поножей из снежной шкуры",
			"Накладки для поножей из ледяной чешуи",
		},
		recipe = {
			"2x Арктический мех, 2x Нерубский хитин, 1x Ледяной шар",
			"2x Арктический мех, 2x Мерзлая чешуя дракона, 1x Ледяной шар",
		},
	},
	{
		min = 440,
		max = 449,
		craft = {
			"Ботфорты загробника",
			"Кираса загробника",
			"Надежная накидка из нерубской шкуры",
			"Плащ ледяного убийцы",
			"Сапоги земледарения",
			"Наручи тяжелых увечий",
			"Тролльский тканый ремень",
			"Сапоги ветроруба",
			"Тролльский тканый наплеч",
			"Набедренники земледарения",
			"Набедренники тяжелых увечий",
			"Поножи ветроруба",
		},
		recipe = {
			"10x Толстая борейская кожа, 10x Извечная вода, 1x Ледяной шар",
			"12x Толстая борейская кожа, 12x Извечная вода, 1x Ледяной шар",
			"2x Арктический мех, 40x Нерубский хитин, 1x Ледяной шар",
			"2x Арктический мех, 6x Извечный огонь, 4x Извечная тьма, 1x Ледяной шар",
			"10x Толстая борейская кожа, 5x Извечная жизнь, 5x Извечная вода, 1x Ледяной шар",
			"10x Толстая борейская кожа, 5x Извечный воздух, 5x Извечная вода, 1x Ледяной шар",
			"10x Толстая борейская кожа, 5x Извечный огонь, 5x Извечная тьма, 1x Ледяной шар",
			"10x Толстая борейская кожа, 5x Извечный воздух, 5x Извечная вода, 1x Ледяной шар",
			"10x Толстая борейская кожа, 6x Извечный огонь, 6x Извечная тьма, 1x Ледяной шар",
			"12x Толстая борейская кожа, 6x Извечная жизнь, 6x Извечная вода, 1x Ледяной шар",
			"12x Толстая борейская кожа, 6x Извечная жизнь, 6x Извечная вода, 1x Ледяной шар",
			"12x Толстая борейская кожа, 6x Извечный воздух, 6x Извечная вода, 1x Ледяной шар",
		},
	},
}

addonTable.getLeatherworking = function(rank)
	for _, data in ipairs(craftingData) do
		if rank >= data.min and rank <= data.max then
			return data.craft, data.recipe
		end
	end
	return nil, nil -- Return nil if no match is found
end
