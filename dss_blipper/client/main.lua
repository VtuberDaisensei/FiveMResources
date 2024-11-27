CreateThread(function()
    for _, v in ipairs(Config.Points) do

        local blip = AddBlipForCoord(v.point.x, v.point.y, v.point.z)
        SetBlipSprite(blip, v.blipSprite or 0)
        SetBlipColour(blip, v.blipColor or 0)
        SetBlipScale(blip, v.blipScale or 1)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName(v.blipLabel or 'nil of name value')
        EndTextCommandSetBlipName(blip)
    end
end)