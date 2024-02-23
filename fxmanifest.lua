-- Andyyy's Discord: https://discord.gg/andys-development-857672921912836116
-- SimpleDevelopments Discord: https://discord.gg/RWQNhKxfC4

author "Andyyy#7666, N1K0#0001, SimpleDevelopments"
description "ND Core Chat commands"
version "1.0.0"

fx_version "cerulean"
game "gta5"
lua54 "yes"

shared_scripts {
  "@ND_Core/init.lua",
}

client_scripts {
  'client/client.lua'
}

server_scripts {
  'server/server.lua',
  'server/versionChecker.lua'
}

dependency "ND_Core"
