---
ns: SHAPETEST
aliases: ["0xFE466162C4401D18"]
---
## START_SHAPE_TEST_BOX

```c
// 0xFE466162C4401D18 0x249BC876
int START_SHAPE_TEST_BOX(float x, float y, float z, float x1, float y1, float z1, float rotX, float rotY, float rotZ, int p9, int flags, Entity entity, int p12);
```

For more information, see [`START_EXPENSIVE_SYNCHRONOUS_SHAPE_TEST_LOS_PROBE`](#_0x377906D8A31E5586) and [`START_SHAPE_TEST_LOS_PROBE`](#_0x7EE9F5D83DD4F90E).

## Parameters
* **x**: Starting X coordinate.
* **y**: Starting Y coordinate.
* **z**: Starting Z coordinate.
* **x1**: Ending X coordinate.
* **y1**: Ending Y coordinate.
* **z1**: Ending Z coordinate.
* **rotX**: 
* **rotY**: 
* **rotZ**: 
* **p9**: Unknown, always 2 or 0
* **flags**: See [`START_SHAPE_TEST_LOS_PROBE`](#_0x7EE9F5D83DD4F90E)
* **entity**: 
* **p12**: A bit mask with bits 1, 2, 4, or 7 relating to collider types. 4 and 7 are usually used.

## Return value
