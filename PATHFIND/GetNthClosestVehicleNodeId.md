---
ns: PATHFIND
---
## GET_NTH_CLOSEST_VEHICLE_NODE_ID

```c
// 0x22D7275A79FE8215 0x3F358BEA
int GET_NTH_CLOSEST_VEHICLE_NODE_ID(float x, float y, float z, int nthClosest, int nodeFlags, float zMeasureMult, float zTolerance);
```

## Parameters
* **x**: X coordinate
* **y**: Y coordinate
* **z**: Z coordinate
* **nthClosest**: The index of the node to return
* **nodeFlags**: Node flags, see [`GET_CLOSEST_VEHICLE_NODE`](#_0x240A18690AE96513)
* **zMeasureMult**: How strongly the difference in the Z direction should be weighted
* **zTolerance**: How far apart the Z coords have to be before `zMeasureMult` kicks in

## Return value
Returns the nth closest vehicle nodes id.