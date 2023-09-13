local queue = require("queue")
local teams = require("teams")
local startMatch = require("match")

local function formTeamsAndStartMatch()
    local blueTeam = teams.blueTeam
    local redTeam = teams.redTeam

    for group, players in pairs(queue) do
        for _, playerName in ipairs(players) do
            local player = { name = playerName, group = group }

            if #blueTeam.players < 5 then
                teams.addPlayerToTeam(player, blueTeam)
            else
                teams.addPlayerToTeam(player, redTeam)
            end
        end
    end

    if #blueTeam.players == 5 and #redTeam.players == 5 then
        startMatch(blueTeam, redTeam)
    end
end

formTeamsAndStartMatch()
