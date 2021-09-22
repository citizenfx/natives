---
ns: PATHFIND
---
## ADD_NAVMESH_BLOCKING_OBJECT

```c
// 0xFCD5C8E06E502F5A 0x2952BA56
Any ADD_NAVMESH_BLOCKING_OBJECT(float x, float y, float z, float width, float length, float height, float heading, BOOL p7, Any p8);
```

Creates a navmesh blocking object, vehicles will avoid driving through this area. 

Only 32 blocking objects may exist at a given time and must be manually managed. See [`REMOVE_NAVMESH_BLOCKING_OBJECT`](#\_0x46399A7895957C0E) and [onResourceStop](https://docs.fivem.net/docs/scripting-reference/events/list/onResourceStop/)

## Parameters
* **x**: The x coordinate to create the block on.
* **y**: The y coordinate.
* **z**: The z coordinate. 
* **width**: The width of the block.
* **length**: The length of the block.
* **height**: The height of the block.
* **heading**: The heading of object in degrees.
* **p7**: Usually false.
* **p8**: A bitfield; usually 7.

## Return value
