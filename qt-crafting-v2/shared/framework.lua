if Shared.Framework == "qb" then 
    QBCore = exports[Shared.FrameworkNames.qb]:GetCoreObject()
elseif Shared.Framework == "esx" then 
    ESX = exports[Shared.FrameworkNames.esx]:getSharedObject()
end

