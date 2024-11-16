---
ns: PATHFIND
---
## GET_NTH_CLOSEST_VEHICLE_NODE_FAVOUR_DIRECTION

```c
// 0x45905BE8654AE067 0x928A4DEC
BOOL GET_NTH_CLOSEST_VEHICLE_NODE_FAVOUR_DIRECTION(float x, float y, float z, float desiredX, float desiredY, float desiredZ, int nthClosest, Vector3* outPosition, float* outHeading, int nodeFlags, cs_type(Any) float zMeasureMult, cs_type(Any) float zTolerance);
```

Like [`GET_CLOSEST_VEHICLE_NODE_WITH_HEADING`](#_0xFF071FB798B803B0), but returns the nth closest node instead of the first.

## Parameters
* **x**: X coordinate
* **y**: Y coordinate
* **z**: Z coordinate
* **desiredX**: The X direction to favour
* **desiredY**: The Y direction to favour
* **desiredZ**: The Z direction to favour
* **nthClosest**: The index of the node to return
* **outPosition**: Pointer to the found nodes coords
* **outHeading**: Pointer to the found nodes heading
* **nodeFlags**: Node flags, see [`GET_CLOSEST_VEHICLE_NODE`](#_0x240A18690AE96513)
* **zMeasureMult**: How strongly the difference in the Z direction should be weighted
* **zTolerance**: How far apart the Z coords have to be before `zMeasureMult` kicks in

## Return value
Returns the nth closest vehicle node with its heading favouring the desired direction.