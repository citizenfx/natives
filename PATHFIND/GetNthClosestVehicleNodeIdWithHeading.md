---
ns: PATHFIND
---
## GET_NTH_CLOSEST_VEHICLE_NODE_ID_WITH_HEADING

```c
// 0x6448050E9C2A7207 0xC1AEB88D
int GET_NTH_CLOSEST_VEHICLE_NODE_ID_WITH_HEADING(float x, float y, float z, int nthClosest, Vector3* outPosition, cs_type(float) float* outHeading, int nodeFlags, float zMeasureMult, float zTolerance);
```

## Parameters
* **x**: X coordinate
* **y**: Y coordinate
* **z**: Z coordinate
* **nthClosest**: The index of the node to return
* **outPosition**: Pointer to the found nodes coords
* **outHeading**: Pointer to the found nodes heading
* **nodeFlags**: Node flags, see [`GET_CLOSEST_VEHICLE_NODE`](#_0x240A18690AE96513)
* **zMeasureMult**: How strongly the difference in the Z direction should be weighted
* **zTolerance**: How far apart the Z coords have to be before `zMeasureMult` kicks in

## Return value
Returns the nth closest vehicle nodes id with its heading.