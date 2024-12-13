local QBCore = exports['qb-core']:GetCoreObject()
local vehicleClasses = {
    compacts = 0, sedans = 1, suvs = 2, coupes = 3, muscle = 4, sportsclassics = 5, sports = 6, super = 7,
    motorcycles = 8, offroad = 9, industrial = 10, utility = 11, vans = 12, cycles = 13, boats = 14,
    helicopters = 15, planes = 16, service = 17, emergency = 18, military = 19, commercial = 20, trains = 21,
    openwheel = 22
}

AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        exports['oxmysql']:execute('UPDATE player_vehicles SET state = 1 WHERE state = 0', {}, function(res)
            print(('^2[ss-garage]^7 %s vehicles have been moved to garage'):format(res.affectedRows))
        end)
    end
end)

local function arrayToSet(array)
    local set = {}
    for _, item in ipairs(array) do
        set[item] = true
    end
    return set
end

local function filterVehiclesByCategory(vehicles, category)
    local filtered = {}
    local categorySet = arrayToSet(category)

    for _, vehicle in pairs(vehicles) do
        local vehicleData = QBCore.Shared.Vehicles[vehicle.vehicle]
        local vehicleCategoryString = vehicleData and vehicleData.category or 'compacts'
        local vehicleCategoryNumber = vehicleClasses[vehicleCategoryString]

        if vehicleCategoryNumber and categorySet[vehicleCategoryNumber] then
            table.insert(filtered, vehicle)
        end
    end
    return filtered
end

QBCore.Functions.CreateCallback('ss-garage:qb-getvehicles', function(source, cb, garage, _type, category)
    local Player = QBCore.Functions.GetPlayer(source)
    local vehicles = {}

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

    if SS.Config.Garages[garage].job and 
        Player.PlayerData.job.name ~= SS.Config.Garages[garage].job or 
        SS.Config.Garages[garage].gang and 
        Player.PlayerData.gang.name ~= SS.Config.Garages[garage].gang then
        return cb(nil, Locales[SS.Config.Language]["notaccess"])
    end

    local query = 'SELECT * FROM player_vehicles WHERE citizenid = ?'
    local params = { Player.PlayerData.citizenid }

    if _type == 'depot' then
        query = query .. ' AND state = 2'
    elseif SS.Config.RealisticGarage then
        query = query .. ' AND garage = ? AND state = 1'
        table.insert(params, garage)
    end

    exports['oxmysql']:execute(query, params, function(result)
        for _, vehicleData in ipairs(result) do
            local label = QBCore.Shared.Vehicles[vehicleData.vehicle] and QBCore.Shared.Vehicles[vehicleData.vehicle].name or vehicleData.vehicle

            local price = SS.Config.Impound.DefaultImpoundPrice

            if tonumber(vehicleData.depotprice) > 0 then
                price = tonumber(vehicleData.depotprice)
            end

            table.insert(vehicles, {
                plate = vehicleData.plate,
                label = label,
                state = vehicleData.state,
                isImpounded = vehicleData.state == 2,
                impoundPrice = price,
                garage = vehicleData.garage,
                vehicle = vehicleData.vehicle,
                fuel = vehicleData.fuel or 100,
                engine = vehicleData.engine or 1000,
                body = vehicleData.body or 100,
            })
        end

        if SS.Config.CustomCategorys == false then
            local filteredVehicles = filterVehiclesByCategory(vehicles, category)
            cb(filteredVehicles)
        else 
            cb(vehicles)
        end
    end)
end)

QBCore.Functions.CreateCallback('qb-garages:server:getHouseGarage', function(_, cb, house)
    local houseInfo = exports['oxmysql']:fetchSync('SELECT * FROM houselocations WHERE name = ?', { house })
    cb(houseInfo)
end)

QBCore.Functions.CreateCallback('ss-garage:qb-spawnVehicle', function(source, cb, plate, vehicle, coords)
    local Player = QBCore.Functions.GetPlayer(source)
    local res = exports['oxmysql']:fetchSync('SELECT * FROM player_vehicles WHERE citizenid = ? AND plate = ? AND vehicle = ?', { Player.PlayerData.citizenid, plate, vehicle })
    if res[1] then
        local veh = CreateVehicleServerSetter(GetHashKey(vehicle), 'automobile', coords.x, coords.y, coords.z, coords.w)
        local netId = NetworkGetNetworkIdFromEntity(veh)
        SetVehicleNumberPlateText(veh, plate)
        local vehProps = {}
        local result = exports['oxmysql']:fetchSync('SELECT mods FROM player_vehicles WHERE citizenid = ? AND plate = ?', { Player.PlayerData.citizenid, plate })

        if result and result[1] then
            vehProps = json.decode(result[1].mods)
        end
        
        if OutsideVehicles[plate] and DoesEntityExist(OutsideVehicles[plate].entity) then
            return TriggerClientEvent('QBCore:Notify', Player.PlayerData.source, Locales[SS.Config.Language]["vehout"], 'error')
        end
        
        OutsideVehicles[plate] = { netID = netId, entity = veh }
        cb(netId, vehProps, plate)
    end
end)

