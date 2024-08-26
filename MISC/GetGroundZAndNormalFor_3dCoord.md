---
ns: MISC
aliases: ["0x8BDC7BFC57A81E76","_GET_GROUND_Z_COORD_WITH_OFFSETS"]
---
## GET_GROUND_Z_AND_NORMAL_FOR_3D_COORD

```c
// 0x8BDC7BFC57A81E76 0x64D91CED
BOOL GET_GROUND_Z_AND_NORMAL_FOR_3D_COORD(float x, float y, float z, float* groundZ, Vector3* normal);
```

Attempts to identify the highest ground Z-coordinate and determine the corresponding surface normal directly beneath a specified 3D coordinate.

```
NativeDB Introduced: v323
```

## Parameters
* **x**: X-coordinate of the point to check.
* **y**: Y-coordinate of the point to check.
* **z**: Z-coordinate of the point to check.
* **groundZ**: A pointer to a float where the ground Z-coordinate will be stored if found.
* **normal**: A pointer to a Vector3 structure where the surface normal at the ground point will be stored.

## Return value
Returns `true` if ground is found below the given coordinates and the surface normal could be determined, otherwise `false`.

## Examples
```lua
local x, y, z = 100.0, -200.0, 50.0
local success, groundZ, normal = GetGroundZAndNormalFor_3dCoord(x, y, z)

if success then
    print("Ground Z found at: ", groundZ)
    print("Surface normal is: ", normal.x, normal.y, normal.z)
else
    print("No ground found.")
end
```

```js
const x = 100.0, y = -200.0, z = 50.0;
const success = GetGroundZAndNormalFor_3dCoord(x, y, z);

if (success) {
    console.log("Ground Z found at: ", groundZ);
    console.log("Surface normal is: ", normal.x, normal.y, normal.z);
} else {
    console.log("No ground found.");
}
```

```cs
using static CitizenFX.Core.Native.API;

float x = 100.0f, y = -200.0f, z = 50.0f;
bool success = GetGroundZAndNormalFor_3dCoord(x, y, z, out float groundZ, out Vector3 normal);

if (success) {
    Debug.WriteLine($"Ground Z found at: {groundZ}");
    Debug.WriteLine($"Surface normal is: {normal.X}, {normal.Y}, {normal.Z}");
} else {
    Debug.WriteLine("No ground found.");
}
```
