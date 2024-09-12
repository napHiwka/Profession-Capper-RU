addonName, addonTable = ...;

local shouldCraft, shouldCraftRecipe;

addonTable.getEngineeringCurrentSkillLevelRecipeToCraft = function(rank)
    if rank > 0 and rank < 21 then -- 1-20
        shouldCraft = {"Грубое взрывчатое вещество"};
        shouldCraftRecipe = {"1x Грубый камень"};
    elseif rank > 20 and rank < 31 then -- 21-30
        shouldCraft = {
            "Грубый динамит",
            "Грубое взрывчатое вещество"
        };
        shouldCraftRecipe = {
            "2x Грубое взрывчатое вещество, 1x Льняной материал", -- Грубый динамит
            "1x Грубый камень" ----------------------------- Грубое взрывчатое вещество
        };
    elseif rank > 30 and rank < 50 then -- 31-49
        shouldCraft = {
            "Горсть медных винтов",
            "Грубый динамит"
        };
        shouldCraftRecipe = {
            "1x Медный слиток", ---------------------------- Горсть медных винтов
            "2x Грубое взрывчатое вещество, 1x Льняной материал" -- Грубый динамит
        };
    elseif rank > 49 and rank < 51 then -- 50
        shouldCraft = {
            "Тангенциальный вращатель",
            "Медная труба"
        };
        shouldCraftRecipe = {
            "6x Медный слиток", --------------- Тангенциальный вращатель
            "2x Медный слиток, 1x Слабый плавень" -- Медная труба
        };
    elseif rank > 50 and rank < 75 then -- 51-74
        shouldCraft = {
            "Медная труба",
            "Тангенциальный вращатель"
        };
        shouldCraftRecipe = {
            "2x Медный слиток, 1x Слабый плавень", -- Медная труба
            "6x Медный слиток" ----------------- Тангенциальный вращатель
        };
    elseif rank > 74 and rank < 85 then -- 75-84
        shouldCraft = {
            "Низкосортное взрывчатое вещество",
            "Медная труба",
            "Тангенциальный вращатель"
        };
        shouldCraftRecipe = {
            "1x Необработанный камень", -------------- Низкосортное взрывчатое вещество
            "2x Медный слиток, 1x Слабый плавень", -- Медная труба
            "6x Медный слиток" ----------------- Тангенциальный вращатель
        };
    elseif rank > 84 and rank < 90 then -- 85-89
        shouldCraft = {
            "Низкосортный динамит",
            "Низкосортное взрывчатое вещество",
            "Медная труба"
        };
        shouldCraftRecipe = {
            "3x Низкосортное взрывчатое вещество, 1x Льняной материал", -- Низкосортный динамит
            "1x Необработанный камень", ---------------------------- Низкосортное взрывчатое вещество
            "2x Медный слиток, 1x Слабый плавень" ----------------- Медная труба
        };
    elseif rank > 89 and rank < 110 then -- 90-109
        shouldCraft = {
            "Серебряный контакт",
            "Медный регулятор"
        };
        shouldCraftRecipe = {
            "1x Серебряный слиток", ------------------------------------------ Серебряный контакт
            "2x Горсть медных винтов, 1x Медный слиток, 2x Льняной материал" -- Медный регулятор
        };
    elseif rank > 109 and rank < 125 then -- 110-124
        shouldCraft = {
            "Бронзовая трубка",
            "Большая медная бомба",
            "Серебряный контакт"
        };
        shouldCraftRecipe = {
            "2x Бронзовый слиток, 1x Слабый плавень", ----------------------------------- Бронзовая трубка
            "3x Медный слиток, 4x Низкосортное взрывчатое вещество, 1x Серебряный контакт", -- Большая медная бомба
            "1x Серебряный слиток" -------------------------------------------------- Серебряный контакт
        };
    elseif rank > 124 and rank < 135 then -- 125-134
        shouldCraft = {"Тяжелое взрывчатое вещество"};
        shouldCraftRecipe = {"1x Тяжелый камень"};
    elseif rank > 134 and rank < 145 then -- 135-144
        shouldCraft = {
            "Трещащий бронзовый механизм",
            "Тяжелое взрывчатое вещество"
        };
        shouldCraftRecipe = {
            "2x Бронзовый слиток, 1x Шерсть", -- Трещащий бронзовый механизм
            "1x Тяжелый камень" ----------------- Тяжелое взрывчатое вещество
        };
    elseif rank > 144 and rank < 150 then -- 145-149
        shouldCraft = {"Трещащий бронзовый механизм"};
        shouldCraftRecipe = {"2x Бронзовый слиток, 1x Шерсть"};
    elseif rank > 149 and rank < 155 then -- 150-154
        shouldCraft = {"Bronze Framework"};
        shouldCraftRecipe = {"2x Бронзовый слиток, 1x Medium Leather, 1x Шерсть"};
    elseif rank > 154 and rank < 175 then -- 155-174
        shouldCraft = {
            "Explosive Sheep",
            "Gold Power Core",
            "Iron Strut"
        };
        shouldCraftRecipe = {
            "2x Тяжелое взрывчатое вещество, 1x Трещащий бронзовый механизм, 1x Bronze Framework, 2x Шерсть", -- Explosive Sheep
            "1x Gold Bar", ----------------------------------------------------------------------------- Gold Power Core
            "2x Iron Bar" ------------------------------------------------------------------------------ Iron Strut
        };
    elseif rank > 174 and rank < 176 then -- 175
        shouldCraft = {
            "Gyromatic Micro-Adjustor",
            "Solid Blasting Powder"
        };
        shouldCraftRecipe = {
            "4x Steel Bar", --- Gyromatic Micro-Adjustor
            "2x Solid Stone" -- Solid Blasting Powder
        };
    elseif rank > 175 and rank < 195 then -- 176-194
        shouldCraft = {
            "Solid Blasting Powder",
            "Gyromatic Micro-Adjustor"
        };
        shouldCraftRecipe = {
            "2x Solid Stone", -- Solid Blasting Powder
            "4x Steel Bar" ----- Gyromatic Micro-Adjustor
        };
    elseif rank > 194 and rank < 200 then -- 195-199
        shouldCraft = {"Mithril Tube"};
        shouldCraftRecipe = {"3x Mithril Bar"};
    elseif rank > 199 and rank < 210 then -- 200-209
            shouldCraft = {
                "Unstable Trigger",
                "Mithril Tube"
            };
            shouldCraftRecipe = {
                "1x Mithril Bar, 1x Mageweave Cloth, 1x Solid Blasting Powder", -- Unstable Trigger
                "3x Mithril Bar" ------------------------------------------------- Mithril Tube
            };
    elseif rank > 209 and rank < 225 then -- 210-224
        shouldCraft = {"Hi-Impact Mithril Slugs"};
        shouldCraftRecipe = {"1x Mithril Bar, 1x Solid Blasting Powder"};
    elseif rank > 224 and rank < 235 then -- 225-234
        shouldCraft = {"Mithril Casing"};
        shouldCraftRecipe = {"3x Mithril Bar"};
    elseif rank > 234 and rank < 245 then -- 235-244
        shouldCraft = {
            "Hi-Explosive Bomb",
            "Mithril Casing"
        };
        shouldCraftRecipe = {
            "2x Mithril Casing, 1x Unstable Trigger, 2x Solid Blasting Powder", -- Hi-Explosive Bomb
            "3x Mithril Bar" ----------------------------------------------------- Mithril Casing
        };
    elseif rank > 244 and rank < 250 then -- 245-249
        shouldCraft = {
            "Mithril Gyro-Shot",
            "Hi-Explosive Bomb"
        };
        shouldCraftRecipe = {
            "2x Mithril Bar, 2x Solid Blasting Powder", ------------------------- Mithril Gyro-Shot
            "2x Mithril Casing, 1x Unstable Trigger, 2x Solid Blasting Powder" -- Hi-Explosive Bomb
        };
    elseif rank > 249 and rank < 260 then -- 250-259
        shouldCraft = {
            "Dense Blasting Powder",
            "Mithril Gyro-Shot"
        };
        shouldCraftRecipe = {
            "2x Dense Stone", --------------------------- Dense Blasting Powder
            "2x Mithril Bar, 2x Solid Blasting Powder" -- Mithril Gyro-Shot
        };
    elseif rank > 259 and rank < 280 then -- 260-279
        shouldCraft = {"Thorium Widget"};
        shouldCraftRecipe = {"3x Thorium Bar, 1x Runecloth"};
    elseif rank > 279 and rank < 285 then -- 280-284
        shouldCraft = {"Thorium Tube"};
        shouldCraftRecipe = {"6x Thorium Bar"};
    elseif rank > 284 and rank < 300 then -- 285-299
        shouldCraft = {"Thorium Shells"};
        shouldCraftRecipe = {"2x Thorium Bar, 1x Dense Blasting Powder"};
    elseif rank > 299 and rank < 305 then -- 300-304
        shouldCraft = {
            "Handful of Fel Iron Bolts",
            "Elemental Blasting Powder",
            "Thorium Shells"
        };
        shouldCraftRecipe = {
            "1x Fel Iron Bar", -------------------------- Handful of Fel Iron Bolts
            "1x Mote of Fire, 2x Mote of Earth", -------- Elemental Blasting Powder
            "2x Thorium Bar, 1x Dense Blasting Powder" -- Thorium Shells
        };
    elseif rank > 304 and rank < 310 then -- 300-309
        shouldCraft = {
            "Handful of Fel Iron Bolts",
            "Elemental Blasting Powder"
        };
        shouldCraftRecipe = {
            "1x Fel Iron Bar", ------------------- Handful of Fel Iron Bolts
            "1x Mote of Fire, 2x Mote of Earth" -- Elemental Blasting Powder
        };
    elseif rank > 309 and rank < 320 then -- 310-319
            shouldCraft = {
                "Fel Iron Casing",
                "Elemental Blasting Powder"
            };
            shouldCraftRecipe = {
                "3x Fel Iron Bar", -------------------- Fel Iron Casing
                "1x Mote of Fire, 2x Mote of Earth", -- Elemental Blasting Powder
            };
    elseif rank > 319 and rank < 325 then -- 320-324
            shouldCraft = {
                "Fel Iron Bomb",
                "Fel Iron Musket"
            };
            shouldCraftRecipe = {
                "1x Fel Iron Casing, 2x Handful of Fel Iron Bolts, 1x Elemental Blasting Powder", -- Fel Iron Bomb
                "1x Heavy Stock, 3x Fel Iron Casing, 6x Handful of Fel Iron Bolts" ----------------- Fel Iron Musket
            };
    elseif rank > 324 and rank < 335 then -- 325-334
        shouldCraft = {"Adamantite Grenade"};
        shouldCraftRecipe = {"4x Adamantite Bar, 1x Elemental Blasting Powder, 2x Handful of Fel Iron Bolts"};
        elseif rank > 334 and rank < 340 then -- 335-339
            shouldCraft = {
                "White Smoke Flare",
                "Adamantite Grenade"
            };
            shouldCraftRecipe = {
                "1x Elemental Blasting Powder, 1x Netherweave Cloth", ---------------------------- White Smoke Flare
                "4x Adamantite Bar, 1x Elemental Blasting Powder, 2x Handful of Fel Iron Bolts" -- Adamantite Grenade
            };
    elseif rank > 339 and rank < 350 then -- 340-349
        shouldCraft = {
            "Felsteel Stabilizer",
            "White Smoke Flare"
        };
        shouldCraftRecipe = {
            "2x Felsteel Bar", ------------------------------------ Felsteel Stabilizer
            "1x Elemental Blasting Powder, 1x Netherweave Cloth" -- White Smoke Flare
        };
    elseif rank > 349 and rank < 370 then -- 350-369
        shouldCraft = {"Handful of Cobalt Bolts"};
        shouldCraftRecipe = {"2x Cobalt Bar"};
    elseif rank > 369 and rank < 375 then -- 370-374
        shouldCraft = {"Volatile Blasting Trigger"};
        shouldCraftRecipe = {"3x Cobalt Bar, 1x Crystallized Water"};
    elseif rank > 374 and rank < 385 then -- 375-384
        shouldCraft = {
            "Overcharged Capacitor",
            "Hammer Pick",
            "Bladed Pickaxe"
        };
        shouldCraftRecipe = {
            "4x Cobalt Bar, 1x Crystallized Earth", -- Overcharged Capacitor
            "5x Cobalt Bar", ------------------------- Hammer Pick
            "5x Cobalt Bar" -------------------------- Bladed Pickaxe
        };
    elseif rank > 384 and rank < 390 then -- 385-389
        shouldCraft = {"Explosive Decoy"};
        shouldCraftRecipe = {"1x Frostweave Cloth, 3x Volatile Blasting Trigger"};
    elseif rank > 389 and rank < 400 then -- 390-399
        shouldCraft = {"Froststeel Tube"};
        shouldCraftRecipe = {"8x Cobalt Bar, 1x Crystallized Water"};
    elseif rank > 399 and rank < 405 then -- 400-404
        shouldCraft = {"Diamond-cut Refractor Scope"};
        shouldCraftRecipe = {"1x Froststeel Tube, 2x Handful of Cobalt Bolts"};
    elseif rank > 404 and rank < 410 then -- 405-409
        shouldCraft = {"Box of Bombs"};
        shouldCraftRecipe = {"5x Saronite Bar, 1x Volatile Blasting Trigger"};
    elseif rank > 409 and rank < 415 then -- 410-414
        shouldCraft = {"Mammoth Cutters"};
        shouldCraftRecipe = {"1x Saronite Bar, 1x Volatile Blasting Trigger"};
    elseif rank > 414 and rank < 420 then -- 415-419
        shouldCraft = {"Saronite Razorheads"};
        shouldCraftRecipe = {"2x Saronite Bar"};
    elseif rank > 419 and rank < 430 then -- 420-429
        shouldCraft = {"Mechanized Snow Goggles"};
        shouldCraftRecipe = {"8x Saronite Bar, 2x Borean Leather, 1x Eternal Shadow"};
    elseif rank > 429 and rank < 435 then -- 430-434
        shouldCraft = {"Noise Machine"};
        shouldCraftRecipe = {"2x Froststeel Tube, 2x Overcharged Capacitor, 8x Handful of Cobalt Bolts"};
    elseif rank > 434 and rank < 450 then -- 435-449
        shouldCraft = {"Gnomish Army Knife"};
        shouldCraftRecipe = {"10x Saronite Bar, 1x Skinning Knife, 1x Minning Pick, 1x Blacksmithing Hammer"};
    end
    return shouldCraft, shouldCraftRecipe
end

print("|cff" .. addonTable.chat_frame_default_color .. '[Profession Capper] loaded Engineering module|r');
