AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    Wait(12000)
    print('^2 ¡[guille_hud] ^4se ha iniciado correctamente!')
end)