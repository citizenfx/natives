---
ns: SHAPETEST
aliases: ["0xE6AC6C45FBE83004","_START_SHAPE_TEST_CAPSULE_2"]
---
## START_SHAPE_TEST_SWEPT_SPHERE

```c
// 0xE6AC6C45FBE83004 0x4559460A
int START_SHAPE_TEST_SWEPT_SPHERE(float x1, float y1, float z1, float x2, float y2, float z2, float radius, int flags, Entity entity, int p9);
```

Performs the same type of trace as START_SHAPE_TEST_CAPSULE, but with some different hardcoded parameters.  

## Parameters
* **x1**: Starting X coordinate.
* **y1**: Starting Y coordinate.
* **z1**: Starting Z coordinate.
* **x2**: Ending X coordinate.
* **y2**: Ending Y coordinate.
* **z2**: Ending Z coordinate.
* **radius**: 
* **flags**: See [`START_SHAPE_TEST_LOS_PROBE`](#_0x7EE9F5D83DD4F90E)
* **entity**: An entity to ignore, or 0.
* **p9**: A bit mask with bits 1, 2, 4, or 7 relating to collider types. 4 and 7 are usually used.

## Return value
