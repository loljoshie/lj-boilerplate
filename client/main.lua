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
    bolierLoad("^2lj-boilerplate has successfully loaded! Enjoy the wonderful perks of ^5Vue, Vite & TailwindCSS ^2in one simple to use boilerplate!")
  end)
  