-- Script Exports --
NDCore = exports["ND_Core"]:GetCoreObject()

-- /me Command -- 

RegisterCommand("me", function(source, args, rawCommand, text)
  local player = source
  local players = NDCore.Functions.GetPlayers()
  local playerCoords = GetEntityCoords(GetPlayerPed(player))
  for serverPlayer, _ in pairs(players) do
      local targetCoords = GetEntityCoords(GetPlayerPed(serverPlayer))
      if (#(playerCoords - targetCoords) < 20.0) then
          TriggerClientEvent("chat:addMessage", serverPlayer, {
              color = {255, 0, 0},
              args = {"^*^6[ME] " .. players[player].firstname .. " " .. players[player].lastname .. " [" .. players[player].job .. "] (#" .. player .. ")", table.concat(args, " ")}
          })
      end
  end
end, false)

RegisterCommand('id', function(source, args, rawCommand, text)
  local player = source
  local players = NDCore.Functions.GetPlayers()
  local playerCoords = GetEntityCoords(GetPlayerPed(player))

  for serverPlayer, _ in pairs(players) do
    local targetCoords = GetEntityCoords(GetPlayerPed(serverPlayer))
    if (#(playerCoords - targetCoords) < 20.0) then
      TriggerClientEvent('chat:addMessage', serverPlayer, {
        color = {255, 0, 0},
        multiline = true,
        args = {"~w~[~b~SimpleNDChat~w~] ", "Player hands you their ID: " .. players[player].firstname .. " " .. players[player].lastname .. " [" .. players[player].job .. "] (#" .. player .. ")"}
      })
    end
  end
end)

RegisterCommand("do", function(source, args, rawCommand, text)
  local player = source
  local players = NDCore.Functions.GetPlayers()
  local playerCoords = GetEntityCoords(GetPlayerPed(player))
  for serverPlayer, _ in pairs(players) do
      local targetCoords = GetEntityCoords(GetPlayerPed(serverPlayer))
      if (#(playerCoords - targetCoords) < 20.0) then
          TriggerClientEvent("chat:addMessage", serverPlayer, {
              color = {255, 0, 0},
              args = {"^*^8[DO] " .. players[player].firstname .. " " .. players[player].lastname .. " [" .. players[player].job .. "] (#" .. player .. ")", table.concat(args, " ")}
          })
      end
  end
end, false)

RegisterCommand('gme', function(source, args)
  local player = source
  local source = source
  local character = NDCore.Functions.GetPlayers()

  TriggerClientEvent('chat:addMessage', -1, {
    color = {255, 0, 0},
    multiline = true,
    args = {"^*^1[GME] " .. character[player].firstname .. " " .. character[player].lastname .. " [" .. character[player].job .. "] (#" .. player .. ")", table.concat(args, " ")}
  })
end)

RegisterCommand('ooc', function(source, args)
  local player = source
  local source = source
  local character = NDCore.Functions.GetPlayers()

  TriggerClientEvent('chat:addMessage', -1, {
    color = {255, 0, 0},
    multiline = true,
    args = {"^*^4[OOC] " .. GetPlayerName(source) .. "  [" .. character[player].job .. "] (#" .. player .. ")", table.concat(args, " ")}
  })
end)

AddEventHandler('chatMessage', function(source, name, message)
  local player = source
  local source = source
  local Players = GetPlayers()
  local character = NDCore.Functions.GetPlayers()

  if string.sub(message, 1, string.len("/")) == "/" then
    return
  else
      TriggerClientEvent('chat:addMessage', -1, {
        color = {255, 0, 0},
        multiline = true,
        args = {"^*^4[OOC] " .. GetPlayerName(source) .. "  [" .. character[player].job .. "] (#" .. player .. ")", message}
      })
    end
  CancelEvent()
end)