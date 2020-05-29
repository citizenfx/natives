---
ns: VEHICLE
aliases: ["0x8DC9675797123522"]
---
## _FIND_RANDOM_POINT_IN_SPACE

```c
// 0x8DC9675797123522
Vector3 _FIND_RANDOM_POINT_IN_SPACE(Ped ped);
```

Native is significantly more complicated than simply generating a random vector & length.

The 'point' is either 400.0 or 250.0 units away from the Ped's current coordinates; and paths into functions like rage::grcViewport___IsSphereVisible.

```
NativeDB Introduced: v1290
```

## Parameters
* **ped**:
