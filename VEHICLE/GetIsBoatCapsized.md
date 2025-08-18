---
ns: VEHICLE
aliases: ["0xBA91D045575699AD"]
---
## GET_IS_BOAT_CAPSIZED

```c
// 0xBA91D045575699AD
BOOL GET_IS_BOAT_CAPSIZED(Vehicle vehicle);
```

Checks whether the specified boat vehicle is capsized, meaning it has overturned or is upside down in the water. 

## Parameters
* **vehicle**: The vehicle to check. This should be a boat-type vehicle.

## Return value
Returns `true` if the specified boat is capsized, `false` otherwise.

## Examples
```lua
-- This example checks if the player is in a boat and if the boat is capsized.

-- Retrieve the LocalPlayer.
local playerPed = PlayerPedId()

-- Retrieve the vehicle the player is in
local vehicle = GetVehiclePedIsIn(playerPed, false)

-- Retrieve the model of the vehicle
local vehicleModel = GetEntityModel(vehicle)

-- Check if the vehicle exists in the game world.
if not DoesEntityExist(vehicle) then 
    -- If the vehicle does not exist, end the execution of the code here.
    return 
end

-- Check if the vehicle is a boat.
if not IsThisModelABoat(vehicleModel) then
    -- If the vehicle is not a boat, end the execution of the code here.
    return
end

-- Check if the boat is capsized.
if GetIsBoatCapsized(vehicle) then
    print("The boat is capsized!")
else
    print("The boat is not capsized!")
end
```

```js
// This example checks if the player is in a boat and if the boat is capsized.

// Retrieve the LocalPlayer.
const playerPed = PlayerPedId();

// Retrieve the vehicle the player is in
const vehicle = GetVehiclePedIsIn(playerPed, false);

// Retrieve the model of the vehicle
const vehicleModel = GetEntityModel(vehicle);

// Check if the vehicle exists in the game world.
if (!DoesEntityExist(vehicle)) {
  // If the vehicle does not exist, end the execution of the code here.
  return;
}

// Check if the vehicle is a boat.
if (!IsThisModelABoat(vehicleModel)) {
  // If the vehicle is not a boat, end the execution of the code here.
  return;
}

// Check if the boat is capsized
if (GetIsBoatCapsized(vehicle)) {
    console.log("The boat is capsized!");
} else {
    console.log("The boat is not capsized!");
}
```

```cs
// This example checks if the player is in a boat and if the boat is capsized.
using static CitizenFX.Core.Native.API;

// Retrieve the LocalPlayer.
int playerPed = PlayerPedId();

// Retrieve the vehicle the player is in
int vehicle = GetVehiclePedIsIn(playerPed, false);

// Retrieve the model of the vehicle
uint vehicleModel = (uint)GetEntityModel(vehicle);

// Check if the vehicle exists in the game world.
if (!DoesEntityExist(vehicle))
{
    // If the vehicle does not exist, end the execution of the code here.
    return;
}

// Check if the vehicle is a boat.
if (!IsThisModelABoat(vehicleModel))
{
    // If the vehicle is not a boat, end the execution of the code here.
    return;
}

// Check if the boat is capsized
if (GetIsBoatCapsized(vehicle))
{
    Debug.WriteLine("The boat is capsized!");
}
else
{
    Debug.WriteLine("The boat is not capsized!");
}
```
