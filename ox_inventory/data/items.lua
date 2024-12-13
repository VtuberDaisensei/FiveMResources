return {
    /*
    ['testburger'] = {
        label = 'Test Burger',
        weight = 220,
        degrade = 60,
        client = {
            image = 'burger_chicken.png',
            status = { hunger = 200000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 2500,
            export = 'ox_inventory_examples.testburger'
        },
        server = {
            export = 'ox_inventory_examples.testburger',
            test = 'what an amazingly delicious burger, amirite?'
        },
        buttons = {
            {
                label = 'Lick it',
                action = function(slot)
                    print('You licked the burger')
                end
            },
            {
                label = 'Squeeze it',
                action = function(slot)
                    print('You squeezed the burger :(')
                end
            },
            {
                label = 'What do you call a vegan burger?',
                group = 'Hamburger Puns',
                action = function(slot)
                    print('A misteak.')
                end
            },
            {
                label = 'What do frogs like to eat with their hamburgers?',
                group = 'Hamburger Puns',
                action = function(slot)
                    print('French flies.')
                end
            },
            {
                label = 'Why were the burger and fries running?',
                group = 'Hamburger Puns',
                action = function(slot)
                    print('Because they\'re fast food.')
                end
            }
        },
        consume = 0.3
    },
    */
    -- Foods
    ['burger']                   = { label = 'Burger',                  weight = 220, client = { status = { hunger = 200000 }, anim = 'eating', prop = 'burger', usetime = 2500, notification = 'You ate a delicious burger' }},
	["grape"]                    = { label = "Grape",                   weight = 100, description = "Mmmmh yummie, grapes",},
    ['mustard']                  = { label = 'Mustard',                 weight = 500, client = { status = { hunger = 25000, thirst = 25000 }, anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' }, prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) }, usetime = 2500, notification = 'You.. drank mustard' } },
	["snikkel_candy"]            = { label = "Snikkel",                 weight = 100, description = "Some delicious candy :O",},
    ["twerks_candy"]             = { label = "Twerks",                  weight = 100, description = "Some delicious candy :O",},
    
    -- Drinks
    ["beer"]                     = { label = "Beer",                    weight = 500, description = "Nothing like a good cold beer!",},
	["coffee"]                   = { label = "Coffee",                  weight = 200, description = "Pump 4 Caffeine",},
    ["cola"]                     = { label = "Cola",                    weight = 500, description = "For all the thirsty out there",},
    ["grapejuice"]               = { label = "Grape Juice",             weight = 200, description = "Grape juice is said to be healthy",},
    ['sprunk']                   = { label = 'Sprunk',                  weight = 350, client = { status = { thirst = 200000 }, anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' }, prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) }, usetime = 2500, notification = 'You quenched your thirst with a sprunk' } },
	["vodka"]                    = { label = "Vodka",                   weight = 500, description = "For all the thirsty out there",},
    ['water']                    = { label = 'Water',                   weight = 500, client = { status = { thirst = 200000 }, anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' }, prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) }, usetime = 2500, cancel = true, notification = 'You drank some refreshing water' } },
	["whiskey"]                  = { label = "Whiskey",                 weight = 500, description = "For all the thirsty out there",},
    ["wine"]                     = { label = "Wine",                    weight = 300, description = "Some good wine to drink on a fine evening",},
    
    -- Luxury groceries
    ['panties']                  = { label = 'Knickers',                weight = 10, consume = 0, client = { status = { thirst = -100000, stress = -25000 }, anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' }, prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) }, usetime = 2500, } },
	
    -- Materials
    ["aluminum"]                 = { label = "Aluminium",               weight = 100,   stack = true,  close = false, description = "Nice piece of metal that you can probably use for something",},
    ["aluminumoxide"]            = { label = "Aluminium Powder",        weight = 100,   stack = true,  close = false, description = "Some powder to mix with",},
    ['garbage']                  = { label = 'Garbage',                 weight = 1,     stack = true, },
    ['identification']           = { label = 'Identification',          weight = 1,     stack = false,},
	["iron"]                     = { label = "Iron",                    weight = 100,   stack = true,  close = false, description = "Handy piece of metal that you can probably use for something",},
    ["log"]                      = { label = "log",                     weight = 100,   stack = true,  close = false, description = "based of crafting",},
    ['scrapmetal']               = { label = 'Scrap Metal',             weight = 80,    stack = true,},
	
    -- Robbery Items
    ["advancedlockpick"]         = { label = "Advanced Lockpick",       weight = 500,   stack = true,  close = true,  description = "If you lose your keys a lot this is very useful... Also useful to open your beers",},
    ['black_money']              = { label = 'Dirty Money',},
	["electronickit"]            = { label = "Electronic Kit",          weight = 100,   stack = true,  close = true,  description = "If you've always wanted to build a robot you can maybe start here.",},
    ["goldbar"]                  = { label = "Gold Bar",                weight = 7000,  stack = true,  close = true,  description = "Looks pretty expensive to me",},
    ['lockpick']                 = { label = 'Lockpick',                weight = 160, },
	['mastercard']               = { label = 'Fleeca Card',             weight = 10,    stack = false,},
	['paperbag']                 = { label = 'Paper Bag',               weight = 1,     stack = false, close = false, consume = 0 },
	
    -- Vehicle Custom Items
    ["advancedrepairkit"]        = { label = "Advanced Repairkit",      weight = 4000,  stack = true,  close = true,  description = "A nice toolbox with stuff to repair your vehicle",},
    ["cleaningkit"]              = { label = "Cleaning Kit",            weight = 250,   stack = true,  close = true,  description = "A microfiber cloth with some soap will let your car sparkle again!",},
    ["veh_armor"]                = { label = "Armor",                   weight = 1000,  stack = true,  close = true,  description = "Upgrade vehicle armor",},
    ["veh_brakes"]               = { label = "Brakes",                  weight = 1000,  stack = true,  close = true,  description = "Upgrade vehicle brakes",},
    ["veh_engine"]               = { label = "Engine",                  weight = 1000,  stack = true,  close = true,  description = "Upgrade vehicle engine",},
    ["veh_exterior"]             = { label = "Exterior",                weight = 1000,  stack = true,  close = true,  description = "Upgrade vehicle exterior",},
    ["veh_interior"]             = { label = "Interior",                weight = 1000,  stack = true,  close = true,  description = "Upgrade vehicle interior",},
    ["veh_neons"]                = { label = "Neons",                   weight = 1000,  stack = true,  close = true,  description = "Upgrade vehicle neons",},
    ["veh_plates"]               = { label = "Plates",                  weight = 1000,  stack = true,  close = true,  description = "Install vehicle plates",},
    ["veh_suspension"]           = { label = "Suspension",              weight = 1000,  stack = true,  close = true,  description = "Upgrade vehicle suspension",},
    ["veh_tint"]                 = { label = "Tints",                   weight = 1000,  stack = true,  close = true,  description = "Install vehicle tint",},
    ["veh_toolbox"]              = { label = "Toolbox",                 weight = 1000,  stack = true,  close = true,  description = "Check vehicle status",},
    ["veh_transmission"]         = { label = "Transmission",            weight = 1000,  stack = true,  close = true,  description = "Upgrade vehicle transmission",},
	["veh_turbo"]                = { label = "Turbo",                   weight = 1000,  stack = true,  close = true,  description = "Install vehicle turbo",},
    ["veh_wheels"]               = { label = "Wheels",                  weight = 1000,  stack = true,  close = true,  description = "Upgrade vehicle wheels",},
    ["veh_xenons"]               = { label = "Xenons",                  weight = 1000,  stack = true,  close = true,  description = "Upgrade vehicle xenons",},
    
    -- Weapon Attachments
    ["advscope_attachment"]      = { label = "Advanced Scope",          weight = 1000,  stack = true,  close = true,  description = "An advanced scope for a weapon",},
    ["barrel_attachment"]        = { label = "Barrel",                  weight = 1000,  stack = true,  close = true,  description = "A barrel for a weapon",},
    ["bellend_muzzle_brake"]     = { label = "Bellend Muzzle Brake",    weight = 1000,  stack = true,  close = true,  description = "A muzzle brake for a weapon",},
    ["clip_attachment"]          = { label = "Clip",                    weight = 1000,  stack = true,  close = true,  description = "A clip for a weapon",},
    ["fat_end_muzzle_brake"]     = { label = "Fat End Muzzle Brake",    weight = 1000,  stack = true,  close = true,  description = "A muzzle brake for a weapon",},
	["smallscope_attachment"]    = { label = "Small Scope",             weight = 1000,  stack = true,  close = true,  description = "A small scope for a weapon",},
    
    -- Weapon Camo
    ["boomcamo_attachment"]      = { label = "Boom Camo",               weight = 1000,  stack = true,  close = true,  description = "A boom camo for a weapon",},
    ["brushcamo_attachment"]     = { label = "Brushstroke Camo",        weight = 1000,  stack = true,  close = true,  description = "A brushstroke camo for a weapon",},
    ["digicamo_attachment"]      = { label = "Digital Camo",            weight = 1000,  stack = true,  close = true,  description = "A digital camo for a weapon",},
    ["geocamo_attachment"]       = { label = "Geometric Camo",          weight = 1000,  stack = true,  close = true,  description = "A geometric camo for a weapon",},
    ["leopardcamo_attachment"]   = { label = "Leopard Camo",            weight = 1000,  stack = true,  close = true,  description = "A leopard camo for a weapon",},
    ["patriotcamo_attachment"]   = { label = "Patriot Camo",            weight = 1000,  stack = true,  close = true,  description = "A patriot camo for a weapon",},
    ["perseuscamo_attachment"]   = { label = "Perseus Camo",            weight = 1000,  stack = true,  close = true,  description = "A perseus camo for a weapon",},
    ["sessantacamo_attachment"]  = { label = "Sessanta Nove Camo",      weight = 1000,  stack = true,  close = true,  description = "A sessanta nove camo for a weapon",},
    ["skullcamo_attachment"]     = { label = "Skull Camo",              weight = 1000,  stack = true,  close = true,  description = "A skull camo for a weapon",},
    ["woodcamo_attachment"]      = { label = "Woodland Camo",           weight = 1000,  stack = true,  close = true,  description = "A woodland camo for a weapon",},
    ["zebracamo_attachment"]     = { label = "Zebra Camo",              weight = 1000,  stack = true,  close = true,  description = "A zebra camo for a weapon",},
	
    -- Healing Items
    ['bandage']                  = { label = 'Bandage',                 weight = 115, client = { anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 }, prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) }, disable = { move = true, car = true, combat = true }, usetime = 2500,}},
	["firstaid"]                 = { label = "First Aid",               weight = 2500,  stack = true,  close = true,  description = "You can use this First Aid kit to get people back on their feet",},
    
    -- Weed
    ["coke_brick"]               = { label = "Coke Brick",              weight = 1000,  stack = false, close = true,  description = "Heavy package of cocaine, mostly used for deals and takes a lot of space",},
    ["coke_small_brick"]         = { label = "Coke Package",            weight = 350,   stack = false, close = true,  description = "Small package of cocaine, mostly used for deals and takes a lot of space",},
    ["cokebaggy"]                = { label = "Bag of Coke",             weight = 0,     stack = true,  close = true,  description = "To get happy real quick",},
    ["weed_ak47"]                = { label = "AK47 2g",                 weight = 200,   stack = true,  close = false, description = "A weed bag with 2g AK47",},
    ["weed_ak47_seed"]           = { label = "AK47 Seed",               weight = 0,     stack = true,  close = true,  description = "A weed seed of AK47",},
    ["weed_amnesia"]             = { label = "Amnesia 2g",              weight = 200,   stack = true,  close = false, description = "A weed bag with 2g Amnesia",},
    ["weed_amnesia_seed"]        = { label = "Amnesia Seed",            weight = 0,     stack = true,  close = true,  description = "A weed seed of Amnesia",},
    ["weed_brick"]               = { label = "Weed Brick",              weight = 1000,  stack = true,  close = true,  description = "1KG Weed Brick to sell to large customers.",},
    ["weed_nutrition"]           = { label = "Plant Fertilizer",        weight = 2000,  stack = true,  close = true,  description = "Plant nutrition",},
    ["weed_ogkush_seed"]         = { label = "OGKush Seed",             weight = 0,     stack = true,  close = true,  description = "A weed seed of OG Kush",},
    ["weed_ogkush"]              = { label = "OGKush 2g",               weight = 200,   stack = true,  close = false, description = "A weed bag with 2g OG Kush",},
    ["weed_purplehaze"]          = { label = "Purple Haze 2g",          weight = 200,   stack = true,  close = false, description = "A weed bag with 2g Purple Haze",},
    ["weed_purplehaze_seed"]     = { label = "Purple Haze Seed",        weight = 0,     stack = true,  close = true,  description = "A weed seed of Purple Haze",},
    ["weed_skunk"]               = { label = "Skunk 2g",                weight = 200,   stack = true,  close = false, description = "A weed bag with 2g Skunk",},
    ["weed_skunk_seed"]          = { label = "Skunk Seed",              weight = 0,     stack = true,  close = true,  description = "A weed seed of Skunk",},
    ["weed_whitewidow"]          = { label = "White Widow 2g",          weight = 200,   stack = true,  close = false, description = "A weed bag with 2g White Widow",},
    ["weed_whitewidow_seed"]     = { label = "White Widow Seed",        weight = 0,     stack = true,  close = false, description = "A weed seed of White Widow",},
    
    -- Clothes
    ["armor"]                    = { label = "Armor",                   weight = 5000,  stack = true,  close = true,  description = "Some protection won't hurt... right?",},
    ['clothing']                 = { label = 'Clothing', consume = 0, },
	['parachute']                = { label = 'Parachute',               weight = 8000, stack = false, client = { anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' }, usetime = 1500 } },
	
    -- Others
    ["antipatharia_coral"]       = { label = "Antipatharia",            weight = 1000,  stack = true,  close = true,  description = "Its also known as black corals or thorn corals",},
    ["bank_card"]                = { label = "Bank Card",               weight = 0,     stack = false, close = true,  description = "Used to access ATM",},
    ["binoculars"]               = { label = "Binoculars",              weight = 600,   stack = true,  close = true,  description = "Sneaky Breaky...",},
    ['money']                    = { label = 'Money', },
	["newscam"]                  = { label = "News Camera",             weight = 100,   stack = false, close = true,  description = "A camera for the news",},
	['phone']                    = { label = 'Phone',                   weight = 190, stack = false, consume = 0, client = { add = function(total) if total > 0 then pcall(function() return exports.npwd:setPhoneDisabled(false) end) end end, remove = function(total) if total < 1 then pcall(function() return exports.npwd:setPhoneDisabled(true) end) end end } },
	['radio']                    = { label = 'Radio',                   weight = 1000,  stack = false, allowArmed = true },
	["certificate"]              = { label = "Certificate",             weight = 0,     stack = true,  close = true,  description = "Certificate that proves you own certain stuff",},
	["labkey"]                   = { label = "Key",                     weight = 500,   stack = false, close = true,  description = "Key for a lock...?",},
	["filled_evidence_bag"]      = { label = "Evidence Bag",            weight = 200,   stack = false, close = false, description = "A filled evidence bag to see who committed the crime >:(",},
    ["casinochips"]              = { label = "Casino Chips",            weight = 0,     stack = true,  close = false, description = "Chips For Casino Gambling",},
    
    ["comp_attachment"]          = { label = "Compensator",             weight = 1000,  stack = true,  close = true,  description = "A compensator for a weapon",},
    ["copper"]                   = { label = "Copper",                  weight = 100,   stack = true,  close = false, description = "Nice piece of metal that you can probably use for something",},
    ["crack_baggy"]              = { label = "Bag of Crack",            weight = 0,     stack = true,  close = true,  description = "To get happy faster",},
    ["cryptostick"]              = { label = "Crypto Stick",            weight = 200,   stack = false, close = true,  description = "Why would someone ever buy money that doesn't exist.. How many would it contain..?",},
    ["dendrogyra_coral"]         = { label = "Dendrogyra",              weight = 1000,  stack = true,  close = true,  description = "Its also known as pillar coral",},
    ["diamond"]                  = { label = "Diamond",                 weight = 1000,  stack = true,  close = true,  description = "A diamond seems like the jackpot to me!",},
    ["diamond_ring"]             = { label = "Diamond Ring",            weight = 1500,  stack = true,  close = true,  description = "A diamond ring seems like the jackpot to me!",},
    ["diving_fill"]              = { label = "Diving Tube",             weight = 3000,  stack = false, close = true,  description = "An oxygen tube and a rebreather",},
    ["diving_gear"]              = { label = "Diving Gear",             weight = 30000, stack = false, close = true,  description = "An oxygen tank and a rebreather",},
    ["drill"]                    = { label = "Drill",                   weight = 20000, stack = true,  close = false, description = "The real deal...",},
    ["driver_license"]           = { label = "driver_license",          weight = 0,     stack = false, close = false, description = "",},
    ["drum_attachment"]          = { label = "Drum",                    weight = 1000,  stack = true,  close = true,  description = "A drum for a weapon",},
    ["empty_evidence_bag"]       = { label = "Empty Evidence Bag",      weight = 0,     stack = true,  close = false, description = "Used a lot to keep DNA from blood, bullet shells and more",},
    ["empty_weed_bag"]           = { label = "Empty Weed Bag",          weight = 0,     stack = true,  close = true,  description = "A small empty bag",},
    ["firework1"]                = { label = "2Brothers",               weight = 1000,  stack = true,  close = true,  description = "Fireworks",},
    ["firework2"]                = { label = "Poppelers",               weight = 1000,  stack = true,  close = true,  description = "Fireworks",},
    ["firework3"]                = { label = "WipeOut",                 weight = 1000,  stack = true,  close = true,  description = "Fireworks",},
    ["firework4"]                = { label = "Weeping Willow",          weight = 1000,  stack = true,  close = true,  description = "Fireworks",},
    ["fitbit"]                   = { label = "Fitbit",                  weight = 500,   stack = false, close = true,  description = "I like fitbit",},
    ["flashlight_attachment"]    = { label = "Flashlight",              weight = 1000,  stack = true,  close = true,  description = "A flashlight for a weapon",},
    ["flat_muzzle_brake"]        = { label = "Flat Muzzle Brake",       weight = 1000,  stack = true,  close = true,  description = "A muzzle brake for a weapon",},
    ["gatecrack"]                = { label = "Gatecrack",               weight = 0,     stack = true,  close = true,  description = "Handy software to tear down some fences",},
    ["glass"]                    = { label = "Glass",                   weight = 100,   stack = true,  close = false, description = "It is very fragile, watch out",},
    ["goldchain"]                = { label = "Golden Chain",            weight = 1500,  stack = true,  close = true,  description = "A golden chain seems like the jackpot to me!",},
    ["grip_attachment"]          = { label = "Grip",                    weight = 1000,  stack = true,  close = true,  description = "A grip for a weapon",},
    ["handcuffs"]                = { label = "Handcuffs",               weight = 100,   stack = true,  close = true,  description = "Comes in handy when people misbehave. Maybe it can be used for something else?",},
    ["harness"]                  = { label = "Race Harness",            weight = 1000,  stack = false, close = true,  description = "Racing Harness so no matter what you stay in the car",},
    ["heavy_duty_muzzle_brake"]  = { label = "HD Muzzle Brake",         weight = 1000,  stack = true,  close = true,  description = "A muzzle brake for a weapon",},
    ["heavyarmor"]               = { label = "Heavy Armor",             weight = 5000,  stack = true,  close = true,  description = "Some protection won't hurt... right?",},
    ["holoscope_attachment"]     = { label = "Holo Scope",              weight = 1000,  stack = true,  close = true,  description = "A holo scope for a weapon",},
    ["id_card"]                  = { label = "ID Card",                 weight = 0,     stack = false, close = false, description = "",},
    ["ifaks"]                    = { label = "ifaks",                   weight = 200,   stack = true,  close = true,  description = "ifaks for healing and a complete stress remover.",},
    ["iphone"]                   = { label = "iPhone",                  weight = 1000,  stack = true,  close = true,  description = "Very expensive phone",},
    ["ironoxide"]                = { label = "Iron Powder",             weight = 100,   stack = true,  close = false, description = "Some powder to mix with.",},
    ["jerry_can"]                = { label = "Jerrycan 20L",            weight = 20000, stack = true,  close = true,  description = "A can full of Fuel",},
    ["joint"]                    = { label = "Joint",                   weight = 0,     stack = true,  close = true,  description = "Sidney would be very proud at you",},
    ["laptop"]                   = { label = "Laptop",                  weight = 4000,  stack = true,  close = true,  description = "Expensive laptop",},
    ["largescope_attachment"]    = { label = "Large Scope",             weight = 1000,  stack = true,  close = true,  description = "A large scope for a weapon",},
    ["lawyerpass"]               = { label = "Lawyer Pass",             weight = 0,     stack = false, close = false, description = "Pass exclusive to lawyers to show they can represent a suspect",},
    ["lighter"]                  = { label = "Lighter",                 weight = 0,     stack = true,  close = true,  description = "On new years eve a nice fire to stand next to",},
    ["luxuryfinish_attachment"]  = { label = "Luxury Finish",           weight = 1000,  stack = true,  close = true,  description = "A luxury finish for a weapon",},
    ["markedbills"]              = { label = "Marked Money",            weight = 1000,  stack = false, close = true,  description = "Money?",},
    ["medscope_attachment"]      = { label = "Medium Scope",            weight = 1000,  stack = true,  close = true,  description = "A medium scope for a weapon",},
    ["metalscrap"]               = { label = "Metal Scrap",             weight = 100,   stack = true,  close = false, description = "You can probably make something nice out of this",},
    ["meth"]                     = { label = "Meth",                    weight = 100,   stack = true,  close = true,  description = "A baggie of Meth",},
    ["moneybag"]                 = { label = "Money Bag",               weight = 0,     stack = false, close = true,  description = "A bag with cash",},
    ["newsbmic"]                 = { label = "Boom Microphone",         weight = 100,   stack = false, close = true,  description = "A Useable BoomMic",},
    ["newsmic"]                  = { label = "News Microphone",         weight = 100,   stack = false, close = true,  description = "A microphone for the news",},
    ["nitrous"]                  = { label = "Nitrous",                 weight = 1000,  stack = true,  close = true,  description = "Speed up, gas pedal! :D",},
    ["nvscope_attachment"]       = { label = "Night Vision Scope",      weight = 1000,  stack = true,  close = true,  description = "A night vision scope for a weapon",},
    ["oxy"]                      = { label = "Prescription Oxy",        weight = 0,     stack = true,  close = true,  description = "The Label Has Been Ripped Off",},
    ["painkillers"]              = { label = "Painkillers",             weight = 0,     stack = true,  close = true,  description = "For pain you can't stand anymore, take this pill that'd make you feel great again",},
    ["pinger"]                   = { label = "Pinger",                  weight = 1000,  stack = true,  close = true,  description = "With a pinger and your phone you can send out your location",},
    ["plastic"]                  = { label = "Plastic",                 weight = 100,   stack = true,  close = false, description = "RECYCLE! - Greta Thunberg 2019",},
    ["police_stormram"]          = { label = "Stormram",                weight = 18000, stack = true,  close = true,  description = "A nice tool to break into doors",},
    ["precision_muzzle_brake"]   = { label = "Precision Muzzle Brake",  weight = 1000,  stack = true,  close = true,  description = "A muzzle brake for a weapon",},
    ["printerdocument"]          = { label = "Document",                weight = 500,   stack = false, close = true,  description = "A nice document",},
    ["radioscanner"]             = { label = "Radio Scanner",           weight = 1000,  stack = true,  close = true,  description = "With this you can get some police alerts. Not 100% effective however",},
    ["repairkit"]                = { label = "Repairkit",               weight = 2500,  stack = true,  close = true,  description = "A nice toolbox with stuff to repair your vehicle",},
    ["rolex"]                    = { label = "Golden Watch",            weight = 1500,  stack = true,  close = true,  description = "A golden watch seems like the jackpot to me!",},
    ["rolling_paper"]            = { label = "Rolling Paper",           weight = 0,     stack = true,  close = true,  description = "Paper made specifically for encasing and smoking tobacco or cannabis.",},
    ["rubber"]                   = { label = "Rubber",                  weight = 100,   stack = true,  close = false, description = "Rubber,  I believe you can make your own rubber ducky with it :D",},
    ["samsungphone"]             = { label = "Samsung S10",             weight = 1000,  stack = true,  close = true,  description = "Very expensive phone",},
    ["sandwich"]                 = { label = "Sandwich",                weight = 200,   stack = true,  close = true,  description = "Nice bread for your stomach",},
    ["screwdriverset"]           = { label = "Toolkit",                 weight = 1000,  stack = true,  close = false, description = "Very useful to screw... screws...",},
    ["security_card_01"]         = { label = "Security Card A",         weight = 0,     stack = true,  close = true,  description = "A security card... I wonder what it goes to",},
    ["security_card_02"]         = { label = "Security Card B",         weight = 0,     stack = true,  close = true,  description = "A security card... I wonder what it goes to",},
    ["slanted_muzzle_brake"]     = { label = "Slanted Muzzle Brake",    weight = 1000,  stack = true,  close = true,  description = "A muzzle brake for a weapon",},
    ["split_end_muzzle_brake"]   = { label = "Split End Muzzle Brake",  weight = 1000,  stack = true,  close = true,  description = "A muzzle brake for a weapon",},
    ["squared_muzzle_brake"]     = { label = "Squared Muzzle Brake",    weight = 1000,  stack = true,  close = true,  description = "A muzzle brake for a weapon",},
    ["steel"]                    = { label = "Steel",                   weight = 100,   stack = true,  close = false, description = "Nice piece of metal that you can probably use for something",},
    ["stickynote"]               = { label = "Sticky note",             weight = 0,     stack = false, close = false, description = "Sometimes handy to remember something :)",},
    ["suppressor_attachment"]    = { label = "Suppressor",              weight = 1000,  stack = true,  close = true,  description = "A suppressor for a weapon",},
    ["tablet"]                   = { label = "Tablet",                  weight = 2000,  stack = true,  close = true,  description = "Expensive tablet",},
    ["tactical_muzzle_brake"]    = { label = "Tactical Muzzle Brake",   weight = 1000,  stack = true,  close = true,  description = "A muzzle brakee for a weapon",},
    ["tenkgoldchain"]            = { label = "10k Gold Chain",          weight = 2000,  stack = true,  close = true,  description = "10 carat golden chain",},
    ["thermalscope_attachment"]  = { label = "Thermal Scope",           weight = 1000,  stack = true,  close = true,  description = "A thermal scope for a weapon",},
    ["thermite"]                 = { label = "Thermite",                weight = 1000,  stack = true,  close = true,  description = "Sometimes you'd wish for everything to burn",},
    ["tirerepairkit"]            = { label = "Tire Repair Kit",         weight = 1000,  stack = true,  close = true,  description = "A kit to repair your tires",},
    ["tosti"]                    = { label = "Grilled Cheese Sandwich", weight = 200,   stack = true,  close = true,  description = "Nice to eat",},
    ["trojan_usb"]               = { label = "Trojan USB",              weight = 0,     stack = true,  close = true,  description = "Handy software to shut down some systems",},
    ["tunerlaptop"]              = { label = "Tunerchip",               weight = 2000,  stack = false, close = true,  description = "With this tunerchip you can get your car on steroids... If you know what you're doing",},
    ["walkstick"]                = { label = "Walking Stick",           weight = 1000,  stack = true,  close = true,  description = "Walking stick for ya'll grannies out there.. HAHA",},
    ["weaponlicense"]            = { label = "Weapon License",          weight = 0,     stack = false, close = true,  description = "Weapon License",},
    ["xtcbaggy"]                 = { label = "Bag of XTC",              weight = 0,     stack = true,  close = true,  description = "Pop those pills baby",},

	["kurkakola"] = {
		label = "Cola",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "cola.png",
		}
	},

	["water_bottle"] = {
		label = "Bottle of Water",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "water_bottle.png",
		}
	},
}