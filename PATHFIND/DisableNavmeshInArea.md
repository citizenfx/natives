---
ns: PATHFIND
---
## DISABLE_NAVMESH_IN_AREA

```c
// 0x4C8872D8CDBE1B8B 0x6E37F132
void DISABLE_NAVMESH_IN_AREA(float x1, float y1, float z1, float x2, float y2, float z2, bool disable);
```

```
use this if you want to completely disable a large area of navmesh.
for smaller areas, use AddNavmeshBlockingObject instead.
```

## Parameters
* **x1**: X Min Coordinate.
* **y1**: Y Min Coordinate.
* **z1**: Z Min Coordinate.
* **x2**: X Max Coordinate.
* **y2**: Y Max Coordinate.
* **z2**: Z Max Coordinate.
* **disable**: Whether to disable the navmesh or not.

