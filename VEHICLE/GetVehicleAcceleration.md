---
ns: VEHICLE
---
## GET_VEHICLE_ACCELERATION

```c
// 0x5DD35C8D074E57AE 0x00478321
float GET_VEHICLE_ACCELERATION(Vehicle vehicle);
```
Retrieves a static value representing the maximum drive force of specific a vehicle, including any vehicle mods. This value does not change dynamically during gameplay. This value provides an approximation and should be considered alongside other performance metrics like top speed for a more comprehensive understanding of the vehicle's capabilities.

```
NativeDB Introduced: v323
```

## Parameters
* **vehicle**: The vehicle for which to obtain the acceleration.

## Return value
Returns the acceleration value of the specified vehicle as a float number.

## Examples
```lua
-- This example prints the acceleration of the player's current vehicle.

-- Retrieve the player ped.
local playerPed = PlayerPedId()

-- Retrieve the vehicle the player is currently in.
local vehicle = GetVehiclePedIsIn(playerPed, false)

-- If the vehicle does not exist, end the execution of the code here.
if not DoesEntityExist(vehicle) then 
    return 
end

-- Retrieve the acceleration of the vehicle.
local acceleration = GetVehicleAcceleration(vehicle)

-- Print the acceleration of the vehicle.
print("Vehicle Acceleration: " .. acceleration)
```

```js
// This example prints the acceleration of the player's current vehicle.

// Retrieve the player ped.
const playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in.
const vehicle = GetVehiclePedIsIn(playerPed, false);

// If the vehicle does not exist, end the execution of the code here.
if (!DoesEntityExist(vehicle)) {
  return;
}

// Retrieve the acceleration of the vehicle.
const acceleration = GetVehicleAcceleration(vehicle);

// Print the acceleration of the vehicle.
console.log(`Vehicle Acceleration: ${acceleration}`);
```

```cs
// This example prints the acceleration of the player's current vehicle.
using static CitizenFX.Core.Native.API;

// Retrieve the player ped.
int playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in.
int vehicle = GetVehiclePedIsIn(playerPed, false);

// If the vehicle does not exist, end the execution of the code here.
if (!DoesEntityExist(vehicle)) {
  return;
}

// Retrieve the acceleration of the vehicle.
float acceleration = GetVehicleAcceleration(vehicle);

// Print the acceleration of the vehicle.
Debug.WriteLine($"Vehicle Acceleration: {acceleration}");
```