QBCore.Functions.CreateCallback('ss-garage:qb-payForImpound', function(source, cb, data)
    local Player = QBCore.Functions.GetPlayer(source)
    local res = exports['oxmysql']:fetchSync('SELECT * FROM player_vehicles WHERE citizenid = ? AND plate = ? AND vehicle = ?', { Player.PlayerData.citizenid, data.vehicle.plate, data.vehicle.vehicle })

    if res then
        local depotprice = SS.Config.Impound.DefaultImpoundPrice

        if tonumber(res[1].depotprice) > 0 then
            depotprice = tonumber(res[1].depotprice)
        end

        if Player.PlayerData.money.bank >= depotprice then
            Player.Functions.RemoveMoney('bank', depotprice)
            exports['oxmysql']:execute('UPDATE player_vehicles SET state = 0, depotprice = 0 WHERE citizenid = ? AND plate = ? AND vehicle = ?', { Player.PlayerData.citizenid, data.vehicle.plate, data.vehicle.vehicle })
            TriggerClientEvent('QBCore:Notify', Player.PlayerData.source, Locales[SS.Config.Language]["impoundpaid"], 'success')
            cb(true)
        else
            TriggerClientEvent('QBCore:Notify', Player.PlayerData.source, Locales[SS.Config.Language]["unotenough"], 'error')
            cb(false)
        end
    else
        TriggerClientEvent('QBCore:Notify', Player.PlayerData.source, Locales[SS.Config.Language]["vehout"], 'error')
        cb(false)
    end
end)

RegisterNetEvent('ss-garage:server:SwapGarage', function(data)
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    local isOwner = exports['oxmysql']:fetchSync('SELECT * FROM player_vehicles WHERE citizenid = ? AND vehicle = ? AND plate = ? AND state = 1', { Player.PlayerData.citizenid, data.vehicle.vehicle, data.vehicle.plate })

    if not isOwner[1] then
        return TriggerClientEvent('QBCore:Notify', Player.PlayerData.source, Locales[SS.Config.Language]["notowned"], 'error')
    end

    if OutsideVehicles[data.vehicle.plate] and DoesEntityExist(OutsideVehicles[data.vehicle.plate].entity) then
        return TriggerClientEvent('QBCore:Notify', Player.PlayerData.source, Locales[SS.Config.Language]["vehout"], 'error')
    end

    local canSwap = true

    if SS.Config.Swapping.PayForSwap then
        if Player.PlayerData.money.bank >= SS.Config.Swapping.PayAmount then
            Player.Functions.RemoveMoney('bank', SS.Config.Swapping.PayAmount)
        else
            canSwap = false
            TriggerClientEvent('QBCore:Notify', Player.PlayerData.source, Locales[SS.Config.Language]["unotenough"], 'error')
        end
    end

    if canSwap then
        exports['oxmysql']:execute('UPDATE player_vehicles SET garage = ? WHERE citizenid = ? AND vehicle = ? AND plate = ?', { data.garage, Player.PlayerData.citizenid, data.vehicle.vehicle, data.vehicle.plate })
        TriggerClientEvent('QBCore:Notify', Player.PlayerData.source, 'Vehicle swapped successfully', 'success')
    end
end)

