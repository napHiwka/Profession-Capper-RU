addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getTailoringCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 45 then -- 1-44
        shouldCraft = {"Рулон льняной ткани"};
        shouldCraftRecipe = {"2x Льняной материал"};
    elseif rank > 44 and rank < 50 then -- 45-49
        shouldCraft = {"Льняной пояс"};
        shouldCraftRecipe = {"1x Рулон льняной ткани, 1x Грубая нить"};
    elseif rank > 49 and rank < 70 then -- 45-69
        shouldCraft = {"Тяжелые льняные перчатки"};
        shouldCraftRecipe = {"2x Рулон льняной ткани, 1x Грубая нить"};
    elseif rank > 69 and rank < 75 then -- 70-74
        shouldCraft = {"Усиленная льняная накидка"};
        shouldCraftRecipe = {"2x Рулон льняной ткани, 3x Грубая нить"};
    elseif rank > 74 and rank < 100 then -- 75-99
        shouldCraft = {"Рулон шерсти"};
        shouldCraftRecipe = {"3x Шерсть"};
    elseif rank > 99 and rank < 105 then -- 100-104
          shouldCraft = {
            "Простой килт",
            "Шерстяная сумка"
          };
          shouldCraftRecipe = {
            "4x Рулон льняной ткани, 1x Тонкая нить", -- Простой килт
            "3x Рулон шерсти, 1x Тонкая нить" -- Шерстяная сумка
          };
    elseif rank > 104 and rank < 110 then -- 105-109
        shouldCraft = {"Простой килт"};
        shouldCraftRecipe = {"4x Рулон льняной ткани, 1x Тонкая нить"};
    elseif rank > 109 and rank < 125 then -- 110-124
        shouldCraft = {"Шерстяные наплечники с двойным швом"};
        shouldCraftRecipe = {"3x Рулон шерсти, 2x Тонкая нить"};
    elseif rank > 124 and rank < 145 then -- 125-144
        shouldCraft = {"Рулон шелка"};
        shouldCraftRecipe = {"4x Шелковый материал"};
    elseif rank > 144 and rank < 160 then -- 145-159
        shouldCraft = {
          "Лазурный шелковый капюшон",
          "Шерстяные наплечники с двойным швом"
        };
        shouldCraftRecipe = {
          "2x Рулон шелка, 2x Blue Dye, 1x Тонкая нить", -- Лазурный шелковый капюшон
          "3x Рулон шерсти, 2x Тонкая нить" -- Шерстяные наплечники с двойным швом
        };
    elseif rank > 159 and rank < 170 then -- 160-169
        shouldCraft = {"Шелковая головная повязка"};
        shouldCraftRecipe = {"3x Рулон шелка, 2x Тонкая нить"};
    elseif rank > 169 and rank < 175 then -- 170-174
        shouldCraft = {"Церемониальная белая рубашка"};
        shouldCraftRecipe = {"3x Рулон шелка, 2x Bleach, 1x Тонкая нить"};
    elseif rank > 174 and rank < 185 then -- 715-184
        shouldCraft = {"Рулон магической ткани"};
        shouldCraftRecipe = {"4x Магическая ткань"};
    elseif rank > 184 and rank < 205 then -- 185-204
        shouldCraft = {"Багровый шелковый жилет"};
        shouldCraftRecipe = {"4x Рулон шелка, 2x Тонкая нить, 2x Красная краска"};
    elseif rank > 204 and rank < 215 then -- 205-214
        shouldCraft = {"Багровые шелковые кюлоты"};
        shouldCraftRecipe = {"4x Рулон шелка, 2x Красная краска, 2x Шелковая нить"};
    elseif rank > 214 and rank < 220 then -- 215-219
        shouldCraft = {
          "Черные поножи из магической ткани",
          "Багровые шелковые кюлоты"
        };
        shouldCraftRecipe = {
          "2x Рулон магической ткани, 3x Шелковая нить", -- Черные поножи из магической ткани
          "4x Рулон шелка, 2x Красная краска, 2x Шелковая нить" -- Багровые шелковые кюлоты
        };
    elseif rank > 219 and rank < 230 then -- 220-229
        shouldCraft = {"Черные перчатки из магической ткани"};
        shouldCraftRecipe = {"2x Рулон магической ткани, 2x Heavy Шелковая нить"};
    elseif rank > 229 and rank < 250 then -- 230-249
        shouldCraft = {"Черная повязка из магической ткани"};
        shouldCraftRecipe = {"3x Рулон магической ткани, 2x Heavy Шелковая нить"};
    elseif rank > 249 and rank < 260 then -- 250-259
        shouldCraft = {"Рулон рунической ткани"};
        shouldCraftRecipe = {"4x Руническая ткань"};
    elseif rank > 259 and rank < 280 then -- 260-279
        shouldCraft = {"Пояс из рунической ткани"};
        shouldCraftRecipe = {"3x Рулон рунической ткани, 1x Руническая нить"};
    elseif rank > 279 and rank < 295 then -- 280-294
        shouldCraft = {"Перчатки из рунической ткани"};
        shouldCraftRecipe = {"5x Рулон рунической ткани, 2x Руническая нить"};
    elseif rank > 294 and rank < 300 then -- 295-299
        shouldCraft = {"Головная повязка из рунической ткани"};
        shouldCraftRecipe = {"6x Рулон рунической ткани, 2x Руническая нить"};
    elseif rank > 299 and rank < 325 then -- 300-324
        shouldCraft = {"Рулон ткани Пустоты"};
        shouldCraftRecipe = {"5x Ткань Пустоты"};
    elseif rank > 324 and rank < 335 then -- 325-334
        shouldCraft = {"Рулон прочной ткани Пустоты"};
        shouldCraftRecipe = {"3x Рулон ткани Пустоты, 2x Чародейная пыль"};
    elseif rank > 334 and rank < 345 then -- 335-344
        shouldCraft = {"Сапоги из ткани Пустоты"};
        shouldCraftRecipe = {"6x Рулон ткани Пустоты, 2x Узловатая кожа, 1x Руническая нить"};
    elseif rank > 344 and rank < 350 then -- 345-349
        shouldCraft = {"Мундир из ткани Пустоты"};
        shouldCraftRecipe = {"8x Рулон ткани Пустоты, 2x Руническая нить"};
    elseif rank > 349 and rank < 375 then -- 350-374
        shouldCraft = {"Рулон ледяной ткани"};
        shouldCraftRecipe = {"5x Ледяная ткань"};
    elseif rank > 374 and rank < 380 then -- 375-379
        shouldCraft = {"Ледотканый пояс"};
        shouldCraftRecipe = {"3x Рулон ледяной ткани, 1x Этерниевая нить"};
    elseif rank > 379 and rank < 385 then -- 380-384
        shouldCraft = {"Ледотканые сапоги"};
        shouldCraftRecipe = {"4x Рулон ледяной ткани, 1x Этерниевая нить"};
    elseif rank > 384 and rank < 395 then -- 385-394
        shouldCraft = {"Ледотканый шлем"};
        shouldCraftRecipe = {"5x Рулон ледяной ткани, 1x Этерниевая нить"};
    elseif rank > 394 and rank < 400 then -- 395-399
        shouldCraft = {"Пояс из сумеречной ткани"};
        shouldCraftRecipe = {"7x Рулон ледяной ткани, 1x Этерниевая нить"};
    elseif rank > 399 and rank < 405 then -- 400-404
        shouldCraft = {"Рулон прочной ледяной ткани"};
        shouldCraftRecipe = {"2x Рулон ледяной ткани, 2x Infinite Dust"};
    elseif rank > 404 and rank < 410 then -- 405-409
        shouldCraft = {"Напульсники из сумеречной ткани"};
        shouldCraftRecipe = {"8x Рулон ледяной ткани, 1x Этерниевая нить"};
    elseif rank > 409 and rank < 415 then -- 410-414
        shouldCraft = {"Перчатки из сумеречной ткани"};
        shouldCraftRecipe = {"9x Рулон ледяной ткани, 1x Этерниевая нить"};
    elseif rank > 414 and rank < 425 then -- 415-424
        shouldCraft = {
          "Сапоги из сумеречной ткани",
          "Наплечники из сумеречной ткани"
        };
        shouldCraftRecipe = {
          "10x Рулон ледяной ткани, 1x Этерниевая нить", -- Сапоги из сумеречной ткани
          "10x Рулон ледяной ткани, 1x Этерниевая нить" -- Наплечники из сумеречной ткани
        };
    elseif rank > 424 and rank < 450 then -- 425-449
        shouldCraft = {"Сумка из ледяной ткани"};
        shouldCraftRecipe = {"6x Рулон прочной ледяной ткани, 2x Этерниевая нить"};
    end
    return shouldCraft, shouldCraftRecipe;
end

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded Tailoring module|r');
