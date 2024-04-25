-- client.lua
RegisterCommand('pc', function()
    TriggerServerEvent('playerCount:getPlayerCount')
end)

RegisterNetEvent('playerCount:displayPlayerCount')
AddEventHandler('playerCount:displayPlayerCount', function(playerCount)
    exports['oxui']:Notification("There are currently " .. playerCount .. " players online.", "info", 5000)
end)
