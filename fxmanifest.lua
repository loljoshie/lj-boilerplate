-- Set the FX version and game type
fx_version "cerulean"
game "gta5"

-- Resource metadata
author "loljoshie"
description "Vite, Vue & TailwindCSS boilerplate made for FiveM."
version "1.0"

-- Define client-side scripts
client_scripts {
    "client/main.lua"
}

-- Define server-side scripts
server_scripts {
    "server/main.lua"
}

-- Define scripts shared between client and server
shared_scripts {
    "config.lua"
}

-- Define files that should be included in the resource
files {
    "html/*",
    "html/assets/*",
    "html/img/*",
    "html/index.html"
}

-- Set the UI page to be displayed
ui_page "html/index.html"