




if Config.revive_type == 'auto' then

    AddEventHandler("esx:onPlayerDeath", function()
        local player = PlayerPedId()
        local playerloc = GetEntityCoords(player, 0)
        for k,v in pairs(Config.Locations) do
        local distance = GetDistanceBetweenCoords(v.x, v.y, v.z, playerloc['x'], playerloc['y'], playerloc['z'], true)
        if distance <= 50 then
            TriggerEvent('esx:showNotification', 'sucessfull Auto Revived at '..v.name.. ' ')
            TriggerServerEvent('Prosper:Revive', player)
            print("Your at "..v.name.. " ")
            Citizen.Wait(900)
            GiveWeaponToPed(PlayerPedId(), v.Weapon, v.Ammo, false, true)
            debug("^1 Worked")
            if v.respawn_location then
                SetEntityCoords(PlayerPedId(), v.respawn_locationx, v.respawn_locationy, v.respawn_locationz)
            end
        end
    end
    end)
    end
    
    
    
    if Config.revive_type == 'press' then
    
    Citizen.CreateThread(function()
        while true do 
            Wait(0)
            if IsEntityDead(PlayerPedId()) then
                local player = PlayerPedId()
                local playerloc = GetEntityCoords(player, 0)
                for k,v in pairs(Config.Locations) do
                local distance = GetDistanceBetweenCoords(v.x, v.y, v.z, playerloc['x'], playerloc['y'], playerloc['z'], true)
                if distance <= 50 then
            local text = Config.text
            DrawGenericTextThisFrame()
            SetTextEntry("STRING")
            AddTextComponentString(text)
            DrawText(0.49, 0.79)
              drama_checker = Config.Button
            if IsControlPressed(0, drama_checker) then 
                print('ok')
                TriggerEvent('esx:showNotification', 'sucessfull Auto Revived at '..v.name.. ' ')
                TriggerServerEvent('Prosper:Revive', player)
                print("Your at "..v.name.. " ")
                Citizen.Wait(900)
                GiveWeaponToPed(PlayerPedId(), v.Weapon, v.Ammo, false, true)
                debug("^1 Worked and Revived " ..GetPlayerName(PlayerId()).. " ")
                if v.respawn_location then
                    SetEntityCoords(PlayerPedId(), v.respawn_locationx, v.respawn_locationy, v.respawn_locationz)
        
                print('ok')
        end
    end
    end
    end
    end
    end
    end)
    end
    
    
    function DrawGenericTextThisFrame()
        SetTextFont(4)
        SetTextScale(0.0, 0.45)
        SetTextColour(255, 255, 255, 200)
        SetTextCentre(true)
    end
    
    
                -- #CONFIGURATION AND CODE BY BY PROSPER 
                -- #CONFIGURATION AND CODE BY BY PROSPER 
                -- #CONFIGURATION AND CODE BY BY PROSPER 
                -- #CONFIGURATION AND CODE BY BY PROSPER 
                -- #CONFIGURATION AND CODE BY BY PROSPER 
                -- #CONFIGURATION AND CODE BY BY PROSPER 
                -- #CONFIGURATION AND CODE BY BY PROSPER 
                -- #CONFIGURATION AND CODE BY BY PROSPER 
                -- #CONFIGURATION AND CODE BY BY PROSPER 
                -- #CONFIGURATION AND CODE BY BY PROSPER 
                -- #CONFIGURATION AND CODE BY BY PROSPER 
    
    
                function debug(text)
                    Citizen.Trace("^0Exotic-Debug "..text.. " ")
                end