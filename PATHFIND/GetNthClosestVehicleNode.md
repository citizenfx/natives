---
ns: PATHFIND
---
## GET_NTH_CLOSEST_VEHICLE_NODE

```c
// 0xE50E52416CCF948B 0xF125BFCC
BOOL GET_NTH_CLOSEST_VEHICLE_NODE(float x, float y, float z, int nthClosest, Vector3* outPosition, int nodeFlags, cs_type(Any) float zMeasureMult, cs_type(Any) float zTolerance);
```

Same as [`GET_CLOSEST_VEHICLE_NODE`](#_0x240A18690AE96513), but returns the nth closest node instead of the first.

## Parameters
* **x**: X coordinate
* **y**: Y coordinate
* **z**: Z coordinate
* **nthClosest**: The index of the node to return
* **outPosition**: Pointer to the found nodes coords
* **nodeFlags**: Node flags, see [`GET_CLOSEST_VEHICLE_NODE`](#_0x240A18690AE96513)
* **zMeasureMult**: How strongly the difference in the Z direction should be weighted
* **zTolerance**: How far apart the Z coords have to be before `zMeasureMult` kicks in

## Return value
Returns the nth closest vehicle node.