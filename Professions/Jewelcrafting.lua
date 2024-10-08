local addonName, addonTable = ...

local craftingData = {
	{
		min = 1,
		max = 29,
		craft = { "Тонкая медная проволока" },
		recipe = { "2x Медный слиток" },
	},
	{
		min = 30,
		max = 49,
		craft = { "Кольцо с тигровым глазом", "Малахитовая подвеска" },
		recipe = {
			"1x Тигровый глаз, 1x Тонкая медная проволока",
			"1x Малахит, 1x Тонкая медная проволока",
		},
	},
	{
		min = 50,
		max = 79,
		craft = {
			"Бронзовая оправа",
			"Кольцо с тигровым глазом",
			"Малахитовая подвеска",
		},
		recipe = {
			"2x Бронзовый слиток",
			"1x Тигровый глаз, 1x Тонкая медная проволока",
			"1x Малахит, 1x Тонкая медная проволока",
		},
	},
	{
		min = 80,
		max = 99,
		craft = {
			"Серебряное кольцо могущества",
			"Мрачное кольцо",
			"Простое жемчужное кольцо",
		},
		recipe = {
			"2x Серебряный слиток",
			"1x Бронзовая оправа, 2x Камень теней, 2x Тонкая медная проволока",
			"1x Маленькая блестящая жемчужина, 1x Бронзовая оправа, 2x Медный слиток",
		},
	},
	{
		min = 100,
		max = 109,
		craft = {
			"Кольцо сумеречных призраков",
			"Серебряное кольцо могущества",
			"Мрачное кольцо",
			"Простое жемчужное кольцо",
		},
		recipe = {
			"2x Камень теней, 2x Бронзовый слиток",
			"2x Серебряный слиток",
			"1x Бронзовая оправа, 2x Камень теней, 2x Тонкая медная проволока",
			"1x Маленькая блестящая жемчужина, 1x Бронзовая оправа, 2x Медный слиток",
		},
	},
	{
		min = 110,
		max = 119,
		craft = {
			"Массивная каменная статуя",
			"Кольцо сумеречных призраков",
			"Серебряное кольцо могущества",
		},
		recipe = {
			"8x Тяжелый камень",
			"2x Камень теней, 2x Бронзовый слиток",
			"2x Серебряный слиток",
		},
	},
	{
		min = 120,
		max = 149,
		craft = {
			"Подвеска Агатового Щита",
			"Массивная каменная статуя",
			"Кольцо сумеречных призраков",
		},
		recipe = {
			"1x Моховой агат, 1x Бронзовая оправа",
			"8x Тяжелый камень",
			"2x Камень теней, 2x Бронзовый слиток",
		},
	},
	{
		min = 150,
		max = 179,
		craft = { "Мифриловая филигрань" },
		recipe = { "2x Мифриловый слиток" },
	},
	{
		min = 180,
		max = 199,
		craft = { "Чеканное кольцо из истинного серебра" },
		recipe = { "1x Слиток истинного серебра, 2x Мифриловая филигрань" },
	},
	{
		min = 200,
		max = 219,
		craft = { "Цитриновое кольцо быстрого исцеления" },
		recipe = { "1x Цитрин, 2x Мифриловый слиток" },
	},
	{
		min = 220,
		max = 224,
		craft = {
			"Аквамариновая подвеска воина",
			"Цитриновое кольцо быстрого исцеления",
		},
		recipe = {
			"1x Аквамарин, 3x Мифриловая филигрань",
			"1x Цитрин, 2x Мифриловый слиток",
		},
	},
	{
		min = 225,
		max = 244,
		craft = { "Ториевая оправа" },
		recipe = { "1x Ториевый слиток" },
	},
	{
		min = 245,
		max = 259,
		craft = { "Рубиновая подвеска огня" },
		recipe = { "1x Звездный рубин, 1x Ториевая оправа" },
	},
	{
		min = 260,
		max = 279,
		craft = { "Простое опаловое кольцо" },
		recipe = { "1x Большой опал, 1x Ториевая оправа" },
	},
	{
		min = 280,
		max = 289,
		craft = {
			"Светящееся ториевое кольцо",
			"Сапфировая подвеска зимней ночи",
			"Кольцо нападения",
		},
		recipe = {
			"2x Азеротский алмаз, 1x Ториевая оправа",
			"1x Синий сапфир, 1x Субстанция Нежити, 1x Ториевая оправа",
			"1x Мощный амулет, 1x Субстанция Земли, 1x Ториевая оправа",
		},
	},
	{
		min = 290,
		max = 299,
		craft = {
			"Изумрудное кольцо льва",
			"Светящееся ториевое кольцо",
			"Сапфировая подвеска зимней ночи",
			"Кольцо нападения",
		},
		recipe = {
			"2x Огромный изумруд, 1x Ториевая оправа",
			"2x Азеротский алмаз",
			"1x Синий сапфир, 1x Субстанция Нежити, 1x Ториевая оправа",
			"1x Мощный амулет, 1x Субстанция Земли, 1x Ториевая оправа",
		},
	},
	{
		min = 300,
		max = 319,
		craft = {
			"Каплевидный кровавый гранат",
			"Сверкающий золотой дренит",
			"Цельный лазурный лунный камень",
			"Светозарный хризолит",
			"Покрытый письменами пламенный спессарит",
			"Светящийся сумрачный дренит",
			"Радужный черный бриллиант",
		},
		recipe = {
			"1x Кровавый гранат",
			"1x Золотой дренит",
			"1x Лазурный лунный камень",
			"1x Хризолит",
			"1x Пламенный спессарит",
			"1x Сумрачный дренит",
			"1x Черный алмаз",
		},
	},
	{
		min = 320,
		max = 324,
		craft = {
			"Рельефный кровавый гранат",
			"Яркий кровавый гранат",
			"Зазубренный хризолит",
			"Искрящийся лазурный лунный камень",
			"Искристый золотой дренит",
			"Светоносный пламенный спессарит",
			"Королевский сумрачный дренит",
		},
		recipe = {
			"1x Кровавый гранат",
			"1x Кровавый гранат",
			"1x Хризолит",
			"1x Лазурный лунный камень",
			"1x Золотой дренит",
			"1x Пламенный спессарит",
			"1x Сумрачный дренит",
		},
	},
	{
		min = 325,
		max = 339,
		craft = {
			"Переменчивый адамантит",
			"Прочный золотой дренит",
			"Гладкий золотой дренит",
			"Царственный сумрачный дренит",
			"Ослепительный хризолит",
			"Хрупкий кровавый гранат",
			"Мощный пламенный спессарит",
			"Великий золотой дренит",
			"Уравновешенный сумрачный дренит",
			"Заряженный сумрачный дренит",
			"Блестящий лазурный лунный камень",
			"Сокрытый пламенный спессарит",
			"Гибельный пламенный спессарит",
		},
		recipe = {
			"4x Адамантитовый порошок, 1x Изначальная земля",
			"1x Золотой дренит",
			"1x Золотой дренит",
			"1x Сумрачный дренит",
			"1x Хризолит",
			"1x Кровавый гранат",
			"1x Пламенный спессарит",
			"1x Золотой дренит",
			"1x Сумрачный дренит",
			"1x Сумрачный дренит",
			"1x Лазурный лунный камень",
			"1x Пламенный спессарит",
			"1x Пламенный спессарит",
		},
	},
	{
		min = 340,
		max = 349,
		craft = {
			"Тяжелое адамантитовое кольцо",
			"Прочный золотой дренит",
			"Гладкий золотой дренит",
			"Царственный сумрачный дренит",
			"Ослепительный хризолит",
			"Хрупкий кровавый гранат",
			"Мощный пламенный спессарит",
			"Великий золотой дренит",
			"Уравновешенный сумрачный дренит",
			"Заряженный сумрачный дренит",
			"Блестящий лазурный лунный камень",
			"Сокрытый пламенный спессарит",
			"Гибельный пламенный спессарит",
		},
		recipe = {
			"1x Адамантитовый слиток, 1x Переменчивый адамантит",
			"1x Золотой дренит",
			"1x Золотой дренит",
			"1x Сумрачный дренит",
			"1x Хризолит",
			"1x Кровавый гранат",
			"1x Пламенный спессарит",
			"1x Золотой дренит",
			"1x Сумрачный дренит",
			"1x Сумрачный дренит",
			"1x Лазурный лунный камень",
			"1x Пламенный спессарит",
			"1x Пламенный спессарит",
		},
	},
	{
		min = 350,
		max = 394,
		craft = {
			"Рельефный кровавый камень",
			"Яркий кровавый камень",
			"Изысканный кровавый камень",
			"Блистательный кровавый камень",
			"Растрескавшийся кровавый камень",
			"Ясный кровавый камень",
			"Рунический кровавый камень",
			"Изящный кровавый камень",
			"Блестящий кальцедоний",
			"Цельный кальцедоний",
			"Искрящийся кальцедоний",
			"Грозовой кальцедоний",
			"Ослепительный темный нефрит",
			"Отверделый темный нефрит",
			"Усиленный темный нефрит",
			"Мощный темный нефрит",
			"Замысловатый темный нефрит",
			"Зазубренный темный нефрит",
			"Лучистый темный нефрит",
			"Смутный темный нефрит",
			"Непрозрачный темный нефрит",
			"Светозарный темный нефрит",
			"Темный нефрит провидца",
			"Раздробленный темный нефрит",
			"Сияющий темный нефрит",
			"Неизменный темный нефрит",
			"Расколотый темный нефрит",
			"Плотный темный нефрит",
			"Вневременной темный нефрит",
			"Померкший темный нефрит",
			"Насыщенный темный нефрит",
			"Идеально ограненный огромный цитрин",
			"Огромный цитрин воителя",
			"Смертоносный огромный цитрин",
			"Огромный цитрин проворства",
			"Надежный огромный цитрин",
			"Наделенный силой огромный цитрин",
			"Гравированный огромный цитрин",
			"Броский огромный цитрин",
			"Мерцающий огромный цитрин",
			"Блистающий огромный цитрин",
			"Покрытый письменами огромный цитрин",
			"Прозрачный огромный цитрин",
			"Светоносный огромный цитрин",
			"Могущественный огромный цитрин",
			"Нетронутый огромный цитрин",
			"Тревожный огромный цитрин",
			"Затвердевший огромный цитрин",
			"Глянцевый огромный цитрин",
			"Стойкий огромный цитрин",
			"Застывший огромный цитрин",
			"Сокрытый огромный цитрин",
			"Гибельный огромный цитрин",
			"Сбалансированный сумрачный кристалл",
			"Сумрачный кристалл защитника",
			"Светящийся сумрачный кристалл",
			"Сумрачный кристалл стража",
			"Заряженный сумрачный кристалл",
			"Таинственный сумрачный кристалл",
			"Всевластный сумрачный кристалл",
			"Очищенный сумрачный кристалл",
			"Монарший сумрачный кристалл",
			"Королевский сумрачный кристалл",
			"Изменчивый сумрачный кристалл",
			"Царственный сумрачный кристалл",
			"Непрочный сумрачный кристалл",
			"Сверкающий солнечный хрусталь",
			"Мистический солнечный хрусталь",
			"Мягкий солнечный хрусталь",
			"Прочный солнечный хрусталь",
			"Гладкий солнечный хрусталь",
			"Матовый солнечный хрусталь",
		},
		recipe = {
			"1x Кровавый камень",
			"1x Кровавый камень",
			"1x Кровавый камень",
			"1x Кровавый камень",
			"1x Кровавый камень",
			"1x Кровавый камень",
			"1x Кровавый камень",
			"1x Кровавый камень",
			"1x Кальцедоний",
			"1x Кальцедоний",
			"1x Кальцедоний",
			"1x Кальцедоний",
			"1x Темный нефрит",
			"1x Темный нефрит",
			"1x Темный нефрит",
			"1x Темный нефрит",
			"1x Темный нефрит",
			"1x Темный нефрит",
			"1x Темный нефрит",
			"1x Темный нефрит",
			"1x Темный нефрит",
			"1x Темный нефрит",
			"1x Темный нефрит",
			"1x Темный нефрит",
			"1x Темный нефрит",
			"1x Темный нефрит",
			"1x Темный нефрит",
			"1x Темный нефрит",
			"1x Темный нефрит",
			"1x Темный нефрит",
			"1x Темный нефрит",
			"1x Огромный цитрин",
			"1x Огромный цитрин",
			"1x Огромный цитрин",
			"1x Огромный цитрин",
			"1x Огромный цитрин",
			"1x Огромный цитрин",
			"1x Огромный цитрин",
			"1x Огромный цитрин",
			"1x Огромный цитрин",
			"1x Огромный цитрин",
			"1x Огромный цитрин",
			"1x Огромный цитрин",
			"1x Огромный цитрин",
			"1x Огромный цитрин",
			"1x Огромный цитрин",
			"1x Огромный цитрин",
			"1x Огромный цитрин",
			"1x Огромный цитрин",
			"1x Огромный цитрин",
			"1x Огромный цитрин",
			"1x Огромный цитрин",
			"1x Огромный цитрин",
			"1x Сумрачный кристалл",
			"1x Сумрачный кристалл",
			"1x Сумрачный кристалл",
			"1x Сумрачный кристалл",
			"1x Сумрачный кристалл",
			"1x Сумрачный кристалл",
			"1x Сумрачный кристалл",
			"1x Сумрачный кристалл",
			"1x Сумрачный кристалл",
			"1x Сумрачный кристалл",
			"1x Сумрачный кристалл",
			"1x Сумрачный кристалл",
			"1x Сумрачный кристалл",
			"1x Солнечный хрусталь",
			"1x Солнечный хрусталь",
			"1x Солнечный хрусталь",
			"1x Солнечный хрусталь",
			"1x Солнечный хрусталь",
			"1x Солнечный хрусталь",
		},
	},
	{
		min = 395,
		max = 399,
		craft = {
			"Кольцо кровавого камня",
			"Амулет с кристаллом кальцедония",
			"Ожерелье с кристаллом цитрина",
			"Кольцо Солнечного Камня",
		},
		recipe = {
			"1x Кровавый камень, 2x Кристаллизованная земля",
			"1x Кальцедоний, 2x Кристаллизованная земля",
			"1x Огромный цитрин, 2x Кристаллизованная земля",
			"1x Солнечный хрусталь, 2x Кристаллизованная земля",
		},
	},
	{
		min = 420,
		max = 424,
		craft = {
			"Ослепительный лесной изумруд",
			"Сбалансированный сумеречный опал",
			"Яркий алый рубин",
			"Сверкающее сияние осени",
			"Нетронутый императорский топаз",
			"Искрящийся небесный сапфир",
			"Зачарованная слеза",
		},
		recipe = {
			"1x Лесной изумруд",
			"1x Сумеречный опал",
			"1x Алый рубин",
			"1x Сияние осени",
			"1x Императорский топаз",
			"1x Небесный сапфир",
			"1x Слеза Сирены, 4x Абсолютная пыль",
		},
	},
	{
		min = 425,
		max = 449,
		craft = {
			"Стремительный алмаз небесного сияния",
			"Неустанный алмаз звездного сияния",
			"Хаотический алмаз небесного сияния",
			"Разрушительный алмаз небесного огня",
			"Лучезарный алмаз небесного сияния",
			"Угасающий алмаз небесного сияния",
			"Загадочный алмаз небесного огня",
			"Жалкий алмаз звездного сияния",
			"Бездушный алмаз небесного сияния",
			"Оживляющий алмаз небесного сияния",
			"Громовой алмаз небесного сияния",
			"Незыблемый алмаз землеправителя",
			"Могущественный алмаз земной бури",
			"Алмаз строгого землеправителя",
			"Лучащийся алмаз землеправителя",
			"Нерушимый алмаз землеправителя",
			"Вечный алмаз землеправителя",
			"Провидческий алмаз землеправителя",
			"Живительный алмаз землеправителя",
			"Алмаз жестокого землеправителя",
			"Заостренный алмаз Землекрушителя",
		},
		recipe = {
			"1x Алмаз небесного сияния",
			"1x Алмаз небесного сияния",
			"1x Алмаз небесного сияния",
			"1x Алмаз небесного сияния",
			"1x Алмаз небесного сияния",
			"1x Алмаз небесного сияния",
			"1x Алмаз небесного сияния",
			"1x Алмаз небесного сияния",
			"1x Алмаз небесного сияния",
			"1x Алмаз небесного сияния",
			"1x Алмаз небесного сияния",
			"1x Алмаз землеправителя",
			"1x Алмаз землеправителя",
			"1x Алмаз землеправителя",
			"1x Алмаз землеправителя",
			"1x Алмаз землеправителя",
			"1x Алмаз землеправителя",
			"1x Алмаз землеправителя",
			"1x Алмаз землеправителя",
			"1x Алмаз землеправителя",
			"1x Алмаз землеправителя",
		},
	},
}

addonTable.getJewelcrafting = function(rank)
	for _, data in ipairs(craftingData) do
		if rank >= data.min and rank <= data.max then
			return data.craft, data.recipe
		end
	end
	return nil, nil -- Return nil if no match is found
end
