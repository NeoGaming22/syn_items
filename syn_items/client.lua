--[[ Credits by synTM ]]-- ! Don't Edit this Disclaimer !

RegisterNetEvent("syn:coffee")
RegisterNetEvent("syn:haycube")
RegisterNetEvent("syn:beans")
RegisterNetEvent("syn:peach")
RegisterNetEvent("syn:salmon")
RegisterNetEvent("syn:medicine")
RegisterNetEvent('syn:tent')
RegisterNetEvent('syn:campfire')
RegisterNetEvent('syn:water')
RegisterNetEvent('syn:fish')
RegisterNetEvent('syn:carrotsoup')
RegisterNetEvent('syn:chickensoup') 
RegisterNetEvent('syn:apple')
RegisterNetEvent('syn:venisonmeal')
RegisterNetEvent('syn:venison')
RegisterNetEvent('syn:ginseng')
RegisterNetEvent('syn:yarrow')
RegisterNetEvent('syn:whitesage')
RegisterNetEvent('syn:caramel')
RegisterNetEvent('syn:potato')
RegisterNetEvent('syn:oleandersage')
RegisterNetEvent('syn:carrot') 
RegisterNetEvent('syn:cottoncandy')
RegisterNetEvent('syn:ginsengelixir') 
RegisterNetEvent('syn:cocagum')
RegisterNetEvent('syn:orange') 
RegisterNetEvent('syn:banana') 
RegisterNetEvent('syn:corn') 
RegisterNetEvent('syn:dixonapple') 
RegisterNetEvent('syn:tomato') 
RegisterNetEvent('syn:bread')   
RegisterNetEvent('syn:bakedbread')   
RegisterNetEvent('syn:meat_gristly')   
RegisterNetEvent('syn:bacon')   
RegisterNetEvent('syn:meat_mature')   
RegisterNetEvent('syn:meat_bird')   
RegisterNetEvent('syn:grapes')  
RegisterNetEvent('syn:banannamash') 
RegisterNetEvent('syn:applemash')    
RegisterNetEvent('syn:cooked_stringy')    
RegisterNetEvent('syn:bakedfish')    
RegisterNetEvent('syn:baconegg')    
RegisterNetEvent('syn:cocacola')    
RegisterNetEvent('syn:asprin')    
RegisterNetEvent('syn:heroin')  
RegisterNetEvent('syn:applepie')
RegisterNetEvent('syn:choccookie') 
     



AddEventHandler("syn:coffee", function(source)

local _source = source

local propEntity = CreateObject(GetHashKey('p_mugCoffee01x'), GetEntityCoords(PlayerPedId()), false, true, false, false, true)
TaskItemInteraction_2(PlayerPedId(), -1199896558, propEntity, GetHashKey('p_mugCoffee01x_ph_r_hand'), GetHashKey('DRINK_COFFEE_HOLD'), 1, 0, -1.0)
Citizen.Wait(5000)
            TriggerEvent('srp:drink', 30)
            TriggerEvent('srp:eat', 2)
            Citizen.InvokeNative( 0xF6A7C08DF2E28B28, PlayerPedId(), 1, 1000.0, false )
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
	--end
end)


----------------------HORSE FEEDING------------------------------------------------------
RegisterNetEvent("syn:haycube")
AddEventHandler("syn:haycube", function(source)

    local Ped = PlayerPedId()
    local SulCavallo = IsPedOnMount(Ped)
    local _source = source
        if SulCavallo then
            local Cavallo = GetMount(Ped)
            --if IsThisModelAHorse(Cavallo) then
                
                --TaskAnimalInteraction(Ped, Cavallo, -224471938, true, true) --Animazione
                TaskAnimalInteraction(Ped, Cavallo, -224471938, GetHashKey("s_horsnack_haycube01x"), 0)
                
                local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 0)
                local valueStamina = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 1)
                    
                    if not tonumber(valueHealth) then valueHealth = 0 end
                    if not tonumber(valueStamina) then valueStamina = 0 end
                Citizen.Wait(3500)
                Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 0, valueHealth + 15)
                Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 1, valueStamina + 15)
            
            --end
        else
        TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
            Citizen.Wait(1000)
                TriggerEvent('srp:eat', 15)
                TriggerEvent('srp:drink', -5)
                local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
                if number then
                print (number)
                Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
                else 
                Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
                end
                Citizen.Wait(1000)
        --end
        
        end
