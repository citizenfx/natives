---
ns: PATHFIND
---
## UPDATE_NAVMESH_BLOCKING_OBJECT

```c
// 0x109E99373F290687 0x4E9776D0
void UPDATE_NAVMESH_BLOCKING_OBJECT(Object object, float posX, float posY, float posZ, float scaleX, float scaleY, float scaleZ, float heading, int flags);
```

## Parameters
* **object**: Navmesh Blocking Object by ID. must be returned by [`ADD_NAVMESH_BLOCKING_OBJECT`](#_0xFCD5C8E06E502F5A).
* **posX**: X position coordinate.
* **posY**: Y position coordinate.
* **posZ**: Z position coordinate.
* **scaleX**: X Scale.
* **scaleY**: Y Scale.
* **scaleZ**: Z Scale.
* **heading**: Heading of the blocking object.
* **flags**: Flags for the blocking object, see [`ADD_NAVMESH_BLOCKING_OBJECT`](#_0xFCD5C8E06E502F5A) for list of blocking object flags.

