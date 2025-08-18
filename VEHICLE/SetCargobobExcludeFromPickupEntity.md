---
ns: VEHICLE
aliases: ["0x1F34B0626C594380"]
---
## SET_CARGOBOB_EXCLUDE_FROM_PICKUP_ENTITY

```c
// 0x1F34B0626C594380
void SET_CARGOBOB_EXCLUDE_FROM_PICKUP_ENTITY(Vehicle cargobob, Entity entity);
```

Prevents a specified entity from being detached from a Cargobob, even in the event of collisions.


## Parameters
* **cargobob**: The Cargobob helicopter from which the entity is not to be detached
* **entity**: The entity to remain attached to the Cargobob.

## Examples
```lua
-- This example prevents a specific entity from being detached from a Cargobob, even in the event of collisions.

-- Retrieve the player ped
local playerPed = PlayerPedId()

-- Retrieve the player's vehicle (cargobob)
local cargobob = GetVehiclePedIsIn(playerPed, false)

-- Retrieve the model hash of the cargobob.
local cargobobModel = GetEntityModel(cargobob)

-- Check if the cargobob exists. If not, terminate the script.
if not DoesEntityExist(cargobob) or GetHashKey("cargobob") ~= cargobobModel then 
    -- If the cargobob does not exist, end the execution of the code here.
    return 
end

local entityID = 15362 -- The entity you want to prevent from being detached from the Cargobob (this is a random entity ID).

-- Check if the entity exists; if not, terminate the script.
if not DoesEntityExist(yourEntity) then
    return
end

-- Prevent the entity from being detached from the Cargobob.
SetCargobobExcludeFromPickupEntity(cargobob, entityID)
```

```js
// This example prevents a specific entity from being detached from a Cargobob, even in the event of collisions.

// Retrieve the player ped
const playerPed = PlayerPedId();

// Retrieve the player's vehicle (cargobob)
const cargobob = GetVehiclePedIsIn(playerPed, false);

// Retrieve the model hash of the cargobob.
const cargobobModel = GetEntityModel(cargobob);

// Check if the cargobob exists. If not, terminate the script.
if (!DoesEntityExist(cargobob) || GetHashKey("cargobob") !== cargobobModel) {
    // If the cargobob does not exist, end the execution of the code here.
    return;
}

const entityID = 15362; // The entity you want to prevent from being detached from the Cargobob (this is a random entity ID).

// Check if the entity exists; if not, terminate the script.
if (!DoesEntityExist(entityID)) {
    return;
}

// Prevent the entity from being detached from the Cargobob.
SetCargobobExcludeFromPickupEntity(cargobob, entityID);
```

```cs
// This example prevents a specific entity from being detached from a Cargobob, even in the event of collisions.
using static CitizenFX.Core.Native.API;

// Retrieve the player ped
int playerPed = PlayerPedId();

// Retrieve the player's vehicle (cargobob)
int cargobob = GetVehiclePedIsIn(playerPed, false);

// Retrieve the model hash of the cargobob.
uint cargobobModel = GetEntityModel(cargobob);

// Check if the cargobob exists. If not, terminate the script.
if (!DoesEntityExist(cargobob) || (uint)GetHashKey("cargobob") != cargobobModel) {
    // If the cargobob does not exist, end the execution of the code here.
    return;
}

int entityID = 15362; // The entity you want to prevent from being detached from the Cargobob (this is a random entity ID).

// Check if the entity exists; if not, terminate the script.
if (!DoesEntityExist(entityID)) {
    return;
}

// Prevent the entity from being detached from the Cargobob.
SetCargobobExcludeFromPickupEntity(cargobob, entityID);
```
