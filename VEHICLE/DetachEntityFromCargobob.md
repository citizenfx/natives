---
ns: VEHICLE
aliases: ["0xAF03011701811146", "_DETACH_ENTITY_FROM_CARGOBOB"]
---
## DETACH_ENTITY_FROM_CARGOBOB

```c
// 0xAF03011701811146
cs_type(Any) BOOL DETACH_ENTITY_FROM_CARGOBOB(Vehicle vehicle, Entity entity);
```

Detaches the specified entity currently being carried by a Cargobob.

## Parameters
* **vehicle**: The Cargobob helicopter.
* **entity**: The entity to be detached.

## Return value
This native returns `true` if the entity was successfully detached from the cargobob, `false` otherwise.

## Examples
```lua
-- This example detaches a specific entity from a Cargobob.

-- Retrieve the player ped.
local playerPed = PlayerPedId()

-- Retrieve the player's vehicle (cargobob).
local cargobob = GetVehiclePedIsIn(playerPed, false)

-- Retrieve the model hash of the cargobob.
local cargobobModel = GetEntityModel(cargobob)

-- Check if the vehicle exists and if it's a Cargobob. If not, terminate the script.
if not DoesEntityExist(cargobob) or cargobobModel ~= GetHashKey("cargobob") then
    return
end

local entityID = 15362 -- The entity you want to detach from the Cargobob (this is a random entity ID).

-- Check if the entity exists; if not, terminate the script.
if not DoesEntityExist(yourEntity) then
    return
end

-- Detach the entity from the Cargobob.
local result = DetachEntityFromCargobob(cargobob, entityID)

-- Print the result to the console.
print(result)
```

```js
// This example detaches a specific entity from a Cargobob.

// Retrieve the player ped.
const playerPed = PlayerPedId();

// Retrieve the player's vehicle.
const cargobob = GetVehiclePedIsIn(playerPed, false);

// Retrieve the model hash of the cargobob.
const cargobobModel = GetEntityModel(cargobob);

// Check if the player is in a Cargobob and if the vehicle is a Cargobob; if not, terminate the script.
if (!DoesEntityExist(cargobob) || cargobobModel !== GetHashKey("cargobob")) {
    return;
}

const entityID = 15362; // The entity you want to detach from the Cargobob (this is a random entity ID).

// Check if the entity exists; if not, terminate the script.
if (!DoesEntityExist(entityID)) {
    return;
}

// Detach the entity from the Cargobob.
const result = DetachEntityFromCargobob(cargobob, entityID);

// Print the result to the console.
console.log(result);
```

```cs
using static CitizenFX.Core.Native.API;
// This example detaches a specific entity from a Cargobob.

// Retrieve the player ped.
Ped playerPed = PlayerPedId();

// Retrieve the player's vehicle.
Vehicle cargobob = GetVehiclePedIsIn(playerPed, false);

// Retrieve the model hash of the cargobob.
uint cargobobModel = (uint)GetEntityModel(cargobob);

// Check if the player is in a Cargobob and if the vehicle is a Cargobob; if not, terminate the script.
if (!DoesEntityExist(cargobob) || cargobobModel != (uint)GetHashKey("cargobob")) {
    return;
}

int entityID = 15362; // The entity you want to detach from the Cargobob (this is a random entity ID).

// Check if the entity exists; if not, terminate the script.
if (!DoesEntityExist(entityID)) {
    return;
}

// Detach the entity from the Cargobob.
bool result = DetachEntityFromCargobob(cargobob, entityID);

// Print the result to the console.
Debug.WriteLine($"{result}");
```