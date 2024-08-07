---
ns: SYSTEM
---
## VDIST

```c
// 0x2A488C176D52CCA5 0x3C08ECB7
float VDIST(float x1, float y1, float z1, float x2, float y2, float z2);
```

Calculates the distance between two points in 3D space. For performance reasons, consider using direct mathematical calculations for distance, as they can be more efficient than calling this native function.

```
NativeDB Introduced: v323
```

## Parameters
* **x1**: X coordinate of the first point.
* **y1**: Y coordinate of the first point.
* **z1**: Z coordinate of the first point. Represents the height or elevation at the first point.
* **x2**: X coordinate of the second point.
* **y2**: Y coordinate of the second point.
* **z2**: Z coordinate of the second point. Represents the height or elevation at the second point.


## Examples
```lua
-- Define a set of coordinates
local coords = vector3(145.0, 200.0, 1000.0)

-- Get the player's current ped
local playerPed = PlayerPedId()

-- Get the player's current coordinates
local coordsPlayer = GetEntityCoords(playerPed, false)

-- Calculate the distance between the player and the coordinates
local distance = Vdist(coordsPlayer.x, coordsPlayer.y, coordsPlayer.z, coords.x, coords.y, coords.z)

if (distance < 10.0) then
    print("You are close to the coordinates")
else
    print("You are far from the coordinates")
end
```

```javascript
// Define a set of coordinates
const coords = [145.0, 200.0, 1000.0];

// Get the player's current ped
const playerPed = PlayerPedId();

// Get the player's current coordinates
const coordsPlayer = GetEntityCoords(playerPed, false);

// Calculate the distance between the player and the coordinates
const distance = Vdist(coordsPlayer[0], coordsPlayer[1], coordsPlayer[2], coords[0], coords[1], coords[2]);

if (distance < 10.0) {
    console.log("You are close to the coordinates");
} else {
    console.log("You are far from the coordinates");
}
```

```cs
using static CitizenFX.Core.Native.API;

// Define a set of coordinates
Vector3 coords = new Vector3(145.0f, 200.0f, 1000.0f);

// Get the player's current ped
Ped playerPed = PlayerPedId();

// Get the player's current coordinates
Vector3 coordsPlayer = GetEntityCoords(playerPed, false);

// Calculate the distance between the player and the coordinates
float distance = Vdist(coordsPlayer.X, coordsPlayer.Y, coordsPlayer.Z, coords.X, coords.Y, coords.Z);

if (distance < 10.0f)
{
    Debug.WriteLine("You are close to the coordinates");
}
else
{
    Debug.WriteLine("You are far from the coordinates");
}
```

## Return value
Returns the distance as a float between the two points (`x1`, `y1`, `z1`) and (`x2`, `y2`, `z2`) in the game world.