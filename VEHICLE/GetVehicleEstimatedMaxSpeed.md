---
ns: VEHICLE
aliases: ["0x53AF99BAA671CA47","_GET_VEHICLE_MAX_SPEED"]
---
## GET_VEHICLE_ESTIMATED_MAX_SPEED

```c
// 0x53AF99BAA671CA47 0x7D1A0616
float GET_VEHICLE_ESTIMATED_MAX_SPEED(Vehicle vehicle);
```
Retrieves a static value representing the estimated max speed of a specific vehicle, including any vehicle mods. This value does not change dynamically during gameplay.

```
NativeDB Introduced: v323
```

## Parameters
* **vehicle**: The vehicle for which to obtain the estimated max speed.

## Return value
Returns the estimated maximum speed of the specified vehicle as a float number.

## Examples
```lua
-- This example prints the estimated max speed of the player's current vehicle.

-- Retrieve the player ped.
local playerPed = PlayerPedId()

-- Retrieve the vehicle the player is currently in.
local vehicle = GetVehiclePedIsIn(playerPed, false)

-- If the vehicle does not exist, end the execution of the code here.
if not DoesEntityExist(vehicle) then 
    return 
end

-- Retrieve the estimated max speed of the vehicle.
local estimatedMaxSpeed = GetVehicleEstimatedMaxSpeed(vehicle)

-- Print the estimated max speed of the vehicle.
print("Estimated Max Speed: " .. estimatedMaxSpeed)
```

```js
// This example prints the estimated max speed of the player's current vehicle.

// Retrieve the player ped.
const playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in.
const vehicle = GetVehiclePedIsIn(playerPed, false);

// If the vehicle does not exist, end the execution of the code here.
if (!DoesEntityExist(vehicle)) {
  return;
}

// Retrieve the estimated max speed of the vehicle.
const estimatedMaxSpeed = GetVehicleEstimatedMaxSpeed(vehicle);

// Print the estimated max speed of the vehicle.
console.log(`Estimated Max Speed: ${estimatedMaxSpeed}`);
```

```cs
// This example prints the estimated max speed of the player's current vehicle.
using static CitizenFX.Core.Native.API;

// Retrieve the player ped.
int playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in.
int vehicle = GetVehiclePedIsIn(playerPed, false);

// If the vehicle does not exist, end the execution of the code here.
if (!DoesEntityExist(vehicle)) {
  return;
}

// Retrieve the estimated max speed of the vehicle.
float estimatedMaxSpeed = GetVehicleEstimatedMaxSpeed(vehicle);

// Print the estimated max speed of the vehicle.
Debug.WriteLine($"Estimated Max Speed: {estimatedMaxSpeed}");
```