end)


RegisterNetEvent("syn:carrot")
AddEventHandler("syn:carrot", function(source)

    local Ped = PlayerPedId()
    local SulCavallo = IsPedOnMount(Ped)
    local _source = source
        if SulCavallo then
            local Cavallo = GetMount(Ped)
            --if IsThisModelAHorse(Cavallo) then
                
                TaskAnimalInteraction(Ped, Cavallo, -224471938, GetHashKey("p_carrot02x"), 0) --Animazione
                
                local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 0)
                local valueStamina = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 1)
                    
                    if not tonumber(valueHealth) then valueHealth = 0 end
                    if not tonumber(valueStamina) then valueStamina = 0 end
                Citizen.Wait(3500)
                Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 0, valueHealth + 30)
                Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 1, valueStamina + 30)
            
            --end
        else
        TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
            Citizen.Wait(1000)
                TriggerEvent('srp:eat', 25)
                TriggerEvent('srp:drink', -5)
                local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
                if number then
                print (number)
                Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
                else 
                Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
                end
                Citizen.Wait(1000)
        --end
        
        end
end)


AddEventHandler("syn:apple", function(source)

    local Ped = PlayerPedId()
    local SulCavallo = IsPedOnMount(Ped)
    local _source = source
        if SulCavallo then
            local Cavallo = GetMount(Ped)
            --if IsThisModelAHorse(Cavallo) then
                
                TaskAnimalInteraction(Ped, Cavallo, -224471938, GetHashKey("p_apple01x"), 0) --Animazione
                
                local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 0)
                local valueStamina = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 1)
                    
                    if not tonumber(valueHealth) then valueHealth = 0 end
                    if not tonumber(valueStamina) then valueStamina = 0 end
                Citizen.Wait(3500)
                Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 0, valueHealth + 15)
                Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 1, valueStamina + 15)
            
            --end
        else
        TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
            Citizen.Wait(1000)
                TriggerEvent('srp:eat', 15)
                TriggerEvent('srp:drink', -5)
                local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
                if number then
                print (number)
                Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
                else 
                Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
                end
                Citizen.Wait(1000)
                local closestPlayerPed = GetPlayerPed(closestPlayer)
                local health = GetAttributeCoreValue(closestPlayerPed, 0) 
                local newHealth = health + 5
                local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
                local newStamina = stamina + 5
                local health2 = GetEntityHealth(closestPlayerPed)
                local newHealth2 = health2 + 5
                Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
                Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
                SetEntityHealth(closestPlayerPed, newHealth2)	
        --end
        
        end
end)

-----------------------------------------END OF HORSE FEEDING------------------------------------------------


AddEventHandler("syn:beans", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 30)
            TriggerEvent('srp:drink', 5)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 25
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 25
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:bacon", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 10)
            TriggerEvent('srp:drink', -5)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 25
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 25
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:baconegg", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 40)
            TriggerEvent('srp:drink', 0)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 40
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 40
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:meat_mature", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 30)
            TriggerEvent('srp:drink', 0)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 30
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 30
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:cooked_stringy", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 30)
            TriggerEvent('srp:drink', 0)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 30
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 30
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:meat_bird", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 30)
            TriggerEvent('srp:drink', 0)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 30
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 30
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:applepie", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 30)
            TriggerEvent('srp:drink', 2)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 30
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 30
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:choccookie", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 30)
            TriggerEvent('srp:drink', 0)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 30
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 30
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:meat_gristly", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 30)
            TriggerEvent('srp:drink', 5)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 30
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 30
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:bakedbread", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 30)
            TriggerEvent('srp:drink', 0)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 35
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 35
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:caramel", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 10)
            TriggerEvent('srp:drink', 0)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 15
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 15
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:applemash", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 10)
            TriggerEvent('srp:drink', 5)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 15
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 15
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:banannamash", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 10)
            TriggerEvent('srp:drink', 5)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 15
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 15
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:grapes", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 10)
            TriggerEvent('srp:drink', 5)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 15
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 15
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:tomato", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 10)
            TriggerEvent('srp:drink', 5)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 15
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 15
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:bread", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 10)
            TriggerEvent('srp:drink', 0)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 15
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 15
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)


