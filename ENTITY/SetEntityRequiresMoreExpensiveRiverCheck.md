---
ns: ENTITY
aliases: ["0x694E00132F2823ED"]
---
## SET_ENTITY_REQUIRES_MORE_EXPENSIVE_RIVER_CHECK

```c
// 0x694E00132F2823ED 0x40C84A74
void SET_ENTITY_REQUIRES_MORE_EXPENSIVE_RIVER_CHECK(Entity entity, BOOL toggle);
```

Optimizes the handling of entities in missions by enforcing a more detailed collision and physics check when entities are in or near river environments. This is particularly useful for scenarios where players might travel quickly down rivers, ensuring accurate interactions with the water.

```
NativeDB Introduced: v323
```

## Parameters
* **entity**: The entity to apply this setting to. It enhances physics and collision checks for this entity in river environments.
* **toggle**: Set to `true` to enable more detailed river checks for the entity, making it "important" in terms of physics interactions. Set to `false` to use standard river checks.


## Examples
```lua
RegisterCommand("rivercheck_enable", function()
    -- Retrieve the player's ped
    local playerPed = PlayerPedId()
    
     -- Retrieve the vehicle the player is in
    local vehicle = GetVehiclePedIsIn(playerPed, false)
    
    -- If the player is not in a vehicle, return
    if (vehicle == 0) then return end
    
    -- Enable more expensive river checks for the vehicle
    SetEntityRequiresMoreExpensiveRiverCheck(vehicle, true)

    -- Don't forget to disable it when you're done
    Wait(10000)

    -- Disable more expensive river checks for the vehicle
    SetEntityRequiresMoreExpensiveRiverCheck(vehicle, false)
end, false)
```