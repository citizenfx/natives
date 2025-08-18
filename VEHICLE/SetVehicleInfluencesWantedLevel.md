---
ns: VEHICLE
aliases: ["0x0AD9E8F87FF7C16F"]
---
## SET_VEHICLE_INFLUENCES_WANTED_LEVEL

```c
// 0x0AD9E8F87FF7C16F 0x04F5546C
void SET_VEHICLE_INFLUENCES_WANTED_LEVEL(Vehicle vehicle, BOOL influenceWantedLevel);
```

This native sets whether a specific vehicle influences the player's wanted level when it is involved in an incident that typically triggers a wanted response, such as being marked as a "victim" vehicle.

This is particularly useful when utilizing the wanted system from GTA, and you want to prevent a vehicle from affecting the wanted level when it is stolen. In the decompiled scripts this native is only used to disable the influence of the vehicle on the wanted level.

## Parameters
* **vehicle**: The specific vehicle to be set for influencing the wanted level.
* **influenceWantedLevel**: A boolean value. Set to `true` to make the vehicle influence the wanted level; `false` to prevent it from doing so.


## Examples
```lua
-- This example will prevent the closest vehicle from influencing the wanted level.

-- Retrieve the LocalPlayer
local playerPed = PlayerPedId()

-- Retrieve the coordinates of the player.
local playerCoords = GetEntityCoords(playerPed)

-- Retrieve the closest vehicle.
local vehicle = GetClosestVehicle(playerCoords.x, playerCoords.y, playerCoords.z, 3, 0, 70)

-- Check if the vehicle exists in the game world.
if not DoesEntityExist(vehicle) then 
    -- If the vehicle does not exist, end the execution of the code here.
    return 
end

-- Set the vehicle to not influence the wanted level.
SetVehicleInfluencesWantedLevel(vehicle, false)
```

```js
// This example will prevent the closest vehicle from influencing the wanted level.

// Retrieve the LocalPlayer
const playerPed = PlayerPedId();

// Retrieve the coordinates of the player.
const [playerX, playerY, playerZ] = GetEntityCoords(playerPed);

// Retrieve the closest vehicle.
const vehicle = GetClosestVehicle(playerX, playerY, playerZ, 3, 0, 70)

// Check if the vehicle exists in the game world.
if (!DoesEntityExist(vehicle)) {
  // If the vehicle does not exist, end the execution of the code here.
  return;
}

// Set the vehicle to not influence the wanted level.
SetVehicleInfluencesWantedLevel(vehicle, false);
```

```cs
// This example will prevent the closest vehicle from influencing the wanted level.
using static CitizenFX.Core.Native.API;

// Retrieve the LocalPlayer
int playerPed = PlayerPedId();

// Retrive the coordinates of the player.
Vector3 playerCoords = GetEntityCoords(playerPed);

// Retrieve the closest vehicle.
int vehicle = GetClosestVehicle(playerCoords.X, playerCoords.Y, playerCoords.Z, 3, 0, 70);

// Check if the vehicle exists in the game world.
if (!DoesEntityExist(vehicle))
{
    // If the vehicle does not exist, end the execution of the code here.
    return;
}

// Set the vehicle to not influence the wanted level.
SetVehicleInfluencesWantedLevel(vehicle, false);
```
