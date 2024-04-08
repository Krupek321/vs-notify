fx_version 'adamant'
game 'gta5'
lua54 'yes'

author 'Voice Studio'
description 'Notifications'

client_scripts {
    'client.lua',
    'config.lua'
}

shared_scripts {
    'config.lua',
    '@ox_lib/init.lua'
}

ui_page 'web/index.html'

files {
    'web/index.html',
    'web/style.css',
    'web/app.js'
}

escrow_ignore {
    'config.lua'
}