AddEventHandler("syn:cottoncandy", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 10)
            TriggerEvent('srp:drink', 0)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 15
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 15
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)


AddEventHandler("syn:orange", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 15)
            TriggerEvent('srp:drink', 10)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 15
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 15
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:corn", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 10)
            TriggerEvent('srp:drink', -5)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 15
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 15
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:dixonapple", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 10)
            TriggerEvent('srp:drink', 10)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 15
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 15
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:venison", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 10)
            TriggerEvent('srp:drink', -10)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 25
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 25
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)


AddEventHandler("syn:banana", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 10)
            TriggerEvent('srp:drink', 5)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 25
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 25
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:potato", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 10)
            TriggerEvent('srp:drink', -5)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 25
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 25
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)


AddEventHandler("syn:ginseng", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 10)
            TriggerEvent('srp:drink', 0)
            -- Citizen.InvokeNative(0x4AF5A4C7B9157D14, PlayerPedId(), 0, 100.0) --Health Boost
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
            print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
            end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 30
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 25
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)


AddEventHandler("syn:oleandersage", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 10)
            TriggerEvent('srp:drink', 0)
            -- Citizen.InvokeNative(0x4AF5A4C7B9157D14, PlayerPedId(), 0, 100.0) --Health Boost
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
            print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
            end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 30
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 25
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:whitesage", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 10)
            TriggerEvent('srp:drink', 0)
            -- Citizen.InvokeNative(0x4AF5A4C7B9157D14, PlayerPedId(), 0, 100.0) --Health Boost
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
            print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
            end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 30
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 25
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:yarrow", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 10)
            TriggerEvent('srp:drink', 0)
            -- Citizen.InvokeNative(0x4AF5A4C7B9157D14, PlayerPedId(), 1, 100.0) --Stamina Boost
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
            print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
            end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 30
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 25
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:asprin", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 5)
            TriggerEvent('srp:drink', 0)
            Citizen.InvokeNative(0x4AF5A4C7B9157D14, PlayerPedId(), 0, 50.0) --Health
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
            print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
            end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 40
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 40
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:cocagum", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 10)
            TriggerEvent('srp:drink', 0)
            Citizen.InvokeNative(0x4AF5A4C7B9157D14, PlayerPedId(), 1, 50.0) --Stamina Boost
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
            print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
            end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 10
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 10
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:heroin", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 10)
            TriggerEvent('srp:drink', 0)
            Citizen.InvokeNative(0x4AF5A4C7B9157D14, PlayerPedId(), 1, 150.0) --Stamina Boost
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
            print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
            end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 10
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 10
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:venisonmeal", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 30)
            TriggerEvent('srp:drink', 0)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 25
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 25
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:carrotsoup", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 30)
            TriggerEvent('srp:drink', 5)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 25
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 25
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:chickensoup", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:eat', 30)
            TriggerEvent('srp:drink', 5)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 25
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 25
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:peach", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:drink', 10)
            TriggerEvent('srp:eat', 25)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 15
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 15
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:fish", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:drink', 5)
            TriggerEvent('srp:eat', 30)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 30
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 30
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:bakedfish", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:drink', 5)
            TriggerEvent('srp:eat', 35)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)
            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 35
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 35
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	
	

end)

