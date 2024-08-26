---
ns: VEHICLE
aliases: ["0x498218259FB7C72D", "_SET_UNK_FLOAT_0x104_FOR_SUBMARINE_VEHICLE_TASK"]
---
## SET_TRANSFORM_RATE_FOR_ANIMATION

```c
// 0x498218259FB7C72D
void SET_TRANSFORM_RATE_FOR_ANIMATION(Vehicle vehicle, float transformRate);
```

Affects the playback speed of the submarine car conversion animations. Does not affect hardcoded animations such as the wheels being retracted. In decompiled scripts the only value used for transformRate is 2.5.

## Parameters
* **vehicle**: The vehicle for which the submarine car conversion animation speed should be adjusted.
* **transformRate**: The rate at which the submarine car conversion animations will be played.

## Examples
```lua
-- This example sets the transform rate for the submarine car conversion animations to 2.5

-- Retrieve the player ped
local playerPed = PlayerPedId()

-- Retrieve the vehicle in which the player is currently seated
local vehicle = GetVehiclePedIsIn(playerPed, false) -- Get the vehicle in which the player is currently seated

-- Retrieve the vehicle model hash
local vehicleHash = GetEntityModel(vehicle)

-- Check if the vehicle exists in the game world and if it is a Stromberg.
if not DoesEntityExist(vehicle) or not vehicleHash == GetHashKey("stromberg") then
    -- If the vehicle does not exist or it's not a stromberg, end the execution of the code here.
    return
end

-- Set the transform rate for the submarine car conversion animations to 2.5
SetTransformRateForAnimation(vehicle, 2.5)
```

```js
// This example sets the transform rate for the submarine car conversion animations to 2.5

// Retrieve the player ped
const playerPed = PlayerPedId();

// Retrieve the vehicle in which the player is currently seated
const vehicle = GetVehiclePedIsIn(playerPed, false); // Get the vehicle in which the player is currently seated

// Retrieve the vehicle model hash
const vehicleHash = GetEntityModel(vehicle);

// Check if the vehicle exists in the game world and if it is a Stromberg.
if (!DoesEntityExist(vehicle) || vehicleHash !== GetHashKey("stromberg")) {
    // If the vehicle does not exist or it's not a stromberg, end the execution of the code here.
    return;
}

// Set the transform rate for the submarine car conversion animations to 2.5
SetTransformRateForAnimation(vehicle, 2.5);
```

```cs
// This example sets the transform rate for the submarine car conversion animations to 2.5
using static CitizenFX.Core.Native.API;

// Retrieve the player ped
int playerPed = PlayerPedId();

// Retrieve the vehicle in which the player is currently seated
int vehicle = GetVehiclePedIsIn(playerPed, false); // Get the vehicle in which the player is currently seated

// Retrieve the vehicle model hash
uint vehicleHash = (uint)GetEntityModel(vehicle);

// Check if the vehicle exists in the game world and if it is a Stromberg.
if (!DoesEntityExist(vehicle) || vehicleHash != (uint)GetHashKey("stromberg"))
{
    // If the vehicle does not exist or it's not a stromberg, end the execution of the code here.
    return;
}

// Set the transform rate for the submarine car conversion animations to 2.5
SetTransformRateForAnimation(vehicle, 2.5f);
```
