---
ns: PATHFIND
---
## GET_CLOSEST_MAJOR_VEHICLE_NODE

```c
// 0x2EABE3B06F58C1BE 0x04B5F15B
BOOL GET_CLOSEST_MAJOR_VEHICLE_NODE(float x, float y, float z, Vector3* outPosition, float zMeasureMult, int zTolerance);
```

Same as [`GET_CLOSEST_VEHICLE_NODE`](#_0x240A18690AE96513), but with the node flag `GCNF_INCLUDE_SWITCHED_OFF_NODES` set.

## Parameters
* **x**: X coordinate
* **y**: Y coordinate
* **z**: Z coordinate
* **outPosition**: Pointer to the found nodes coords
* **zMeasureMult**: How strongly the difference in the Z direction should be weighted
* **zTolerance**: How far apart the Z coords have to be before `zMeasureMult` kicks in

## Return value
Returns the closest major vehicle node.