local blueTeam = { players = {} }
local redTeam = { players = {} }

local function addPlayerToTeam(player, team)
    team.players[#team.players + 1] = player
end

return {
    blueTeam = blueTeam,
    redTeam = redTeam,
    addPlayerToTeam = addPlayerToTeam
}
