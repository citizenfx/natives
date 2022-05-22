---
ns: PATHFIND
---
## GET_NTH_CLOSEST_VEHICLE_NODE_WITH_HEADING

```c
// 0x80CA6A8B6C094CC4 0x7349C856
BOOL GET_NTH_CLOSEST_VEHICLE_NODE_WITH_HEADING(float x, float y, float z, int nthClosest, Vector3* outPosition, float* heading, cs_type(Any*) int* totalLanes, int searchFlags, float unknown3, float unknown4);
```

## Description
Get the nth closest vehicle node with its heading and total lane count.
If you need specific foward and backward lane counts use [GET_CLOSEST_ROAD](#_0x132F52BBA570FE92)

## Parameters
* **x**: x position 
* **y**: y position
* **z**: z position
* **nthClosest**: nth closest node
* **outPosition**: returned position of the found node
* **heading**: returned heading of the found node
* **totalLanes**: total lanes (forward + backward) of the found node
* **searchFlags**: flags used when searching for a node (see below)
* **unknown3**: always 3.0
* **unknown4**: sometimes 0.0, sometimes 2.5

### SearchFlags
**0x1**: Include Disabled Roads.
**0x2**: Only Water Nodes. Must be used alongside "Include Disabled" as all water nodes are disabled. (use the number 3)
**0x4**: Removes secondary nodes from the search. (Junction, Stop, LeftTurnOnly, SlipRoad, Shortcut & edge merges/splits nodes)
**0x8**: No Dead Ends.

## Return value
bool indicating whether a node was found
