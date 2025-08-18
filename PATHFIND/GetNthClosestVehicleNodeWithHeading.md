---
ns: PATHFIND
---
## GET_NTH_CLOSEST_VEHICLE_NODE_WITH_HEADING

```c
// 0x80CA6A8B6C094CC4 0x7349C856
BOOL GET_NTH_CLOSEST_VEHICLE_NODE_WITH_HEADING(float x, float y, float z, int nthClosest, Vector3* outPosition, float* outHeading, int* totalLanes, int nodeFlags, float zMeasureMult, float zTolerance);
```

Get the nth closest vehicle node with its heading and total lane count. If you need specific forward and backward lane counts use [`GET_CLOSEST_ROAD`](#_0x132F52BBA570FE92).

## Parameters
* **x**: X coordinate
* **y**: Y coordinate
* **z**: Z coordinate
* **nthClosest**: The index of the node to return
* **outPosition**: Pointer to the found nodes coords
* **outHeading**: Pointer to the found nodes heading
* **totalLanes**: Pointer to the total lanes (forward + backward) of the found node
* **nodeFlags**: Node flags, see [`GET_CLOSEST_VEHICLE_NODE`](#_0x240A18690AE96513)
* **zMeasureMult**: How strongly the difference in the Z direction should be weighted
* **zTolerance**: How far apart the Z coords have to be before `zMeasureMult` kicks in

## Return value
Returns `true` if the node was found, or `false` if the node was not found, or was not streamed in.
