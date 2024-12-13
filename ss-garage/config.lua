garageZones, comboZone, Locales = {}, nil, {}

SS = {}

SS.Config = {
    Language = 'ja', -- Which language should the garage use?
    Framework = 'qb', -- Which framework should the garage use? (qb, esx)
    WarpIntoVehicle = true, -- Should the player be teleported into the vehicle?
    RealisticGarage = true,
    CustomCategorys = false,
    TextUI = 'standard', -- Option for text UI: 'standard' or 'qb-drawtextui'
    
    QBCore = {
        FuelResource = 'LegacyFuel',
    },
    
    Swapping = {        
        PayForSwap = true, -- Should the player pay for swapping a vehicle to another garage?
        PayAmount = 500, -- How much should the player pay for swapping a vehicle to another garage?
    },
    
    Impound = {
        DefaultImpoundPrice = 500, -- How much should the player pay, to get a vehicle back from the impound?
    },
    
    VehicleClass = { -- DO NOT TOUCH THIS
        all = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22 },
        car = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 18, 22 },
        air = { 15, 16 },
        sea = { 14 },
        rig = { 10, 11, 17, 19, 20 }
    }
}

SS.Config.Blips = {
    ["garage"] = {
        sprite = 357,
        color = 0,
    },
    ["depot"] = {
        sprite = 68,
        color = 0,
    },
    ["air"] = {
        sprite = 360,
        color = 0,
    },
    ["sea"] = {
        sprite = 356,
        color = 0,
    },
}

-- config.luaに入れるとなぜか入らないため、serverに記載
SS.Config.Garages = {
    ["LS Custom Garage"] = {
        label = "LS Custom Garage",
        type = "car",
        category = 'car',
        canTransfer = true,
        coords = vector3(-383.53, -126.63, 38.69),
        blip = SS.Config.Blips["garage"],
        spawns = {
            vector4(-379.11, -143.59, 38.68, 305.17),
            vector4(-380.48, -140.23, 38.68, 291.37),
            vector4(-382.04, -137.02, 38.69, 295.16)
        }
    },
    
    ["Region Square Central Garage"] = {
        label = "Region Square Central Garage",
        type = "car",
        category = 'car',
        canTransfer = true,
        coords = vector3(213.35, -795.13, 30.86),
        blip = SS.Config.Blips["garage"],
        spawns = {
            vector4(221.54, -806.78, 30.67, 69.92),
            vector4(222.43, -804.28, 30.67, 75.82),
            vector4(223.26, -801.83, 30.66, 74.33),
            vector4(224.13, -799.34, 30.66, 67.34),
            vector4(225.42, -796.97, 30.65, 68.2),
            vector4(231.41, -807.54, 30.46, 246.18),
            vector4(232.58, -805.12, 30.46, 253.25),
            vector4(233.64, -802.61, 30.47, 254.7),
            vector4(234.41, -800.09, 30.49, 252.28),
            vector4(235.28, -797.45, 30.5, 265.21),
        }
    },
}