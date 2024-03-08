---
ns: PATHFIND
---
## DISABLE_NAVMESH_IN_AREA

```c
// 0x4C8872D8CDBE1B8B 0x6E37F132
void DISABLE_NAVMESH_IN_AREA(cs_type(Any) float posMinX, cs_type(Any) float posMinY, cs_type(Any) float posMinZ, cs_type(Any) float posMaxX, cs_type(Any) float posMaxY, cs_type(Any) float posMaxZ, cs_type(Any) bool bDisable);
```

Use this if you want to completely disable a large area of navmesh.
For smaller areas, use [`ADD_NAVMESH_BLOCKING_OBJECT`](#_0xFCD5C8E06E502F5A) instead.

## Parameters
* **posMinX**: X Min Coordinate.
* **posMinY**: Y Min Coordinate.
* **posMinZ**: Z Min Coordinate.
* **posMaxX**: X Max Coordinate.
* **posMaxY**: Y Max Coordinate.
* **posMaxZ**: Z Max Coordinate.
* **bDisable**: Whether to disable the navmesh or not.

