---
ns: VEHICLE
aliases: ["0x2C1D8B3B19E517CC"]
---
## CAN_CARGOBOB_PICK_UP_ENTITY

```c
// 0x2C1D8B3B19E517CC
cs_type(Any) BOOL CAN_CARGOBOB_PICK_UP_ENTITY(Vehicle cargobob, Entity entity);
```

Determines whether the specified Cargobob can pick up a given entity.

## Parameters
* **cargobob**: The Cargobob helicopter to be checked.
* **entity**: The entity to be checked for pick-up.

## Return value
Returns `true` if the Cargobob can pick up the specified entity, `false` otherwise.

## Examples
```lua

-- This example checks if the player is in a Cargobob and if the Cargobob can pick up the specified entity.

-- Retrieve the player ped.
local playerPed = PlayerPedId()

-- Retrieve the player's vehicle (cargobob).
local cargobob = GetVehiclePedIsIn(playerPed, false)

-- Retrieve the model hash of the cargobob.
local model = GetEntityModel(cargobob)

-- Check if the vehicle exists and if it's a Cargobob. If not, terminate the script.
if not DoesEntityExist(cargobob) or GetHashKey("cargobob") ~= model then
    return
end

local entityID = 15362 -- The entity you want to check if the Cargobob can pick up (this is a random entity ID).

-- Check if the entity exists. If not, terminate the script.
if not DoesEntityExist(entityID) then
    return
end

-- Check if the Cargobob can pick up the specified entity.
if CanCargobobPickUpEntity(vehicle, entityID) then
    print("Cargobob can pick up the specified entity")
else
    print("Cargobob can't pick up the specified entity")
end
```

```js
// This example checks if the player is in a Cargobob and if the Cargobob can pick up the specified entity.

// Retrieve the player ped.
const playerPed = PlayerPedId();

// Retrieve the player's vehicle (cargobob).
const cargobob = GetVehiclePedIsIn(playerPed, false);

// Retrieve the model hash of the cargobob.
const model = GetEntityModel(cargobob);

// Check if the vehicle exists and if it's a Cargobob. If not, terminate the script.
if (!DoesEntityExist(cargobob) || GetHashKey("cargobob") !== model) {
    return;
}

const entityID = 15362; // The entity you want to check if the Cargobob can pick up (this is a random entity ID).

// Check if the entity exists. If not, terminate the script.
if (!DoesEntityExist(entityID)) {
    return;
}

// Check if the Cargobob can pick up the specified entity.
if (CanCargobobPickUpEntity(vehicle, entityID)) {
    console.log("Cargobob can pick up the specified entity");
} else {
    console.log("Cargobob can't pick up the specified entity");
}
```

```cs
// This example checks if the player is in a Cargobob and if the Cargobob can pick up the specified entity.
using static CitizenFX.Core.Native.API;

// Retrieve the player ped.
int playerPed = PlayerPedId();

// Retrieve the player's vehicle (cargobob).
int cargobob = GetVehiclePedIsIn(playerPed, false);

// Retrieve the model hash of the cargobob.
uint model = GetEntityModel(cargobob);

// Check if the vehicle exists and if it's a Cargobob. If not, terminate the script.
if (!DoesEntityExist(cargobob) || model != (uint)GetHashKey("cargobob")) {
    return;
}

int entityID = 15362; // The entity you want to check if the Cargobob can pick up (this is a random entity ID).

// Check if the entity exists. If not, terminate the script.
if (!DoesEntityExist(entityID)) {
    return;
}

// Check if the Cargobob can pick up the specified entity.
if (CanCargobobPickUpEntity(vehicle, entityID)) {
    Debug.WriteLine("Cargobob can pick up the specified entity");
} else {
    Debug.WriteLine("Cargobob can't pick up the specified entity");
}
```
