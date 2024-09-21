local addonName, addonTable = ...
local craftingData = {
	{ min = 1, max = 29, craft = { "Грубое точило" }, recipe = { "1x Грубый камень" } },
	{
		min = 30,
		max = 64,
		craft = { "Грубый шлифовальный камень" },
		recipe = { "2x Грубый камень" },
	},
	{
		min = 65,
		max = 74,
		craft = { "Медный плетеный пояс" },
		recipe = { "6x Медный слиток" },
	},
	{
		min = 75,
		max = 86,
		craft = { "Зернистый шлифовальный камень" },
		recipe = { "2x Необработанный камень" },
	},
	{
		min = 87,
		max = 99,
		craft = { "Рунический медный пояс" },
		recipe = { "10x Медный слиток" },
	},
	{
		min = 100,
		max = 104,
		craft = { "Серебряный жезл" },
		recipe = { "1x Серебряный слиток, 2x Грубый шлифовальный камень" },
	},
	{
		min = 105,
		max = 124,
		craft = { "Грубые бронзовые поножи" },
		recipe = { "6x Бронзовый слиток" },
	},
	{
		min = 125,
		max = 149,
		craft = { "Тяжелый точильный камень" },
		recipe = { "3x Тяжелый камень" },
	},
	{
		min = 150,
		max = 154,
		craft = { "Золотой жезл" },
		recipe = { "1x Золотой слиток, 2x Зернистый шлифовальный камень" },
	},
	{
		min = 155,
		max = 164,
		craft = { "Зеленые железные поножи" },
		recipe = {
			"8x Железный слиток, 1x Тяжелый точильный камень, 1x Зеленая краска",
		},
	},
	{
		min = 165,
		max = 189,
		craft = { "Зеленые железные наручи" },
		recipe = { "6x Железный слиток, 1x Зеленая краска" },
	},
	{
		min = 190,
		max = 199,
		craft = { "Золотые чешуйчатые наручи" },
		recipe = { "5x Стальной слиток, 2x Тяжелый точильный камень" },
	},
	{
		min = 200,
		max = 204,
		craft = { "Жезл из истинного серебра" },
		recipe = {
			"1x Слиток истинного серебра, 1x Тяжелый точильный камень",
		},
	},
	{
		min = 205,
		max = 209,
		craft = { "Твердый шлифовальный камень" },
		recipe = { "4x Твердый камень" },
	},
	{
		min = 210,
		max = 224,
		craft = { "Тяжелые мифриловые латные рукавицы" },
		recipe = { "6x Мифриловый слиток, 4x Магическая ткань" },
	},
	{
		min = 225,
		max = 234,
		craft = { "Мифриловые чешуйчатые наручи" },
		recipe = { "8x Мифриловый слиток" },
	},
	{
		min = 235,
		max = 249,
		craft = { "Мифриловые шпоры", "Мифриловый капюшон" },
		recipe = {
			"4x Мифриловый слиток, 3x Твердый шлифовальный камень",
			"10x Мифриловый слиток, 6x Магическая ткань",
		},
	},
	{
		min = 250,
		max = 259,
		craft = { "Массивное точило" },
		recipe = { "1x Массивный камень" },
	},
	{
		min = 260,
		max = 274,
		craft = { "Ториевые наручи" },
		recipe = { "8x Ториевый слиток" },
	},
	{
		min = 275,
		max = 279,
		craft = { "Арканитовый жезл" },
		recipe = {
			"3x Арканитовый слиток, 1x Массивный шлифовальный камень",
		},
	},
	{
		min = 280,
		max = 289,
		craft = { "Имперские латные наручи" },
		recipe = { "12x Ториевый слиток" },
	},
	{
		min = 290,
		max = 299,
		craft = { "Ториевые сапоги", "Ториевый шлем" },
		recipe = {
			"12x Ториевый слиток, 8x Грубая кожа",
			"12x Ториевый слиток, 1x Звездный рубин",
		},
	},
	{
		min = 300,
		max = 304,
		craft = { "Грузило Скверны" },
		recipe = { "1x Слиток оскверненного железа, 1x Ткань Пустоты" },
	},
	{
		min = 305,
		max = 314,
		craft = { "Латный пояс из оскверненного железа" },
		recipe = { "4x Слиток оскверненного железа" },
	},
	{
		min = 315,
		max = 319,
		craft = { "Плетеные перчатки из оскверненного железа" },
		recipe = { "5x Слиток оскверненного железа" },
	},
	{
		min = 320,
		max = 324,
		craft = {
			"Латные сапоги из оскверненного железа",
			"Плетеные наручи из оскверненного железа",
		},
		recipe = {
			"6x Слиток оскверненного железа",
			"6x Слиток оскверненного железа",
		},
	},
	{
		min = 325,
		max = 329,
		craft = { "Простая охранная руна" },
		recipe = { "1x Адамантитовый слиток" },
	},
	{
		min = 330,
		max = 334,
		craft = { "Кираса из оскверненного железа" },
		recipe = { "10x Слиток оскверненного железа" },
	},
	{
		min = 335,
		max = 339,
		craft = { "Адамантитовый колун" },
		recipe = { "8x Адамантитовый слиток" },
	},
	{
		min = 340,
		max = 349,
		craft = { "Простой оберег" },
		recipe = { "1x Адамантитовый слиток" },
	},
	{
		min = 350,
		max = 359,
		craft = { "Кобальтовые сапоги", "Кобальтовый пояс" },
		recipe = { "4x Слиток кобальта", "4x Слиток кобальта" },
	},
	{
		min = 360,
		max = 369,
		craft = { "Кобальтовый треугольный щит", "Кобальтовые наручи" },
		recipe = { "4x Слиток кобальта", "4x Слиток кобальта" },
	},
	{
		min = 370,
		max = 374,
		craft = { "Кобальтовые ножные латы", "Кобальтовый шлем" },
		recipe = { "5x Слиток кобальта", "5x Слиток кобальта" },
	},
	{
		min = 375,
		max = 379,
		craft = { "Кобальтовые рукавицы" },
		recipe = { "5x Слиток кобальта" },
	},
	{
		min = 380,
		max = 384,
		craft = { "Шипастые кобальтовые сапоги" },
		recipe = { "7x Слиток кобальта" },
	},
	{
		min = 385,
		max = 389,
		craft = { "Выверенный сюрикен" },
		recipe = { "7x Слиток кобальта" },
	},
	{
		min = 390,
		max = 394,
		craft = { "Зубчатая кобальтовая секира" },
		recipe = { "10x Слиток кобальта" },
	},
	{
		min = 395,
		max = 399,
		craft = { "Сверкающий саронитовый пояс" },
		recipe = { "6x Слиток кобальта, 5x Слиток саронита" },
	},
	{
		min = 400,
		max = 404,
		craft = { "Рогатый кобальтовый шлем" },
		recipe = { "8x Слиток кобальта" },
	},
	{
		min = 405,
		max = 414,
		craft = { "Смертоносный саронитовый кортик" },
		recipe = { "7x Слиток саронита, 2x Кристаллизованный воздух" },
	},
	{
		min = 415,
		max = 424,
		craft = { "Извечная поясная пряжка" },
		recipe = {
			"4x Слиток саронита, 1x Извечная земля, 1x Извечная вода, 1x Извечная тьма",
		},
	},
	{
		min = 425,
		max = 429,
		craft = { "Титановая цепь для оружия" },
		recipe = { "2x Слиток саронита, 1x Титановый слиток" },
	},
	{
		min = 430,
		max = 434,
		craft = { "Саронитовый хауберк свирепости" },
		recipe = { "14x Слиток саронита, 1x Извечная земля" },
	},
	{
		min = 435,
		max = 439,
		craft = { "Устрашающие ножные латы" },
		recipe = { "14x Слиток саронита, 1x Извечная земля" },
	},
	{
		min = 440,
		max = 449,
		craft = {
			"Устрашающие ножные латы",
			"Закаленные сапоги из титановой стали",
			"Сверкающие сапоги из титановой стали",
			"Шипастые сапоги из титановой стали",
			"Осадный щит из титановой стали",
			"Закаленный шлем из титановой стали",
			"Сверкающий шлем из титановой стали",
			"Шипастый шлем из титановой стали",
			"Чародейский клинок из титановой стали",
		},
		recipe = {
			"14x Слиток саронита, 1x Извечная земля",
			"4x Слиток саронита, 3x Слиток титановой стали, 1x Ледяной шар",
			"4x Слиток саронита, 3x Слиток титановой стали, 1x Ледяной шар",
			"4x Слиток саронита, 3x Слиток титановой стали, 1x Ледяной шар",
			"4x Слиток саронита, 3x Слиток титановой стали, 1x Ледяной шар",
			"4x Слиток саронита, 4x Слиток титановой стали, 1x Ледяной шар",
			"4x Слиток саронита, 4x Слиток титановой стали, 1x Ледяной шар",
			"4x Слиток саронита, 4x Слиток титановой стали, 1x Ледяной шар",
			"6x Слиток титановой стали, 6x Абсолютная пыль, 2x Ледяной шар",
		},
	},
}

addonTable.getBlacksmithing = function(rank)
	for _, data in ipairs(craftingData) do
		if rank >= data.min and rank <= data.max then
			return data.craft, data.recipe
		end
	end
	return nil, nil -- Return nil if no match is found
end
