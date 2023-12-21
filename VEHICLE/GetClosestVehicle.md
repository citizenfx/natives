---
ns: VEHICLE
---
## GET_CLOSEST_VEHICLE

```c
// 0xF73EB622C4F1689B 0xD7E26B2C
Vehicle GET_CLOSEST_VEHICLE(float x, float y, float z, float radius, Hash modelHash, int flags);
```

Find the closest vehicle to specified coordinates, offering the ability to filter by model and conditions using flags. However, it is not designed to find boats, helicopters, or planes.

**Note**: It's problably more convenient to use [GET_GAME_POOL](#_0x2B9D4F50) and check the shortest distance yourself and sort if you want by checking the vehicle type with for example [IS_THIS_MODEL_A_BOAT](#_0x45A9187928F4B9E3). The native
only going to return non police cars and motorbikes with the flag set to 70 and modelHash to 0. modelHash seems to always be 0 when not a modelHash in the scripts.


```
Flags:
    - **1**: Returns law enforcement vehicles, only works for naturally spawned vehicles (not created by a script).
    - **2**: Returns vehicles that are created by a script and not naturally spawned in the world. Excludes law enforcement vehicles, helicopters, planes, or boats.
    - **4**: Returns vehicles that are not created by a script (only vehicles naturally spawned in the world). Excludes law enforcement vehicles, helicopters, planes, or boats.
    - **8**: Returns vehicles that contain group members (e.g., gang vehicles).
    - **16**: Returns vehicles containing a player, regardless of the vehicle's type or spawn method.
    - **32**: Returns vehicles containing a dead or dying pedestrian, irrespective of vehicle type or spawn method.
    - **64**: Returns vehicles with pedestrians entering or exiting, without prioritizing vehicle type or spawn method.
    - **128**: Performs network checks on the vehicle, possibly excluding network clones or deletable network objects.
    - **256**: Checks the states of vehicle occupants, focusing on those with PedState of PED_DRIVING or PED_DEAD.
    - **1024**: Strictly returns law enforcement vehicles only.
    - **2048**: Allows vehicles with occupants performing scripted tasks.
    - **4096**: Exclusively returns helicopters.
    - **8192**: Exclusively returns boats.
    - **16384**: Exclusively returns planes.
    - **32768**: Allows law enforcement vehicles to be returned even if the player has a wanted level.
    - **65536**: Allows vehicles with occupants performing non-default tasks.
    - **131072**: Includes trailers in the search.
    - **262144**: Includes blimps in the search.
    - **524288**: Includes submarines in the search.
```

```
Conclusion: This native is not worth trying to use. Use something like this instead: pastebin.com/xiFdXa7h
```


## Parameters
* **x**: X coordinate of the search location.
* **y**: Y coordinate of the search location.
* **z**: Z coordinate of the search location.
* **radius**: Search radius around the specified coordinates.
* **modelHash**: Hash of a specific vehicle model for the search. Use 0 for any model
* **flags**: Bitwise flags altering search behavior and vehicle inclusion.

## Return value
Closest vehicle that meets the specified criteria. If no matching vehicle is found, returns 0.

## Examples

```lua
-- Retrive closest vehicle from the player and print it's id.

-- Retrieve the LocalPlayer.
local playerPed = PlayerPedId()

-- Retrieve coordinates of the player.
local coordsPlayer = GetEntityCoords(playerPed, false)

-- Retrieve closest vehicle from the player.
local vehicle = GetClosestVehicle(coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, 5.0, 0, 70)

-- Check if the vehicle exists in the game world.
if not DoesEntityExist(vehicle) then 
    -- If the vehicle does not exist, end the execution of the code here.
    return 
end

-- Print the vehicle id.
print(vehicle)
```

```js
// Retrive closest vehicle from the player and print it's id.

// Retrieve the LocalPlayer.
const playerPed = PlayerPedId();

// Retrieve coordinates of the player.
const [playerX, playerY, playerZ] = GetEntityCoords(playerPed, false);

// Retrieve closest vehicle from the player.
const vehicle = GetClosestVehicle(playerX, playerY, playerZ, 5.0, 0, 70);

// Check if the vehicle exists in the game world.
if (!DoesEntityExist(vehicle)) {
  // If the vehicle does not exist, end the execution of the code here.
  return;
}

// Print the vehicle id.
console.log(vehicle);
```

```cs
using static CitizenFX.Core.Native.API;

// Retrive closest vehicle from the player and print it's id.

// Retrieve the LocalPlayer.
Ped playerPed = PlayerPedId();

// Retrieve coordinates of player.
Vector3 coordsPlayer = GetEntityCoords(playerPed, false);

// Retrieve closest vehicle from player.
Vehicle vehicle = GetClosestVehicle(coordsPlayer.X, coordsPlayer.Y, coordsPlayer.Z, 5f, 0, 70);

// Check if the vehicle exists in the game world.
if (!DoesEntityExist(vehicle))
{
    // If the vehicle does not exist, end the execution of the code here.
    return;
}

// Print the vehicle id.
Debug.WriteLine($"{vehicle}");
```