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


## Parameters
* **x1**: Starting X coordinate.
* **y1**: Starting Y coordinate.
* **z1**: Starting Z coordinate.
* **x2**: Ending X coordinate.
* **y2**: Ending Y coordinate.
* **z2**: Ending Z coordinate.
* **flags**: See [START_SHAPE_TEST_LOS_PROBE](#_0x7EE9F5D83DD4F90E).
* **entity**: An entity to ignore, or 0.
* **p8**: A bit mask with bits 1, 2 and/or 4, relating to collider types. 4 should usually be used.

## Return value
A shape test handle.