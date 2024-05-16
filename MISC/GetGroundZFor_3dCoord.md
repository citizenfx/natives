---
ns: MISC
---
## GET_GROUND_Z_FOR_3D_COORD

```c
// 0xC906A7DAB05C8D2B 0xA1BFD5E0
BOOL GET_GROUND_Z_FOR_3D_COORD(float x, float y, float z, float* groundZ, BOOL includeWater);
```

This native gets the ground level (ground elevation) and returns the Z coordinate that represents it.
Note: This native can only calculate the elevation when the coordinates are within the render distance of the client.

```
NativeDB Added Parameter 6: BOOL p5
```

## Parameters
* **x**: Position on the X-axis to get ground elevation.
* **y**: Position on the Y-axis to get ground elevation.
* **z**: Position on the Z-axis to get ground elevation.
* **includeWater**: Determines if the top water level at the specified position should be considered the ground elevation. (It would only matter if the specified position is located above or under the water)

## Return value
This native`s first return value (retval) will return true if the ground elevation has been found, and the second (groundZ) will return the z-coord which represents the ground elevation at the specified position.

## Examples
```lua
local ped = PlayerPedId()
local pedCoords = GetEntityCoords(ped) 
local retval, groundZ = GetGroundZFor_3dCoord(pedCoords.x, pedCoords.y, pedCoords.z, true)

if retval then
   -- Do stuff with groundZ
end
```