AddEventHandler("syn:salmon", function(source)

    local _source = source
	TaskItemInteraction(PlayerPedId(), nil, GetHashKey("EAT_MULTI_BITE_FOOD_SPHERE_D8-2_SANDWICH_QUICK_LEFT_HAND"), true, 0, 0)
        Citizen.Wait(1000)
            TriggerEvent('srp:drink', -10)
            TriggerEvent('srp:eat', 60)
			local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
			if number then
			print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
			else 
			Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
			end
            Citizen.Wait(1000)

            local closestPlayerPed = GetPlayerPed(closestPlayer)
            local health = GetAttributeCoreValue(closestPlayerPed, 0) 
            local newHealth = health + 20
            local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
            local newStamina = stamina + 20
            local health2 = GetEntityHealth(closestPlayerPed)
            local newHealth2 = health2 + 10
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
            Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
            SetEntityHealth(closestPlayerPed, newHealth2)	

end)

local status = false

AddEventHandler("syn:medicine", function(source)
    
    if status == false then
    local playerPed = PlayerPedId()
		local propEntity = CreateObject(GetHashKey('p_bottleJD01x'), GetEntityCoords(PlayerPedId()), false, false, 1, 1, 0)
		TaskItemInteraction_2(PlayerPedId(), 1737033966, propEntity, GetHashKey("p_bottleJD01x_ph_r_hand"), GetHashKey("DRINK_BOTTLE@Bottle_Cylinder_D1-3_H30-5_Neck_A13_B2-5_UNCORK"), true, 0, 0)
        status = true
        Citizen.Wait(10000)
		for i=1, 10 do
            
				local closestPlayerPed = GetPlayerPed(closestPlayer)
				local health = GetAttributeCoreValue(closestPlayerPed, 0) 
				local newHealth = health + 40
				local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
				local newStamina = stamina + 40
				local health2 = GetEntityHealth(closestPlayerPed)
                local newHealth2 = health2 + 40
				Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
                Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
                -- Citizen.InvokeNative(0x4AF5A4C7B9157D14, PlayerPedId(), 0, 200.0) --Health Boost
				SetEntityHealth(closestPlayerPed, newHealth2)	
						
        end
    elseif status == true then
        TriggerEvent("vorp:TipBottom", "You're already drinking a Medicine", 4000)
    end
    status = false

end)


AddEventHandler("syn:ginsengelixir", function(source)
    
    if status == false then
    local playerPed = PlayerPedId()
		local propEntity = CreateObject(GetHashKey('p_bottleJD01x'), GetEntityCoords(PlayerPedId()), false, false, 1, 1, 0)
		TaskItemInteraction_2(PlayerPedId(), 1737033966, propEntity, GetHashKey("p_bottleJD01x_ph_r_hand"), GetHashKey("DRINK_BOTTLE@Bottle_Cylinder_D1-3_H30-5_Neck_A13_B2-5_UNCORK"), true, 0, 0)
        status = true
        Citizen.Wait(10000)
		for i=1, 10 do
            
				local closestPlayerPed = GetPlayerPed(closestPlayer)
				local health = GetAttributeCoreValue(closestPlayerPed, 0) 
				local newHealth = health + 40
				local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
				local newStamina = stamina + 40
				local health2 = GetEntityHealth(closestPlayerPed)
                local newHealth2 = health2 + 40
				Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
                Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
                Citizen.InvokeNative(0x4AF5A4C7B9157D14, PlayerPedId(), 0, 200.0) --Health Boost
				SetEntityHealth(closestPlayerPed, newHealth2)	
						
        end
    elseif status == true then
        TriggerEvent("vorp:TipBottom", "You're already drinking a Ginseng Elixir", 4000)
    end
    status = false

end)

AddEventHandler("syn:cocacola", function(source)
    
    if status == false then
    local playerPed = PlayerPedId()
		local propEntity = CreateObject(GetHashKey('p_bottleJD01x'), GetEntityCoords(PlayerPedId()), false, false, 1, 1, 0)
		TaskItemInteraction_2(PlayerPedId(), 1737033966, propEntity, GetHashKey("p_bottleJD01x_ph_r_hand"), GetHashKey("DRINK_BOTTLE@Bottle_Cylinder_D1-3_H30-5_Neck_A13_B2-5_UNCORK"), true, 0, 0)
        status = true
        Citizen.Wait(10000)
		for i=1, 10 do
            
				local closestPlayerPed = GetPlayerPed(closestPlayer)
				local health = GetAttributeCoreValue(closestPlayerPed, 0) 
				local newHealth = health + 40
				local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
				local newStamina = stamina + 40
				local health2 = GetEntityHealth(closestPlayerPed)
                local newHealth2 = health2 + 40
				Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
                Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
                Citizen.InvokeNative(0x4AF5A4C7B9157D14, PlayerPedId(), 1, 200.0) --Health Boost
				SetEntityHealth(closestPlayerPed, newHealth2)	
						
        end
    elseif status == true then
        TriggerEvent("vorp:TipBottom", "You're already drinking a Coca-Cola", 4000)
    end
    status = false

end)

