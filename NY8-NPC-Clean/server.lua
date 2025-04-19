ESX = exports['es_extended']:getSharedObject()

RegisterServerEvent('ny8_cleanveh:payAndClean')
AddEventHandler('ny8_cleanveh:payAndClean', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getMoney() >= Config.CleanPrice then
        xPlayer.removeMoney(Config.CleanPrice)
        TriggerClientEvent('ny8_cleanveh:clean', source)
        TriggerClientEvent('esx:showNotification', source, "🚗 Véhicule nettoyé pour ~g~$" .. Config.CleanPrice)
    else
        TriggerClientEvent('esx:showNotification', source, "~r~Pas assez d'argent !")
    end
end)