---
ns: PATHFIND
---
## UPDATE_NAVMESH_BLOCKING_OBJECT

```c
// 0x109E99373F290687 0x4E9776D0
void UPDATE_NAVMESH_BLOCKING_OBJECT(int objectId, float posX, float posY, float posZ, float scaleX, float scaleY, float scaleZ, float heading, Any flags);
```

```
| Flag Name      | Value | Description                                    |
|----------------|-------|------------------------------------------------|
| Default        | 0     |                                                |
| Wander Path    | 1     | Blocking object will block wander paths        |
| Shortest Path  | 2     | Blocking object will block (regular) shortest-paths |
| Flee Path      | 4     | Blocking object will block flee paths          |
| All Paths      | 7     | Blocking Object will block all paths           |
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

