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
Conclusion: This native is not worth trying to use. Use something like this instead: pastebin.com/xiFdXa7h
```

```
Flags:
    - **0**: Returns cars and motorbikes, including those already occupied. Might also return empty vehicles.
    - **2**: Returns only empty vehicles, specifically cars and motorbikes.
    - **4**: Similar to flag 70, generally effective for cars and motorbikes.
    - **23**: Finds cars when the player is not inside a vehicle.
    - **70**: Recommended for cars and motorbikes. Does not return occupied vehicles.
    - **127**: Does not return vehicles when inside cars or motorbikes. Effective when on foot or inside a helicopter (should return police cars).
    - **67711**: Effective for finding cars when inside a helicopter, not when inside cars.
    - **100359**: Similar to flag 70 but often returns the vehicle the player is already in.
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
-- Retrive closest vehicle from the player and print it's id

-- Retrieve coordinates of the player
local coordsPlayer = GetEntityCoords(PlayerPedId())

-- Retrieve closest vehicle from the player
local vehicle = GetClosestVehicle(coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, 5.0, 0, 70)

-- Check if the vehicle exists. If not, terminate the script.
if not DoesEntityExist(vehicle) then return end

-- Print the vehicle id
print(vehicle)
```

```js
// Retrive closest vehicle from the player and print it's id

// Retrieve coordinates of the player
const [playerX, playerY, playerZ] = GetEntityCoords(PlayerPedId());

// Retrieve closest vehicle from the player
const vehicle = GetClosestVehicle(playerX, playerY, playerZ, 5.0, 0, 70);

// Check if the vehicle exists. If not, terminate the script.
if (!DoesEntityExist(vehicle)) return;

// Print the vehicle id
console.log(vehicle);
```

```cs
using static CitizenFX.Core.Native.API;

// Retrive closest vehicle from the player and print it's id

// Retrieve coordinates of player
Vector3 coordsPlayer = GetEntityCoords(PlayerPedId(), true);

// Retrieve closest vehicle from player
Vehicle vehicle = GetClosestVehicle(coordsPlayer.X, coordsPlayer.Y, coordsPlayer.Z, 5f, 0, 70);

// Check if the vehicle exists. If not, terminate the script.
if (!DoesEntityExist(vehicle)) return;

// Print the vehicle id
Debug.WriteLine($"{vehicle}");
```