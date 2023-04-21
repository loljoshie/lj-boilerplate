function bolierLoad(message)
    if Config.bolierLoad then
        print(message)
    end
end

Citizen.CreateThread(function()
    local asciiArt = [[                                                                
     _        _       ____   ___ ___ _     _____ ____  ____  _        _  _____ _____ 
    | |      | |     | __ ) / _ |_ _| |   | ____|  _ \|  _ \| |      / \|_   _| ____|
    | |   _  | |_____|  _ \| | | | || |   |  _| | |_) | |_) | |     / _ \ | | |  _|  
    | |__| |_| |_____| |_) | |_| | || |___| |___|  _ <|  __/| |___ / ___ \| | | |___ 
    |_____\___/      |____/ \___|___|_____|_____|_| \_|_|   |_____/_/   \_|_| |_____|
                                                                                       
    ]]

    -- Print the ASCII art to the console
    bolierLoad(asciiArt)

    -- Print a success message to the console
    bolierLoad(
        "^2lj-boilerplate has successfully loaded! Enjoy the wonderful perks of ^5Vue, Vite & TailwindCSS ^2in one simple to use boilerplate!")
end)

local isNUIopen = false

Citizen.CreateThread(function()
    SetNuiFocus(true, true) -- set NUI focus to true when the boilerplate starts
    SendNUIMessage({
        openNUI = true
    })
    isNUIopen = true
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(0, 249) then -- N key
            if isNUIopen then
                SetNuiFocus(false, false)
                SendNUIMessage({
                    closeNUI = true
                })
                isNUIopen = false
            else
                SetNuiFocus(true, true)
                SendNUIMessage({
                    openNUI = true
                })
                isNUIopen = true
            end
        end
    end
end)
