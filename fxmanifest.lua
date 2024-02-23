-- Andyyy's Discord: https://discord.gg/andys-development-857672921912836116
-- SimpleDevelopments Discord: https://discord.gg/RWQNhKxfC4

author "Andyyy#7666, N1K0#0001, SimpleDevelopments"
description "ND Chat commands"
version "2.1.2"

fx_version "cerulean"
game "gta5"
lua54 "yes"

shared_scripts {
  "@ND_Core/init.lua",
  "Config.lua"
}

client_scripts {
  'client/client.lua'
}

server_scripts {
  'server/server.lua'
}

dependency "ND_Core"