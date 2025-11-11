fx_version 'cerulean'
lua54 'yes'
game 'gta5'

author 'damian'
description 'Police Armory with NUI'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_scripts {
    'client/main.lua'
}

server_scripts {
    'server/main.lua'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/*.js'
}

dependencies {
    'qb-core',
    'ox_target',
    'ox_inventory'
}

escrow_ignore {
    'config.lua',
    'client/main.lua',
    'server/main.lua'
}
