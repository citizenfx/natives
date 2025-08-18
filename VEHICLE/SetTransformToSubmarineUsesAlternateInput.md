---
ns: VEHICLE
aliases: ["0x41B9FB92EDED32A6", "_SET_UNK_BOOL_0x102_FOR_SUBMARINE_VEHICLE_TASK"]
---
## SET_TRANSFORM_TO_SUBMARINE_USES_ALTERNATE_INPUT

```c
// 0x41B9FB92EDED32A6
void SET_TRANSFORM_TO_SUBMARINE_USES_ALTERNATE_INPUT(Vehicle vehicle, bool useAlternateInput);
```

Changes the key used to transform a vehicle into submarine mode. When set to true, the transformation key switches from the default raise/lower convertible roof key (usually 'H') to the special vehicle transformation key (usually 'X').

```
NativeDB Introduced: v1365
```

## Parameters
* **vehicle**: The vehicle for which the submarine mode should be configured.
* **useAlternateInput**: A boolean switch to enable/disable the use of alternate input.

## Examples
```lua
-- This example sets the key for submarine mode transformation to special vehicle transform 

-- Retrieve the player ped
local playerPed = PlayerPedId()

-- Retrieve the vehicle in which the player is currently seated
local vehicle = GetVehiclePedIsIn(playerPed, false)

-- Retrieve the vehicle model hash
local vehicleHash = GetEntityModel(vehicle)

-- Check if the vehicle exists in the game world and if it is a Stromberg.
if not DoesEntityExist(vehicle) or not vehicleHash == GetHashKey("stromberg") then
    -- If the vehicle does not exist or it's not a stromberg, end the execution of the code here.
    return
end

-- Set the key for submarine mode transformation to special vehicle transform (X by default)
SetTransformToSubmarineUsesAlternateInput(vehicle, true) 
```

```js
// This example sets the key for submarine mode transformation to special vehicle transform

// Retrieve the player ped
const playerPed = PlayerPedId();

// Retrieve the vehicle in which the player is currently seated
const vehicle = GetVehiclePedIsIn(playerPed, false);

// Retrieve the vehicle model hash
const vehicleHash = GetEntityModel(vehicle);

// Check if the vehicle exists in the game world and if it is a Stromberg.
if (!DoesEntityExist(vehicle) || vehicleHash !== GetHashKey("stromberg")) {
    // If the vehicle does not exist or it's not a stromberg, end the execution of the code here.
    return;
}

// Set the key for submarine mode transformation to special vehicle transform (X by default)
SetTransformToSubmarineUsesAlternateInput(vehicle, true);
```

```cs
// This example sets the key for submarine mode transformation to special vehicle transform
using static CitizenFX.Core.Native.API;

// Retrieve the player ped
int playerPed = PlayerPedId();

// Retrieve the vehicle in which the player is currently seated
int vehicle = GetVehiclePedIsIn(playerPed, false);

// Retrieve the vehicle model hash
uint vehicleHash = (uint)GetEntityModel(vehicle);

// Check if the vehicle exists in the game world and if it is a Stromberg.
if (!DoesEntityExist(vehicle) || vehicleHash != (uint)GetHashKey("stromberg"))
{
    // If the vehicle does not exist or it's not a stromberg, end the execution of the code here.
    return;
}

// Set the key for submarine mode transformation to special vehicle transform (X by default)
SetTransformToSubmarineUsesAlternateInput(vehicle, true);
```
