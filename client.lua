CreateThread(function()
    while true do
        Wait(1000)
        local Vehicles = GetGamePool('CVehicle')

        for key, value in pairs(Vehicles) do
            local IsNetworked = NetworkGetEntityIsNetworked(value)
            local script = GetEntityScript(value)


            if IsNetworked == false then
                if GetResourceState(script) ~= 'started' then
                    if DoesEntityExist(value) then
                        DeleteEntity(value)
                    end
                end
            else
                if GetResourceState(script) ~= 'started' then
                    if DoesEntityExist(value) then
                        DeleteEntity(value)
                    end
                end
            end
        end
    end
end)
