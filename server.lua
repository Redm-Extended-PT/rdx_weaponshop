RDX = nil

TriggerEvent('rdx:getSharedObject', function(obj) RDX = obj end)

---Pistola/Revolver

RegisterNetEvent('comprarCATTLEMAN')
AddEventHandler('comprarCATTLEMAN', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 1500 then 
            xPlayer.removeMoney(1500)
            xPlayer.addWeapon('WEAPON_REVOLVER_CATTLEMAN', 0)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou CATTLEMAN por 1500$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('comprarDOUBLEACTION')
AddEventHandler('comprarDOUBLEACTION', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 1200 then 
            xPlayer.removeMoney(1200)
            xPlayer.addWeapon('WEAPON_REVOLVER_DOUBLEACTION', 0)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou DOUBLEACTION por 1200$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('comprarVOLCANIC')
AddEventHandler('comprarVOLCANIC', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 2000 then 
            xPlayer.removeMoney(2000)
            xPlayer.addWeapon('WEAPON_PISTOL_VOLCANIC', 0)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou VOLCANIC por 2000$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('comprarMAUSER')
AddEventHandler('comprarMAUSER', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 3000 then 
            xPlayer.removeMoney(3000)
            xPlayer.addWeapon('WEAPON_PISTOL_MAUSER', 0)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou MAUSER por 3000$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('comprarPISTOL')
AddEventHandler('comprarPISTOL', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 4000 then 
            xPlayer.removeMoney(4000)
            xPlayer.addWeapon('WEAPON_PISTOL_M1899', 0)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou PISTOL por 4000$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('comprarLEMAT')
AddEventHandler('comprarLEMAT', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 5000 then 
            xPlayer.removeMoney(5000)
            xPlayer.addWeapon('WEAPON_REVOLVER_LEMAT', 0)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou LEMAT por 5000$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

---Rifles

RegisterNetEvent('comprarCARBINE')
AddEventHandler('comprarCARBINE', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 2000 then 
            xPlayer.removeMoney(2000)
            xPlayer.addWeapon('WEAPON_REPEATER_CARBINE', 0)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou CARBINE por 2000$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('comprarVARMINT')
AddEventHandler('comprarVARMINT', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 5000 then 
            xPlayer.removeMoney(5000)
            xPlayer.addWeapon('WEAPON_RIFLE_VARMINT', 0)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou VARMINT por 5000$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('comprarEVANS')
AddEventHandler('comprarEVANS', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 3000 then 
            xPlayer.removeMoney(3000)
            xPlayer.addWeapon('WEAPON_REPEATER_EVANS', 0)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou EVANS por 3000$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('comprarBOLTACTION')
AddEventHandler('comprarBOLTACTION', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 4000 then 
            xPlayer.removeMoney(4000)
            xPlayer.addWeapon('WEAPON_RIFLE_BOLTACTION', 0)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou BOLTACTION por 4000$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('comprarCARCANO')
AddEventHandler('comprarCARCANO', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 40000 then 
            xPlayer.removeMoney(40000)
            xPlayer.addWeapon('WEAPON_SNIPERRIFLE_CARCANO', 0)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou CARCANO por 40000$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('comprarROLLINGBLOCK')
AddEventHandler('comprarROLLINGBLOCK', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 100000 then 
            xPlayer.removeMoney(100000)
            xPlayer.addWeapon('WEAPON_SNIPERRIFLE_ROLLINGBLOCK', 0)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou ROLLINGBLOCK por 100000$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('comprarPUMP')
AddEventHandler('comprarPUMP', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 2500 then 
            xPlayer.removeMoney(2500)
            xPlayer.addWeapon('WEAPON_SHOTGUN_PUMP', 0)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou PUMP por 2500$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('comprarREPEATING')
AddEventHandler('comprarREPEATING', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 4000 then 
            xPlayer.removeMoney(4000)
            xPlayer.addWeapon('WEAPON_SHOTGUN_REPEATING', 0)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou REPEATING por 4000$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('comprarSEMIAUTO')
AddEventHandler('comprarSEMIAUTO', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 5500 then 
            xPlayer.removeMoney(5500)
            xPlayer.addWeapon('WEAPON_SHOTGUN_SEMIAUTO', 0)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou SEMIAUTO por 5500$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('comprarSAWEDOFF')
AddEventHandler('comprarSAWEDOFF', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 7000 then 
            xPlayer.removeMoney(7000)
            xPlayer.addWeapon('WEAPON_SHOTGUN_SAWEDOFF', 0)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou SAWEDOFF por 7000$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

--- Armas Curtas

RegisterNetEvent('comprarKNIFE')
AddEventHandler('comprarKNIFE', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 200 then 
            xPlayer.removeMoney(200)
            xPlayer.addWeapon('WEAPON_MELEE_KNIFE', 0)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou Faca por 200$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)
RegisterNetEvent('comprarLANTERN')
AddEventHandler('comprarLANTERN', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 100 then 
            xPlayer.removeMoney(100)
            xPlayer.addWeapon('WEAPON_MELEE_DAVY_LANTERN', 0)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou Lanterna por 100$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('comprarBOW')
AddEventHandler('comprarBOW', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 1000 then 
            xPlayer.removeMoney(1000)
            xPlayer.addWeapon('WEAPON_BOW', 0)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou Arco por 1000$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('comprarLASSO')
AddEventHandler('comprarLASSO', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 100 then 
            xPlayer.removeMoney(100)
            xPlayer.addWeapon('WEAPON_LASSO', 0)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou Laço por 100$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('comprarHATCHET')
AddEventHandler('comprarHATCHET', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 100 then 
            xPlayer.removeMoney(100)
            xPlayer.addWeapon('WEAPON_MELEE_HATCHET', 0)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou Machado por 100$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('comprarTHROWING')
AddEventHandler('comprarTHROWING', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 250 then 
            xPlayer.removeMoney(250)
            xPlayer.addWeapon('WEAPON_THROWN_THROWING_KNIVES', 0)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou Facas Arremesso por 250$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('comprarELECTRIC')
AddEventHandler('comprarELECTRIC', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 300 then 
            xPlayer.removeMoney(300)
            xPlayer.addWeapon('WEAPON_MELEE_LANTERN_ELECTRIC', 0)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou Lanterna Electrica por 300$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('comprarTOMAHAWK')
AddEventHandler('comprarTOMAHAWK', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 250 then 
            xPlayer.removeMoney(250)
            xPlayer.addWeapon('WEAPON_THROWN_TOMAHAWK', 0)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou Machado Arremesso por 250$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('revolver_ammo:buyammo')
AddEventHandler('revolver_ammo:buyammo', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 3 then 
            xPlayer.removeMoney(3)
            xPlayer.addInventoryItem('revolver_ammo', 1)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou Balas Revolver por 3$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('pistol_ammo:buyammo')
AddEventHandler('pistol_ammo:buyammo', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 3 then 
            xPlayer.removeMoney(3)
            xPlayer.addInventoryItem('pistol_ammo', 1)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou Balas Revolver por 3$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('22_ammo:buyammo')
AddEventHandler('22_ammo:buyammo', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 3 then 
            xPlayer.removeMoney(3)
            xPlayer.addInventoryItem('22_ammo', 1)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou Balas Revolver por 3$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('rifle_ammo:buyammo')
AddEventHandler('rifle_ammo:buyammo', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 3 then 
            xPlayer.removeMoney(3)
            xPlayer.addInventoryItem('rifle_ammo', 1)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou Balas Revolver por 3$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('shotgun_ammo:buyammo')
AddEventHandler('shotgun_ammo:buyammo', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 3 then 
            xPlayer.removeMoney(3)
            xPlayer.addInventoryItem('shotgun_ammo', 1)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou Balas Revolver por 3$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('repeator_ammo:buyammo')
AddEventHandler('repeator_ammo:buyammo', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 3 then 
            xPlayer.removeMoney(3)
            xPlayer.addInventoryItem('repeator_ammo', 1)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou Balas Revolver por 3$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('snipe_ammo:buyammo')
AddEventHandler('snipe_ammo:buyammo', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 3 then 
            xPlayer.removeMoney(3)
            xPlayer.addInventoryItem('snipe_ammo', 1)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou Balas Revolver por 3$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('arrows:buyammo')
AddEventHandler('arrows:buyammo', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 3 then 
            xPlayer.removeMoney(3)
            xPlayer.addInventoryItem('arrows', 1)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou Balas Revolver por 3$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

RegisterNetEvent('knives:buyammo')
AddEventHandler('knives:buyammo', function()
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
      if xPlayer.getMoney() >= 3 then 
            xPlayer.removeMoney(3)
            xPlayer.addInventoryItem('arrows', 1)
        TriggerClientEvent('rdx_gunshop:alert', _source, "Comprou Balas Revolver por 3$")
    else 
        TriggerClientEvent('rdx_gunshop:alert', _source, "Não tens dinheiro suficiente")
end
end)

-- Usable Ammos


-------- Revolver

RDX.RegisterUsableItem("revolver_ammo", function(source)
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
    TriggerClientEvent('rdx_gunshop:giveammo', source, "WEAPON_REVOLVER_CATTLEMAN")
    xPlayer.removeInventoryItem("revolver_ammo", 1)
end)
-------- Pistol

RDX.RegisterUsableItem("pistol_ammo", function(source)
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
    TriggerClientEvent('rdx_gunshop:giveammo', source, "WEAPON_PISTOL_MAUSER")
    xPlayer.removeInventoryItem("pistol_ammo", 1)
end)

-------- 22 Ammo

RDX.RegisterUsableItem("22_ammo", function(source)
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
    TriggerClientEvent('rdx_gunshop:giveammo', source, "WEAPON_RIFLE_VARMINT")
    xPlayer.removeInventoryItem("22_ammo", 1)
end)

-------- Rifle

RDX.RegisterUsableItem("rifle_ammo", function(source)
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
    TriggerClientEvent('rdx_gunshop:giveammo', source, "WEAPON_RIFLE_BOLTACTION")
    xPlayer.removeInventoryItem("rifle_ammo", 1)
end)

-------- Shotgun Shells

RDX.RegisterUsableItem("shotgun_ammo", function(source)
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
    TriggerClientEvent('rdx_gunshop:giveammo', source, "WEAPON_SHOTGUN_DOUBLEBARREL")
    xPlayer.removeInventoryItem("shotgun_ammo", 1)
end)

-------- Repeater

RDX.RegisterUsableItem("repeator_ammo", function(source)
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
    TriggerClientEvent('rdx_gunshop:giveammo', source, "WEAPON_REPEATER_EVANS")
    xPlayer.removeInventoryItem("repeator_ammo", 1)
end)

-------- Sniper

RDX.RegisterUsableItem("snipe_ammo", function(source)
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
    TriggerClientEvent('rdx_gunshop:giveammo', source, "WEAPON_SNIPERRIFLE_CARCANO")
    xPlayer.removeInventoryItem("snipe_ammo", 1)
end)

-------- Arrows

RDX.RegisterUsableItem("arrows", function(source)
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
    TriggerClientEvent('rdx_gunshop:giveammo', source, "WEAPON_BOW")
    xPlayer.removeInventoryItem("arrows", 1)
end)

-------- Knives

RDX.RegisterUsableItem("knives", function(source)
    local _source = source
    local xPlayer = RDX.GetPlayerFromId(_source)
    TriggerClientEvent('rdx_gunshop:giveammo', source, "WEAPON_THROWN_THROWING_KNIVES")
    xPlayer.removeInventoryItem("knives", 1)
end)