---
ns: PATHFIND
---
## ADD_NAVMESH_BLOCKING_OBJECT

```c
// 0xFCD5C8E06E502F5A 0x2952BA56
Any ADD_NAVMESH_BLOCKING_OBJECT(float x, float y, float z, float width, float length, float height, float heading, BOOL permanent, Any flags);
```

Creates a navmesh blocking object, vehicles will avoid driving through this area. 

Only 32 blocking objects may exist at a given time and must be manually managed. See [`REMOVE_NAVMESH_BLOCKING_OBJECT`](#\_0x46399A7895957C0E) and [onResourceStop](https://docs.fivem.net/docs/scripting-reference/events/list/onResourceStop/)

```
| Flag Name      | Value | Description                                         |
|----------------|-------|-----------------------------------------------------|
| Default        | 0     |                                                     |
| Wander Path    | 1     | Blocking object will block wander paths             |
| Shortest Path  | 2     | Blocking object will block (regular) shortest-paths |
| Flee Path      | 4     | Blocking object will block flee paths               |
| All Paths      | 7     | Blocking Object will block all paths                |
```

## Parameters
* **x**: The x coordinate to create the block on.
* **y**: The y coordinate.
* **z**: The z coordinate. 
* **width**: The width of the block.
* **length**: The length of the block.
* **height**: The height of the block.
* **heading**: The heading of object in degrees.
* **permanent**: If the blocking object is permanent.
* **flags**: Flag for the blocking object.

## Return value
