---
ns: NETWORK
---
## NETWORK_CONCEAL_PLAYER

```c
// 0xBBDF066252829606 0x72052DB3
void NETWORK_CONCEAL_PLAYER(Player player, BOOL toggle, BOOL bAllowDamagingWhileConcealed);
```

This is what R* uses to hide players in MP interiors.

To manage player visibility with NetworkConcealPlayer, here’s a solid approach:

**General Population (players not in any instance):**

* Use NetworkConcealPlayer to hide players who are in any instance. This way, general population players won’t see or interact with instance players.

**Instance Players (players in a specific instance):**

* Use NetworkConcealPlayer to hide players who aren’t in the same instance. Instance players can still see and interact with the general population but not with players in other instances.

This setup keeps instance players separate from each other while allowing interaction with the general population.

## Parameters
* **player**:
* **toggle**:
* **bAllowDamagingWhileConcealed**:

## Examples
```lua
function GetPlayerInstance(player)
	-- you can replace this with your own data
    local playerServerId = GetPlayerServerId(player)
    return Player(playerServerId).state.instance_id or 0
end

local playerId = PlayerId()
-- Function to manage player visibility
function concealPlayers()
    local allPlayers = GetActivePlayers()
	local localPlayerInstance = GetPlayerInstance(playerId)

    for _, player in ipairs(allPlayers) do
        if player == playerId then goto continue end

        local playerInstance = GetPlayerInstance(player)

		if playerInstance == localPlayerInstance then
			-- if we're in the same instance then we want to be able to see them
			NetworkConcealPlayer(player, false, false)
		else
			-- they're in a different instance, so hide them
			NetworkConcealPlayer(player, true, false)
		end

		::continue::
    end
end

CreateThread(function()
	while true do
		concealPlayers()
		Wait(250)
	end
end)
```
