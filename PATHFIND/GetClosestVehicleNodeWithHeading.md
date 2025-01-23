---
ns: PATHFIND
---
## GET_CLOSEST_VEHICLE_NODE_WITH_HEADING

```c
// 0xFF071FB798B803B0 0x8BD5759B
BOOL GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(float x, float y, float z, Vector3* outPosition, float* outHeading, int nodeFlags, float zMeasureMult, int zTolerance);
```

Same as [`GET_CLOSEST_VEHICLE_NODE`](#_0x240A18690AE96513), but with the node flag `GCNF_GET_HEADING` set, causing the native to also return the heading.

## Parameters
* **x**: X coordinate
* **y**: Y coordinate
* **z**: Z coordinate
* **outPosition**: Pointer to the found nodes coords
* **outHeading**: Pointer to the found nodes heading
* **nodeFlags**: Node flags, see [`GET_CLOSEST_VEHICLE_NODE`](#_0x240A18690AE96513)
* **zMeasureMult**: How strongly the difference in the Z direction should be weighted
* **zTolerance**: How far apart the Z coords have to be before `zMeasureMult` kicks in

## Return value
Returns the closest vehicle node with its heading.