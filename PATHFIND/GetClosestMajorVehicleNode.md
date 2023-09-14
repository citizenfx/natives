---
ns: PATHFIND
---
## GET_CLOSEST_MAJOR_VEHICLE_NODE

```c
// 0x2EABE3B06F58C1BE 0x04B5F15B
BOOL GET_CLOSEST_MAJOR_VEHICLE_NODE(float x, float y, float z, Vector3* outPosition, float measureMult, float zTolerance);
```

```
Get the closest vehicle node to a given position, unknown1 = 3.0, unknown2 = 0  
```

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **outPosition**: 
* **measureMult**: default: 3.0 -  how strongly should the difference in Z direction be weighted? 0.0=ignore, 1.0=same as 2d
* **zTolerance**: default: 0.0 - how far apart to the Z coords have to be before zMeasureMult kicks in?

## Return value
