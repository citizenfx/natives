---
ns: VEHICLE
aliases: ["_0xBA91D045575699AD"]
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

-- Retrieve the vehicle the player is in
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)

-- Check if the vehicle exists. If not, terminate the script.
if not DoesEntityExist(vehicle) then return end

-- Check if the vehicle is a boat. If not, terminate the script.
if not IsThisModelABoat(GetEntityModel(vehicle)) then return end

-- Check if the boat is capsized
if GetIsBoatCapsized(vehicle) then
    print("The boat is capsized!")
    else
    print("The boat is not capsized!")
end
```

```js
// This example checks if the player is in a boat and if the boat is capsized.

// Retrieve the vehicle the player is in
const vehicle = GetVehiclePedIsIn(PlayerPedId(), false);

// Check if the vehicle exists. If not, terminate the script.
if (!DoesEntityExist(vehicle)) return;

// Check if the vehicle is a boat. If not, terminate the script.
if (!IsThisModelABoat(GetEntityModel(vehicle))) return;

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

// Retrieve the vehicle the player is in
Vehicle vehicle = GetVehiclePedIsIn(PlayerPedId(), false);

// Check if the vehicle exists. If not, terminate the script.
if (!DoesEntityExist(vehicle)) return;

// Check if the vehicle is a boat. If not, terminate the script.

if (!IsThisModelABoat(GetEntityModel(vehicle))) return;

// Check if the boat is capsized
if (GetIsBoatCapsized(vehicle)) {
    Debug.WriteLine("The boat is capsized!");
} else {
    Debug.WriteLine("The boat is not capsized!");
}
```
