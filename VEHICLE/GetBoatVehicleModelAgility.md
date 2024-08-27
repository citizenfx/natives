---
ns: VEHICLE
aliases: ["0x5AA3F878A178C4FC", "_GET_VEHICLE_MODEL_MOVE_RESISTANCE"]
---
## GET_BOAT_VEHICLE_MODEL_AGILITY

```c
// 0x5AA3F878A178C4FC 0x87C5D271
float GET_BOAT_VEHICLE_MODEL_AGILITY(Hash modelHash);
```

Retrieves the agility for a specific boat model, including any vehicle mods. Unlike other vehicles where Rockstar Games typically assess performance based on traction, boats use agility as a measure. This static value is distinct from the traction metrics used for other vehicle types.

```
NativeDB Introduced: v323
```

## Parameters
* **modelHash**: The model hash of the boat.

## Return value
Returns the agility value of the specified boat as a float number.

## Examples
```lua
-- This example prints the agility of the player's current boat.

-- Retrieve the player ped.
local playerPed = PlayerPedId()

-- Retrieve the vehicle the player is currently in.
local vehicle = GetVehiclePedIsIn(playerPed, false)

-- Retrieve the model hash of the boat.
local boatHash = GetEntityModel(vehicle)

-- If the vehicle does not exist or is not a boat, end the execution of the code here.
if not DoesEntityExist(vehicle) or not IsThisModelABoat(boatHash) then 
    return 
end

-- Retrieve the agility of the boat.
local agility = GetBoatVehicleModelAgility(boatHash)

-- Print the agility of the boat.
print("Boat Agility: " .. agility)
```

```js
// This example prints the agility of the player's current boat.

// Retrieve the player ped.
const playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in.
const vehicle = GetVehiclePedIsIn(playerPed, false);

// Retrieve the model hash of the boat.
const boatHash = GetEntityModel(vehicle);

// If the vehicle does not exist or is not a boat, end the execution of the code here.
if (!DoesEntityExist(vehicle) || !IsThisModelABoat(boatHash)) {
  return;
}

// Retrieve the agility of the boat.
const agility = GetBoatVehicleModelAgility(boatHash);

// Print the agility of the boat.
console.log(`Boat Agility: ${agility}`);
```

```cs
// This example prints the agility of the player's current boat.
using static CitizenFX.Core.Native.API;

// Retrieve the player ped.
int playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in.
int vehicle = GetVehiclePedIsIn(playerPed, false);

// Retrieve the model hash of the boat.
uint boatHash = GetEntityModel(vehicle);

// If the vehicle does not exist or is not a boat, end the execution of the code here.
if (!DoesEntityExist(vehicle) || !IsThisModelABoat(boatHash)) {
  return;
}

// Retrieve the agility of the boat.
float agility = GetBoatVehicleModelAgility(boatHash);

// Print the agility of the boat.
Debug.WriteLine($"Boat Agility: {agility}");
```
