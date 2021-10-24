RDX              = nil
local PlayerData = {}

Citizen.CreateThread(function()
	while RDX == nil do
		TriggerEvent('rdx:getSharedObject', function(obj) RDX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('rdx:playerLoaded')
AddEventHandler('rdx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer   
end)
---------------------------------------------------------------

local gunsmiths = {
    { x = -282.28, y = 780.59, z = 118.53 }, --val
    { x = 2715.9, y = -1285.04, z = 49.63 },  --saint
    { x = -856.95, y = -1391.59, z = 43.49 }, --blackwater
    { x = 1323.01, y = -1321.53, z = 77.89 }, --Rhodes
}

local active = false
local ShopPrompt
local hasAlreadyEnteredMarker, lastZone
local currentZone = nil

function SetupShopPrompt()
    Citizen.CreateThread(function()
        local str = 'Abrir Loja'
        ShopPrompt = PromptRegisterBegin()
        PromptSetControlAction(ShopPrompt, 0xE8342FF2)
        str = CreateVarString(10, 'LITERAL_STRING', str)
        PromptSetText(ShopPrompt, str)
        PromptSetEnabled(ShopPrompt, false)
        PromptSetVisible(ShopPrompt, false)
        PromptSetHoldMode(ShopPrompt, true)
        PromptRegisterEnd(ShopPrompt)

    end)
end

AddEventHandler('rdx_gunshop:hasEnteredMarker', function(zone)
    currentZone     = zone
end)

AddEventHandler('rdx_gunshop:hasExitedMarker', function(zone)
    if active == true then
        PromptSetEnabled(ShopPrompt, false)
        PromptSetVisible(ShopPrompt, false)
        active = false
    end
    WarMenu.CloseMenu()
	currentZone = nil
end)

Citizen.CreateThread(function()
    SetupShopPrompt()
    while true do
        Citizen.Wait(0)
        local player = PlayerPedId()
        local coords = GetEntityCoords(player)
        local isInMarker, currentZone = false

        for k,v in ipairs(gunsmiths) do
            if (Vdist(coords.x, coords.y, coords.z, v.x, v.y, v.z) < 1.5) then
                isInMarker  = true
                currentZone = 'gunsmiths'
                lastZone    = 'gunsmiths'
				DrawTxt("Press [~e~ALT~q~] para abrir a [~e~Loja Armas~q~]", 0.50, 0.85, 0.7, 0.7, true, 255, 255, 255, 255, true)
            end
        end

		if isInMarker and not hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = true
			TriggerEvent('rdx_gunshop:hasEnteredMarker', currentZone)
		end

		if not isInMarker and hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = false
			TriggerEvent('rdx_gunshop:hasExitedMarker', lastZone)
		end

    end
end)

Citizen.CreateThread(function()
	while true do
        Citizen.Wait(0)
        if currentZone then
            if active == false then
                PromptSetEnabled(ShopPrompt, true)
                PromptSetVisible(ShopPrompt, true)
                active = true
            end
            if PromptHasHoldModeCompleted(ShopPrompt) then
                WarMenu.OpenMenu('weaponshop')
                WarMenu.Display()
                PromptSetEnabled(ShopPrompt, false)
                PromptSetVisible(ShopPrompt, false)
                active = false

				currentZone = nil
			end
        else
			Citizen.Wait(500)
		end
	end
end)

Citizen.CreateThread(function()    

    WarMenu.CreateMenu('weaponshop', 'Loja Armas')
    WarMenu.CreateSubMenu('pistols', 'weaponshop', 'Pistols')
    WarMenu.CreateSubMenu('longguns', 'weaponshop', 'Long Guns')
    WarMenu.CreateSubMenu('handguns', 'weaponshop', 'Melee Weapons')
    WarMenu.CreateSubMenu('Ammo', 'weaponshop', 'Ammo')
    WarMenu.CreateSubMenu('pistolsammo', 'Ammo', 'Pistols')
    WarMenu.CreateSubMenu('longgunsammo', 'Ammo', 'Long Guns')
    WarMenu.CreateSubMenu('handgunsammo', 'Ammo', 'Melee Weapons')

    while true do
        if WarMenu.IsMenuOpened('weaponshop') then

            if WarMenu.MenuButton('Pistols', 'pistols') then end
            if WarMenu.MenuButton('Long Guns', 'longguns') then end
            if WarMenu.MenuButton('Melee Weapons', 'handguns') then end
            if WarMenu.MenuButton('Ammo', 'Ammo') then end
            WarMenu.Display()
 
        elseif WarMenu.IsMenuOpened('pistols') then

            if WarMenu.Button("            Cattleman Revolver", "$1500") then
                TriggerServerEvent("comprarCATTLEMAN")
            -- elseif WarMenu.Button("            Double Action Revolver", "$1200") then
                -- TriggerServerEvent("comprarDOUBLEACTION")
            -- elseif WarMenu.Button("            Volcanic", "$2000") then
                -- TriggerServerEvent("comprarVOLCANIC")
            -- elseif WarMenu.Button("            Semi-auto Pistol", "$2200") then
                -- TriggerServerEvent("comprarSEMIAUTO")
            -- elseif WarMenu.Button("            Mauser", "$3000") then
                -- TriggerServerEvent("comprarMAUSER")
            -- elseif WarMenu.Button("            M 1899", "$4000") then
                -- TriggerServerEvent("comprarPISTOL")
            -- elseif WarMenu.Button("            Lemat Revolver", "$5000") then
                -- TriggerServerEvent("comprarLEMAT")
			end
            WarMenu.Display()

        elseif WarMenu.IsMenuOpened('longguns') then

            if WarMenu.Button("            Carbine Repeator", "$2000") then
                TriggerServerEvent("comprarCARBINE")
            -- elseif WarMenu.Button("            Varmint Rifle", "$1500") then
                -- TriggerServerEvent("comprarVARMINT")
            -- elseif WarMenu.Button("            Evans Repeater", "$3000") then
                -- TriggerServerEvent("comprarEVANS")
            -- elseif WarMenu.Button("            Bolt Action Rifle", "$4000") then
                -- TriggerServerEvent("comprarBOLTACTION")
            -- elseif WarMenu.Button("            Carcano Rifle", "$40000") then
                -- TriggerServerEvent("comprarCARCANO")
            -- elseif WarMenu.Button("            Rolling Block Rifle", "$100000") then
                -- TriggerServerEvent("comprarROLLINGBLOCK")
			-- elseif WarMenu.Button("            Pump Shotgun", "$2500") then
                -- TriggerServerEvent("comprarPUMP")
            -- elseif WarMenu.Button("            Repeating Shotgun", "$4000") then
                -- TriggerServerEvent("comprarREPEATING")
            -- elseif WarMenu.Button("            Semi-auto Shotgun", "$5500") then
                -- TriggerServerEvent("comprarSEMIAUTO")
            -- elseif WarMenu.Button("            Sawed-off Shotgun", "$7000") then
                -- TriggerServerEvent("comprarSAWEDOFF")
			end
            WarMenu.Display()

        elseif WarMenu.IsMenuOpened('handguns') then

            if WarMenu.Button("            Knife", "$200") then
                TriggerServerEvent("comprarKNIFE")
            elseif WarMenu.Button("            Lantern", "$100") then
                TriggerServerEvent("comprarLANTERN")
            elseif WarMenu.Button("            Bow", "$1000") then
                TriggerServerEvent("comprarBOW")
            elseif WarMenu.Button("            Lasso", "$100") then
                TriggerServerEvent("comprarLASSO")
            elseif WarMenu.Button("            Hatchet", "$100") then
                TriggerServerEvent("comprarHATCHET")
            elseif WarMenu.Button("            Throwing knives", "$250") then
                TriggerServerEvent("comprarTHROWING")
            elseif WarMenu.Button("            Electric Lantern", "$300") then
                TriggerServerEvent("comprarELECTRIC")
            elseif WarMenu.Button("            Tomahawk", "$250") then
                TriggerServerEvent("comprarTOMAHAWK")
			end
            WarMenu.Display()

        elseif WarMenu.IsMenuOpened('Ammo') then

            if WarMenu.MenuButton('Pistols', 'pistolsammo') then end
            if WarMenu.MenuButton('Long Guns', 'longgunsammo') then end
            if WarMenu.MenuButton('Melee Weapons', 'handgunsammo') then end
            WarMenu.Display()

        elseif WarMenu.IsMenuOpened('pistolsammo') then

            if WarMenu.Button("            Revolver", "$3") then
                TriggerServerEvent("revolver_ammo:buyammo")
                PlaySoundFrontend("REWARD_NEW_GUN", "HUD_REWARD_SOUNDSET", true, 0)

            elseif WarMenu.Button("            Pistol", "$3") then
                TriggerServerEvent("pistol_ammo:buyammo")
                PlaySoundFrontend("REWARD_NEW_GUN", "HUD_REWARD_SOUNDSET", true, 0)

			end
            WarMenu.Display()

        elseif WarMenu.IsMenuOpened('longgunsammo') then

            if WarMenu.Button("            Repeator", "$3") then
                TriggerServerEvent("repeator_ammo:buyammo")
                PlaySoundFrontend("REWARD_NEW_GUN", "HUD_REWARD_SOUNDSET", true, 0)
            elseif WarMenu.Button("            22 Rifle", "$3") then
                TriggerServerEvent("22_ammo:buyammo")
                PlaySoundFrontend("REWARD_NEW_GUN", "HUD_REWARD_SOUNDSET", true, 0)
            elseif WarMenu.Button("            Rifle", "$3") then
                TriggerServerEvent("rifle_ammo:buyammo")
                PlaySoundFrontend("REWARD_NEW_GUN", "HUD_REWARD_SOUNDSET", true, 0)
            elseif WarMenu.Button("            Sniper Rifle", "$3") then
                TriggerServerEvent("snipe_ammo:buyammo")
                PlaySoundFrontend("REWARD_NEW_GUN", "HUD_REWARD_SOUNDSET", true, 0)
            elseif WarMenu.Button("            Shotgun Shells", "$3") then
                TriggerServerEvent("shotgun_ammo:buyammo")
                PlaySoundFrontend("REWARD_NEW_GUN", "HUD_REWARD_SOUNDSET", true, 0)
			end
            WarMenu.Display()

        elseif WarMenu.IsMenuOpened('handgunsammo') then

            if WarMenu.Button("            Arrows", "$3") then
                TriggerServerEvent("arrows:buyammo")
                PlaySoundFrontend("REWARD_NEW_GUN", "HUD_REWARD_SOUNDSET", true, 0)
            elseif WarMenu.Button("            Throwing knives", "$3") then
                TriggerServerEvent("knives:buyammo")
                PlaySoundFrontend("REWARD_NEW_GUN", "HUD_REWARD_SOUNDSET", true, 0)
			end
            WarMenu.Display()

        end

        Citizen.Wait(0)
    end
end)

RegisterNetEvent('rdx_gunshop:giveammo')
AddEventHandler('rdx_gunshop:giveammo', function(type)
    local player = GetPlayerPed()
    local ammo = GetHashKey(type)
    SetPedAmmo(player, ammo, 60)
end)

Citizen.CreateThread(function()
	for _, info in pairs(gunsmiths) do
        local blip = N_0x554d9d53f696d002(1664425300, info.x, info.y, info.z)
        SetBlipSprite(blip, -145868367, 1)
		SetBlipScale(blip, 0.2)
		Citizen.InvokeNative(0x9CB1A1623062F402, blip, "Armas")
    end  
end)

RegisterNetEvent('rdx_gunshop:alert')	
AddEventHandler('rdx_gunshop:alert', function(txt)
    SetTextScale(0.5, 0.5)
    local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING", txt, Citizen.ResultAsLong())
    Citizen.InvokeNative(0xFA233F8FE190514C, str)
    Citizen.InvokeNative(0xE9990552DEC71600)
end)

function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
    local str = CreateVarString(10, "LITERAL_STRING", str, Citizen.ResultAsLong())
   SetTextScale(w, h)
   SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
   SetTextCentre(centre)
   if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
   Citizen.InvokeNative(0xADA9255D, 10);
   DisplayText(str, x, y)
end