AddEventHandler("syn:milk", function(source)
    
    if status == false then
    local playerPed = PlayerPedId()
		local propEntity = CreateObject(GetHashKey('p_bottleJD01x'), GetEntityCoords(PlayerPedId()), false, false, 1, 1, 0)
		TaskItemInteraction_2(PlayerPedId(), 1737033966, propEntity, GetHashKey("p_bottleJD01x_ph_r_hand"), GetHashKey("DRINK_BOTTLE@Bottle_Cylinder_D1-3_H30-5_Neck_A13_B2-5_UNCORK"), true, 0, 0)
        status = true
        Citizen.Wait(10000)
		for i=1, 10 do
            
				local closestPlayerPed = GetPlayerPed(closestPlayer)
				local health = GetAttributeCoreValue(closestPlayerPed, 0) 
				local newHealth = health + 10
				local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
				local newStamina = stamina + 10
				local health2 = GetEntityHealth(closestPlayerPed)
                local newHealth2 = health2 + 10
				Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
                Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
                -- Citizen.InvokeNative(0x4AF5A4C7B9157D14, PlayerPedId(), 1, 200.0) --Health Boost
				SetEntityHealth(closestPlayerPed, newHealth2)	
						
        end
    elseif status == true then
        TriggerEvent("vorp:TipBottom", "You're already drinking Milk", 4000)
    end
    status = false

end)




AddEventHandler("syn:water", function(source)
    local playerPed = PlayerPedId()
    prop_name = 's_agedpiraterum01x'
    local x, y, z = table.unpack(GetEntityCoords(playerPed))
    local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
    local boneIndex = GetEntityBoneIndexByName(playerPed, "PH_R_Hand")
    



    RequestAnimDict("amb_rest_drunk@world_human_drinking@male_a@idle_a")
    while not HasAnimDictLoaded("amb_rest_drunk@world_human_drinking@male_a@idle_a") do
        Citizen.Wait(100)
    end


    
    

    AttachEntityToEntity(prop, playerPed, boneIndex, 0.0, -0.0, 0.0, 0.0, 0.0, -0.0, true, true, false, true, 1, true)

    TaskPlayAnim(ped, "amb_rest_drunk@world_human_drinking@male_a@idle_a", "idle_a", 8.0, -8.0, 5000, 31, 0, true, 0, false, 0, false)
    Wait(60000)
    DeleteObject(prop)
    ClearPedTasks(playerPed)
    ClearPedSecondaryTask(playerPed)
    

Citizen.Wait(5000)
            TriggerEvent('srp:drink', 30)
            TriggerEvent('srp:eat', 0)
            local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
            if number then
            print (number)
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
            else 
            Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
            end
            Citizen.Wait(1000)
    --end
end)








RegisterNetEvent("syn:horsestimulant")
AddEventHandler("syn:horsestimulant", function(source)

    local Ped = PlayerPedId()
    local SulCavallo = IsPedOnMount(Ped)
    local _source = source
        
            local Cavallo = GetMount(Ped)
            --if IsThisModelAHorse(Cavallo) then
                
                --TaskAnimalInteraction(PlayerPedId(), Cavallo,-1355254781, 0, 0) --stem
                TaskAnimalInteraction(PlayerPedId(), Cavallo, -1355254781, GetHashKey("p_cs_syringe01x"), 0)

                local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 0)
                local valueStamina = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 1)
                    
                    if not tonumber(valueHealth) then valueHealth = 0 end
                    if not tonumber(valueStamina) then valueStamina = 0 end
                Citizen.Wait(3500)
                Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 0, valueHealth + 35)
                Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 1, valueStamina + 35)


                Citizen.InvokeNative(0xF6A7C08DF2E28B28, Cavallo, 0, 1000.0)
                Citizen.InvokeNative(0xF6A7C08DF2E28B28, Cavallo, 1, 1000.0)
                    
                Citizen.InvokeNative(0x50C803A4CD5932C5, true) --core
                Citizen.InvokeNative(0xD4EE21B7CC7FD350, true) --core
                PlaySoundFrontend("Core_Fill_Up", "Consumption_Sounds", true, 0)
