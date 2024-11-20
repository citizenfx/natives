---
ns: PATHFIND
---
## GET_RANDOM_VEHICLE_NODE

```c
// 0x93E0DB8440B73A7D 0xAD1476EA
BOOL GET_RANDOM_VEHICLE_NODE(float x, float y, float z, float radius, int minLanes, BOOL bAvoidDeadEnds, BOOL bAvoidHighways, Vector3* outPosition, int* nodeId);
```


## Parameters
* **x**: X position of the circle to be considered
* **y**: Y position of the circle to be considered
* **z**: Z position of the circle to be considered
* **radius**: radius of the circle to be considered
* **minLanes**: unused
* **bAvoidDeadEnds**: avoids nodes that lead to a dead end
* **bAvoidHighways**: avoids nodes that exist on a highway
* **outPosition**: if the command returns TRUE then this will be filled in with the coords of the node found
* **nodeId**: if the command returns TRUE then this will contain a value that can be used in GET_SPAWN_COORDS_FOR_VEHICLE_NODE

## Return value
Returns `true` if a vehicle node is found within the defined circle, `false` otherwise.