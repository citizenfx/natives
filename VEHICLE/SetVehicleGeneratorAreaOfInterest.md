---
ns: VEHICLE
aliases: ["0x9A75585FB2E54FAD"]
---
## SET_VEHICLE_GENERATOR_AREA_OF_INTEREST

```c
// 0x9A75585FB2E54FAD 0x935A95DA
void SET_VEHICLE_GENERATOR_AREA_OF_INTEREST(float x, float y, float z, float radius);
```

Specifies an area of interest where cargens will focus on spawning vehicles

You can clear the area of interest with [`CLEAR_VEHICLE_GENERATOR_AREA_OF_INTEREST`](#_0x0A436B8643716D14)

## Parameters
* **x**: The X coordinate of the central point of the area of interest.
* **y**: The Y coordinate of the central point of the area of interest.
* **z**: The Z coordinate of the central point of the area of interest.
* **radius**: The radius around the central point, defining the size of the area of interest

## Examples
```lua
-- This example sets the area of interest (cargen) to the player's position with a radius of 100.0

-- Retrieve the player ped
local playerPed = PlayerPedId()

-- Retrieve the coordinates of the player.
local coords = GetEntityCoords(playerPed, false)

-- Set the area of interest to the player's position with a radius of 100.0
SetVehicleGeneratorAreaOfInterest(coords.x, coords.y, coords.z, 100.0)
```

```js
// This example sets the area of interest (cargen) to the player's position with a radius of 100.0

// Retrieve the player ped
const playerPed = PlayerPedId();

// Retrieve the coordinates of the player.
const coords = GetEntityCoords(playerPed, false);

// Set the area of interest to the player's position with a radius of 100.0
SetVehicleGeneratorAreaOfInterest(coords.x, coords.y, coords.z, 100.0);
```

```cs
// This example sets the area of interest (cargen) to the player's position with a radius of 100.0
using static CitizenFX.Core.Native.API;

// Retrieve the player ped
int playerPed = PlayerPedId();

// Retrieve the coordinates of the player.
Vector3 coords = GetEntityCoords(playerPed, false);

// Set the area of interest to the player's position with a radius of 100.0
SetVehicleGeneratorAreaOfInterest(coords.X, coords.Y, coords.Z, 100f);
```