end)
        
        

RegisterNetEvent('syn:brush')
AddEventHandler('syn:brush', function(source)
    local _source = source
    local Ped = PlayerPedId()
    local Cavallo = Citizen.InvokeNative(0x4C8B59171957BCF7, PlayerPedId())
    TriggerEvent("StressaPlayer", 10)
    local pCoords = GetEntityCoords(Ped)
    local cCoords = GetEntityCoords(Cavallo)
    local Distanza = GetDistanceBetweenCoords(pCoords, cCoords)
        if Distanza < 2.0 then
        TriggerEvent("vorp:TipRight", "You used the brush", 5000)
        --TaskAnimalInteraction(Ped, Cavallo, 1968415774, GetHashKey("P_BRUSHHORSE02X"), 0)
        TaskAnimalInteraction(Ped, Cavallo, 554992710, GetHashKey("P_BRUSHHORSE02X"), 0)
         
        local valueHealth = Citizen.InvokeNative(0x36731AC041289BB1, Cavallo, 0) -- Controlla la vita del cavallo
        if not tonumber(valueHealth) then valueHealth = 0 end
        Citizen.Wait(3000)
        Citizen.InvokeNative(0xC6258F41D86676E0, Cavallo, 0, valueHealth + 5) -- Cura il cavallo di poco (5)
        Citizen.InvokeNative(0x6585D955A68452A5, Cavallo) -- Pulisce il cavallo
        Citizen.InvokeNative(0xB5485E4907B53019, Cavallo) -- Setta il cavallo bagnato
        
        else
        TriggerEvent("vorp:TipRight", "You are not near your horse", 3000) 
        Wait(0)
        end
end)



--stew use for later camp upgrades
keys = {
    -- Letter E
    ["SPACEBAR"] = 0xD9D0E1C0
}

function whenKeyJustPressed(key)  ---iscontorlpressed doesnt work in vehicles or some shit, this works
    if Citizen.InvokeNative(0x580417101DDB492F, 0, key) then
        return true
    else
        return false
    end
end


Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(1)
        local player = PlayerPedId()
        local Coords = GetEntityCoords(player)
        local stew = DoesObjectOfTypeExistAtCoords(Coords.x, Coords.y, Coords.z, 1.5, GetHashKey("p_kettle03x"), 0) -- (-808559472)
        if stew ~= false then 
            TriggerEvent("vorp:TipBottom", "Press [SPACEBAR] to get stew", 2000) 
            if whenKeyJustPressed(keys["SPACEBAR"]) then

                
                    local bowl = CreateObject("p_bowl04x_stew", GetEntityCoords(PlayerPedId()), true, true, false, false, true)
                    local spoon = CreateObject("p_spoon01x", GetEntityCoords(PlayerPedId()), true, true, false, false, true)
                    
                    Citizen.InvokeNative(0x669655FFB29EF1A9, bowl, 0, "Stew_Fill", 1.0)
                    Citizen.InvokeNative(0xCAAF2BCCFEF37F77, bowl, 20)
                    
                    Citizen.InvokeNative(0xCAAF2BCCFEF37F77, spoon, 82)
                    
                    TaskItemInteraction_2(PlayerPedId(), 599184882, bowl, GetHashKey("p_bowl04x_stew_ph_l_hand"), -583731576, 1, 0, -1.0)
                    TaskItemInteraction_2(PlayerPedId(), 599184882, spoon, GetHashKey("p_spoon01x_ph_r_hand"), -583731576, 1, 0, -1.0)
                    
                    Citizen.InvokeNative(0xB35370D5353995CB, PlayerPedId(), -583731576, 1.0)

                    Citizen.Wait(5000)

                    TriggerEvent('srp:drink', 40)
                    TriggerEvent('srp:eat', 60)
                    local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
                    if number then
                    print (number)
                    Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
                    else 
                    Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
                    end
                    Citizen.Wait(5000)
        
                    local closestPlayerPed = GetPlayerPed(closestPlayer)
                    local health = GetAttributeCoreValue(closestPlayerPed, 0) 
                    local newHealth = health + 40
                    local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
                    local newStamina = stamina + 40
                    local health2 = GetEntityHealth(closestPlayerPed)
                    local newHealth2 = health2 + 40
                    Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
                    Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
                    SetEntityHealth(closestPlayerPed, newHealth2)	
        
                
            end
        end
    end
