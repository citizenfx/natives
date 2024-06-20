---
ns: NETWORK
---
## NETWORK_CONCEAL_PLAYER

```c
// 0xBBDF066252829606 0x72052DB3
void NETWORK_CONCEAL_PLAYER(Player player, BOOL toggle, BOOL p2);
```

This is what R* uses to hide players in MP interiors.

## Parameters
* **player**: 
* **toggle**: 
* **p2**: 

To manage player visibility with NetworkConcealPlayer, here’s a solid approach:

**General Population (players not in any instance):**

* Use NetworkConcealPlayer to hide players who are in any instance. This way, general population players won’t see or interact with instance players.

**Instance Players (players in a specific instance):**

* Use NetworkConcealPlayer to hide players who aren’t in the same instance. Instance players can still see and interact with the general population but not with players in other instances.

This setup keeps instance players separate from each other while allowing interaction with the general population.


```lua
-- Function to manage player visibility
function concealPlayers(instanceId)
    local allPlayers = GetPlayers()

    for _, player in ipairs(allPlayers) do
        local playerInstance = GetPlayerInstance(player)  -- You need to define this function

        if instanceId == nil then
            -- General population: hide players in any instance
            if playerInstance ~= nil then
                NetworkConcealPlayer(player, true, false)
            else
                NetworkConcealPlayer(player, false, false)
            end
        else
            -- Instance players: hide players not in the same instance
            if playerInstance ~= instanceId then
                NetworkConcealPlayer(player, true, false)
            else
                NetworkConcealPlayer(player, false, false)
            end
        end
    end
end
```
