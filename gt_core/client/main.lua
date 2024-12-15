CreateThread(function()
    for key, conf in pairs(GTCore.Config.Blips) do
        GTCore.Functions.SetBlip(conf.Coords, key, conf.Sprite, conf.Color, conf.Scale, conf.IsShortRange)
    end
end)