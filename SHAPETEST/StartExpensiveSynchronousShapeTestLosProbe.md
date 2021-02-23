---
ns: SHAPETEST
aliases: ["_CAST_RAY_POINT_TO_POINT", "_START_SHAPE_TEST_RAY"]
---
## START_EXPENSIVE_SYNCHRONOUS_SHAPE_TEST_LOS_PROBE

```c
// 0x377906D8A31E5586 0x8251485D
int START_EXPENSIVE_SYNCHRONOUS_SHAPE_TEST_LOS_PROBE(float x1, float y1, float z1, float x2, float y2, float z2, int flags, Entity entity, int p8);
```

Does the same as [START_SHAPE_TEST_LOS_PROBE](#_0x7EE9F5D83DD4F90E), except blocking until the shape test completes.

Use [START_SHAPE_TEST_LOS_PROBE](#_0x7EE9F5D83DD4F90E) instead. Literally. Rockstar named this correctly: it's expensive, and it's synchronous.

```
This function casts a ray from Point1 to Point2 and returns it's ray handle.  A simple ray cast will 'shoot' a line from point A to point B, and return whether or not the ray reached it's destination or if it hit anything and if it did hit anything, will return the handle of what it hit (entity handle) and coordinates of where the ray reached.  
You can use _GET_RAYCAST_RESULT to get the result of the raycast  
Entity is an entity to ignore, such as the player.  
Flags are intersection bit flags.  They tell the ray what to care about and what not to care about when casting. Passing -1 will intersect with everything, presumably.  
Flags:  
1: Intersect with map  
2: Intersect with vehicles (used to be mission entities?) (includes train)  
4: Intersect with peds? (same as 8)  
8: Intersect with peds? (same as 4)  
16: Intersect with objects  
32: Water?  
64: Unknown  
128: Unknown  
256: Intersect with vegetation (plants, coral. trees not included)  
NOTE: Raycasts that intersect with mission_entites (flag = 2) has limited range and will not register for far away entites. The range seems to be about 30 metres.  
```

## Parameters
* **x1**: Starting X coordinate.
* **y1**: Starting Y coordinate.
* **z1**: Starting Z coordinate.
* **x2**: Ending X coordinate.
* **y2**: Ending Y coordinate.
* **z2**: Ending Z coordinate.
* **flags**: Flags.
* **entity**: An entity to ignore, or 0.
* **p8**: A bit mask with bits 1, 2 and/or 4, relating to collider types. 4 should usually be used.

## Return value
A shape test handle.