-- server.lua
RegisterNetEvent('playerCount:getPlayerCount')
AddEventHandler('playerCount:getPlayerCount', function()
    local playerCount = #GetPlayers()
    TriggerClientEvent('playerCount:displayPlayerCount', -1, playerCount)
end)
