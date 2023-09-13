local function startMatch(blueTeam, redTeam)
  print("=== Partida iniciada! ===")
  print("Blue Team:")
  for _, player in ipairs(blueTeam.players) do
      print(player.name, player.group)
  end
  print("Red Team:")
  for _, player in ipairs(redTeam.players) do
      print(player.name, player.group)
  end

  blueTeam.players = {}
  redTeam.players = {}
end

return startMatch
