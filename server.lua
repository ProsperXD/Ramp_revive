


RegisterServerEvent('Prosper:Revive')
AddEventHandler('Prosper:Revive', function()
    print("ye revive "..GetPlayerName(source).. " ")
    TriggerClientEvent(Config.Revivetrigger, source)
end)