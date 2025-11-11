local QBCore = exports['qb-core']:GetCoreObject()

-- Armory purchase event
RegisterServerEvent('qb-policearmory:server:buyItem')
AddEventHandler('qb-policearmory:server:buyItem', function(item, price)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    -- Attempt to remove cash first, then bank
    local moneyRemoved = false
    if Player.Functions.RemoveMoney('cash', price) then
        moneyRemoved = true
    elseif Player.Functions.RemoveMoney('bank', price) then
        moneyRemoved = true
    end

    if moneyRemoved then
        -- Check if player can carry the item
        if exports.ox_inventory:CanCarryItem(src, item, 1) then
            Player.Functions.AddItem(item, 1)
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add')
            TriggerClientEvent('QBCore:Notify', src, 'You purchased a ' .. item, 'success')
        else
            -- Refund if inventory is full
            Player.Functions.AddMoney('cash', price)
            TriggerClientEvent('QBCore:Notify', src, 'Not enough inventory space.', 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', src, 'Not enough money (cash or bank).', 'error')
    end
end)

-- Callback: can player carry the item
QBCore.Functions.CreateCallback('qb-policearmory:server:canCarryItem', function(source, cb, item)
    cb(exports.ox_inventory:CanCarryItem(source, item, 1))
end)
