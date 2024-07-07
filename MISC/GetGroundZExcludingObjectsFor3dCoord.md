---
ns: MISC
aliases: ["0x9E82F0F362881B29", "_GET_GROUND_Z_FOR_3D_COORD_2"]
---
## GET_GROUND_Z_EXCLUDING_OBJECTS_FOR_3D_COORD

```c
// 0x9E82F0F362881B29
BOOL GET_GROUND_Z_EXCLUDING_OBJECTS_FOR_3D_COORD(float x, float y, float z, float* groundZ, BOOL waterAsGround);
```

Determines the highest ground Z-coordinate directly below a specified 3D coordinate, excluding any objects at that point. Optionally, water can be considered as ground when determining the highest point.

```
NativeDB Added Parameter 6: BOOL ignoreDistToWaterLevelCheck - If set to true, the distance to the water level will be ignored when checking for water as ground. 
```

```
NativeDB Introduced: v505
```

## Parameters
* **x**: X-coordinate of the point to check.
* **y**: Y-coordinate of the point to check.
* **z**: Z-coordinate of the point to check.
* **groundZ**: A pointer to a float where the ground Z-coordinate will be stored if found.
* **waterAsGround**: If set to `true`, water will be included in the check, and its height will be returned if it is higher than the ground level.

## Return value
Returns `true` if ground (or water, if specified) is found below the given coordinates, otherwise `false`.