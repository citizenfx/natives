---
ns: PATHFIND
---
## DISABLE_NAVMESH_IN_AREA

```c
// 0x4C8872D8CDBE1B8B 0x6E37F132
void DISABLE_NAVMESH_IN_AREA(float posMinX, float posMinY, float posMinZ, float posMaxX, float posMaxY, float posMaxZ, bool bDisable);
```

```
use this if you want to completely disable a large area of navmesh.
for smaller areas, use AddNavmeshBlockingObject instead.
```

## Parameters
* **posMinX**: X Min Coordinate.
* **posMinY**: Y Min Coordinate.
* **posMinZ**: Z Min Coordinate.
* **posMaxX**: X Max Coordinate.
* **posMaxY**: Y Max Coordinate.
* **posMaxZ**: Z Max Coordinate.
* **bDisable**: Whether to disable the navmesh or not.

