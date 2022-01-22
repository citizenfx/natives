---
ns: SHAPETEST
aliases: ["_CAST_3D_RAY_POINT_TO_POINT"]
---
## START_SHAPE_TEST_CAPSULE

```c
// 0x28579D1B8F8AAC80 0x591EA833
int START_SHAPE_TEST_CAPSULE(float x1, float y1, float z1, float x2, float y2, float z2, float radius, int flags, Entity entity, int p9);
```

Raycast from point to point, where the ray has a radius.   


## Parameters
* **x1**: Starting X coordinate.
* **y1**: Starting Y coordinate.
* **z1**: Starting Z coordinate.
* **x2**: Ending X coordinate.
* **y2**: Ending Y coordinate.
* **z2**: Ending Z coordinate.
* **radius**: 
* **flags**: See [`START_SHAPE_TEST_LOS_PROBE`](#_0x7EE9F5D83DD4F90E)
* **entity**: Entity to ignore, or 0.
* **p9**: A bit mask with bits 1, 2, 4, or 7 relating to collider types. 4 and 7 are usually used.

## Return value
