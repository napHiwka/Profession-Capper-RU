local addonName, addonTable = ...

local craftingData = {
	{
		min = 1,
		max = 19,
		craft = {
			"Хлеб с пряностями",
			"Яйцо с травами",
			"Рецепт волчатины на углях",
			"Рецепт жареной кабанятины",
			"Блестящая рыбка",
			"Хрустящее крылышко летучей мыши",
			"Стейк из рысятины",
			"Скользкокожая скумбрия",
			"Жареная вырезка лунного оленя",
		},
		recipe = {
			"1x Простая мука, 1x Пряные травы",
			"1x Небольшое яйцо",
			"1x Жилистая волчатина",
			"1x Кусок кабанины",
			"1x Сырая блестящая рыбка",
			"1x Мясистое крыло летучей мыши",
			"1x Рысье мясо",
			"1x Сырая скользкокожая скумбрия",
			"1x Вырезка лунного оленя",
		},
	},
	{
		min = 20,
		max = 39,
		craft = {
			"Хлеб с пряностями",
			"Десерт из скорпида",
			"Яйцо с травами",
			"Рецепт волчатины на углях",
			"Рецепт жареной кабанятины",
			"Блестящая рыбка",
			"Хрустящее крылышко летучей мыши",
			"Стейк из рысятины",
			"Скользкокожая скумбрия",
			"Жареная вырезка лунного оленя",
		},
		recipe = {
			"1x Простая мука, 1x Пряные травы",
			"1x Жало скорпида",
			"1x Небольшое яйцо",
			"1x Жилистая волчатина",
			"1x Кусок кабанины",
			"1x Сырая блестящая рыбка",
			"1x Мясистое крыло летучей мыши",
			"1x Рысье мясо",
			"1x Сырая скользкокожая скумбрия",
			"1x Вырезка лунного оленя",
		},
	},
	{
		min = 40,
		max = 44,
		craft = {
			"Десерт из скорпида",
			"Яйцо с травами",
			"Рецепт волчатины на углях",
			"Рецепт жареной кабанятины",
			"Блестящая рыбка",
			"Хрустящее крылышко летучей мыши",
			"Стейк из рысятины",
			"Скользкокожая скумбрия",
			"Жареная вырезка лунного оленя",
		},
		recipe = {
			"1x Жало скорпида",
			"1x Небольшое яйцо",
			"1x Жилистая волчатина",
			"1x Кусок кабанины",
			"1x Сырая блестящая рыбка",
			"1x Мясистое крыло летучей мыши",
			"1x Рысье мясо",
			"1x Сырая скользкокожая скумбрия",
			"1x Вырезка лунного оленя",
		},
	},
	{
		min = 45,
		max = 49,
		craft = {
			"Копченая медвежатина",
			"Десерт из скорпида",
			"Волчатина с пряностями",
		},
		recipe = {
			"1x Медвежатина",
			"1x Жало скорпида",
			"1x Жилистая волчатина",
		},
	},
	{
		min = 50,
		max = 69,
		craft = {
			"Копченая медвежатина",
			"Закуска из летучей мыши",
			"Десерт из скорпида",
			"Стейк из койота",
			"Отварные мидии",
			"Рецепт пирожка из печени жутеклыка",
			"Деликатес из бешенки",
			"Острозубый илистый луциан",
			"Радужный тунец",
			"Похлебка из долгонога",
			"Волчатина с пряностями",
		},
		recipe = {
			"1x Медвежатина",
			"1x Плоть летучей мыши",
			"1x Жало скорпида",
			"1x Мясо койота",
			"1x Мясо моллюска, 1x Освежающая ключевая вода",
			"1x Печень кровоклыка",
			"1x Сырая бешенка",
			"1x Сырой острозубый илистый луциан",
			"1x Сырой радужный тунец",
			"1x Мясо долгонога",
			"1x Жилистая волчатина",
		},
	},
	{
		min = 70,
		max = 79,
		craft = {
			"Копченая медвежатина",
			"Десерт из скорпида",
			"Стейк из койота",
			"Отварные мидии",
			"Рецепт пирожка из печени жутеклыка",
			"Деликатес из бешенки",
			"Острозубый илистый луциан",
			"Радужный тунец",
			"Похлебка из долгонога",
		},
		recipe = {
			"1x Медвежатина",
			"1x Жало скорпида",
			"1x Мясо койота",
			"1x Мясо моллюска, 1x Освежающая ключевая вода",
			"1x Печень кровоклыка",
			"1x Сырая бешенка",
			"1x Сырой острозубый илистый луциан",
			"1x Сырой радужный тунец",
			"1x Мясо долгонога",
		},
	},
	{
		min = 80,
		max = 109,
		craft = {
			"Копченый шалфокунь",
			"Пирожок с крабами",
			"Стейк из койота",
			"Отварные мидии",
			"Рецепт пирожка из печени жутеклыка",
			"Деликатес из бешенки",
			"Острозубый илистый луциан",
			"Радужный тунец",
			"Похлебка из долгонога",
		},
		recipe = {
			"1x Сырой шалфокунь",
			"1x Крабовое мясо",
			"1x Мясо койота",
			"1x Мясо моллюска, 1x Освежающая ключевая вода",
			"1x Печень кровоклыка",
			"1x Сырая бешенка",
			"1x Сырой острозубый илистый луциан",
			"1x Сырой радужный тунец",
			"1x Мясо долгонога",
		},
	},
	{
		min = 110,
		max = 129,
		craft = {
			"Большой медвежий стейк",
			"Пирожок из паучатины",
			"Копченый шалфокунь",
			"Пирожок с крабами",
			"Стейк из койота",
			"Отварные мидии",
			"Рецепт пирожка из печени жутеклыка",
			"Деликатес из бешенки",
			"Острозубый илистый луциан",
			"Радужный тунец",
			"Похлебка из долгонога",
		},
		recipe = {
			"1x Большой медвежий стейк",
			"2x Липкая паучья лапка",
			"1x Сырой шалфокунь",
			"1x Крабовое мясо",
			"1x Мясо койота",
			"1x Мясо моллюска, 1x Освежающая ключевая вода",
			"1x Печень кровоклыка",
			"1x Сырая бешенка",
			"1x Сырой острозубый илистый луциан",
			"1x Сырой радужный тунец",
			"1x Мясо долгонога",
		},
	},
	{
		min = 130,
		max = 139,
		craft = {
			"Подозрительно вкусный омлет",
			"Острая отбивная из львятины",
			"Постный стейк из волчатины",
			"Мидии по-гоблински",
			"Суп из кроколиска",
			"Большой медвежий стейк",
			"Пирожок из паучатины",
			"Копченый шалфокунь",
			"Пирожок с крабами",
			"Стейк из койота",
			"Отварные мидии",
			"Рецепт пирожка из печени жутеклыка",
			"Деликатес из бешенки",
			"Острозубый илистый луциан",
			"Радужный тунец",
			"Похлебка из долгонога",
		},
		recipe = {
			"1x Яйцо ящера",
			"1x Мясо льва",
			"1x Постный волчий бок",
			"1x Пикантное мясо моллюска",
			"1x Нежное мясо кроколиска",
			"1x Большой медвежий стейк",
			"2x Липкая паучья лапка",
			"1x Сырой шалфокунь",
			"1x Крабовое мясо",
			"1x Мясо койота",
			"1x Мясо моллюска, 1x Освежающая ключевая вода",
			"1x Печень кровоклыка",
			"1x Сырая бешенка",
			"1x Сырой острозубый илистый луциан",
			"1x Сырой радужный тунец",
			"1x Мясо долгонога",
		},
	},
	{
		min = 140,
		max = 174,
		craft = {
			"Подозрительно вкусный омлет",
			"Острая отбивная из львятины",
			"Постный стейк из волчатины",
			"Мидии по-гоблински",
			"Суп из кроколиска",
			"Большой медвежий стейк",
			"Пирожок из паучатины",
		},
		recipe = {
			"1x Яйцо ящера",
			"1x Мясо льва",
			"1x Постный волчий бок",
			"1x Пикантное мясо моллюска",
			"1x Нежное мясо кроколиска",
			"1x Большой медвежий стейк",
			"2x Липкая паучья лапка",
		},
	},
	{
		min = 175,
		max = 224,
		craft = {
			"Жареный ящер",
			"Жареное крылышко канюка",
			"Деликатес из шалфокуня",
			"Каменношкурая треска",
			"Десерт из мертвечины",
			"Гигантский жареный моллюск",
			"Мифрилоголовая форель",
			"Нежный черепаховый суп",
			"Джунглевая похлебка",
			"Загадочная похлебка",
		},
		recipe = {
			"1x Плоть ящера",
			"1x Крыло канюка",
			"1x Большой сырой шалфокунь",
			"1x Сырая каменношкурая треска",
			"1x Таинственное мясо",
			"1x Мясо гигантского моллюска",
			"1x Сырая мифрилоголовая форель",
			"1x Черепашье мясо",
			"1x Мясо тигра, 1x Освежающая ключевая вода",
			"1x Таинственное мясо, 1x Мех дворфийского портера",
		},
	},
	{
		min = 225,
		max = 249,
		craft = {
			"Чудовищный омлет",
			"Сочный стейк из волчатины",
			"Острое крабовое чили",
			"Мощь-рыба в кляре",
			"Филе краснобородки",
			"Пятнистый желтохвост",
		},
		recipe = {
			"1x Гигантское яйцо",
			"1x Нежная волчатина",
			"1x Нежное крабовое мясо",
			"1x Сырая блестящая мощь-рыба",
			"1x Сырая краснобородка",
			"1x Сырой пятнистый желтохвост",
		},
	},
	{
		min = 250,
		max = 284,
		craft = {
			"Сочная котлета из медвежатины",
			"Кебаб из медвежатины на углях",
			"Вареный солнечный лосось",
		},
		recipe = {
			"1x Медвежий бок",
			"1x Медвежий бок",
			"1x Сырой солнечный лосось",
		},
	},
	{
		min = 285,
		max = 299,
		craft = {
			"Копченые пустынные клецки",
			"Печеный лосось",
			"Стейк из мощь-рыбы",
			"Похлебка из омаров",
			"Десерт из корня рун-тум",
		},
		recipe = {
			"1x Мясо песчаного червя",
			"1x Сырой белочешуйный лосось",
			"1x Крупная сырая мощь-рыба",
			"1x Темноклешневый омар, 1x Освежающая ключевая вода",
			"1x Корень Рун-Тум",
		},
	},
	{
		min = 300,
		max = 324,
		craft = {
			"Сосиска из мяса опустошителя",
			"Закуска из канюка",
			"Копченая форель",
			"Лакомство из сквернохвоста",
			"Зажаренный на открытом огне афиохаракс",
			"'Кит и кот'",
		},
		recipe = {
			"1x Плоть опустошителя",
			"1x Мясо канюка",
			"1x Колючеусая форель",
			"1x Пятнистый сквернохвост",
			"1x Зубатка афиохаракс",
			"1x Мясо канюка",
		},
	},
	{
		min = 325,
		max = 334,
		craft = {
			"Стейк из талбука",
			"Жареное мясо копытня",
			"Котлета из прыгуаны",
		},
		recipe = {
			"1x Мясо дикого талбука",
			"1x Мясо копытня",
			"1x Плоть прыгуаны",
		},
	},
	{
		min = 335,
		max = 349,
		craft = {
			"Стейк из талбука",
			"Жареное мясо копытня",
			"Котлета из прыгуаны",
			"Ребрышки из Мок'Натала",
			"Поджаристый змей",
		},
		recipe = {
			"1x Мясо дикого талбука",
			"1x Мясо копытня",
			"1x Плоть прыгуаны",
			"1x Ребра ящера",
			"1x Змеиное мясо",
		},
	},
	{
		min = 350,
		max = 374,
		craft = {
			"Печеный морской дьявол",
			"Кушанье из мамонта",
			"Вареная медуза",
			"Копченый лосось",
			"Маринованная клыкозубая сельдь",
			"Подкаменщик-гриль",
			"Сосиски из люторога",
			"Деликатес из змея",
			"Жареный ворг",
			"Стейк из черпорога",
			"Северная похлебка",
			"Копченый камнеперый окунь",
			"Костечешуйный луциан - гриль",
			"Соте из бычков",
			"Даларанская похлебка из моллюсков",
			"Рак с пряностями",
			"Рыбацкая услада",
			"Жареная форель",
		},
		recipe = {
			"1x Королевский морской дьявол",
			"1x Кусок мяса мамонта",
			"1x Медуза",
			"1x Ледниковый лосось",
			"1x Клыкозубая сельдь",
			"1x Ракушечный подкаменщик",
			"1x Мясо люторога",
			"1x Мясо червя",
			"1x Окорок ворга",
			"1x Бок черпорога",
			"1x Охлажденное мясо",
			"1x Камнеперый морской окунь",
			"1x Костечешуйный луциан",
			"1x Бочкоголовый бычок",
			"2x Сочное мясо моллюска",
			"1x Разъяренный речной рак",
			"1x Огромный пятнистый сквернохвост",
			"1x Громадная колючеусая форель",
		},
	},
	{
		min = 375,
		max = 399,
		craft = {
			"Кунгалуш",
			"Печеный морской дьявол",
			"Кушанье из мамонта",
			"Вареная медуза",
			"Копченый лосось",
			"Маринованная клыкозубая сельдь",
			"Подкаменщик-гриль",
			"Сосиски из люторога",
			"Деликатес из змея",
			"Жареный ворг",
			"Стейк из черпорога",
			"Даларанская похлебка из моллюсков",
		},
		recipe = {
			"2x Тундровая ягода, 1x Снежная слива с чабером",
			"1x Королевский морской дьявол",
			"1x Кусок мяса мамонта",
			"1x Медуза",
			"1x Ледниковый лосось",
			"1x Клыкозубая сельдь",
			"1x Ракушечный подкаменщик",
			"1x Мясо люторога",
			"1x Мясо червя",
			"1x Окорок ворга",
			"1x Бок черпорога",
			"2x Сочное мясо моллюска",
		},
	},
	{
		min = 400,
		max = 424,
		craft = {
			"Подкопченная дракоперая рыба-ангел",
			"Филе дракоперой рыбы-ангела",
			"Подкопченный стейк из ворга",
			"Пережаренное мясо ворга",
			"Стейк из каракатицы",
			"Лосось с дымком",
			"Сочное мясо люторога",
			"Стейк из королевского ската",
			"Вареный северный подкаменщик",
			"Вареный северный подкаменщик",
			"Синяя медуза с пряностями",
			"Острая жареная сельдь",
			"Завтрак следопыта",
		},
		recipe = {
			"1x Дракоперая рыба-ангел, 1x Северные пряности",
			"1x Дракоперая рыба-ангел, 1x Северные пряности",
			"1x Окорок ворга, 1x Северные пряности",
			"1x Окорок ворга, 1x Северные пряности",
			"1x Каракатица лунного сияния, 1x Северные пряности",
			"1x Ледниковый лосось, 1x Северные пряности",
			"1x Мясо люторога, 1x Северные пряности",
			"1x Королевский морской дьявол, 1x Северные пряности",
			"1x Ракушечный подкаменщик, 1x Северные пряности",
			"1x Кусок мяса мамонта, 1x Северные пряности",
			"1x Медуза, 1x Северные пряности",
			"1x Клыкозубая сельдь, 1x Северные пряности",
			"1x Бок черпорога, 1x Северные пряности",
		},
	},
	{
		min = 425,
		max = 449,
		craft = {
			"Пир для великанов",
			"Пир для карликов",
			"Подкопченная дракоперая рыба-ангел",
			"Филе дракоперой рыбы-ангела",
			"Подкопченный стейк из ворга",
			"Пережаренное мясо ворга",
			"Стейк из каракатицы",
			"Лосось с дымком",
			"Сочное мясо люторога",
			"Стейк из королевского ската",
			"Вареный северный подкаменщик",
			"Пряное лакомство из мамонта",
			"Синяя медуза с пряностями",
			"Острая жареная сельдь",
			"Завтрак следопыта",
		},
		recipe = {
			"1x Северные пряности, 2x Кусок мяса мамонта, 2x Глубоководное чудо-юдо, 2x Камнеперый морской окунь",
			"1x Северные пряности, 2x Ледниковый лосось, 2x Медуза, 2x Мясо люторога",
			"1x Дракоперая рыба-ангел, 1x Северные пряности",
			"1x Дракоперая рыба-ангел, 1x Северные пряности",
			"1x Окорок ворга, 1x Северные пряности",
			"1x Окорок ворга, 1x Северные пряности",
			"1x Каракатица лунного сияния, 1x Северные пряности",
			"1x Ледниковый лосось, 1x Северные пряности",
			"1x Мясо люторога, 1x Северные пряности",
			"1x Королевский морской дьявол, 1x Северные пряности",
			"1x Ракушечный подкаменщик, 1x Северные пряности",
			"1x Кусок мяса мамонта, 1x Северные пряности",
			"1x Медуза, 1x Северные пряности",
			"1x Клыкозубая сельдь, 1x Северные пряности",
			"1x Бок черпорога, 1x Северные пряности",
		},
	},
}

addonTable.getCooking = function(rank)
	for _, data in ipairs(craftingData) do
		if rank >= data.min and rank <= data.max then
			return data.craft, data.recipe
		end
	end
	return nil, nil -- Return nil if no match is found
end
