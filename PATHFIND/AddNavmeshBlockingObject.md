---
ns: PATHFIND
---
## ADD_NAVMESH_BLOCKING_OBJECT

```c
// 0xFCD5C8E06E502F5A 0x2952BA56
Any ADD_NAVMESH_BLOCKING_OBJECT(float x, float y, float z, float width, float length, float height, float heading, BOOL p7, float p8);
```

```
Creates a navmesh blocking object, vehicles will avoid driving through this area.
For combining this with an existing 3D object, you would get the object's dimensions min/max and subtract the min from the object coordinates
Set those coordinates to the first three parameters of this native, and then set the max dimension values to width/length/height
Heading is in radians.
```

## Parameters
* **x**: The x coordinate to create the block on.
* **y**: The y coordinate.
* **z**: The z coordinate. 
* **width**: The width of the block.
* **length**: The length of the block.
* **height**: The height of the block.
* **heading**: The heading of the block.
* **p7**: Usually set to false
* **p8**: Usually set to 7

## Return value
