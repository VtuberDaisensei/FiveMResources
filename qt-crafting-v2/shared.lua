Shared = {}
Shared.Locale = "en"
Shared.Framework = "qb" -- # esx, qb
Shared.Target = "ox_target" -- # supports qb-target and ox_target
Shared.LIBRARY_NOTIFY = true 
Shared.ImagePath = "ox_inventory/web/images/" -- # where images for items will display
Shared.DefaultModel = "gr_prop_gr_bench_02a" -- # if you dont want other prop or just dont want to fulfil prop field into creation menu 

-- # inventory paths 
--[[
    "qb-inventory/html/images/"
    "lj-inventory/html/images/"
    "ox_inventory/web/images/"
    "qs-inventory/html/images/"
    "ps-inventory/html/images/"
]]

Shared.FrameworkNames = {
    esx = "es_extended",
    qb = "qb-core",
}

Shared.PlayersLicense = "license" -- # steam, license, discord, IP adress
Shared.Commands = {
    prefix = "craft:",
    perms = {
        ["create"] = {
            ["license:f43648aacd8a9089e34e8f34ef3a67a54b58f550"] = true, -- # steam or rockstar license ( its from server to server )
        },
        ["edit"] = {
            ["license:f43648aacd8a9089e34e8f34ef3a67a54b58f550"] = true, -- # steam or rockstar license ( its from server to server )
        },
    },
}

-- # to do ( readme, busy docs, library docs, )
