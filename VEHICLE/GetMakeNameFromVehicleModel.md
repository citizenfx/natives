---
ns: VEHICLE
aliases: ["_GET_MAKE_NAME_FROM_VEHICLE_MODEL"]
---
## GET_MAKE_NAME_FROM_VEHICLE_MODEL

```c
// 0xF7AF4F159FF99F97
char* GET_MAKE_NAME_FROM_VEHICLE_MODEL(Hash modelHash);
```

Retrieves the manufacturer's name for a specified vehicle.

```
NativeDB Introduced: v1868
```

## Parameters
* **modelHash**: The model hash of the vehicle.

## Return value
Returns the display label of the manufacturer if the vehicle model is recognized, or "CARNOTFOUND" if the hash does not correspond to any known vehicle model.

## Examples
```lua
-- This example prints the manufacturer of the player's current vehicle.

-- Retrieve the player ped.
local playerPed = PlayerPedId()

-- Retrieve the vehicle the player is currently in.
local vehicle = GetVehiclePedIsIn(playerPed, false)

-- If the vehicle does not exist, end the execution of the code here.
if not DoesEntityExist(vehicle) then 
    return 
end

-- Retrieve the model hash of the vehicle.
local vehicleHash = GetEntityModel(vehicle)

-- Retrieve the manufacturer of the vehicle.
local manufacturer = GetMakeNameFromVehicleModel(vehicleHash)

-- Print the manufacturer of the vehicle.
print("Vehicle Manufacturer: " .. manufacturer)
```

```js
// This example prints the manufacturer of the player's current vehicle.

// Retrieve the player ped.
const playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in.
const vehicle = GetVehiclePedIsIn(playerPed, false);

// If the vehicle does not exist, end the execution of the code here.
if (!DoesEntityExist(vehicle)) {
  return;
}

// Retrieve the model hash of the vehicle.
const vehicleHash = GetEntityModel(vehicle);

// Retrieve the manufacturer of the vehicle.
const manufacturer = GetMakeNameFromVehicleModel(vehicleHash);

// Print the manufacturer of the vehicle.
console.log(`Vehicle Manufacturer: ${manufacturer}`);
```

```cs
// This example prints the manufacturer of the player's current vehicle.
using static CitizenFX.Core.Native.API;

// Retrieve the player ped.
int playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in.
int vehicle = GetVehiclePedIsIn(playerPed, false);

// If the vehicle does not exist, end the execution of the code here.
if (!DoesEntityExist(vehicle)) {
  return;
}

// Retrieve the model hash of the vehicle.
uint vehicleHash = (uint)GetEntityModel(vehicle);

// Retrieve the manufacturer of the vehicle.
string manufacturer = GetMakeNameFromVehicleModel(vehicleHash);

// Print the manufacturer of the vehicle.
Debug.WriteLine($"Vehicle Manufacturer: {manufacturer}");
```
