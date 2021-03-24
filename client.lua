-- Guille_Hud Optimized by VisiBait -> https://github.com/visibait. Original author: guillerp8 -> https://github.com/guillerp8

ESX = nil 

Citizen.CreateThread(function() 
    while ESX == nil do 
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) 
        Citizen.Wait(20) 
    end 
end)



Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2000)
        local player = PlayerPedId()

        if IsPedSittingInAnyVehicle(player) then 
            Citizen.Wait(5)
            DisplayRadar(true)
        elseif not IsPedSittingInAnyVehicle(player) then
            Citizen.Wait(5)
            DisplayRadar(false)
        end
        
        TriggerEvent('esx_status:getStatus', 'hunger', function(status) comida = status.val / 10000 end)
       
        TriggerEvent('esx_status:getStatus', 'thirst', function(status) bebida = status.val / 10000 end)
       
        TriggerEvent("guille_stress:getStress", function(status) estres = status end)
        
        SendNUIMessage({

            coche = IsPedSittingInAnyVehicle(player);
            vida = GetEntityHealth(player)-100;
            escudito = GetPedArmour(player);
            bebida = bebida;
            comida = comida;
            estres = estres;

        })
        

    end
end)
