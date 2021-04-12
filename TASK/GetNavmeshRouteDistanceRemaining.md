---
ns: TASK
---
## GET_NAVMESH_ROUTE_DISTANCE_REMAINING

```c
// 0xC6F5C0BCDC74D62D 0xD9281778
int GET_NAVMESH_ROUTE_DISTANCE_REMAINING(Ped ped, float* distanceRemaining, BOOL* isPathReady);
```

```
Looks like the last parameter returns true if the path has been calculated, while the first returns the remaining distance to the end of the path.
Return value of native is the same as GET_NAVMESH_ROUTE_RESULT
Looks like the native returns an int for the path's state:
1 - ???
2 - ???
3 - Finished Generating
```

## Parameters
* **ped**: 
* **distanceRemaining**: 
* **isPathReady**: 

## Return value
