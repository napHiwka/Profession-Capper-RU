addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getLeatherworkingCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 20 then -- 1-20
        shouldCraft = {
            "Тонкая кожа",
            "Накладки из тонкой кожи"
        };
        shouldCraftRecipe = {
            "3x Обрывки кожи",---Тонкая кожа
            "1x Тонкая кожа"------------Накладки из тонкой кожи
        };
    elseif rank > 19 and rank < 30 then -- 20-29
        shouldCraft = {"Накладки из тонкой кожи"};
        shouldCraftRecipe = {"1x Тонкая кожа"};
    elseif rank > 29 and rank < 50 then -- 30-49
        shouldCraft = {"Рукодельный кожаный плащ"};
        shouldCraftRecipe = {"2x Тонкая кожа, 1x Грубая нить"};
    elseif rank > 49 and rank < 55 then -- 50-54
        shouldCraft = {"Небольшой кожаный подсумок"};
        shouldCraftRecipe = {"3x Тонкая кожа, 4x Грубая нить"};
    elseif rank > 54 and rank < 85 then -- 55-84
        shouldCraft = {"Тисненые кожаные перчатки"};
        shouldCraftRecipe = {"3x Тонкая кожа, 2x Грубая нить"};
    elseif rank > 84 and rank < 100 then -- 85-99
        shouldCraft = {"Тонкий кожаный пояс"};
        shouldCraftRecipe = {"6x Тонкая кожа, 2x Грубая нить"};
    elseif rank > 99 and rank < 115 then -- 100-114
        shouldCraft = {"Обработанная средняя шкура"}; -- Alternative [Medium Armor Kit]
        shouldCraftRecipe = {"1x Средняя шкура, 1x Соль"};
    elseif rank > 114 and rank < 130 then -- 115-129
        shouldCraft = {"Темные кожаные сапоги"};
        shouldCraftRecipe = {"4x Жесткая кожа, 2x Тонкая нить, 1x Серая краска"};
    elseif rank > 129 and rank < 145 then -- 130-144
        shouldCraft = {
            "Темный кожаный пояс",
            "Темный кожаный плащ"
        };
        shouldCraftRecipe = {
            "1x Тонкий кожаный пояс, 1x Обработанная средняя шкура, 2x Тонкая нить, 1x Серая краска", --- Темный кожаный пояс
            "8x Жесткая кожа, 1x Тонкая нить, 1x Серая краска" ----------------------------- Темный кожаный плащ
        };
    elseif rank > 144 and rank < 150 then -- 145-149
        shouldCraft = {"Кожаные перчатки жителя холмов"};
        shouldCraftRecipe = {"14x Жесткая кожа, 4x Тонкая нить"};
    elseif rank > 149 and rank < 155 then -- 150-154
        shouldCraft = {"Мяч из толстой кожи"};
        shouldCraftRecipe = {"2x Толстая кожа, 1x Тонкая нить"};
    elseif rank > 154 and rank < 165 then -- 155-164
        shouldCraft = {"Обработанная тяжелая шкура"};
        shouldCraftRecipe = {"1x Тяжелая шкура, 3x Соль"};
    elseif rank > 164 and rank < 180 then -- 165-179
        shouldCraft = {"Накладки из толстой кожи"};
        shouldCraftRecipe = {"5x Толстая кожа, 1x Тонкая нить"};
    elseif rank > 179 and rank < 190 then -- 180-189
        shouldCraft = {"Варварские наплечники"};
        shouldCraftRecipe = {"8x Толстая кожа, 1x Обработанная тяжелая шкура, 2x Тонкая нить"};
    elseif rank > 189 and rank < 200 then -- 190-199
        shouldCraft = {"Перчатки стража"};
        shouldCraftRecipe = {"4x Толстая кожа, 1x Обработанная тяжелая шкура, 1x Шелковая нить"};
    elseif rank > 199 and rank < 205 then -- 200-204
        shouldCraft = {"Накладки из толстой кожи"};
        shouldCraftRecipe = {"5x Плотная кожа, 1x Шелковая нить"};
    elseif rank > 204 and rank < 235 then -- 205-234
        shouldCraft = {"Ночная головная повязка"};
        shouldCraftRecipe = {"5x Плотная кожа, 2x Шелковая нить"};
    elseif rank > 234 and rank < 250 then -- 235-249
        shouldCraft = {"Ночные штаны"};
        shouldCraftRecipe = {"14x Плотная кожа, 4x Шелковая нить"};
    elseif rank > 249 and rank < 265 then -- 250-264
        shouldCraft = {"Накладки из грубой кожи"};
        shouldCraftRecipe = {"5x Грубая кожа"};
    elseif rank > 264 and rank < 290 then -- 265-289
        shouldCraft = {"Гибельные кожаные наручи"};
        shouldCraftRecipe = {"8x Грубая кожа, 1x Черная краска, 1x Руническая нить"};
    elseif rank > 289 and rank < 300 then -- 290-299
        shouldCraft = {"Гибельная кожаная головная повязка"};
        shouldCraftRecipe = {"12x Грубая кожа, 1x Черная краска, 1x Руническая нить"};
    elseif rank > 299 and rank < 310 then -- 300-309
        shouldCraft = {"Узловатая кожа"};
        shouldCraftRecipe = {"5x Толстая узловатая кожа"};
    elseif rank > 309 and rank < 325 then -- 310-324
        shouldCraft = {"Накладки из узловатой кожи"};
        shouldCraftRecipe = {"4x Узловатая кожа"};
    elseif rank > 324 and rank < 335 then -- 325-334
        shouldCraft = {"Толстая узловатая кожа"};
        shouldCraftRecipe = {"5x Узловатая кожа"};
    elseif rank > 334 and rank < 340 then -- 335-339
        shouldCraft = {"Утолщенная дренорская безрукавка"};
        shouldCraftRecipe = {"3x Толстая узловатая кожа, 3x Руническая нить"};
    elseif rank > 339 and rank < 350 then -- 340-349
        shouldCraft = {
            "Чешуйчатые дренорские сапоги",
            "Утолщенная дренорская безрукавка"
        };
        shouldCraftRecipe = {
            "2x Толстая узловатая кожа, 2x Скверночешуя, 3x Руническая нить", --- Чешуйчатые дренорские сапоги
            "3x Толстая узловатая кожа, 3x Руническая нить" ------------------- Утолщенная дренорская безрукавка
        };
    elseif rank > 349 and rank < 380 then -- 350-379
        shouldCraft = {"Накладки из борейской кожи"};
        shouldCraftRecipe = {"4x Борейская кожа"};
    elseif rank > 379 and rank < 390 then -- 380-389
        shouldCraft = {"Арктические сапоги"};
        shouldCraftRecipe = {"8x Борейская кожа"};
    elseif rank > 389 and rank < 405 then -- 390-404
        shouldCraft = {"Толстая борейская кожа"};
        shouldCraftRecipe = {"6x Борейская кожа"};
    elseif rank > 404 and rank < 420 then -- 405-419
        shouldCraft = {
            "Темные поножи из обмерзшей чешуи",
            "Темные поножи жителя льдов"
        };
        shouldCraftRecipe = {
            "4x Толстая борейская кожа, 5x Кристаллизованная вода", -- Темные поножи из обмерзшей чешуи
            "4x Толстая борейская кожа, 5x Кристаллизованная тьма" -- Темные поножи жителя льдов
        };
    elseif rank > 419 and rank < 425 then -- 420-424
        shouldCraft = {"Наручи угрюмости"};
        shouldCraftRecipe = {"8x Толстая борейская кожа, 1x Извечная вода"};
    elseif rank > 424 and rank < 435 then -- 425-434
        shouldCraft = {"Повязки угрюмости"};
        shouldCraftRecipe = {"10x Толстая борейская кожа, 1x Извечная вода"};
    elseif rank > 434 and rank < 440 then -- 435-439
        shouldCraft = {
            "Накладки для поножей из снежной шкуры",
            "Накладки для поножей из ледяной чешуи"
        };
        shouldCraftRecipe = {
            "2x Арктический мех, 2x Нерубский хитин, 1x Ледяной шар", --- Накладки для поножей из снежной шкуры
            "2x Арктический мех, 2x Мерзлая чешуя дракона, 1x Ледяной шар" ---- Накладки для поножей из ледяной чешуи
        };
    elseif rank > 439 and rank < 450 then -- 440-449
        shouldCraft = {
            "Ботфорты загробника",
            "Кираса загробника",
            "Надежная накидка из нерубской шкуры",
            "Плащ ледяного убийцы",
            "Сапоги земледарения",
            "Наручи тяжелых увечий",
            "Тролльский тканый ремень",
            "Сапоги ветроруба",
            "Тролльский тканый наплеч",
            "Тролльский тканый наплеч",
            "Набедренники тяжелых увечий",
            "Поножи ветроруба"
        };
        shouldCraftRecipe = {
            "10x Толстая борейская кожа, 10x Извечная вода, 1x Ледяной шар", -------------------- Ботфорты загробника
            "12x Толстая борейская кожа, 12x Извечная вода, 1x Ледяной шар", --------------------- Кираса загробника
            "2x Арктический мех, 40x Нерубский хитин, 1x Ледяной шар", ----------------------------- Надежная накидка из нерубской шкуры
            "2x Арктический мех, 6x Извечный огонь, 4x Извечная тьма, 1x Ледяной шар", -------------- Плащ ледяного убийцы
            "10x Толстая борейская кожа, 5x Извечная жизнь, 5x Извечная вода, 1x Ледяной шар", ---- Сапоги земледарения
            "10x Толстая борейская кожа, 5x Извечный воздух, 5x Извечная вода, 1x Ледяной шар", ----- Наручи тяжелых увечий
            "10x Толстая борейская кожа, 5x Извечный огонь, 5x Извечная тьма, 1x Ледяной шар", --- Тролльский тканый ремень
            "10x Толстая борейская кожа, 5x Извечный воздух, 5x Извечная вода, 1x Ледяной шар", ----- Сапоги ветроруба
            "10x Толстая борейская кожа, 6x Извечный огонь, 6x Извечная тьма, 1x Ледяной шар", --- Тролльский тканый наплеч
            "12x Толстая борейская кожа, 6x Извечная жизнь, 6x Извечная вода, 1x Ледяной шар", ---- Тролльский тканый наплеч
            "12x Толстая борейская кожа, 6x Извечный воздух, 6x Извечная вода, 1x Ледяной шар", ----- Набедренники тяжелых увечий
            "12x Толстая борейская кожа, 6x Извечный воздух, 6x Извечная вода, 1x Ледяной шар" ------ Поножи ветроруба:
        };
    end
    return shouldCraft, shouldCraftRecipe
end

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded Leatherworking module|r');
