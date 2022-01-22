---
ns: SHAPETEST
aliases: ["0x7EE9F5D83DD4F90E"]
---
## START_SHAPE_TEST_LOS_PROBE

```c
// 0x7EE9F5D83DD4F90E 0xEFAF4BA6
int START_SHAPE_TEST_LOS_PROBE(float x1, float y1, float z1, float x2, float y2, float z2, int flags, Entity entity, int p8);
```

Asynchronously starts a line-of-sight (raycast) world probe shape test.

```cpp
enum TraceFlags
{
  None = 0,
  IntersectWorld = 1,
  IntersectVehicles = 2,
  IntersectPedsSimpleCollision = 4,
  IntersectPeds = 8,
  IntersectObjects = 16,
  IntersectWater = 32,
  Unknown = 128,
  IntersectFoliage = 256,
  IntersectEverything = 4294967295
}
```
NOTE: Raycasts that intersect with mission_entites (flag = 2) has limited range and will not register for far away entites. The range seems to be about 30 metres.  


Use the handle with [GET_SHAPE_TEST_RESULT](#_0x3D87450E15D98694) or [GET_SHAPE_TEST_RESULT_INCLUDING_MATERIAL](#_0x65287525D951F6BE) until it returns 0 or 2.

## Parameters
* **x1**: Starting X coordinate.
* **y1**: Starting Y coordinate.
* **z1**: Starting Z coordinate.
* **x2**: Ending X coordinate.
* **y2**: Ending Y coordinate.
* **z2**: Ending Z coordinate.
* **flags**: Flags.
* **entity**: An entity to ignore, or 0.
* **p8**: A bit mask with bits 1, 2, 4, or 7 relating to collider types. 4 and 7 are usually used.

## Return value
A shape test handle.