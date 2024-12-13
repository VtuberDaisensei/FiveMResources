-- @param coords Required
-- @param label Optional(Default 'nil of name value')
-- @param sprite Optional(Default 1)
-- @param color Optional(Default 0)
-- @param scale Optional(Default 1)
-- @param isShortRange Optional(Default false)
function GTCore.Functions.SetBlip(coords, label, sprite, color, scale, isShortRange)
    local blip = nil
    if coord ~= nil then
        blip = AddBlipForCoord(coords.x, coords.y, coords.z)
        SetBlipSprite(blip, sprite or 1)
        SetBlipColour(blip, color or 0)
        SetBlipScale(blip, scale or 1)
        SetBlipAsShortRange(blip, isShortRange or false)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName(label or 'nil of name value')
        EndTextCommandSetBlipName(blip)
    end
    return blip
end

CreateThread(function()
    for key, conf in ipairs(GTCore.Config.Blips) do
        GTCore.Functions.SetBlip()
    end
end)

function GTCore.Functions.CreateNPC()
    
end