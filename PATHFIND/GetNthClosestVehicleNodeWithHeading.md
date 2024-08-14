---
ns: PATHFIND
---
## GET_NTH_CLOSEST_VEHICLE_NODE_WITH_HEADING

```c
// 0x80CA6A8B6C094CC4 0x7349C856
BOOL GET_NTH_CLOSEST_VEHICLE_NODE_WITH_HEADING(float x, float y, float z, int nthClosest, Vector3* outPosition, float* heading, int* totalLanes, int searchFlags, float zMeasureMult, float zTolerance);
```

Get the nth closest vehicle node with its heading and total lane count.
If you need specific forward and backward lane counts use [GET_CLOSEST_ROAD](#_0x132F52BBA570FE92)

```c
enum eNodeFlags {
	NONE = 0,
	INCLUDE_SWITCHED_OFF_NODES = 1,
	INCLUDE_BOAT_NODES = 2,
	IGNORE_SLIPLANES = 4,
	IGNORE_SWITCHED_OFF_DEAD_ENDS = 8,
}
```

## Parameters
* **x**: x position 
* **y**: y position
* **z**: z position
* **nthClosest**: nth closest node
* **outPosition**: returned position of the found node
* **heading**: returned heading of the found node
* **totalLanes**: total lanes (forward + backward) of the found node
* **searchFlags**: Flags used when searching for a node, see `eNodeFlags`
* **zMeasureMult**: How strongly the difference in z direction should be weighted (defaults to 3.0)
* **zTolerance**: How far apart the Z coords have to be before the zMeasureMult kicks in


## Return value
Returns `true` if the node was found, or `false` if the node was not found, or was not streamed in.
