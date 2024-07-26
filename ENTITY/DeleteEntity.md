---
ns: ENTITY
---

## DELETE_ENTITY

```c
// 0xAE3CBE5BF394C9C9 0xFAA3D236
void DELETE_ENTITY(Entity* entity);
```

Delete the specified entity, and invalidate the passed handle (i.e., the in/out argument).
You might want to check if the entity exists before with [DOES_ENTITY_EXIST](#_0x7239B21A38F536BA).

## Parameters
- **entity**: The entity to delete.

## Examples
```lua
-- Retrieve the vehicle the player is currently in. 
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)

-- Check if the vehicle exists in the game world.
if not DoesEntityExist(vehicle) then 
    -- If the vehicle does not exist, end the execution of the code here.
    return 
end

-- If the vehicle does exist, delete the vehicle entity from the game world.
DeleteEntity(vehicle)
```

```js
// Retrieve the vehicle the player is currently in.
const vehicle = GetVehiclePedIsIn(PlayerPedId(), false);

// Check if the vehicle exists in the game world.
if (!DoesEntityExist(vehicle)) {
  // If the vehicle does not exist, end the execution of the code here.
  return;
}

// If the vehicle does exist, delete the vehicle entity from the game world.
DeleteEntity(vehicle);
```

```cs
using static CitizenFX.Core.Native.API;

// Retrieve the vehicle the player is currently in.
int vehicleHandle = GetVehiclePedIsIn(PlayerPedId(), false);

// Check if the vehicle exists in the game world.
if (!DoesEntityExist(vehicleHandle))
{
    // If the vehicle does not exist, end the execution of the code here.
    return;
}

// If the vehicle does exist, delete the vehicle entity from the game world.
DeleteEntity(ref vehicleHandle);
```