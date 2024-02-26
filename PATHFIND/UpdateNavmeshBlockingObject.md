---
ns: PATHFIND
---
## UPDATE_NAVMESH_BLOCKING_OBJECT

```c
// 0x109E99373F290687 0x4E9776D0
void UPDATE_NAVMESH_BLOCKING_OBJECT(int objectId, float posX, float posY, float posZ, float scaleX, float scaleY, float scaleZ, float heading, int flags);
```

```
enum BLOCKING_OBJECT_FLAGS {
    BLOCKING_OBJECT_DEFAULT = 0,      // Default Flag
    BLOCKING_OBJECT_WANDERPATH = 1,   // Blocking object will block wander paths
    BLOCKING_OBJECT_SHORTESTPATH = 2, // Blocking object will block (regular) shortest-paths
    BLOCKING_OBJECT_FLEEPATH = 4,     // Blocking object will block flee paths
    BLOCKING_OBJECT_ALLPATHS = 7,     // Blocking object will block all paths
}
```


## Parameters
* **objectId**: Navmesh Blocking Object by ID. must be returned by [`ADD_NAVMESH_BLOCKING_OBJECT`](#\_0xFCD5C8E06E502F5A).
* **posX**: X position coordinate.
* **posY**: Y position coordinate.
* **posZ**: Z position coordinate.
* **scaleX**: X Scale.
* **scaleY**: Y Scale.
* **scaleZ**: Z Scale.
* **heading**: Heading of the blocking object.
* **flags**: Flags for the blocking object.

