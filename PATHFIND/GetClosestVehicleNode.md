---
ns: PATHFIND
---
## GET_CLOSEST_VEHICLE_NODE

```c
// 0x240A18690AE96513 0x6F5F1E6C
BOOL GET_CLOSEST_VEHICLE_NODE(float x, float y, float z, Vector3* outPosition, int nodeFlags, float zMeasureMult, float zTolerance);
```

```c
enum eGetClosestNodeFlags {
    GCNF_INCLUDE_SWITCHED_OFF_NODES = 1,
    GCNF_INCLUDE_BOAT_NODES = 2,
    GCNF_IGNORE_SLIPLANES = 4,
    GCNF_IGNORE_SWITCHED_OFF_DEADENDS = 8,
    GCNF_GET_HEADING = 256,
    GCNF_FAVOUR_FACING = 512
}
```

## Parameters
* **x**: X coordinate
* **y**: Y coordinate
* **z**: Z coordinate
* **outPosition**: Pointer to the found nodes coords
* **nodeFlags**: Node flags
* **zMeasureMult**: How strongly the difference in the Z direction should be weighted
* **zTolerance**: How far apart the Z coords have to be before `zMeasureMult` kicks in

## Return value
Returns the closest vehicle node matching the node flags.