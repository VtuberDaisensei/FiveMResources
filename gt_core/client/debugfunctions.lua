function GTCore.Debug.Functions.PrintTable(tbl)
    if(type(tbl) == 'table') then
        for k, v in pairs(tbl) do
            if type(v) == 'table' then
                    PrintTable(v)
            else
                print("key:"..k.."/value:"..tostring(v))
            end
        end
    else
        print(tostring(tbl))
    end
end