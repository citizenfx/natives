---
ns: MISC
---
## IS_AREA_OCCUPIED

```c
// 0xA61B4DF533DCB56E 0xC013972F
BOOL IS_AREA_OCCUPIED(float x, float y, float z, float x2, float y2, float z2, BOOL p6, BOOL vehicles, BOOL peds, BOOL objects, BOOL p10, Entity entity, BOOL p12);
```

The first coords are for the starting point, with the second coords it will make a box (or square if you don't change height) and that will be the area in which it detects if it's occupied.
Excluded entities aren't detected to determine whether the area is occupied or not.
With the unknown parameters, I've tried with police cars, boats, helicopters, planes and trains but none of them returned true it seems they're included in vehicles.

## Parameters
* **x**: Spawn coordinate X component.
* **y**: Spawn coordinate Y component.
* **z**: Spawn coordinate Z component.
* **x2**: Spawn coordinate X component.
* **y2**: Spawn coordinate Y component.
* **z2**: Spawn coordinate Z component.
* **p6**: If enabled always returns true.
* **vehicles**: It will include cars in the detection.
* **peds**: It will include peds in the detection.
* **objects**: It will include objs in the detection.
* **p10**: Couldn't figure out what includes in the detection.
* **entity**: Entity handle to exclude.
* **p12**: Couldn't figure out what includes in the detection.

## Return value
If the area is occupied or not.