end) 


--stew use for later camp upgrades
keys = {
    -- Letter E
    ["SPACEBAR"] = 0xD9D0E1C0
}

function whenKeyJustPressed(key)  ---iscontorlpressed doesnt work in vehicles or some shit, this works
    if Citizen.InvokeNative(0x580417101DDB492F, 0, key) then
        return true
    else
        return false
    end
end


Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(1)
        local player = PlayerPedId()
        local Coords = GetEntityCoords(player)
        local stew = DoesObjectOfTypeExistAtCoords(Coords.x, Coords.y, Coords.z, 1.5, GetHashKey("S_CAMPFIRECOMBINED01X"), 0) -- (-808559472)
        if stew ~= false then 
            TriggerEvent("vorp:TipBottom", "Press [SPACEBAR] to get stew", 2000) 
            if whenKeyJustPressed(keys["SPACEBAR"]) then

                
                    local bowl = CreateObject("p_bowl04x_stew", GetEntityCoords(PlayerPedId()), true, true, false, false, true)
                    local spoon = CreateObject("p_spoon01x", GetEntityCoords(PlayerPedId()), true, true, false, false, true)
                    
                    Citizen.InvokeNative(0x669655FFB29EF1A9, bowl, 0, "Stew_Fill", 1.0)
                    Citizen.InvokeNative(0xCAAF2BCCFEF37F77, bowl, 20)
                    
                    Citizen.InvokeNative(0xCAAF2BCCFEF37F77, spoon, 82)
                    
                    TaskItemInteraction_2(PlayerPedId(), 599184882, bowl, GetHashKey("p_bowl04x_stew_ph_l_hand"), -583731576, 1, 0, -1.0)
                    TaskItemInteraction_2(PlayerPedId(), 599184882, spoon, GetHashKey("p_spoon01x_ph_r_hand"), -583731576, 1, 0, -1.0)
                    
                    Citizen.InvokeNative(0xB35370D5353995CB, PlayerPedId(), -583731576, 1.0)

                    Citizen.Wait(5000)

                    TriggerEvent('srp:drink', 40)
                    TriggerEvent('srp:eat', 60)
                    local number = Citizen.InvokeNative(0x36731AC041289BB1, PlayerPedId(), 1)
                    if number then
                    print (number)
                    Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, number + 25)
                    else 
                    Citizen.InvokeNative(0xC6258F41D86676E0, PlayerPedId(),1, 25)
                    end
                    Citizen.Wait(5000)
        
                    local closestPlayerPed = GetPlayerPed(closestPlayer)
                    local health = GetAttributeCoreValue(closestPlayerPed, 0) 
                    local newHealth = health + 40
                    local stamina = GetAttributeCoreValue(closestPlayerPed, 1)
                    local newStamina = stamina + 40
                    local health2 = GetEntityHealth(closestPlayerPed)
                    local newHealth2 = health2 + 40
                    Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 0, newHealth) --core
                    Citizen.InvokeNative(0xC6258F41D86676E0, closestPlayerPed, 1, newStamina) --core
                    SetEntityHealth(closestPlayerPed, newHealth2)	
        
                
            end
        end
    end
end) 


