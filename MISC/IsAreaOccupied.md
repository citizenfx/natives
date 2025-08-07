---
ns: MISC
---
## IS_AREA_OCCUPIED

```c
// 0xA61B4DF533DCB56E 0xC013972F
BOOL IS_AREA_OCCUPIED(float x, float y, float z, float x2, float y2, float z2, BOOL building, BOOL vehicles, BOOL peds, BOOL objects, BOOL dummy, Entity entity, BOOL checkAlive);
```

If you feel the native is not working as it should, use `Citizen.InvokeNative(0x39455BF4F4F55186)` which equals to `IS_AREA_OCCUPIED_SLOW`. It's more accurate but also more expensive.

## Parameters
* **x**: Spawn coordinate X component.
* **y**: Spawn coordinate Y component.
* **z**: Spawn coordinate Z component.
* **x2**: Spawn coordinate X component.
* **y2**: Spawn coordinate Y component.
* **z2**: Spawn coordinate Z component.
* **building**: It will enclude buildings in the detection.
* **vehicles**: It will include cars in the detection.
* **peds**: It will include peds in the detection.
* **objects**: It will include objs in the detection.
* **dummy**: Couldn't figure out what includes in the detection.
* **entity**: Entity handle to exclude.
* **checkAlive**: It will only include living entities in the detection.

## Return value
If the area is occupied by the configuration set or not.