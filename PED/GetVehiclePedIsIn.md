---
ns: PED
---
## GET_VEHICLE_PED_IS_IN

```c
// 0x9A9112A0FE9A4713 0xAFE92319
Vehicle GET_VEHICLE_PED_IS_IN(Ped ped, BOOL lastVehicle);
```

Retrieves the vehicle the specified ped is currently in, or the last vehicle they were in.

## Parameters
* **ped**: The target ped
* **lastVehicle**: A boolean value where `false` represents the current vehicle the Ped is in, and `true` represents the last vehicle the Ped was in.

## Return value
The vehicle id. Returns 0 if the ped is/was not in a vehicle.

## Examples
```lua
-- This example gets the vehicle the player is currently in and print the vehicle id.

-- Retrieve the LocalPlayer.
local playerPed = PlayerPedId()

-- Retrieve the vehicle the player is currently in. 
local vehicle = GetVehiclePedIsIn(playerPed, false)

-- Check if the vehicle exists in the game world.
if not DoesEntityExist(vehicle) then 
    -- If the vehicle does not exist, end the execution of the code here.
    return 
end

-- Print the vehicle id
print("Vehicle ID: " .. vehicle)
```

```js
// This example gets the vehicle the player is currently in and print the vehicle id.

// Retrieve the player ped.
const playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in.
const vehicle = GetVehiclePedIsIn(playerPed, false);

// Check if the vehicle exists in the game world.
if (!DoesEntityExist(vehicle)) {
    // If the vehicle does not exist, end the execution of the code here.
    return;
}

// Print the vehicle id
console.log(`Vehicle ID: ${vehicle}`);
```

```cs
// This example gets the vehicle the player is currently in and print the vehicle id.
using static CitizenFX.Core.Native.API;

// Retrieve the player ped
int playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in.
int vehicle = GetVehiclePedIsIn(playerPed, false);

// Check if the vehicle exists in the game world.
if (!DoesEntityExist(vehicle)) {
    // If the vehicle does not exist, end the execution of the code here.
    return;
}

// Print the vehicle id
Debug.WriteLine($"Vehicle ID: {vehicle}");
```