RegisterNetEvent('ss-garage:server:TransferVehicle', function(data)
    local player = QBCore.Functions.GetPlayer(source)
    if not player then return end

    local target = QBCore.Functions.GetPlayer(tonumber(data.id))
    if not target then
        TriggerClientEvent('QBCore:Notify', player.PlayerData.source, Locales[SS.Config.Language]["pnotfound"], 'error')
        return
    end

    if target.PlayerData.citizenid == player.PlayerData.citizenid then
        TriggerClientEvent('QBCore:Notify', player.PlayerData.source, Locales[SS.Config.Language]["transfer2urself"], 'error')
        return
    end

    local isOwner = exports['oxmysql']:fetchSync('SELECT * FROM player_vehicles WHERE citizenid = ? AND vehicle = ? AND plate = ? AND state = 1', {player.PlayerData.citizenid, data.vehicle.vehicle, data.vehicle.plate})

    if not isOwner or #isOwner == 0 then
        TriggerClientEvent('QBCore:Notify', player.PlayerData.source, Locales[SS.Config.Language]["notowned"], 'error')
        return
    end

    local price = tonumber(data.price) or 0
    local canTransfer = true

    if price > 0 then
        if target.PlayerData.money.bank < price then
            canTransfer = false
            TriggerClientEvent('QBCore:Notify', target.PlayerData.source, Locales[SS.Config.Language]["unotenough"], 'error')
        else
            target.Functions.RemoveMoney('bank', price)
            player.Functions.AddMoney('bank', price)
        end
    end

    if canTransfer then
        exports['oxmysql']:execute('UPDATE player_vehicles SET citizenid = ?, license = ? WHERE citizenid = ? AND vehicle = ? AND plate = ?', {target.PlayerData.citizenid, target.PlayerData.license, player.PlayerData.citizenid, data.vehicle.vehicle, data.vehicle.plate})
        TriggerClientEvent('QBCore:Notify', player.PlayerData.source, Locales[SS.Config.Language]["transferedvehicle"], 'success')
        TriggerClientEvent('QBCore:Notify', target.PlayerData.source, Locales[SS.Config.Language]["receivedvehicle"], 'success')
    end
end)

RegisterNetEvent('ss-garage:server:qb-updateState', function(plate, state)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end

    local isOwner = exports['oxmysql']:fetchSync('SELECT * FROM player_vehicles WHERE citizenid = ? AND plate = ?', {Player.PlayerData.citizenid, plate})

    if isOwner[1] then
        exports['oxmysql']:execute('UPDATE player_vehicles SET state = ? WHERE citizenid = ? AND plate = ?', {state, Player.PlayerData.citizenid, plate})
    end
end)

QBCore.Functions.CreateCallback('ss-garage:qb-parkVehicle', function(source, cb, plate, vehProps, garage, fuel, engine, body)
    local Player = QBCore.Functions.GetPlayer(source)

    exports['oxmysql']:fetch('SELECT citizenid FROM player_vehicles WHERE plate = ?', {plate}, function(result)
        if result[1] then
            local isOwner = result[1].citizenid
            if isOwner == Player.PlayerData.citizenid then
                for key, value in pairs(vehProps) do
                    if type(value) == "boolean" then
                        vehProps[key] = value and 1 or 0
                    end
                end

                exports['oxmysql']:execute('UPDATE player_vehicles SET state = ?, garage = ?, mods = ?, fuel = ?, body = ?, engine = ? WHERE plate = ?', {1, garage, json.encode(vehProps), fuel, body, engine, plate})

                OutsideVehicles[plate] = nil
                cb(true)
            else
                print('not the owner')
                print(isOwner, Player.PlayerData.citizenid)
                cb(false)
            end
        else
            print('Plate not found:', plate)
            cb(false)
        end
    end)
end)

QBCore.Functions.CreateCallback('qb-garages:server:GetPlayerVehicles', function(source, cb)
local Player = QBCore.Functions.GetPlayer(source)
local Vehicles = {}

MySQL.rawExecute('SELECT * FROM player_vehicles WHERE citizenid = ?', { Player.PlayerData.citizenid }, function(result)
    if result[1] then
        for _, v in pairs(result) do
            local VehicleData = QBCore.Shared.Vehicles[v.vehicle]

            local VehicleGarage = "Error"
            if v.garage ~= nil then
                if SS.Config.Garages[v.garage] ~= nil then
                    VehicleGarage = SS.Config.Garages[v.garage].label
                else
                    VehicleGarage = "House Garage"
                end
            end

            local stateTranslation
            if v.state == 0 then
                stateTranslation = "Out"
            elseif v.state == 1 then
                stateTranslation = "Parked"
            elseif v.state == 2 then
                stateTranslation = "Impound"
            end

            local fullname
            if VehicleData and VehicleData['brand'] then
                fullname = VehicleData['brand'] .. ' ' .. VehicleData['name']
            else
                fullname = VehicleData and VehicleData['name'] or 'Unknown Vehicle'
            end

            Vehicles[#Vehicles + 1] = {
                fullname = fullname,
                brand = VehicleData and VehicleData['brand'] or '',
                model = VehicleData and VehicleData['name'] or '',
                plate = v.plate,
                garage = VehicleGarage,
                state = stateTranslation,
                fuel = v.fuel,
                engine = v.engine,
                body = v.body
            }
        end
        cb(Vehicles)
    else
        cb(nil)
    end
end)
end)

RegisterNetEvent('qb-garages:server:syncGarage', function(updatedGarages)
    SS.Config.Garages = updatedGarages
end)

exports('GetGarages', function()
    return SS.Config.Garages
end)
